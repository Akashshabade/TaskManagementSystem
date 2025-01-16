trigger TaskNotification on Task__c (before update) {
    for (Task__c task : Trigger.new) {
        if (task.Due_Date__c == Date.today().addDays(1)) {
            Messaging.SingleEmailMessage email = new Messaging.SingleEmailMessage();
            email.setToAddresses(new String[] { UserInfo.getUserEmail() });
            email.setSubject('Task Reminder');
            email.setPlainTextBody('Your task "' + task.Name + '" is due tomorrow!');
            Messaging.sendEmail(new Messaging.SingleEmailMessage[] { email });
        }
    }
}
