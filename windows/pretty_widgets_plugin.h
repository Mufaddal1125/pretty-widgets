#ifndef FLUTTER_PLUGIN_PRETTY_WIDGETS_PLUGIN_H_
#define FLUTTER_PLUGIN_PRETTY_WIDGETS_PLUGIN_H_

#include <flutter/method_channel.h>
#include <flutter/plugin_registrar_windows.h>

#include <memory>

namespace pretty_widgets {

class PrettyWidgetsPlugin : public flutter::Plugin {
 public:
  static void RegisterWithRegistrar(flutter::PluginRegistrarWindows *registrar);

  PrettyWidgetsPlugin();

  virtual ~PrettyWidgetsPlugin();

  // Disallow copy and assign.
  PrettyWidgetsPlugin(const PrettyWidgetsPlugin&) = delete;
  PrettyWidgetsPlugin& operator=(const PrettyWidgetsPlugin&) = delete;

 private:
  // Called when a method is called on this plugin's channel from Dart.
  void HandleMethodCall(
      const flutter::MethodCall<flutter::EncodableValue> &method_call,
      std::unique_ptr<flutter::MethodResult<flutter::EncodableValue>> result);
};

}  // namespace pretty_widgets

#endif  // FLUTTER_PLUGIN_PRETTY_WIDGETS_PLUGIN_H_
