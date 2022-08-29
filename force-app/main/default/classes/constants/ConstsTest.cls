@isTest
public class ConstsTest {

    @isTest
    static void referenceConstsOneTypeTest() {
        System.debug('--- referenceConstsOneTypeTest ---');
        executeTest(new ReferenceConstsOneType());
    }

    @isTest
    static void frameworkConstsOneTypeTest() {
        System.debug('--- frameworkConstsOneTypeTest ---');
        executeTest(new FrameworkConstsOneType());
    }

    @isTest
    static void referenceConstsMultipleTypesTest() {
        System.debug('--- referenceConstsMultipleTypesTest ---');
        executeTest(new ReferenceConstsMultipleTypes());
    }

    @isTest
    static void frameworkConstsMultipleTypesTest() {
        System.debug('--- frameworkConstsMultipleTypesTest ---');
        executeTest(new FrameworkConstsMultipleType());
    }

    static void executeTest(ConstsApproach constsApproach) {
        Integer startCpuTime = Limits.getCpuTime();
        Integer startHeapSize = Limits.getHeapSize();

        for (Integer i = 0; i < 1000; i++) {
            constsApproach.execute();
        }

        Integer totalUsage = Limits.getCpuTime() - startCpuTime;
        Integer totalHeapSize = Limits.getHeapSize() - startHeapSize;

        System.debug('CPU usage:' + totalUsage + ' Heap Size usage:' + totalHeapSize);
    }


    private abstract class ConstsApproach {
        public abstract void execute();
    }

    private class ReferenceConstsOneType extends ConstsApproach {
        public override void execute() {
            System.debug(ReferenceConsts.ACCOUNT_TYPE_CHANNEL_PARTNER_RESELLER);
        }
    }

    private class FrameworkConstsOneType extends ConstsApproach {
        public override void execute() {
            System.debug(Consts.ACCOUNT.TYPE.CHANNEL_PARTNER_RESELLER);
        }
    }

    private class ReferenceConstsMultipleTypes extends ConstsApproach {
        public override void execute() {
            System.debug(ReferenceConsts.CONTACT_API_NAME);
            System.debug(ReferenceConsts.ACCOUNT_TYPE_CHANNEL_PARTNER_RESELLER);
            System.debug(ReferenceConsts.PROFILE_ANALYTICS_CLOUD_INTEGRATION_USER);
        }
    }

    private class FrameworkConstsMultipleType extends ConstsApproach {
        public override void execute() {
            System.debug(Consts.CONTACT.API_NAME);
            System.debug(Consts.ACCOUNT.TYPE.CHANNEL_PARTNER_RESELLER);
            System.debug(Consts.PROFILE.NAME.ANALYTICS_CLOUD_INTEGRATION_USER);
        }
    }
}
