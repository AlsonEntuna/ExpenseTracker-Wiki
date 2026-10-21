---
icon: lucide/wallet
---

# Expense View

![Expense View][expense-view]

## Creating your first Variable Expense
When you open the application, you'll need to create a new expense by clicking
the `Create Expense` button.

![Create Expense button][create-expense]

Fill in the information you want and make sure to fill in the **Main Currency**
field.

!!! info

    If you have an old expense from previous versions, the application will
    just use the Current Culture used by your PC.

Press **Add**, then you're off to add in your entries.

## Adding Expenses/Bills Entries

On the right side of the application, there's an `Add(+)` button where you can add
an entry.

![Add button][add-expense]

After clicking, it'll add an empty entry and you can now fill up the necessary info such as
```
- Description
- Payment Channel
- Category
- Amount (Your Expense's Currency)
- Amount (Local)
- Currency
```
!!! note
    When selecting the currency which is NOT your Expense's currency, you should input the amount in the `Amount(Local)`
    and the tool will automatically convert it to your Expense's set currency.

Now it's added in entries, you can edit/remove/add info anytime you want.

![Entries list][entries]

## Saving
Saving is as simple as `ctrl+s`. Also, the application saves all the current expenses opened in its session.

## Generating Reports

Once you already have most of the entries added in, you can now generate reports
by simply clicking on **Generate**.

![Generate button][generate]

A window will pop up containing the generated reports.

This will show a comprehensive report of your expenses. You can fill up
`Partial Payments`, add `Comments`, and even mark it as `Paid`.

![Generated report][report-1]

Clicking on the **Breakdown Chart** gives you more breakdown on your current expenses like how much you spent on each of the categories
and which channels you have to spend/pay them to.

![Generated report details][report-2]
Pie chart of the breakdown
![Generated report details pie chart][report-3]

!!! tip

    If you already have a generated expense report and just want to track your
    payment progress, just simply click `Open`.

  [expense-view]: assets/images/expense_view.png
  [create-expense]: assets/images/create_expense.png
  [add-expense]: assets/images/adding_expense.png
  [entries]: assets/images/entries_grid.png
  [generate]: assets/images/report_tools.png
  [report-1]: assets/images/report_1.png
  [report-2]: assets/images/report_2.png
  [report-3]: assets/images/report_3.png
