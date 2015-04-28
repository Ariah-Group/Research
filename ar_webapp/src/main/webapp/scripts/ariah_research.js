/* 
 * Copyright 2015 The Ariah Group, Inc.
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

var propCoordId = "document.developmentProposalList[0].proposalCoordinatorPrincipalName".replace(/(:|\.|\[|\])/g, '\\$1');
var relativeUrl = "ariah/proposalCoordinatorsForUnit/";
var jq = jQuery.noConflict();

/**
 * update the proposal coordinators drop down with coordinators for hierarchy starting at
 *  the unit number
 * @param unitNumber - the unit number
 */
function updateProposalCoordinators(unitNumber) {
	var getUrl = relativeUrl + unitNumber;
	jq.getJSON(getUrl, function( data ) {
		clearExistingProposalCoordinators();
		populateProposalCoordinators(data);
	});
};

/**
 * check if proposal coordinator exists in the drop down
 * @returns true if the coordinator exists, false otherwise
 */
function proposalCoordinatorsExists(principalName) {
	var exists = false;
	options = jq('#' + propCoordId + ' > option');
	for (i=0; i<options.length; i++) {
		if (jq(options[i]).val() == principalName) {
			exists = true;
			break;
		}
	}
	
	return exists;
};

/**
 * clear the existing entries in the proposal coordinators drop down
 */
function clearExistingProposalCoordinators() {
	jq('#' + propCoordId).empty();
};

/**
 * clear existing options and set newly fetched entries on the proposal coordinator drop down 
 * @param coordinators - an array in json format of coordinator info i.e:
 * no coordinators - [{"key":"","value":"select"}]
 * 1 coordinator found - [{"key":"","value":"select"}, {"key":"mos01","value":"Mos Munga"}]
 */
function populateProposalCoordinators(coordinators) {
	clearExistingProposalCoordinators();
	var options = [];
	for (i=0; i<coordinators.length; i++) {
		options.push("<option value=\"" + coordinators[i].key + "\">" + coordinators[i].value + "</option>");
	}
	jq('#' + propCoordId).html(options.join(""));
};