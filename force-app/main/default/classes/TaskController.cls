public with sharing class TaskController {
    @AuraEnabled(cacheable=true)
    public static List<Task__c> getTasks() {
        return [SELECT Name, Description__c, Due_Date__c, Status__c FROM Task__c];
    }

    @AuraEnabled
    public static void createTask(Task__c task) {
        insert task;
    }
}
