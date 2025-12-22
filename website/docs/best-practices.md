# Best Practices

Guidelines for using Apex Consts effectively.

## Do's ✅

### Use Constants Everywhere

Replace all hard-coded strings with constants:

```apex
// ✅ Good
acc.Type = Consts.ACCOUNT.TYPE.PROSPECT;

// ❌ Bad
acc.Type = 'Prospect';
```

### Group Related Constants

Use inner classes to organize related values:

```apex
public class CustomConsts {
    public final Status STATUS = new Status();
    public final Priority PRIORITY = new Priority();

    public class Status {
        public final String OPEN = 'Open';
        public final String CLOSED = 'Closed';
    }

    public class Priority {
        public final String HIGH = 'High';
        public final String LOW = 'Low';
    }
}
```

### Keep Values Synchronized

Update constants when picklist values change in Salesforce.

## Don'ts ❌

### Don't Instantiate Directly

```apex
// ❌ Never do this
AccountConsts consts = new AccountConsts();

// ✅ Always use Consts
String type = Consts.ACCOUNT.TYPE.PROSPECT;
```

### Don't Cache in Variables

No need to cache - the framework handles efficiency:

```apex
// ❌ Unnecessary
final String prospectType = Consts.ACCOUNT.TYPE.PROSPECT;
if (acc.Type == prospectType) { }

// ✅ Just use directly
if (acc.Type == Consts.ACCOUNT.TYPE.PROSPECT) { }
```

### Don't Mix Approaches

```apex
// ❌ Inconsistent
acc.Type = Consts.ACCOUNT.TYPE.PROSPECT;
acc.Rating = 'Hot';  // Should use constant

// ✅ Consistent
acc.Type = Consts.ACCOUNT.TYPE.PROSPECT;
acc.Rating = Consts.ACCOUNT.RATING.HOT;
```

## Performance Tips

1. **No Performance Penalty** - Constants access is extremely fast
2. **Memory Efficient** - Singleton pattern minimizes heap usage
3. **Use in Loops** - Safe to use in bulk operations

## Maintenance

1. **Document Custom Constants** - Add comments explaining business logic
2. **Version Control** - Track changes to constants
3. **Review Regularly** - Ensure constants match Salesforce metadata
4. **Update Tests** - Keep test data using constants

[See Examples →](/examples)
