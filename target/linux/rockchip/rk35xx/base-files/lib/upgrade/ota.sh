
type 'board_name' >/dev/null 2>/dev/null || . /lib/functions.sh

export_ota_url() {
	local board="$(board_name)"
	case "$board" in
	hlink,h28k|\
	linkfog,ala2|\
	radxa,e20c|\
	radxa,e52c|\
	easepi,ars4|\
	lyt,t68m)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/${board##*,}"
		;;
	easepi,r1)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/easepi-r1"
		;;
	fastrhino,r66s|\
	fastrhino,r68s)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/r6xs"
		;;
	friendlyelec,nanopi-r3s)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/r3s"
		;;
	friendlyelec,nanopi-r5c|\
	friendlyelec,nanopi-r5s-c1|\
	friendlyelec,nanopi-r5s)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/r5s"
		;;
	friendlyelec,nanopi-r6s|\
	friendlyelec,nanopi-r6c)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/r6s"
		;;
	firefly,rk3568-roc-pc)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/station-p2"
		;;
	hinlink,opc-h66k|\
	hinlink,opc-h68k|\
	hinlink,opc-h69k)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/h6xk"
		;;
	hinlink,h88k-*|\
	hinlink,h88k)
		export -n OTA_URL_BASE="https://fw0.koolcenter.com/iStoreOS/h88k"
		;;
	*)
		return 1
		;;
	esac
}
