# Installation

Install Apex Consts in your Salesforce org.

## Using Salesforce CLI

### Deploy Source Code

```bash
# Clone the repository
git clone https://github.com/beyond-the-cloud-dev/apex-consts.git
cd apex-consts

# Deploy to your org
sf project deploy start --target-org your-org-alias
```

## Manual Installation

### Using Setup UI

1. Navigate to **Setup** → **Apex Classes**
2. Click **New**
3. Copy the code from:
   - [Consts.cls](https://github.com/beyond-the-cloud-dev/apex-consts/blob/main/force-app/main/default/classes/Consts.cls)
   - [AccountConsts.cls](https://github.com/beyond-the-cloud-dev/apex-consts/blob/main/force-app/main/default/classes/concrete-consts/AccountConsts.cls)
   - [ContactConsts.cls](https://github.com/beyond-the-cloud-dev/apex-consts/blob/main/force-app/main/default/classes/concrete-consts/ContactConsts.cls)
   - [OpportunityConsts.cls](https://github.com/beyond-the-cloud-dev/apex-consts/blob/main/force-app/main/default/classes/concrete-consts/OpportunityConsts.cls)
   - [ProfileConsts.cls](https://github.com/beyond-the-cloud-dev/apex-consts/blob/main/force-app/main/default/classes/concrete-consts/ProfileConsts.cls)
4. Save each class

## Dependencies

Apex Consts has **zero dependencies**. It works standalone.

## API Version

Requires Salesforce API version **64.0** or higher.

## Verification

Test the installation:

```apex
System.debug(Consts.ACCOUNT.TYPE.PROSPECT);  // 'Prospect'
System.debug(Consts.ACCOUNT.API_NAME);  // 'Account'
```

If these work, you're all set! ✅

## Next Steps

- [Getting Started Guide](/getting-started)
- [See Examples](/examples)
- [Create Custom Constants](/creating-constants)
