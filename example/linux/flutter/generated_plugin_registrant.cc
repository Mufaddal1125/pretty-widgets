//
//  Generated file. Do not edit.
//

// clang-format off

#include "generated_plugin_registrant.h"

#include <pretty_widgets/pretty_widgets_plugin.h>

void fl_register_plugins(FlPluginRegistry* registry) {
  g_autoptr(FlPluginRegistrar) pretty_widgets_registrar =
      fl_plugin_registry_get_registrar_for_plugin(registry, "PrettyWidgetsPlugin");
  pretty_widgets_plugin_register_with_registrar(pretty_widgets_registrar);
}
