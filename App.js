
import React, {Component} from 'react';
import ReactNative, {
  Platform,
  StyleSheet,
  Text,
  View,
  requireNativeComponent,
  UIManager,
  Button
} from 'react-native';

const BridgeModule = requireNativeComponent("BridgeModule");

export default class App extends Component<{}>  {
    onButtonPressed = () => {
       UIManager.dispatchViewManagerCommand( ReactNative.findNodeHandle(this.myComponent),
          UIManager.BridgeModule.Commands.onOpenScreenButtonPressed,[]);
    };

  render() {
    return (
      <View style={styles.container}>
         <Button onPress={this.onButtonPressed} title="Tap to open new screen" color="red" />
	 <BridgeModule style={styles.nativeBtn} ref={(component) => this.myComponent = component} />
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    backgroundColor: '#fff',
    alignItems: 'center',
    justifyContent: 'center',
  },
  nativeBtn: {
    height: 100,
    width: 300,
  },
});
