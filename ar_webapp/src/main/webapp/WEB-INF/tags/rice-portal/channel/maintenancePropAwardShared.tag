<%--
 Copyright 2005-2014 The Kuali Foundation
 
 Licensed under the Educational Community License, Version 2.0 (the "License");
 you may not use this file except in compliance with the License.
 You may obtain a copy of the License at
 
 http://www.osedu.org/licenses/ECL-2.0
 
 Unless required by applicable law or agreed to in writing, software
 distributed under the License is distributed on an "AS IS" BASIS,
 WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 See the License for the specific language governing permissions and
 limitations under the License.


Updates made after January 1, 2015 are :
Copyright 2015 The Ariah Group, Inc.

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

    http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
--%>
<%@ include file="/WEB-INF/jsp/kraTldHeader.jsp"%>

<channel:portalChannelTop channelTitle="Proposals & Awards Shared" />
<div class="body">
    <ul class="chan">
        <li><portal:portalLink displayTitle="true" title="Budget Category" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.core.BudgetCategory&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
        <li><portal:portalLink displayTitle="true" title="Budget Category Mapping" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.core.BudgetCategoryMapping&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
        <li><portal:portalLink displayTitle="true" title="Budget Category Maps" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.core.BudgetCategoryMap&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
        <li><portal:portalLink displayTitle="true" title="Budget Category Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.core.BudgetCategoryType&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
        <li><portal:portalLink displayTitle="true" title="Budget Status" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.proposaldevelopment.bo.BudgetStatus&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Cost Sharing Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.CostShareType&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
        <li><portal:portalLink displayTitle="true" title="F&A Rate Types" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.award.commitments.FandaRateType&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
        <li><portal:portalLink displayTitle="true" title="Institutional Rates" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.InstituteRate&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Credit Split Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.proposaldevelopment.bo.InvestigatorCreditType&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Notice of Opportunity" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.NoticeOfOpportunity&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Cost Element" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.core.CostElement&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li></li>
        <li><portal:portalLink displayTitle="true" title="Proposal Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.proposaldevelopment.bo.ProposalType&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="Rate Class" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.rates.RateClass&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>    
        <li><portal:portalLink displayTitle="true" title="Rate Class Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.rates.RateClassType&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>    
        <li><portal:portalLink displayTitle="true" title="Rate Class Exclusion" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.rates.RateClassBaseExclusion&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li></li>    
        <li><portal:portalLink displayTitle="true" title="Rate Class Inclusion" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.rates.RateClassBaseInclusion&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li></li>    
        <li><portal:portalLink displayTitle="true" title="Rate Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.rates.RateType&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>
  	<li><portal:portalLink displayTitle="true" title="Valid Cost Element Job Code" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.personnel.ValidCeJobCode&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li></li>
  	<li><portal:portalLink displayTitle="true" title="Valid Cost Element Rate Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.rates.ValidCeRateType&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li></li>
        <li><portal:portalLink displayTitle="true" title="Job Code" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.personnel.JobCode&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
        <li><portal:portalLink displayTitle="true" title="To Be Named Person" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.budget.personnel.TbnPerson&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>
<!--        <li><portal:portalLink displayTitle="true" title="Current Locks" url="${ConfigProperties.kr.url}/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.rice.krad.document.authorization.PessimisticLock&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true&docFormKey=88888888" /></li>-->
<!--        <li><portal:portalLink displayTitle="true" title="Training" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.Training&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>-->
<!--        <li><portal:portalLink displayTitle="true" title="Person Training" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.bo.PersonTraining&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>-->
<!--        <li><portal:portalLink displayTitle="true" title="Valid Rates" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.award.home.ValidRates&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li>-->
<!--        <li><portal:portalLink displayTitle="true" title="Custom Report Details" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.reporting.bo.CustReportDetails&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li> -->
<!--        <li><portal:portalLink displayTitle="true" title="Custom Report Type" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.reporting.bo.CustReportType&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li> -->
<!--        <li><portal:portalLink displayTitle="true" title="Custom Report Document" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.reporting.bo.CustRptTypeDocument&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li> -->
<!--        <li><portal:portalLink displayTitle="true" title="Custom Report Default Parms" url="${ConfigProperties.application.url}/kr/lookup.do?methodToCall=start&businessObjectClassName=org.kuali.kra.reporting.bo.CustRptDefaultParms&docFormKey=88888888&returnLocation=${ConfigProperties.application.url}/portal.do&hideReturnLink=true" /></li> -->
    </ul>
</div>
<channel:portalChannelBottom />