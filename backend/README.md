# Buget App

## Blueprint 0.1

1. Inputs
- Input Income
    - Regular Income
    - Irregular Income
    - Desired Savings/Allocation
        - *Allocation of funds -> Savings Act., Investments

- Input Bills
    - Recurring/Semi-recurring -> every month/year
        - Bills/Other
            - Bills -> general regular expenses
            - Other incl. non-regular expenses + not so regular
    - One-time events
        - Debts
2. Outputs
- Potential Monthly/Yearly Savings
- Track Regular Expenses
- Track + Project Irregular Expenses


## Database Schema

### Entities + Columns, Omitting ID
- User
    - Username, Password, Salt, FirstName, LastName, 
- Income
    - UserID [FK], Name, Type, Money, Last Date of Income, Date of next expected income, Regularity Interval
- Expense - DID NOT IMPLEMENT, REDUNDANT
    - UserID [FK], Name, Type, Fee, Date Last Charged, Date of next expected charge, Regularity Interval
- Goals
    - UserID [FK], Name, Type, Total, Commitment Interval,
        - Commitment Interval -> Goal is once + done, yearly, monthly.
- Money Store
    - UserID [FK], Name, Type,
- Account
    - MoneyStoreID [FK], Name, Amount, Interest, Dividend



