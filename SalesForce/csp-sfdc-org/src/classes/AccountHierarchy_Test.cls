/** 
* @Company     : DevOps Farms
* @Date        : 11th Feb, 2016
* *************************************************************************************************************************
* Description : Test Class for Account_Hierarchy : Testing for List of Hierarchy on account linked to parent accounts
* *************************************************************************************************************************
* @History     :  
**/

@isTest(seeAllData=false)
private class AccountHierarchy_Test {
    static testmethod void validateStandardController(){
            List<Account> accnameslist = new List<Account>{};
            List<case>  caselist= new List<case>{};
            
             Account testacc = new Account(name='sample');
             insert testacc;
             ApexPages.StandardController sc = new ApexPages.StandardController(testacc);
             ApexPages.currentPage().getParameters().put('id',testacc.id);
             Account a = new Account();
             Account_Hierarchy testAccPlan = new Account_Hierarchy(sc);
             
              for (Integer i = 0; i < 5; i++) {
              a.Name = 'Disney';
              a.parentid = testacc.id;
              accnameslist.add(a);
              ID act = a.ID;
            }
            
             //insert accnameslist;
             testAccPlan.accnameslist = accnameslist;
            
             //insert  caselist;
             testAccPlan.caselist = caselist;
        
      }
}