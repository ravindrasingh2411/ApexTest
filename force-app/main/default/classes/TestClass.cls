public class TestClass {
    public static void returnContacts() {
        for(Contact cont: [SELECT ID,NAME,Phone FROM Contact]) {
            cont.Name = 'Test';
            update cont;
        }
        return [SELECT ID From Contact];
    }
}
