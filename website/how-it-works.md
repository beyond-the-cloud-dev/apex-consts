# How It Works

Understanding the architecture behind Apex Consts.

## Singleton Pattern

Apex Consts uses the singleton pattern to ensure each constants class is instantiated only once per transaction:

```apex
public class AccountConsts {
    // Single instance for entire transaction
    public static final AccountConsts INSTANCE = new AccountConsts();

    // Private constructor prevents multiple instances
    private AccountConsts() {}
}
```

## Lazy Initialization

Classes are created only when first accessed using getter properties:

```apex
public class Consts {
    public static final AccountConsts ACCOUNT {
        get {
            return AccountConsts.INSTANCE;  // Created on first access
        }
    }
}
```

### Memory Efficiency

This approach minimizes heap usage:

```apex
// Only AccountConsts is created
String type = Consts.ACCOUNT.TYPE.PROSPECT;

// ContactConsts, OpportunityConsts, etc. are NOT created
// No memory wasted on unused constants
```

## Inner Classes for Organization

Constants are grouped logically using inner classes:

```apex
public class AccountConsts {
    public final Type TYPE = new Type();
    public final Rating RATING = new Rating();

    public class Type {
        public final String PROSPECT = 'Prospect';
        public final String CUSTOMER_DIRECT = 'Customer - Direct';
        // ...
    }

    public class Rating {
        public final String HOT = 'Hot';
        public final String WARM = 'Warm';
        public final String COLD = 'Cold';
    }
}
```

This creates a clean hierarchy:
- `Consts.ACCOUNT.TYPE.PROSPECT`
- `Consts.ACCOUNT.RATING.HOT`

## SOLID Principles

### Open/Closed Principle

The framework is open for extension but closed for modification:

```apex
// Adding new constants doesn't modify existing code
public class CustomObjectConsts {
    public static final CustomObjectConsts INSTANCE = new CustomObjectConsts();
    // Your constants here
}

// Just add to Consts.cls
public class Consts {
    public static final CustomObjectConsts CUSTOM_OBJECT {
        get { return CustomObjectConsts.INSTANCE; }
    }
}
```

### Single Responsibility

Each class is responsible for one object's constants:
- `AccountConsts` - Only Account constants
- `ContactConsts` - Only Contact constants
- `OpportunityConsts` - Only Opportunity constants

## Transaction Lifecycle

Understanding how constants behave during a transaction:

1. **First Access** - Class instantiated once
   ```apex
   String type = Consts.ACCOUNT.TYPE.PROSPECT;
   // AccountConsts created here
   ```

2. **Subsequent Access** - Same instance reused
   ```apex
   String rating = Consts.ACCOUNT.RATING.HOT;
   // Reuses AccountConsts instance from step 1
   ```

3. **New Transaction** - Fresh instances
   ```apex
   // In next transaction/test, new instances created
   ```

## Performance Impact

The singleton + lazy loading pattern has minimal performance impact:

- **One-time cost** - Class instantiation happens once
- **Negligible overhead** - Getter calls are extremely fast
- **Memory efficient** - Only used classes consume heap
- **No SOQL** - All values are hard-coded strings

## Best Practices

1. **Don't Instantiate Directly** - Always access via `Consts`
   ```apex
   // ❌ Don't do this
   AccountConsts acc = new AccountConsts();

   // ✅ Do this
   String type = Consts.ACCOUNT.TYPE.PROSPECT;
   ```

2. **Use Throughout Transaction** - No need to cache values
   ```apex
   // This is fine - uses same instance
   for (Account acc : accounts) {
       if (acc.Type == Consts.ACCOUNT.TYPE.PROSPECT) {
           // ...
       }
   }
   ```

## Next Steps

- [Create Custom Constants](/creating-constants)
- [View Examples](/examples)
- [Best Practices](/best-practices)
