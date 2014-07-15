CBLogger
========

iOS CoreBluetooth API logger jailbreak tweak

In my desire to hack the Jawbone Up24 to make it vibrate based on certain external events, I needed a way to understand the protocol the iOS app uses.
While the Bluetooth LE security is completely broken, I didn't want to have to buy one of these ubertooth device.

Instead I opted to write a jailbreak tweak that would log every iOS CoreBluetooth calls made by the app and see if I could reverse engineer it.
And before you know it, I could see everything:
```
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>:  = <CBPeripheral: 0x15e159c0 identifier = XXXX-REDACTED-XXXX, Name = "UP24", state = connected>
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> handleCharacteristicValueUpdated:{
	    kCBMsgArgCharacteristicHandle = 14;
	    kCBMsgArgData = <200f1ff3 bd8828f8 b497094b 79b37841 1f9a>;
	    kCBMsgArgDeviceUUID = "<__NSConcreteUUID 0x17057e40> XXXX-REDACTED-XXXX";
	    kCBMsgArgResult = 0;
	}]
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> handleCharacteristicEvent:{
	    kCBMsgArgCharacteristicHandle = 14;
	    kCBMsgArgData = <200f1ff3 bd8828f8 b497094b 79b37841 1f9a>;
	    kCBMsgArgDeviceUUID = "<__NSConcreteUUID 0x17057e40> XXXX-REDACTED-XXXX";
	    kCBMsgArgResult = 0;
	} characteristicSelector:handleValueUpdated: delegateSelector:peripheral:didUpdateValueForCharacteristic:error:]
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> handleAttributeEvent:14 args:{
	    kCBMsgArgCharacteristicHandle = 14;
	    kCBMsgArgData = <200f1ff3 bd8828f8 b497094b 79b37841 1f9a>;
	    kCBMsgArgDeviceUUID = "<__NSConcreteUUID 0x17057e40> XXXX-REDACTED-XXXX";
	    kCBMsgArgResult = 0;
	} attributeSelector:handleValueUpdated: delegateSelector:peripheral:didUpdateValueForCharacteristic:error:]
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> attributeForHandle:14]
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>:  = <CBCharacteristic: 0x15f1fce0>
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> isConnected]
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>:  = 1
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> isConnected]
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>:  = 1
Jul 11 09:44:35 Superfly Nudge[1276] <Warning>: -[<CBPeripheral: 0x15e159c0> writeValue:<73201310 051f8e89 2aecd1ae 1bf09b06 b80e8b> forCharacteristic:<CBCharacteristic: 0x15e829e0> type:0]
```
