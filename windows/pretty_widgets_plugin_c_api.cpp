#include "include/pretty_widgets/pretty_widgets_plugin_c_api.h"

#include <flutter/plugin_registrar_windows.h>

#include "pretty_widgets_plugin.h"

void PrettyWidgetsPluginCApiRegisterWithRegistrar(
    FlutterDesktopPluginRegistrarRef registrar) {
  pretty_widgets::PrettyWidgetsPlugin::RegisterWithRegistrar(
      flutter::PluginRegistrarManager::GetInstance()
          ->GetRegistrar<flutter::PluginRegistrarWindows>(registrar));
}
