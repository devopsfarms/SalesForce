/***
  Author - DevOps Farms
  Description - This is a controller class fetching child account records(Account Hierarchy)
 **/
  
public class Account_Hierarchy {
public List<Account> accnameslist{get;set;}
  
    public List<case> caselist{get;set;}
    Id AccId = ApexPages.currentPage().getParameters().get(label.Id_DMS);
    public Account_Hierarchy(ApexPages.StandardController controller) {
    if(AccId!=null)
    {
    accnameslist = [select Id,name from Account where ParentId =: AccId];
    caselist = [select CaseNumber,Hierarchy__c,Merchant_Number__c,Account.name,Account.AccountNumber,Terminal_ID__c,Device_Type__c,RecordType.name,Description,Owner.name,Status,CreatedDate from case where AccountId In: accnameslist OR AccountId =:AccId]; 
     } 
    }

}