public class ContactConsts {
    public static final ContactConsts INSTANCE = new ContactConsts();

    public final String API_NAME = Contact.sObjectType.getDescribe().getName();

    public final LeadSource LEAD_SOURCE = new LeadSource();

    public class LeadSource {
        public final String OTHER = 'Other';
        public final String PARTNER_REFERRAL = 'Partner Referral';
        public final String PHONE_INQUIRY = 'Phone Inquiry';
        public final String PURCHASED_LIST = 'Purchased List';
        public final String WEB = 'Web';
    }
}
