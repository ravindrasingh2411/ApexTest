public with sharing class TestClass {
    public static void returnContacts() {
        return [SELECT ID From Contact];
    }
}
