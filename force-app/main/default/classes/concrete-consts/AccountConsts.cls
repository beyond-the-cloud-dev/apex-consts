public class AccountConsts {
    public static final AccountConsts INSTANCE = new AccountConsts();

    public final String API_NAME = Account.sObjectType.getDescribe().getName();

    public final Type TYPE = new Type();
    public final Rating RATING = new Rating();

    public class Type {
        public final String CHANNEL_PARTNER_RESELLER = 'Channel Partner / Reseller';
        public final String CUSTOMER_CHANNEL = 'Customer - Channel';
        public final String CUSTOMER_DIRECT = 'Customer - Direct';
        public final String INSTALLATION_PARTNER = 'Installation Partner';
        public final String OTHER = 'Other';
        public final String PROSPECT = 'Prospect';
        public final String TECHNOLOGY_PARTNER = 'Technology Partner';
    }

    public class Rating {
        public final String COLD = 'Cold';
        public final String HOT = 'Hot';
        public final String WARM = 'Warm';
    }
}
