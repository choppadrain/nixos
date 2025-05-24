# zen-browser
{ config, lib, ...}:

{
  options = {
    zen-browser.enable = lib.mkEnableOptions "enable.zen";
  };
  config = lib.mkIf config.zen-browser.enable {
    programs = {
      zen-browser = {
        policies = {
          disableAppUpdate = false;
	  DisableTelemetry = true;

	};

      };
    };



  };




}
