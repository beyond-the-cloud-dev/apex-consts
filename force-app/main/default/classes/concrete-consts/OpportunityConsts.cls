@SuppressWarnings('PMD.FieldNamingConventions, PMD.EmptyStatementBlock')
public class OpportunityConsts {
    public static final OpportunityConsts INSTANCE = new OpportunityConsts();

    public final String API_NAME = Opportunity.sObjectType.getDescribe().getName();

    public final Type TYPE = new Type();

    public class Type {
        public final String CHANNEL_PARTNER_RESELLER = 'Channel Partner / Reseller';
        public final String EXISTING_CUSTOMER_DOWNGRADE = 'Existing Customer - Downgrade';
        public final String EXISTING_CUSTOMER_REPLACEMENT = 'Existing Customer - Replacement';
        public final String EXISTING_CUSTOMER_UPGRADE = 'Existing Customer - Upgrade';
        public final String NEW_CUSTOMER = 'New Customer';
    }

    private OpportunityConsts() {}
}
