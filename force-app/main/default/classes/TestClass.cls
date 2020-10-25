public class TestClass {
    public static void returnContacts() {
        for(Contact cont: [SELECT ID,NAME FROM Contact]) {
            cont.Name = 'Test';
            update cont;
        }
        for(Account acc: [SELECT Id,Name from Account]) {
            acc.Name = 'Error';
            update acc;
        }
        return [SELECT ID From Contact];
    }
}
