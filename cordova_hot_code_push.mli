val fetch_update : (string option -> string option -> unit) -> unit
  [@@js.global "chcp.fetchUpdate"]

module Event :
  sig
    [@@@js.stop]
    val update_is_ready_to_install : (unit -> unit) -> unit

    val update_load_failed : (unit -> unit) -> unit

    val nothing_to_update : (unit -> unit) -> unit

    val before_install : (unit -> unit) -> unit

    val update_installed : (unit -> unit) -> unit

    val update_install_failed : (unit -> unit) -> unit

    val nothing_to_install : (unit -> unit) -> unit

    val before_assets_installed_on_external_storage : (unit -> unit) -> unit

    val assets_installed_on_external_storage : (unit -> unit) -> unit

    val assets_installation_error : (unit -> unit) -> unit
    [@@@js.start]

    [@@@js.implem
      val add_event_listener_internal :
        string -> (unit -> unit) -> bool -> unit
      [@@js.global "document.addEventListener"]

      let update_is_ready_to_install fn =
        add_event_listener_internal "chcp_updateIsReadyToInstall" fn false

      let update_load_failed fn =
        add_event_listener_internal "chcp_updateLoadFailed" fn false

      let nothing_to_update fn =
        add_event_listener_internal "chcp_nothingToUpdate" fn false

      let before_install fn =
        add_event_listener_internal "chcp_beforeInstall" fn false

      let update_installed fn =
        add_event_listener_internal "chcp_updateInstalled" fn false

      let update_install_failed fn =
        add_event_listener_internal "chcp_updateInstallFailed" fn false

      let nothing_to_install fn =
        add_event_listener_internal "chcp_nothingToInstall" fn false

      let before_assets_installed_on_external_storage fn =
        add_event_listener_internal "chcp_beforeAssetsInstalledOnExternalStorage" fn false

      let assets_installed_on_external_storage fn =
        add_event_listener_internal "chcp_assetsInstalledOnExternalStorage" fn false

      let assets_installation_error fn =
        add_event_listener_internal "chcp_assetsInstallationError" fn false
    ]
  end
