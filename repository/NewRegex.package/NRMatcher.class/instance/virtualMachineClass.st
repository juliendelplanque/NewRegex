accessing
virtualMachineClass
	^ virtualMachineClass ifNil: [ virtualMachineClass := self defaultVirtualMachineClass ]