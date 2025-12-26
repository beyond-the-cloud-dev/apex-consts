<div align="center">
  <a href="https://apexfluently.beyondthecloud.dev/libraries/apex-consts.html">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="./website/public/logo.png">
      <img alt="Apex Consts logo" src="./website/public/logo.png" height="98">
    </picture>
  </a>
  <h1>Apex Consts</h1>

<a href="https://beyondthecloud.dev"><img alt="Beyond The Cloud logo" src="https://img.shields.io/badge/MADE_BY_BEYOND_THE_CLOUD-555?style=for-the-badge"></a>

<img alt="API version" src="https://img.shields.io/badge/api-v65.0-blue?style=for-the-badge">
<a href="https://github.com/beyond-the-cloud-dev/soql-lib/blob/main/LICENSE"><img alt="License" src="https://img.shields.io/badge/license-mit-green?style=for-the-badge"></a>
<img alt="GitHub Repo stars" src="https://img.shields.io/github/stars/beyond-the-cloud-dev/apex-consts?style=for-the-badge&logo=github&color=blue">
<img alt="GitHub Release" src="https://img.shields.io/github/v/release/beyond-the-cloud-dev/apex-consts?display_name=tag&style=for-the-badge&color=blue">
</div>

The Constants Framework provides a structured approach for managing constants in the Apex.

Consts Lib is part of [Apex Fluently](https://apexfluently.beyondthecloud.dev/), a suite of production-ready Salesforce libraries by Beyond the Cloud.

## Example

```java
Account acc = new Account(
    Name = 'My Account',
    Type = Consts.ACCOUNT.TYPE.PROSPECT,
    Rating = Consts.ACCOUNT.RATING.HOT
);
```

```java
System.debug(Consts.ACCOUNT.TYPE.PROSPECT); //'Prospect'
System.debug(Consts.ACCOUNT.RATING.HOT); //'Hit'

System.debug(Consts.CONTACT.API_NAME); //'Contact'
System.debug(Consts.CONTACT.LEAD_SOURCE.WEB); //'Web'

System.debug(Consts.OPPORTUNITY.TYPE.EXISTING_CUSTOMER_DOWNGRADE); //'Existing Customer - Downgrade'
```

## How it works?

The framework employs the concept of singletons to create concrete classes.
Each class is initialized once during the transaction, reducing heap size usage.

Getters and setters are used to lazily initialize the classes.
For example, accessing `Consts.Account.TYPE.PROSPECT` will only create an instance of the `AccountConsts` class without creating `ContactConsts`.

The code architecture follows the Open/Closed and Single Responsibility Principle principles.
This design ensures the code is easily extensible, and each class is responsible for a specific set of constants.

## How to use it?

### Create a concrete consts class

- Define an `INSTANCE` variable to hold the class instance (singleton).
- Create inner classes to organize the constant values.

```java
public class ContactConsts {
    public static final ContactConsts INSTANCE = new ContactConsts();

    public final String API_NAME = Contact.sObjectType.getDescribe().getName();

    public final Status STATUS = new Status();

    public class Status {
        public final String IN_APPROVAL_PROCESS = 'In Approval Process';
        public final String ACTIVATED = 'Activated';
        public final String DRAFT = 'Draft';
    }
}
```

### Add a concrete consts class to `Consts`

```java
public class Consts {

    public static final ContactConsts CONTACT {
        get {
            return ContactConsts.INSTANCE;
        }
    }
}
```
