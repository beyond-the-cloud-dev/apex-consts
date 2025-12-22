# Creating Custom Constants

Extend Apex Consts with your own constant classes.

## Step 1: Create a Const Class

Create a new class for your object:

```apex
public class CustomObjectConsts {
    public static final CustomObjectConsts INSTANCE = new CustomObjectConsts();

    public final String API_NAME = CustomObject__c.sObjectType.getDescribe().getName();

    public final Status STATUS = new Status();
    public final Type TYPE = new Type();

    public class Status {
        public final String DRAFT = 'Draft';
        public final String ACTIVE = 'Active';
        public final String ARCHIVED = 'Archived';
    }

    public class Type {
        public final String TYPE_A = 'Type A';
        public final String TYPE_B = 'Type B';
    }

    private CustomObjectConsts() {}
}
```

## Step 2: Add to Consts Class

Register your class in `Consts.cls`:

```apex
public class Consts {
    // ... existing constants ...

    public static final CustomObjectConsts CUSTOM_OBJECT {
        get {
            return CustomObjectConsts.INSTANCE;
        }
    }
}
```

## Step 3: Use Your Constants

```apex
CustomObject__c obj = new CustomObject__c(
    Name = 'Test',
    Status__c = Consts.CUSTOM_OBJECT.STATUS.DRAFT,
    Type__c = Consts.CUSTOM_OBJECT.TYPE.TYPE_A
);
insert obj;
```

## Template

Copy this template for new const classes:

```apex
public class YourObjectConsts {
    public static final YourObjectConsts INSTANCE = new YourObjectConsts();

    public final String API_NAME = YourObject__c.sObjectType.getDescribe().getName();

    // Add your inner classes here
    public final YourFieldGroup YOUR_FIELD_GROUP = new YourFieldGroup();

    public class YourFieldGroup {
        public final String VALUE_1 = 'Value 1';
        public final String VALUE_2 = 'Value 2';
    }

    private YourObjectConsts() {}
}
```

[View Examples →](/examples)
