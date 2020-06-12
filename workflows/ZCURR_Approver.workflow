{
	"contents": {
		"40a8b302-0dbf-431e-a4d7-008540ca1455": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "zcurr_approver",
			"subject": "ZCURR_Approver",
			"name": "ZCURR_Approver",
			"documentation": "DEMO: Get Approver by Currency",
			"lastIds": "6d7411a5-807a-459e-9a9b-cc8da493e799",
			"events": {
				"17792de6-b06f-4e12-a5b5-2109def3e65c": {
					"name": "WF Start"
				},
				"ec164dd7-416a-47a8-8de1-958e66ffc61a": {
					"name": "WF End"
				}
			},
			"activities": {
				"64564ec6-611a-4cbf-b49a-f30492cb99bd": {
					"name": "Get Approver from Business Rules"
				},
				"01c236c6-a327-486c-ba3b-e9d34f1fe5b0": {
					"name": "Approve Currency Exchange"
				}
			},
			"sequenceFlows": {
				"2aa5d57b-79cd-42e2-89de-6e3038f28dc0": {
					"name": "SequenceFlow1"
				},
				"b1966ab6-c99d-400f-a03c-3ad6c4a7965c": {
					"name": "SequenceFlow2"
				},
				"4a395444-148c-419b-a404-cb3f9e12d847": {
					"name": "SequenceFlow3"
				}
			},
			"diagrams": {
				"90cadcbf-9c5b-4e67-b030-8c3e9f2e61e9": {}
			}
		},
		"17792de6-b06f-4e12-a5b5-2109def3e65c": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "WF Start"
		},
		"ec164dd7-416a-47a8-8de1-958e66ffc61a": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent1",
			"name": "WF End"
		},
		"2aa5d57b-79cd-42e2-89de-6e3038f28dc0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "17792de6-b06f-4e12-a5b5-2109def3e65c",
			"targetRef": "64564ec6-611a-4cbf-b49a-f30492cb99bd"
		},
		"90cadcbf-9c5b-4e67-b030-8c3e9f2e61e9": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"8518a401-08b2-4a74-8ed3-8054f71612e8": {},
				"0b0af0fe-5e46-4482-8ede-8985dd8113b2": {},
				"14697653-a704-42d1-ab51-15ccdc32928e": {},
				"1dd60e23-8ab7-44ed-a09c-18c63f4dd931": {},
				"50ddb053-7202-4af1-bc9c-3189f312f6a3": {},
				"5ddd2749-1730-41da-b735-65e4462a2648": {},
				"ddaad058-7f6d-4dc6-ac5b-9069b0a9688e": {}
			}
		},
		"8518a401-08b2-4a74-8ed3-8054f71612e8": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 13.5,
			"y": -261,
			"width": 32,
			"height": 32,
			"object": "17792de6-b06f-4e12-a5b5-2109def3e65c"
		},
		"0b0af0fe-5e46-4482-8ede-8985dd8113b2": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 12,
			"y": 144,
			"width": 35,
			"height": 35,
			"object": "ec164dd7-416a-47a8-8de1-958e66ffc61a"
		},
		"14697653-a704-42d1-ab51-15ccdc32928e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.47624969482422,-245 29.47624969482422,-130",
			"sourceSymbol": "8518a401-08b2-4a74-8ed3-8054f71612e8",
			"targetSymbol": "1dd60e23-8ab7-44ed-a09c-18c63f4dd931",
			"object": "2aa5d57b-79cd-42e2-89de-6e3038f28dc0"
		},
		"6d7411a5-807a-459e-9a9b-cc8da493e799": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"sequenceflow": 3,
			"startevent": 1,
			"endevent": 1,
			"usertask": 1,
			"servicetask": 1
		},
		"64564ec6-611a-4cbf-b49a-f30492cb99bd": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "bpmrulesruntime_CLONING",
			"path": "/rules-service/v1/rules/invoke?rule_service_name=DemoApprovers::GetApprover",
			"httpMethod": "POST",
			"xsrfPath": "/rules-service/v1/rules/xsrf-token",
			"requestVariable": "${context}",
			"responseVariable": "${context.Return}",
			"id": "servicetask1",
			"name": "Get Approver from Business Rules"
		},
		"1dd60e23-8ab7-44ed-a09c-18c63f4dd931": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": -30,
			"y": -176,
			"width": 119,
			"height": 92,
			"object": "64564ec6-611a-4cbf-b49a-f30492cb99bd"
		},
		"b1966ab6-c99d-400f-a03c-3ad6c4a7965c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "64564ec6-611a-4cbf-b49a-f30492cb99bd",
			"targetRef": "01c236c6-a327-486c-ba3b-e9d34f1fe5b0"
		},
		"50ddb053-7202-4af1-bc9c-3189f312f6a3": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.75,-130 29.75,-10",
			"sourceSymbol": "1dd60e23-8ab7-44ed-a09c-18c63f4dd931",
			"targetSymbol": "5ddd2749-1730-41da-b735-65e4462a2648",
			"object": "b1966ab6-c99d-400f-a03c-3ad6c4a7965c"
		},
		"01c236c6-a327-486c-ba3b-e9d34f1fe5b0": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approve Currency Exchange",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"userInterface": "sapui5://html5apps/bpmformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Return.UserID}",
			"formReference": "/forms/ZCURR_Approver/form1.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "form1"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approve Currency Exchange"
		},
		"5ddd2749-1730-41da-b735-65e4462a2648": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": -20,
			"y": -40,
			"width": 100,
			"height": 60,
			"object": "01c236c6-a327-486c-ba3b-e9d34f1fe5b0"
		},
		"4a395444-148c-419b-a404-cb3f9e12d847": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow3",
			"name": "SequenceFlow3",
			"sourceRef": "01c236c6-a327-486c-ba3b-e9d34f1fe5b0",
			"targetRef": "ec164dd7-416a-47a8-8de1-958e66ffc61a"
		},
		"ddaad058-7f6d-4dc6-ac5b-9069b0a9688e": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "29.75,-10 29.75,161.5",
			"sourceSymbol": "5ddd2749-1730-41da-b735-65e4462a2648",
			"targetSymbol": "0b0af0fe-5e46-4482-8ede-8985dd8113b2",
			"object": "4a395444-148c-419b-a404-cb3f9e12d847"
		}
	}
}