Application("Xcode").activate();

delay(2);

var system = Application("System Events"),
    xcode = system.processes["Xcode"];

// open preferences
system.keystroke(",", { "using": "command down" });

// click on Accounts tab
xcode.windows[0].toolbars[0].uiElements[1].click();

var accountRows = xcode.windows[0].scrollAreas[0].tables[0].rows,
    currentRow,
    rowName;

for (var accountIndex = 1; accountIndex < accountRows.length; accountIndex++) {
    currentRow = accountRows[accountIndex];
    rowName = currentRow.uiElements()[0].name();

    if (rowName === "Repositories") {
        break;
    }

    currentRow.select();
    delay(1);

    // click "View Details"
    xcode.windows[0].groups[0].buttons[0].click();
    delay(1);

    // click "Refresh"
    xcode.windows[0].sheets[0].buttons[1].click();
    delay(5);

    // click "Done"
    xcode.windows[0].sheets[0].buttons[0].click();
    delay(1);
}
