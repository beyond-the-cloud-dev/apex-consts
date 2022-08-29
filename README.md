[More details TBD]

# Consts

The framework that allows keeping your apex's consts in an ordered way.

## How it works?

All concrete classes are created as a *singleton*, so each class is initialized once during the transaction. To decrease heap size getters and setters are in use. It means that class will be *initialized on demand*, not always. e.g execution of `Consts.ACCOUNT.TYPE.PROSPECT` will create instance of `AccountConsts` only, without creating `ContactConsts`.

Code Architecture is following *Open/Close* and *Single Responsibility Principle*. It means that code is easy to extend, and each class is responsible only for specific set of consts.

## How to use?

```java
    System.debug(Consts.ACCOUNT.TYPE.PROSPECT); // 'Prospect'
    System.debug(Consts.ACCOUNT.RATING.HOT); // 'Hit'

    System.debug(Consts.CONTACT.API_NAME); // 'Contact'
    System.debug(Consts.CONTACT.LEAD_SOURCE.WEB); // 'Web'

    System.debug(Consts.OPPORTUNITY.TYPE.EXISTING_CUSTOMER_DOWNGRADE); // 'Existing Customer - Downgrade'
```
