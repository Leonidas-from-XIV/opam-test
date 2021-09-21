let install package =
  OpamGlobalState.with_ `Lock_none (fun gt ->
      OpamSwitchState.with_ `Lock_write gt (fun st ->
          let installed = st.installed in
          let _n =
            OpamPackage.package_of_name installed
              (OpamPackage.Name.of_string package)
          in
          (* OpamClient.install; *)
          ()))
