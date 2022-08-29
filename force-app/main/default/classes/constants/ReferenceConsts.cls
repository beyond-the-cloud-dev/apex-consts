// DO NOT USE IT. ADDED TO COMPARE PERFORMANCE WITH CONST FRAMEWORK.
public with sharing class ReferenceConsts {
    // Account
    public static final String ACCOUNT_API_NAME = Account.sObjectType.getDescribe().getName();

    // Type
    public static final String ACCOUNT_TYPE_CHANNEL_PARTNER_RESELLER = 'Channel Partner / Reseller';
    public static final String ACCOUNT_TYPE_CUSTOMER_CHANNEL = 'Customer - Channel';
    public static final String ACCOUNT_TYPE_CUSTOMER_DIRECT = 'Customer - Direct';
    public static final String ACCOUNT_TYPE_INSTALLATION_PARTNER = 'Installation Partner';
    public static final String ACCOUNT_TYPE_OTHER = 'Other';
    public static final String ACCOUNT_TYPE_PROSPECT = 'Prospect';
    public static final String ACCOUNT_TYPE_TECHNOLOGY_PARTNER = 'Technology Partner';
    // Rating
    public static final String ACCOUNT_RATING_COLD = 'Cold';
    public static final String ACCOUNT_RATING_HOT = 'Hot';
    public static final String ACCOUNT_RATING_WARM = 'Warm';

    // Contact
    public static final String CONTACT_API_NAME = Contact.sObjectType.getDescribe().getName();

    // LeadSource
    public static final String CONTACT_LEAD_SOURCE_OTHER = 'Other';
    public static final String CONTACT_LEAD_SOURCE_PARTNER_REFERRAL = 'Partner Referral';
    public static final String CONTACT_LEAD_SOURCE_PHONE_INQUIRY = 'Phone Inquiry';
    public static final String CONTACT_LEAD_SOURCE_PURCHASED_LIST = 'Purchased List';
    public static final String CONTACT_LEAD_SOURCE_WEB = 'Web';

    // Opportunity
    public static final String OPPORTUNITY_API_NAME = Opportunity.sObjectType.getDescribe().getName();

    // Type
    public static final String OPPORTUNITY_TYPE_CHANNEL_PARTNER_RESELLER = 'Channel Partner / Reseller';
    public static final String OPPORTUNITY_TYPE_EXISTING_CUSTOMER_DOWNGRADE = 'Existing Customer - Downgrade';
    public static final String OPPORTUNITY_TYPE_EXISTING_CUSTOMER_REPLACEMENT = 'Existing Customer - Replacement';
    public static final String OPPORTUNITY_TYPE_EXISTING_CUSTOMER_UPGRADE = 'Existing Customer - Upgrade';
    public static final String OPPORTUNITY_TYPE_NEW_CUSTOMER = 'New Customer';

    // Profile
    public static final String PROFILE_ANALYTICS_CLOUD_INTEGRATION_USER = 'Analytics Cloud Integration User';
    public static final String PROFILE_ANALYTICS_CLOUD_SECURITY_USER = 'Analytics Cloud Security User';
    public static final String PROFILE_AUTHENTICATED_WEBSITE = 'Authenticated Website';
    public static final String PROFILE_CHATTER_EXTERNAL_USER = 'Chatter External User';
    public static final String PROFILE_CHATTER_FREE_USER = 'Chatter Free User';
    public static final String PROFILE_CHATTER_MODERATOR_USER = 'Chatter Moderator User';
    public static final String PROFILE_COMMUNITY_PROFILE = 'Community Profile';
    public static final String PROFILE_CONTRACT_MANAGER = 'Contract Manager';
    public static final String PROFILE_CROSS_ORG_DATA_PROXY_USER = 'Cross Org Data Proxy User';
    public static final String PROFILE_CUSETOMER_PORTAL_MANAGER_CUSTOM = 'Customer Portal Manager Custom';
    public static final String PROFILE_CUSTOMER_COMMUNITY_LOGIN_USER = 'Customer Community Login User';
    public static final String PROFILE_CUSTOMER_COMMUNITY_PLUS_LOGIN_USER = 'Customer Community Plus Login User';
    public static final String PROFILE_CUSTOMER_COMMUNITY_PLUS_USER = 'Customer Community Plus User';
    public static final String PROFILE_CUSTOMER_COMMUNITY_USER = 'Customer Community User';
    public static final String PROFILE_CUSTOMER_PORTAL_MANAGER_STANDARD = 'Customer Portal Manager Standard';
    public static final String PROFILE_EXTERNAL_APPS_LOGIN_USER = 'External Apps Login User';
    public static final String PROFILE_EXTERNAL_IDENTITY_USER = 'External Identity User';
    public static final String PROFILE_FORCE_COM_APP_SUBSCRIPTION_USER = 'Force.com - App Subscription User';
    public static final String PROFILE_FORCE_COM_FREE_USER = 'Force.com - Free User';
    public static final String PROFILE_GOLD_PARTNER_USER = 'Gold Partner User';
    public static final String PROFILE_HIGHT_VOLUMNE_CUSTOMER_PORTAL_USER = 'High Volume Customer Portal User';
    public static final String PROFILE_HIGH_VOLUME_CUSTOMER_PORTAL = 'High Volume Customer Portal';
    public static final String PROFILE_IDENTITY_USER = 'Identity User';
    public static final String PROFILE_MARKETING_USER = 'Marketing User';
    public static final String PROFILE_MINIMUM_ACCESS_SALESFORCE = 'Minimum Access - Salesforce';
    public static final String PROFILE_PARTNER_APP_SUBSCRIPTION_USER = 'Partner App Subscription User';
    public static final String PROFILE_PARTNER_COMMUNITY_LOGIN_USER = 'Partner Community Login User';
    public static final String PROFILE_PARTNER_COMMUNITY_USER = 'Partner Community User';
    public static final String PROFILE_READ_ONLY = 'Read Only';
    public static final String PROFILE_SILVER_PARTNER_USER = 'Silver Partner User';
    public static final String PROFILE_SOLUTION_MANAGER = 'Solution Manager';
    public static final String PROFILE_STANDARD_GUEST = 'Standard Guest';
    public static final String PROFILE_STANDARD_PLATFORM_USER = 'Standard Platform User';
    public static final String PROFILE_STANDARD_USER = 'Standard User';
    public static final String PROFILE_SYSTEM_ADMINSTRATOR = 'System Administrator';
    public static final String PROFILE_WORK_COM_ONLY_USER = 'Work.com Only User';
}
