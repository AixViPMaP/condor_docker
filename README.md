condor_docker
=============

Sample HTCondor Docker wrapper

Install
-------

		cp docker.conf $(condor_config_val LOCAL_CONFIG_DIR)
		cp docker.sh $(condor_config_val DOCKER)
		chmod +x $(condor_config_val DOCKER)
		condor_reconfig

Uninstall
---------

		rm -f $(condor_config_val DOCKER)
		rm -f $(condor_config_val LOCAL_CONFIG_DIR)/docker.conf
		condor_reconfig
