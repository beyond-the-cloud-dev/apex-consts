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
