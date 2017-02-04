# SLPickerView

Este componente crea de forma facil y sencilla toda la interface y la interaccion de un UIPickerView en las aplicaciones de iOS.

Se puede crear 2 tipos de componentes:
* SLNumbersPickerView: componente con las opciones numericas.
* SLTextPickerView: componente con las opciones con textos.

# Inicialization

* Add to your project the files SLPickerView.{h,m}
* You need initialice the picker with a simple method like.

```
    [SLPickerView showNumericalPickerViewWithMaxValue:20
                                         withMinValue:3
                                      withPreSelected:[self.numberButton.currentTitle intValue]
                                      completionBlock:^(int selectedValue) {
                                          //TODO: Callback
                                      }];
```
# TODO

* Create podspec. Version 1.0.0
* Create method to set frame.
* Create method to set position in fullscreen.
  - Bottom
  - Top
  - Center
* Create callbacks in order to set the custom view for all rows on pickerView.
* Create new version 1.1.0
* Properties to personalizate the screen.
