#import <CoreBluetooth/CBCentral.h>
#import <CoreBluetooth/CBCentralManager.h>
#import <CoreBluetooth/CBPeripheral.h>
#import <CoreBluetooth/CBPeripheralManager.h>

%hook CBCentral
- (void)setMaximumUpdateValueLength:(unsigned int )maximumUpdateValueLength { %log; %orig; }
- (unsigned int )maximumUpdateValueLength { %log; unsigned int  r = %orig; NSLog(@" = %u", r); return r; }
- (NSUUID *)identifier { %log; NSUUID * r = %orig; NSLog(@" = %@", r); return r; }
- (struct __CFUUID *)UUID { %log; struct __CFUUID * r = %orig; NSLog(@" = %p", r); return r; }
- (id)description { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)copyWithZone:(struct _NSZone *)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)dealloc { %log; %orig; }
- (id)initWithUUID:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end

%hook CBCentralManager
- (int )state { %log; int  r = %orig; NSLog(@" = %d", r); return r; }
//- (void)setDelegate:(id <CBCentralManagerDelegate> )delegate { %log; %orig; }
- (id <CBCentralManagerDelegate> )delegate { %log; id <CBCentralManagerDelegate>  r = %orig; NSLog(@" = 0x%lx", (intptr_t)r); return r; }
- (void)xpcConnectionDidReset:(id)arg1 { %log; %orig; }
- (void)xpcConnectionIsInvalid:(id)arg1 { %log; %orig; }
- (void)xpcConnection:(id)arg1 didReceiveMsg:(int)arg2 args:(id)arg3 { %log; %orig; }
- (void)handlePeripheralMsg:(int)arg1 args:(id)arg2 { %log; %orig; }
- (void)handleZoneLost:(id)arg1 { %log; %orig; }
- (void)handlePeripheralConnectionStateUpdated:(id)arg1 { %log; %orig; }
- (void)handlePeripheralDisconnectionCompleted:(id)arg1 { %log; %orig; }
- (void)handlePeripheralConnectionCompleted:(id)arg1 { %log; %orig; }
- (void)handlePeripheralDiscovered:(id)arg1 { %log; %orig; }
- (void)handleConnectedPeripheralsRetrieved:(id)arg1 { %log; %orig; }
- (void)handlePeripheralsRetrieved:(id)arg1 { %log; %orig; }
- (void)handleRestoringState:(id)arg1 { %log; %orig; }
- (void)handleStateUpdated:(id)arg1 { %log; %orig; }
- (void)cancelPeripheralConnection:(id)arg1 force:(BOOL)arg2 { %log; %orig; }
- (void)cancelPeripheralConnection:(id)arg1 { %log; %orig; }
- (void)connectPeripheral:(id)arg1 options:(id)arg2 { %log; %orig; }
- (void)stopScan { %log; %orig; }
- (void)scanForPeripheralsWithServices:(id)arg1 options:(id)arg2 { %log; %orig; }
- (id)retrievePairedPeripherals { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)retrieveConnectedPeripheralsWithServices:(id)arg1 allowAll:(BOOL)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)retrieveConnectedPeripheralsWithServices:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)retrieveConnectedPeripherals { %log; %orig; }
- (id)retrievePeripheralsWithIdentifiers:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)retrievePeripherals:(id)arg1 { %log; %orig; }
- (id)initWithDelegate:(id)arg1 queue:(id)arg2 options:(id)arg3 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithDelegate:(id)arg1 queue:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)dealloc { %log; %orig; }
- (id)dataArrayToUUIDArray:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)orphanPeripherals { %log; %orig; }
- (id)peripheralForUUID:(id)arg1 args:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
//- (void)peripheralWillBeReleased:(id)arg1 { %log; %orig; }
- (id)sendSyncMsg:(int)arg1 args:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)sendMsg:(int)arg1 args:(id)arg2 { %log; %orig; }
%end

%hook CBCentralManagerDelegate
- (void)centralManagerDidUpdateState:(CBCentralManager *)central { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central willRestoreState:(NSDictionary *)dict { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central didRetrievePeripherals:(NSArray *)peripherals { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central didRetrieveConnectedPeripherals:(NSArray *)peripherals { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central didDiscoverPeripheral:(CBPeripheral *)peripheral advertisementData:(NSDictionary *)advertisementData RSSI:(NSNumber *)RSSI { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central didConnectPeripheral:(CBPeripheral *)peripheral { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central didFailToConnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error { %log; %orig; }
- (void)centralManager:(CBCentralManager *)central didDisconnectPeripheral:(CBPeripheral *)peripheral error:(NSError *)error { %log; %orig; }
%end

%hook CBPeripheral
- (BOOL )isConnectedToSystem { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL )isPaired { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setServices:(NSArray *)services { %log; %orig; }
- (NSArray *)services { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setRSSI:(NSNumber *)RSSI { %log; %orig; }
- (NSNumber *)RSSI { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setName:(NSString *)name { %log; %orig; }
- (NSString *)name { %log; NSString * r = %orig; NSLog(@" = %@", r); return r; }
- (NSUUID *)identifier { %log; NSUUID * r = %orig; NSLog(@" = %@", r); return r; }
- (struct __CFUUID *)UUID { %log; struct __CFUUID * r = %orig; NSLog(@" = %p", r); return r; }
//- (void)setDelegate:(id <CBPeripheralDelegate> )delegate { %log; %orig; }
- (id <CBPeripheralDelegate> )delegate { %log; id <CBPeripheralDelegate>  r = %orig; NSLog(@" = 0x%lx", (intptr_t)r); return r; }
- (void)handleDescriptorValueWritten:(id)arg1 { %log; %orig; }
- (void)handleDescriptorValueUpdated:(id)arg1 { %log; %orig; }
- (void)handleCharacteristicDescriptorsDiscovered:(id)arg1 { %log; %orig; }
- (void)handleCharacteristicValueNotifying:(id)arg1 { %log; %orig; }
- (void)handleCharacteristicValueWritten:(id)arg1 { %log; %orig; }
- (void)handleCharacteristicValueUpdated:(id)arg1 { %log; %orig; }
- (void)handleServiceCharacteristicsDiscovered:(id)arg1 { %log; %orig; }
- (void)handleServiceIncludedServicesDiscovered:(id)arg1 { %log; %orig; }
- (void)handleDescriptorEvent:(id)arg1 descriptorSelector:(SEL)arg2 delegateSelector:(SEL)arg3 { %log; %orig; }
- (void)handleCharacteristicEvent:(id)arg1 characteristicSelector:(SEL)arg2 delegateSelector:(SEL)arg3 { %log; %orig; }
- (void)handleServiceEvent:(id)arg1 serviceSelector:(SEL)arg2 delegateSelector:(SEL)arg3 { %log; %orig; }
- (void)handleAttributeEvent:(id)arg1 args:(id)arg2 attributeSelector:(SEL)arg3 delegateSelector:(SEL)arg4 { %log; %orig; }
- (void)handleUnpaired:(id)arg1 { %log; %orig; }
- (void)handlePairingCompleted:(id)arg1 { %log; %orig; }
- (void)handlePairingRequested:(id)arg1 { %log; %orig; }
- (void)handleServicesDiscovered:(id)arg1 { %log; %orig; }
- (void)handleWritesExecuted:(id)arg1 { %log; %orig; }
- (void)handleRSSIUpdated:(id)arg1 { %log; %orig; }
- (void)handleServicesChanged:(id)arg1 { %log; %orig; }
- (void)handleNameUpdated:(id)arg1 { %log; %orig; }
- (BOOL)hasTag:(id)arg1 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)untag:(id)arg1 { %log; %orig; }
- (void)tag:(id)arg1 { %log; %orig; }
- (void)unpair { %log; %orig; }
- (void)acceptPairing:(BOOL)arg1 ofType:(id)arg2 withPasskey:(id)arg3 { %log; %orig; }
- (void)pair { %log; %orig; }
- (void)writeValue:(id)arg1 forDescriptor:(id)arg2 { %log; %orig; }
- (void)readValueForDescriptor:(id)arg1 { %log; %orig; }
- (void)discoverDescriptorsForCharacteristic:(id)arg1 { %log; %orig; }
- (void)setNotifyValue:(BOOL)arg1 forCharacteristic:(id)arg2 { %log; %orig; }
- (void)setBroadcastValue:(BOOL)arg1 forCharacteristic:(id)arg2 { %log; %orig; }
- (void)reliablyWriteValues:(id)arg1 forCharacteristics:(id)arg2 { %log; %orig; }
- (void)writeValue:(id)arg1 forCharacteristic:(id)arg2 type:(int)arg3 { %log; %orig; }
- (void)readValueForCharacteristic:(id)arg1 { %log; %orig; }
- (void)discoverCharacteristics:(id)arg1 forService:(id)arg2 { %log; %orig; }
- (void)discoverIncludedServices:(id)arg1 forService:(id)arg2 { %log; %orig; }
- (void)discoverServices:(id)arg1 { %log; %orig; }
- (void)readRSSI { %log; %orig; }
- (BOOL )isConnected { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (void)setOrphan { %log; %orig; }
- (void)handleConnectionStateUpdated:(BOOL)arg1 { %log; %orig; }
- (void)handleDisconnection { %log; %orig; }
- (void)handleConnection:(BOOL)arg1 { %log; %orig; }
- (void)invalidateAllAttributes { %log; %orig; }
- (void)removeAttributeForHandle:(id)arg1 { %log; %orig; }
- (void)setAttribute:(id)arg1 forHandle:(id)arg2 { %log; %orig; }
- (id)attributeForHandle:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
//- (void)handleMsg:(int)arg1 args:(id)arg2 { %log; %orig; }
- (id)sendSyncMsg:(int)arg1 args:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)sendMsg:(int)arg1 requiresConnected:(BOOL)arg2 args:(id)arg3 { %log; %orig; }
- (void)sendMsg:(int)arg1 args:(id)arg2 { %log; %orig; }
- (id)description { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)copyWithZone:(struct _NSZone *)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)dealloc { %log; %orig; }
//- (oneway void)release { %log; oneway void r = %orig; NSLog(@" = 0x%x", (unsigned int)r); return r; }
- (id)initWithCentralManager:(id)arg1 dictionary:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end

%hook CBPeripheralManager
+ (int)authorizationStatus { %log; int r = %orig; NSLog(@" = %d", r); return r; }
- (BOOL )isAdvertising { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (int )state { %log; int  r = %orig; NSLog(@" = %d", r); return r; }
//- (void)setDelegate:(id <CBPeripheralManagerDelegate> )delegate { %log; %orig; }
- (id <CBPeripheralManagerDelegate> )delegate { %log; id <CBPeripheralManagerDelegate>  r = %orig; NSLog(@" = 0x%lx", (intptr_t)r); return r; }
- (void)xpcConnectionDidReset:(id)arg1 { %log; %orig; }
- (void)xpcConnectionIsInvalid:(id)arg1 { %log; %orig; }
- (void)xpcConnection:(id)arg1 didReceiveMsg:(int)arg2 args:(id)arg3 { %log; %orig; }
- (void)handleMTUChanged:(id)arg1 { %log; %orig; }
- (void)handleReadyForUpdates:(id)arg1 { %log; %orig; }
- (void)handleAdvertisingStopped:(id)arg1 { %log; %orig; }
- (void)handleAdvertisingStarted:(id)arg1 { %log; %orig; }
- (void)handleNotificationRemoved:(id)arg1 { %log; %orig; }
- (void)handleNotificationAdded:(id)arg1 { %log; %orig; }
- (void)handleSetAttributeValues:(id)arg1 { %log; %orig; }
- (void)handleGetAttributeValue:(id)arg1 { %log; %orig; }
- (void)handleServiceAdded:(id)arg1 { %log; %orig; }
- (void)handleRestoringState:(id)arg1 { %log; %orig; }
- (void)handleStateUpdated:(id)arg1 { %log; %orig; }
- (id)centralFromArgs:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)sendMsg:(int)arg1 args:(id)arg2 { %log; %orig; }
- (BOOL)updateValue:(id)arg1 forCharacteristic:(id)arg2 onSubscribedCentrals:(id)arg3 { %log; BOOL r = %orig; NSLog(@" = %d", r); return r; }
- (void)respondToRequest:(id)arg1 withResult:(int)arg2 { %log; %orig; }
- (void)removeAllServices { %log; %orig; }
- (void)removeService:(id)arg1 { %log; %orig; }
- (void)addService:(id)arg1 { %log; %orig; }
- (void)stopAdvertising { %log; %orig; }
- (void)startAdvertising:(id)arg1 { %log; %orig; }
- (void)setDesiredConnectionLatency:(int)arg1 forCentral:(id)arg2 { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (id)initWithDelegate:(id)arg1 queue:(id)arg2 options:(id)arg3 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithDelegate:(id)arg1 queue:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end

%hook CBPeripheralManagerDelegate
- (void)peripheralManagerDidUpdateState:(CBPeripheralManager *)peripheral { %log; %orig; }
- (void)peripheralManager:(CBPeripheralManager *)peripheral willRestoreState:(NSDictionary *)dict { %log; %orig; }
- (void)peripheralManagerDidStartAdvertising:(CBPeripheralManager *)peripheral error:(NSError *)error { %log; %orig; }
- (void)peripheralManager:(CBPeripheralManager *)peripheral didAddService:(CBService *)service error:(NSError *)error { %log; %orig; }
- (void)peripheralManager:(CBPeripheralManager *)peripheral central:(CBCentral *)central didSubscribeToCharacteristic:(CBCharacteristic *)characteristic { %log; %orig; }
- (void)peripheralManager:(CBPeripheralManager *)peripheral central:(CBCentral *)central didUnsubscribeFromCharacteristic:(CBCharacteristic *)characteristic { %log; %orig; }
- (void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveReadRequest:(CBATTRequest *)request { %log; %orig; }
- (void)peripheralManager:(CBPeripheralManager *)peripheral didReceiveWriteRequests:(NSArray *)requests { %log; %orig; }
- (void)peripheralManagerIsReadyToUpdateSubscribers:(CBPeripheralManager *)peripheral { %log; %orig; }
%end

%hook CBMutableService
- (void)setID:(NSNumber *)ID { %log; %orig; }
- (NSNumber *)ID { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setCharacteristics:(NSArray *)characteristics { %log; %orig; }
- (NSArray *)characteristics { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (id)description { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)dealloc { %log; %orig; }
- (id)initWithDictionary:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)initWithType:(id)arg1 primary:(BOOL)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)setUUID:(CBUUID *)UUID { %log; %orig; }
- (CBUUID *)UUID { %log; CBUUID * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setIncludedServices:(NSArray *)includedServices { %log; %orig; }
- (NSArray *)includedServices { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setIsPrimary:(BOOL )isPrimary { %log; %orig; }
- (BOOL )isPrimary { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
%end

%hook CBService
- (NSNumber *)endHandle { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (NSNumber *)startHandle { %log; NSNumber * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setCharacteristics:(NSArray *)characteristics { %log; %orig; }
- (NSArray *)characteristics { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (void)setIncludedServices:(NSArray *)includedServices { %log; %orig; }
- (NSArray *)includedServices { %log; NSArray * r = %orig; NSLog(@" = %@", r); return r; }
- (BOOL )isPrimary { %log; BOOL  r = %orig; NSLog(@" = %d", r); return r; }
- (CBUUID *)UUID { %log; CBUUID * r = %orig; NSLog(@" = %@", r); return r; }
- (CBPeripheral *)peripheral { %log; CBPeripheral * r = %orig; NSLog(@" = %@", r); return r; }
- (id)handleCharacteristicsDiscovered:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (id)handleIncludedServicesDiscovered:(id)arg1 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
- (void)invalidate { %log; %orig; }
- (void)dealloc { %log; %orig; }
- (id)initWithPeripheral:(id)arg1 dictionary:(id)arg2 { %log; id r = %orig; NSLog(@" = %@", r); return r; }
%end
