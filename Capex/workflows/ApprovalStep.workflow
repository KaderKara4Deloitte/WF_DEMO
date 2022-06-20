{
	"contents": {
		"fe44fe0e-c8c7-41c9-baaa-1d67fa15b54b": {
			"classDefinition": "com.sap.bpm.wfs.Model",
			"id": "approvalstep",
			"subject": "Approval Step",
			"businessKey": "${context.RequestId}",
			"customAttributes": [{
				"id": "RequestId",
				"label": "RequestId",
				"type": "string",
				"value": "${context.RequestId}"
			}, {
				"id": "Title",
				"label": "Title",
				"type": "string",
				"value": "${context.Title}"
			}, {
				"id": "Type",
				"label": "Type",
				"type": "string",
				"value": "${context.Investment.Type}"
			}, {
				"id": "TotalCost",
				"label": "TotalCost",
				"type": "string",
				"value": "${context.Investment.TotalCost}"
			}, {
				"id": "CAPEX",
				"label": "CAPEX",
				"type": "string",
				"value": "${context.Investment.CAPEX}"
			}, {
				"id": "OPEX",
				"label": "OPEX",
				"type": "string",
				"value": "${context.Investment.OPEX}"
			}, {
				"id": "ROI",
				"label": "ROI",
				"type": "string",
				"value": "${context.Investment.ROI}"
			}, {
				"id": "Currency",
				"label": "Currency",
				"type": "string",
				"value": "${context.Investment.Currency}"
			}, {
				"id": "approvalStatus",
				"label": "approvalStatus",
				"type": "string",
				"value": "${context.internal.approvalStatus}"
			}],
			"name": "ApprovalStep",
			"documentation": "Approval Step",
			"lastIds": "62d7f4ed-4063-4c44-af8b-39050bd44926",
			"events": {
				"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
					"name": "Start Approval Step"
				},
				"66e10ba1-12af-4681-b6a8-a7b8162c2b6b": {
					"name": "Terminate Approval"
				},
				"8c6199ad-b9e1-4e95-b208-8df3bdf9567f": {
					"name": "End Approval Step"
				}
			},
			"activities": {
				"e1407e69-6a3c-48d4-9a9b-635b7e51ecb1": {
					"name": "Prepare Approval"
				},
				"48c56cd8-2c71-4046-88a6-13c4b524b83d": {
					"name": "Get Approvers"
				},
				"9479a9d8-7761-423f-bfbc-bf0ed950e3a5": {
					"name": "Approval Needed?"
				},
				"63a947da-b917-4636-a4d1-67e5c3efe8ee": {
					"name": "Approval Task"
				},
				"27a84d52-a7f2-4e3f-8ca7-8f818afa2bd8": {
					"name": "Process Approval Result"
				},
				"2e285e22-a435-4398-b99d-e1e9a7575357": {
					"name": "Approval Decision"
				},
				"4ca2a50f-ac52-4646-b883-cab48ee18d72": {
					"name": "Rework Approval Request"
				},
				"bcb8ec06-f8eb-45a0-93ef-60e97da85410": {
					"name": "Process Approver Details"
				}
			},
			"sequenceFlows": {
				"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
					"name": "SequenceFlow1"
				},
				"6cea956c-bdf4-4e8f-a691-7e2d39cbfa93": {
					"name": "SequenceFlow2"
				},
				"67f2c3f0-3533-47ee-8d68-4d39d877ddd2": {
					"name": "SequenceFlow4"
				},
				"d5277163-71a2-43d0-9649-2cb62240d0a3": {
					"name": "SequenceFlow6"
				},
				"7a297b76-97f9-4d25-b125-80b6efb61d4c": {
					"name": "SequenceFlow7"
				},
				"31d74ce4-ffd1-4bb2-9971-a3a462d4f159": {
					"name": "Rejected"
				},
				"2e584e30-d305-46db-b640-0aa408789336": {
					"name": "SequenceFlow10"
				},
				"6d00ed7c-b0fa-433d-a595-386dd0687786": {
					"name": "Rework"
				},
				"1b0c13e8-d98d-40f3-9752-1619b34c999e": {
					"name": "Accepted"
				},
				"fed825f1-25bf-4313-9dfc-c8f4ecd8928e": {
					"name": "No"
				},
				"518ba582-5ba0-4978-8433-bf844fbdb7f0": {
					"name": "SequenceFlow15"
				},
				"a0efce7b-d65c-4573-99b1-4e4595ad2069": {
					"name": "Yes"
				}
			},
			"diagrams": {
				"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {}
			}
		},
		"11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3": {
			"classDefinition": "com.sap.bpm.wfs.StartEvent",
			"id": "startevent1",
			"name": "Start Approval Step",
			"sampleContextRefs": {
				"b64e3ee3-db3a-4aab-ac97-d91b8a7f9967": {}
			}
		},
		"66e10ba1-12af-4681-b6a8-a7b8162c2b6b": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent2",
			"name": "Terminate Approval",
			"eventDefinitions": {
				"f593c1ef-2fc6-465d-b193-30b6ae2a3d81": {}
			}
		},
		"8c6199ad-b9e1-4e95-b208-8df3bdf9567f": {
			"classDefinition": "com.sap.bpm.wfs.EndEvent",
			"id": "endevent3",
			"name": "End Approval Step",
			"eventDefinitions": {
				"388fee4f-56ec-45c8-8b61-898a6817eb22": {}
			}
		},
		"e1407e69-6a3c-48d4-9a9b-635b7e51ecb1": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/PrepareApproval.js",
			"id": "scripttask1",
			"name": "Prepare Approval"
		},
		"48c56cd8-2c71-4046-88a6-13c4b524b83d": {
			"classDefinition": "com.sap.bpm.wfs.ServiceTask",
			"destination": "BUSINESS_RULES",
			"path": "/rest/v2/workingset-rule-services",
			"httpMethod": "POST",
			"requestVariable": "${context.internal.rulesPayload}",
			"responseVariable": "${context.internal.ruleresult}",
			"id": "servicetask2",
			"name": "Get Approvers"
		},
		"9479a9d8-7761-423f-bfbc-bf0ed950e3a5": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway1",
			"name": "Approval Needed?",
			"default": "fed825f1-25bf-4313-9dfc-c8f4ecd8928e"
		},
		"63a947da-b917-4636-a4d1-67e5c3efe8ee": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Approval for Capital Expenditure Request \"${context.Title}\".",
			"priority": "HIGH",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.internal.step.approver.UserId}",
			"recipientGroups": "${context.internal.step.approver.GroupId}",
			"formReference": "/forms/ApprovalStep/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask1",
			"name": "Approval Task",
			"dueDateRef": "aeb949bb-a61d-4d4e-b0de-fb236759978e"
		},
		"27a84d52-a7f2-4e3f-8ca7-8f818afa2bd8": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/ProcessApprovalResult.js",
			"id": "scripttask2",
			"name": "Process Approval Result"
		},
		"2e285e22-a435-4398-b99d-e1e9a7575357": {
			"classDefinition": "com.sap.bpm.wfs.ExclusiveGateway",
			"id": "exclusivegateway2",
			"name": "Approval Decision",
			"default": "31d74ce4-ffd1-4bb2-9971-a3a462d4f159"
		},
		"4ca2a50f-ac52-4646-b883-cab48ee18d72": {
			"classDefinition": "com.sap.bpm.wfs.UserTask",
			"subject": "Rework required for CapEx Request \"${context.Title}\"",
			"priority": "MEDIUM",
			"isHiddenInLogForParticipant": false,
			"supportsForward": false,
			"userInterface": "sapui5://comsapbpmworkflow.comsapbpmwusformplayer/com.sap.bpm.wus.form.player",
			"recipientUsers": "${context.Requester.UserId}, ${info.startedBy}",
			"formReference": "/forms/ApprovalStep/ApprovalForm.form",
			"userInterfaceParams": [{
				"key": "formId",
				"value": "approvalform"
			}, {
				"key": "formRevision",
				"value": "1.0"
			}],
			"id": "usertask2",
			"name": "Rework Approval Request"
		},
		"bcb8ec06-f8eb-45a0-93ef-60e97da85410": {
			"classDefinition": "com.sap.bpm.wfs.ScriptTask",
			"reference": "/scripts/ApprovalStep/ProcessApproverDetails.js",
			"id": "scripttask3",
			"name": "Process Approver Details"
		},
		"c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow1",
			"name": "SequenceFlow1",
			"sourceRef": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3",
			"targetRef": "e1407e69-6a3c-48d4-9a9b-635b7e51ecb1"
		},
		"6cea956c-bdf4-4e8f-a691-7e2d39cbfa93": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow2",
			"name": "SequenceFlow2",
			"sourceRef": "e1407e69-6a3c-48d4-9a9b-635b7e51ecb1",
			"targetRef": "48c56cd8-2c71-4046-88a6-13c4b524b83d"
		},
		"67f2c3f0-3533-47ee-8d68-4d39d877ddd2": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow4",
			"name": "SequenceFlow4",
			"sourceRef": "48c56cd8-2c71-4046-88a6-13c4b524b83d",
			"targetRef": "bcb8ec06-f8eb-45a0-93ef-60e97da85410"
		},
		"d5277163-71a2-43d0-9649-2cb62240d0a3": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow6",
			"name": "SequenceFlow6",
			"sourceRef": "63a947da-b917-4636-a4d1-67e5c3efe8ee",
			"targetRef": "27a84d52-a7f2-4e3f-8ca7-8f818afa2bd8"
		},
		"7a297b76-97f9-4d25-b125-80b6efb61d4c": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow7",
			"name": "SequenceFlow7",
			"sourceRef": "27a84d52-a7f2-4e3f-8ca7-8f818afa2bd8",
			"targetRef": "2e285e22-a435-4398-b99d-e1e9a7575357"
		},
		"31d74ce4-ffd1-4bb2-9971-a3a462d4f159": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow9",
			"name": "Rejected",
			"sourceRef": "2e285e22-a435-4398-b99d-e1e9a7575357",
			"targetRef": "66e10ba1-12af-4681-b6a8-a7b8162c2b6b"
		},
		"2e584e30-d305-46db-b640-0aa408789336": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow10",
			"name": "SequenceFlow10",
			"sourceRef": "4ca2a50f-ac52-4646-b883-cab48ee18d72",
			"targetRef": "e1407e69-6a3c-48d4-9a9b-635b7e51ecb1"
		},
		"6d00ed7c-b0fa-433d-a595-386dd0687786": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"rework\"}",
			"id": "sequenceflow12",
			"name": "Rework",
			"sourceRef": "2e285e22-a435-4398-b99d-e1e9a7575357",
			"targetRef": "4ca2a50f-ac52-4646-b883-cab48ee18d72"
		},
		"1b0c13e8-d98d-40f3-9752-1619b34c999e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${usertasks.usertask1.last.decision == \"approve\"}",
			"id": "sequenceflow13",
			"name": "Accepted",
			"sourceRef": "2e285e22-a435-4398-b99d-e1e9a7575357",
			"targetRef": "8c6199ad-b9e1-4e95-b208-8df3bdf9567f"
		},
		"fed825f1-25bf-4313-9dfc-c8f4ecd8928e": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow14",
			"name": "No",
			"sourceRef": "9479a9d8-7761-423f-bfbc-bf0ed950e3a5",
			"targetRef": "8c6199ad-b9e1-4e95-b208-8df3bdf9567f"
		},
		"518ba582-5ba0-4978-8433-bf844fbdb7f0": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"id": "sequenceflow15",
			"name": "SequenceFlow15",
			"sourceRef": "bcb8ec06-f8eb-45a0-93ef-60e97da85410",
			"targetRef": "9479a9d8-7761-423f-bfbc-bf0ed950e3a5"
		},
		"a0efce7b-d65c-4573-99b1-4e4595ad2069": {
			"classDefinition": "com.sap.bpm.wfs.SequenceFlow",
			"condition": "${context.internal.step.isRequired}",
			"id": "sequenceflow16",
			"name": "Yes",
			"documentation": "Yes",
			"sourceRef": "9479a9d8-7761-423f-bfbc-bf0ed950e3a5",
			"targetRef": "63a947da-b917-4636-a4d1-67e5c3efe8ee"
		},
		"42fa7a2d-c526-4a02-b3ba-49b5168ba644": {
			"classDefinition": "com.sap.bpm.wfs.ui.Diagram",
			"symbols": {
				"df898b52-91e1-4778-baad-2ad9a261d30e": {},
				"6bb141da-d485-4317-93b8-e17711df4c32": {},
				"67662334-a3d3-47b0-ac0e-bcd250fd9bcb": {},
				"45e098d4-0ab9-4ead-b5e9-b5acb763214d": {},
				"811fac82-b70f-40c7-9dc2-7c77bb49ebe3": {},
				"95220361-0d60-4c36-909d-562fe951cae1": {},
				"8586377d-b580-47dc-8d1b-999086fa3a7c": {},
				"7d95594a-d228-43a9-9b13-ad6152d36548": {},
				"bdff01a1-af8a-4d5c-b344-fbbdd2c29e29": {},
				"e4455da4-20d3-4bec-b6b7-b2c9646d0dd7": {},
				"e37bb853-d0bf-4d85-a209-74dfbc6b95ab": {},
				"47d087f4-a314-4289-9b3d-e3e496dedd32": {},
				"008003a3-2b4f-4c9c-a26c-08ef29ffb6a8": {},
				"aabd4192-7408-4336-b42d-3dffdccd24a0": {},
				"943d1db6-283f-48b7-9ed9-38d42848c781": {},
				"4563d97c-b8fb-4816-abd6-121929c073a8": {},
				"6c8cf827-993c-4d0b-8a08-c86f15d96c78": {},
				"43ec419a-0279-4115-b632-027cb05f7b3e": {},
				"cc288a49-9851-401e-b3ca-07acfef80f6a": {},
				"4b5931a9-32f5-4f5f-b59f-c0418fa9b562": {},
				"65bad7b6-3fa1-45cb-9f6d-f0138b0e502e": {},
				"3cb91acf-4444-4740-baf9-429b5de7b458": {},
				"8fab935b-98f0-43af-b121-df54449dcb09": {}
			}
		},
		"b64e3ee3-db3a-4aab-ac97-d91b8a7f9967": {
			"classDefinition": "com.sap.bpm.wfs.SampleContext",
			"reference": "/sample-data/ApprovalStep/CapexSampleStartPayload.json",
			"id": "default-start-context"
		},
		"f593c1ef-2fc6-465d-b193-30b6ae2a3d81": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition1"
		},
		"df898b52-91e1-4778-baad-2ad9a261d30e": {
			"classDefinition": "com.sap.bpm.wfs.ui.StartEventSymbol",
			"x": 12,
			"y": 26,
			"width": 32,
			"height": 32,
			"object": "11a9b5ee-17c0-4159-9bbf-454dcfdcd5c3"
		},
		"6bb141da-d485-4317-93b8-e17711df4c32": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "44,42 94,42",
			"sourceSymbol": "df898b52-91e1-4778-baad-2ad9a261d30e",
			"targetSymbol": "67662334-a3d3-47b0-ac0e-bcd250fd9bcb",
			"object": "c6b99f32-5fe6-4ab6-b60a-80fba1b9ae0f"
		},
		"67662334-a3d3-47b0-ac0e-bcd250fd9bcb": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 94,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "e1407e69-6a3c-48d4-9a9b-635b7e51ecb1"
		},
		"45e098d4-0ab9-4ead-b5e9-b5acb763214d": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "194,42 227,42",
			"sourceSymbol": "67662334-a3d3-47b0-ac0e-bcd250fd9bcb",
			"targetSymbol": "811fac82-b70f-40c7-9dc2-7c77bb49ebe3",
			"object": "6cea956c-bdf4-4e8f-a691-7e2d39cbfa93"
		},
		"811fac82-b70f-40c7-9dc2-7c77bb49ebe3": {
			"classDefinition": "com.sap.bpm.wfs.ui.ServiceTaskSymbol",
			"x": 227,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "48c56cd8-2c71-4046-88a6-13c4b524b83d"
		},
		"95220361-0d60-4c36-909d-562fe951cae1": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "277,42 416.25,42",
			"sourceSymbol": "811fac82-b70f-40c7-9dc2-7c77bb49ebe3",
			"targetSymbol": "65bad7b6-3fa1-45cb-9f6d-f0138b0e502e",
			"object": "67f2c3f0-3533-47ee-8d68-4d39d877ddd2"
		},
		"8586377d-b580-47dc-8d1b-999086fa3a7c": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 495,
			"y": 21,
			"object": "9479a9d8-7761-423f-bfbc-bf0ed950e3a5"
		},
		"7d95594a-d228-43a9-9b13-ad6152d36548": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 573,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "63a947da-b917-4636-a4d1-67e5c3efe8ee"
		},
		"bdff01a1-af8a-4d5c-b344-fbbdd2c29e29": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "673,42 725,42",
			"sourceSymbol": "7d95594a-d228-43a9-9b13-ad6152d36548",
			"targetSymbol": "e4455da4-20d3-4bec-b6b7-b2c9646d0dd7",
			"object": "d5277163-71a2-43d0-9649-2cb62240d0a3"
		},
		"e4455da4-20d3-4bec-b6b7-b2c9646d0dd7": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 725,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "27a84d52-a7f2-4e3f-8ca7-8f818afa2bd8"
		},
		"e37bb853-d0bf-4d85-a209-74dfbc6b95ab": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "825,42 839,42",
			"sourceSymbol": "e4455da4-20d3-4bec-b6b7-b2c9646d0dd7",
			"targetSymbol": "47d087f4-a314-4289-9b3d-e3e496dedd32",
			"object": "7a297b76-97f9-4d25-b125-80b6efb61d4c"
		},
		"47d087f4-a314-4289-9b3d-e3e496dedd32": {
			"classDefinition": "com.sap.bpm.wfs.ui.ExclusiveGatewaySymbol",
			"x": 839,
			"y": 21,
			"object": "2e285e22-a435-4398-b99d-e1e9a7575357"
		},
		"008003a3-2b4f-4c9c-a26c-08ef29ffb6a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 934,
			"y": 20.5,
			"width": 35,
			"height": 35,
			"object": "66e10ba1-12af-4681-b6a8-a7b8162c2b6b"
		},
		"aabd4192-7408-4336-b42d-3dffdccd24a0": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "881,40 934,40",
			"sourceSymbol": "47d087f4-a314-4289-9b3d-e3e496dedd32",
			"targetSymbol": "008003a3-2b4f-4c9c-a26c-08ef29ffb6a8",
			"object": "31d74ce4-ffd1-4bb2-9971-a3a462d4f159"
		},
		"943d1db6-283f-48b7-9ed9-38d42848c781": {
			"classDefinition": "com.sap.bpm.wfs.ui.UserTaskSymbol",
			"x": 89,
			"y": -117,
			"width": 100,
			"height": 60,
			"object": "4ca2a50f-ac52-4646-b883-cab48ee18d72"
		},
		"4563d97c-b8fb-4816-abd6-121929c073a8": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "139,-87 139,25",
			"sourceSymbol": "943d1db6-283f-48b7-9ed9-38d42848c781",
			"targetSymbol": "67662334-a3d3-47b0-ac0e-bcd250fd9bcb",
			"object": "2e584e30-d305-46db-b640-0aa408789336"
		},
		"6c8cf827-993c-4d0b-8a08-c86f15d96c78": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "858,39 858,-80 144,-80",
			"sourceSymbol": "47d087f4-a314-4289-9b3d-e3e496dedd32",
			"targetSymbol": "943d1db6-283f-48b7-9ed9-38d42848c781",
			"object": "6d00ed7c-b0fa-433d-a595-386dd0687786"
		},
		"43ec419a-0279-4115-b632-027cb05f7b3e": {
			"classDefinition": "com.sap.bpm.wfs.ui.EndEventSymbol",
			"x": 838.5,
			"y": 232.5,
			"width": 35,
			"height": 35,
			"object": "8c6199ad-b9e1-4e95-b208-8df3bdf9567f"
		},
		"cc288a49-9851-401e-b3ca-07acfef80f6a": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "858,42 858,250",
			"sourceSymbol": "47d087f4-a314-4289-9b3d-e3e496dedd32",
			"targetSymbol": "43ec419a-0279-4115-b632-027cb05f7b3e",
			"object": "1b0c13e8-d98d-40f3-9752-1619b34c999e"
		},
		"4b5931a9-32f5-4f5f-b59f-c0418fa9b562": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "518,42 518,250 839,250",
			"sourceSymbol": "8586377d-b580-47dc-8d1b-999086fa3a7c",
			"targetSymbol": "43ec419a-0279-4115-b632-027cb05f7b3e",
			"object": "fed825f1-25bf-4313-9dfc-c8f4ecd8928e"
		},
		"65bad7b6-3fa1-45cb-9f6d-f0138b0e502e": {
			"classDefinition": "com.sap.bpm.wfs.ui.ScriptTaskSymbol",
			"x": 366.25,
			"y": 12,
			"width": 100,
			"height": 60,
			"object": "bcb8ec06-f8eb-45a0-93ef-60e97da85410"
		},
		"3cb91acf-4444-4740-baf9-429b5de7b458": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "416.25,42 516,42",
			"sourceSymbol": "65bad7b6-3fa1-45cb-9f6d-f0138b0e502e",
			"targetSymbol": "8586377d-b580-47dc-8d1b-999086fa3a7c",
			"object": "518ba582-5ba0-4978-8433-bf844fbdb7f0"
		},
		"8fab935b-98f0-43af-b121-df54449dcb09": {
			"classDefinition": "com.sap.bpm.wfs.ui.SequenceFlowSymbol",
			"points": "516,42 605,42",
			"sourceSymbol": "8586377d-b580-47dc-8d1b-999086fa3a7c",
			"targetSymbol": "7d95594a-d228-43a9-9b13-ad6152d36548",
			"object": "a0efce7b-d65c-4573-99b1-4e4595ad2069"
		},
		"62d7f4ed-4063-4c44-af8b-39050bd44926": {
			"classDefinition": "com.sap.bpm.wfs.LastIDs",
			"terminateeventdefinition": 3,
			"timereventdefinition": 1,
			"sequenceflow": 16,
			"startevent": 1,
			"endevent": 4,
			"usertask": 2,
			"servicetask": 2,
			"scripttask": 3,
			"exclusivegateway": 2,
			"referencedsubflow": 1
		},
		"aeb949bb-a61d-4d4e-b0de-fb236759978e": {
			"classDefinition": "com.sap.bpm.wfs.TimerEventDefinition",
			"timeDuration": "P10D",
			"id": "timereventdefinition1"
		},
		"388fee4f-56ec-45c8-8b61-898a6817eb22": {
			"classDefinition": "com.sap.bpm.wfs.TerminateEventDefinition",
			"id": "terminateeventdefinition3"
		}
	}
}