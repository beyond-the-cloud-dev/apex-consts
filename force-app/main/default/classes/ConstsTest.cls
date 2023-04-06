@IsTest
public class ConstsTest {

    @IsTest
    static void accountConsts() {
        Assert.areNotEqual(null, Consts.ACCOUNT);
    }

    @IsTest
    static void contactConsts() {
        Assert.areNotEqual(null, Consts.CONTACT);
    }

    @IsTest
    static void opportunityConsts() {
        Assert.areNotEqual(null, Consts.OPPORTUNITY);
    }

    @IsTest
    static void profileConsts() {
        Assert.areNotEqual(null, Consts.PROFILE);
    }
}
