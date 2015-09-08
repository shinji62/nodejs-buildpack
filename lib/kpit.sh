install_sap_module(){
    local bp_dir="$1"
    local build_dir="$2"
	mkdir -p "$build_dir/.kpit/nwrfcsdk"
	tar xf "$bp_dir/vendor/nwrfcsdk.tar.gz" -C "$build_dir/.kpit/nwrfcsdk/"
}	

export_sap_lib(){
  local bp_dir="$1"
  local build_dir="$2"
  echo "export LD_LIBRARY_PATH=\"$build_dir/.kpit/nwrfcsdk/lib/:\$LD_LIBRARY_PATH\""   >> $bp_dir/profile/kpit
}