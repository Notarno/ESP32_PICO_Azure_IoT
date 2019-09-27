deps_config := \
	/home/mlang/esp/esp-idf/components/app_trace/Kconfig \
	/home/mlang/esp/esp-idf/components/aws_iot/Kconfig \
	/home/mlang/esp/esp-idf/components/bt/Kconfig \
	/home/mlang/esp/esp-idf/components/driver/Kconfig \
	/home/mlang/esp/esp-idf/components/esp32/Kconfig \
	/home/mlang/esp/esp-idf/components/esp_adc_cal/Kconfig \
	/home/mlang/esp/esp-idf/components/esp_event/Kconfig \
	/home/mlang/esp/esp-idf/components/esp_http_client/Kconfig \
	/home/mlang/esp/esp-idf/components/esp_http_server/Kconfig \
	/home/mlang/esp/esp-idf/components/ethernet/Kconfig \
	/home/mlang/esp/esp-idf/components/fatfs/Kconfig \
	/home/mlang/esp/esp-idf/components/freemodbus/Kconfig \
	/home/mlang/esp/esp-idf/components/freertos/Kconfig \
	/home/mlang/esp/esp-idf/components/heap/Kconfig \
	/home/mlang/esp/esp-idf/components/libsodium/Kconfig \
	/home/mlang/esp/esp-idf/components/log/Kconfig \
	/home/mlang/esp/esp-idf/components/lwip/Kconfig \
	/home/mlang/esp/esp-idf/components/mbedtls/Kconfig \
	/home/mlang/esp/esp-idf/components/mdns/Kconfig \
	/home/mlang/esp/esp-idf/components/mqtt/Kconfig \
	/home/mlang/esp/esp-idf/components/nvs_flash/Kconfig \
	/home/mlang/esp/esp-idf/components/openssl/Kconfig \
	/home/mlang/esp/esp-idf/components/pthread/Kconfig \
	/home/mlang/esp/esp-idf/components/spi_flash/Kconfig \
	/home/mlang/esp/esp-idf/components/spiffs/Kconfig \
	/home/mlang/esp/esp-idf/components/tcpip_adapter/Kconfig \
	/home/mlang/esp/esp-idf/components/vfs/Kconfig \
	/home/mlang/esp/esp-idf/components/wear_levelling/Kconfig \
	/home/mlang/esp/esp-idf/components/bootloader/Kconfig.projbuild \
	/home/mlang/esp/esp-idf/components/esptool_py/Kconfig.projbuild \
	/home/mlang/esp/esp-azure/TrojanIoT-Projects/esp32_iot/main/Kconfig.projbuild \
	/home/mlang/esp/esp-idf/components/partition_table/Kconfig.projbuild \
	/home/mlang/esp/esp-idf/Kconfig

include/config/auto.conf: \
	$(deps_config)

ifneq "$(IDF_CMAKE)" "n"
include/config/auto.conf: FORCE
endif

$(deps_config): ;
