({
	getAllContacts: function(component) {
		var allContacts=component.get("c.getContacts");
        allContacts.setCallback(this, function(response){
            var state = response.getState();
            if(state === "SUCCESS"){
                /*var contacts = JSON.stringify(response.getReturnValue());
                console.log("con: "+JSON.stringify(contacts));
                console.log("Contacts: "+response.getReturnValue());
                component.set("v.contacts",JSON.parse(contacts));
                console.log("contact 2"+component.get("v.contacts"));
                */
                component.set("v.contacts",response.getReturnValue());
            }
        });
        $A.enqueueAction(allContacts);
	}
    
})