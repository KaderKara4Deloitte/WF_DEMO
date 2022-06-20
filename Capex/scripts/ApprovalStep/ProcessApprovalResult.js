/*
// read from existing workflow context 
var productInfo = $.context.productInfo; 
var productName = productInfo.productName; 
var productDescription = productInfo.productDescription;

// read contextual information
var taskDefinitionId = $.info.taskDefinitionId;

// read user task information
var lastUserTask1 = $.usertasks.usertask1.last;
var userTaskSubject = lastUserTask1.subject;
var userTaskProcessor = lastUserTask1.processor;
var userTaskCompletedAt = lastUserTask1.completedAt;

var userTaskStatusMessage = " User task '" + userTaskSubject + "' has been completed by " + userTaskProcessor + " at " + userTaskCompletedAt;

// create new node 'product'
var product = {
		productDetails: productName  + " " + productDescription,
		workflowStep: taskDefinitionId
};

// write 'product' node to workflow context
$.context.product = product;
*/

var task = $.usertasks.usertask1.last;

var decision = {
	"User": task.processor,
	"Role": $.context.role,
	"Decision": task.decision,
	"Comment": $.context.comment
};

$.context.History.push(decision);
$.context.comment = "";


if (task.decision == "rework") {
    $.context.internal.step.isReapproval = true;
    $.context.internal.approvalStatus = "In Rework";
} else if (task.decision == "approve") {
    $.context.internal.approvalStatus = "Approved";
} else {
	$.context.internal.approvalStatus = "Rejected";
	$.context.internal.workflowTerminated = true;
}
