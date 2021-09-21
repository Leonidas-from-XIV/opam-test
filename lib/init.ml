let init_opam () =
  OpamSystem.init ();
  let root = OpamStateConfig.opamroot () in
  ignore (OpamStateConfig.load_defaults root);
  OpamFormatConfig.init ();
  OpamCoreConfig.init ~safe_mode:true ();
  OpamRepositoryConfig.init ();
  OpamStateConfig.init ~root_dir:root ()
