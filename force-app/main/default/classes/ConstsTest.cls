@IsTest
private class ConstsTest {
    @IsTest
    static void accountConsts() {
        Assert.isNotNull(Consts.ACCOUNT, 'Account constants should not be null');
    }

    @IsTest
    static void contactConsts() {
        Assert.isNotNull(Consts.CONTACT, 'Contact constants should not be null');
    }

    @IsTest
    static void opportunityConsts() {
        Assert.isNotNull(Consts.OPPORTUNITY, 'Opportunity constants should not be null');
    }

    @IsTest
    static void profileConsts() {
        Assert.isNotNull(Consts.PROFILE, 'Profile constants should not be null');
    }
}
