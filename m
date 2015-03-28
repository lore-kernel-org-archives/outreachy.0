X-GM-THRID: 10244955570176
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,999d071005b279ba,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.81.134 with SMTP id a6mr1267023wiy.1.1427581412040;
        Sat, 28 Mar 2015 15:23:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.211 with SMTP id jq19ls567460lab.32.gmail; Sat, 28 Mar
 2015 15:23:31 -0700 (PDT)
X-Received: by 10.152.115.145 with SMTP id jo17mr739983lab.2.1427581411357;
        Sat, 28 Mar 2015 15:23:31 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id el6si370253wib.0.2015.03.28.15.23.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Mar 2015 15:23:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=ciorneiioana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id m2so58203655wix.0
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Mar 2015 15:23:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=mCHB4MeXY5gPr3DrtfPkj+MvzBEOmbamgaWIP36PkBA=;
        b=0VdIJHFw2l8vkkBbEM3/yPVbsw2wCjhxXIe7U3rjSrJe8FPNecQ6oLPEDKqcVnW0nY
         pcGKPUz6sdCcvUj8C+ouG4VU6eU0RhcEtjRlJYXsLikEAwlOhZt4KIs3C6s23xPMjM43
         BXx291iY7nhfUuHCrVgNurdHUiFRBkkE7vHiwDvf5jWt18GXwkZg6borCVUAiiNuTrrY
         OhhHVQT6YUk38tb4S+rc9sKtyqZPIARm/VZTqBODmBtASxnz/iAx3ISWIAqWmFpuf57y
         UgSp8WpLqfquQ42RszfZWPArqJbTDKlL4jaAjG6Lk634+jiJsFW7D3xhzzxl4ANgm4Dp
         neFg==
X-Received: by 10.194.121.10 with SMTP id lg10mr50195651wjb.71.1427581411234;
        Sat, 28 Mar 2015 15:23:31 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from localhost.localdomain (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id fm10sm8797929wib.7.2015.03.28.15.23.29
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Mar 2015 15:23:30 -0700 (PDT)
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ioana Ciornei <ciorneiioana@gmail.com>
Subject: [PATCH] staging: r8192U_core: Add blank line after declarations
Date: Sun, 29 Mar 2015 00:23:22 +0200
Message-Id: <1427581402-564-1-git-send-email-ciorneiioana@gmail.com>
X-Mailer: git-send-email 1.9.1

Add blank line after declarations and remove unnecessary 
tabs from declarations.

Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
---
 drivers/staging/rtl8192u/r8192U_core.c | 44 +++++++++++++++++++++++++++-------
 1 file changed, 36 insertions(+), 8 deletions(-)

diff --git a/drivers/staging/rtl8192u/r8192U_core.c b/drivers/staging/rtl8192u/r8192U_core.c
index 0b8c88f..5990174 100644
--- a/drivers/staging/rtl8192u/r8192U_core.c
+++ b/drivers/staging/rtl8192u/r8192U_core.c
@@ -160,6 +160,7 @@ static void rtl819x_set_channel_map(u8 channel_plan, struct r8192_priv *priv)
 {
 	int i, max_chan = -1, min_chan = -1;
 	struct ieee80211_device *ieee = priv->ieee80211;
+
 	switch (channel_plan) {
 	case COUNTRY_CODE_FCC:
 	case COUNTRY_CODE_IC:
@@ -427,6 +428,7 @@ static int proc_get_stats_ap(struct seq_file *m, void *v)
 
 	list_for_each_entry(target, &ieee->network_list, list) {
 		const char *wpa = "non_WPA";
+
 		if (target->wpa_ie_len > 0 || target->rsn_ie_len > 0)
 			wpa = "WPA";
 
@@ -673,6 +675,7 @@ void rtl8192_update_msr(struct net_device *dev)
 void rtl8192_set_chan(struct net_device *dev, short ch)
 {
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
+
 	RT_TRACE(COMP_CH, "=====>%s()====ch:%d\n", __func__, ch);
 	priv->chan = ch;
 
@@ -878,6 +881,7 @@ static void rtl8192_rx_isr(struct urb *urb)
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	int out_pipe = info->out_pipe;
 	int err;
+
 	if (!priv->up)
 		return;
 	if (unlikely(urb->status)) {
@@ -1062,8 +1066,8 @@ static void rtl8192_config_rate(struct net_device *dev, u16 *rate_config)
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	struct ieee80211_network *net;
 	u8 i = 0, basic_rate = 0;
-	net = &priv->ieee80211->current_network;
 
+	net = &priv->ieee80211->current_network;
 	for (i = 0; i < net->rates_len; i++) {
 		basic_rate = net->rates[i]&0x7f;
 		switch (basic_rate) {
@@ -1157,6 +1161,7 @@ static void rtl8192_update_cap(struct net_device *dev, u16 cap)
 	u32 tmp = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	struct ieee80211_network *net = &priv->ieee80211->current_network;
+
 	priv->short_preamble = cap & WLAN_CAPABILITY_SHORT_PREAMBLE;
 	tmp = priv->basic_rate;
 	if (priv->short_preamble)
@@ -1165,6 +1170,7 @@ static void rtl8192_update_cap(struct net_device *dev, u16 cap)
 
 	if (net->mode & (IEEE_G|IEEE_N_24G)) {
 		u8 slot_time = 0;
+
 		if ((cap & WLAN_CAPABILITY_SHORT_SLOT) && (!priv->ieee80211->pHTInfo->bCurrentRT2RTLongSlotTime)) /* short slot time */
 			slot_time = SHORT_SLOT_TIME;
 		else //long slot time
@@ -1181,6 +1187,7 @@ static void rtl8192_net_update(struct net_device *dev)
 	struct ieee80211_network *net;
 	u16 BcnTimeCfg = 0, BcnCW = 6, BcnIFS = 0xf;
 	u16 rate_config = 0;
+
 	net = &priv->ieee80211->current_network;
 
 	rtl8192_config_rate(dev, &rate_config);
@@ -1497,6 +1504,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 	int status;
 	struct urb *tx_urb = NULL, *tx_urb_zero = NULL;
 	unsigned int idx_pipe;
+
 	pend = atomic_read(&priv->tx_pending[tcb_desc->queue_index]);
 	/* we are locked here so the two atomic_read and inc are executed
 	 * without interleaves
@@ -1619,6 +1627,7 @@ short rtl8192_tx(struct net_device *dev, struct sk_buff *skb)
 		//we need to send 0 byte packet whenever 512N bytes/64N(HIGN SPEED/NORMAL SPEED) bytes packet has been transmitted. Otherwise, it will be halt to wait for another packet. WB. 2008.08.27
 		bool bSend0Byte = false;
 		u8 zero = 0;
+
 		if (udev->speed == USB_SPEED_HIGH) {
 			if (skb->len > 0 && skb->len % 512 == 0)
 				bSend0Byte = true;
@@ -1762,6 +1771,7 @@ static void rtl8192_link_change(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	struct ieee80211_device *ieee = priv->ieee80211;
+
 	if (ieee->state == IEEE80211_LINKED) {
 		rtl8192_net_update(dev);
 		rtl8192_update_ratr_table(dev);
@@ -1772,6 +1782,7 @@ static void rtl8192_link_change(struct net_device *dev)
 	/*update timing params*/
 	if (ieee->iw_mode == IW_MODE_INFRA || ieee->iw_mode == IW_MODE_ADHOC) {
 		u32 reg = 0;
+
 		read_nic_dword(dev, RCR, &reg);
 		if (priv->ieee80211->state == IEEE80211_LINKED)
 			priv->ReceiveConfig = reg |= RCR_CBSSID;
@@ -1957,6 +1968,7 @@ static int rtl8192_handle_assoc_response(struct net_device *dev,
 					 struct ieee80211_network *network)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	rtl8192_qos_association_resp(priv, network);
 	return 0;
 }
@@ -1969,6 +1981,7 @@ void rtl8192_update_ratr_table(struct net_device *dev)
 	u8 *pMcsRate = ieee->dot11HTOperationalRateSet;
 	u32 ratr_value = 0;
 	u8 rate_index = 0;
+
 	rtl8192_config_rate(dev, (u16 *)(&ratr_value));
 	ratr_value |= (*(u16 *)(pMcsRate)) << 12;
 	switch (ieee->mode) {
@@ -2064,6 +2077,7 @@ static u8 rtl8192_getSupportedWireleeMode(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u8 ret = 0;
+
 	switch (priv->rf_chip) {
 	case RF_8225:
 	case RF_8256:
@@ -2118,6 +2132,7 @@ static void rtl8192_init_priv_variable(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u8 i;
+
 	priv->card_8192 = NIC_8192U;
 	priv->chan = 1; //set to channel 1
 	priv->ieee80211->mode = WIRELESS_MODE_AUTO; //SET AUTO
@@ -2266,6 +2281,7 @@ static void rtl8192_get_eeprom_size(struct net_device *dev)
 {
 	u16 curCR = 0;
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	RT_TRACE(COMP_EPROM, "===========>%s()\n", __func__);
 	read_nic_word_E(dev, EPROM_CMD, &curCR);
 	RT_TRACE(COMP_EPROM, "read from Reg EPROM_CMD(%x):%x\n", EPROM_CMD, curCR);
@@ -2289,6 +2305,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	u16 tmpValue = 0;
 	int i;
+
 	RT_TRACE(COMP_EPROM, "===========>%s()\n", __func__);
 	wEPROM_ID = eprom_read(dev, 0); //first read EEPROM ID out;
 	RT_TRACE(COMP_EPROM, "EEPROM ID is 0x%x\n", wEPROM_ID);
@@ -2502,6 +2519,7 @@ static void rtl8192_read_eeprom_info(struct net_device *dev)
 static short rtl8192_get_channel_map(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	if (priv->ChannelPlan > COUNTRY_CODE_GLOBAL_DOMAIN) {
 		netdev_err(dev, "rtl8180_init: Error channel plan! Set to default.\n");
 		priv->ChannelPlan = 0;
@@ -2514,7 +2532,6 @@ static short rtl8192_get_channel_map(struct net_device *dev)
 
 static short rtl8192_init(struct net_device *dev)
 {
-
 	struct r8192_priv *priv = ieee80211_priv(dev);
 
 	memset(&(priv->stats), 0, sizeof(struct Stats));
@@ -2646,6 +2663,7 @@ static bool rtl8192_adapter_start(struct net_device *dev)
 	bool init_status = true;
 	u8 SECR_value = 0x0;
 	u8 tmp;
+
 	RT_TRACE(COMP_INIT, "====>%s()\n", __func__);
 	priv->Rf_Mode = RF_OP_By_SW_3wire;
 	//for ASIC power on sequence
@@ -2863,8 +2881,9 @@ static struct net_device_stats *rtl8192_stats(struct net_device *dev)
 static bool HalTxCheckStuck819xUsb(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
-	u16		RegTxCounter;
-	bool		bStuck = false;
+	u16 RegTxCounter;
+	bool bStuck = false;
+
 	read_nic_word(dev, 0x128, &RegTxCounter);
 	RT_TRACE(COMP_RESET, "%s():RegTxCounter is %d,TxCounter is %d\n", __func__, RegTxCounter, priv->TxCounter);
 	if (priv->TxCounter == RegTxCounter)
@@ -2911,7 +2930,8 @@ static bool HalRxCheckStuck819xUsb(struct net_device *dev)
 	u16	RegRxCounter;
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	bool bStuck = false;
-	static u8	rx_chk_cnt;
+	static u8 rx_chk_cnt;
+
 	read_nic_word(dev, 0x130, &RegRxCounter);
 	RT_TRACE(COMP_RESET, "%s(): RegRxCounter is %d,RxCounter is %d\n", __func__, RegRxCounter, priv->RxCounter);
 	// If rssi is small, we should check rx for long time because of bad rx.
@@ -3271,6 +3291,7 @@ void rtl819x_watchdog_wqcallback(struct work_struct *work)
 void watch_dog_timer_callback(unsigned long data)
 {
 	struct r8192_priv *priv = ieee80211_priv((struct net_device *) data);
+
 	queue_delayed_work(priv->priv_wq, &priv->watch_dog_wq, 0);
 	mod_timer(&priv->watch_dog_timer, jiffies + MSECS(IEEE80211_WATCH_DOG_TIME));
 }
@@ -3278,8 +3299,10 @@ int _rtl8192_up(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	int init_status = 0;
+
 	priv->up = 1;
 	priv->ieee80211->ieee_up = 1;
+
 	RT_TRACE(COMP_INIT, "Bringing up iface");
 	init_status = rtl8192_adapter_start(dev);
 	if (!init_status) {
@@ -3306,6 +3329,7 @@ static int rtl8192_open(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	int ret;
+
 	down(&priv->wx_sem);
 	ret = rtl8192_up(dev);
 	up(&priv->wx_sem);
@@ -3384,6 +3408,7 @@ void rtl8192_commit(struct net_device *dev)
 {
 	struct r8192_priv *priv = ieee80211_priv(dev);
 	int reset_status = 0;
+
 	if (priv->up == 0)
 		return;
 	priv->up = 0;
@@ -3702,13 +3727,12 @@ static void rtl8192_process_phyinfo(struct r8192_priv *priv, u8 *buffer,
 	static u32 slide_rssi_index, slide_rssi_statistics;
 	static u32 slide_evm_index, slide_evm_statistics;
 	static u32 last_rssi, last_evm;
-
 	static u32 slide_beacon_adc_pwdb_index, slide_beacon_adc_pwdb_statistics;
 	static u32 last_beacon_adc_pwdb;
-
 	struct ieee80211_hdr_3addr *hdr;
 	u16 sc;
 	unsigned int frag, seq;
+
 	hdr = (struct ieee80211_hdr_3addr *)buffer;
 	sc = le16_to_cpu(hdr->seq_ctl);
 	frag = WLAN_GET_SEQ_FRAG(sc);
@@ -4421,6 +4445,7 @@ static void query_rxdesc_status(struct sk_buff *skb,
 		if (!stats->bHwError) {
 			u8	ret_rate;
 			ret_rate = HwRateToMRate90(driver_info->RxHT, driver_info->RxRate);
+
 			if (ret_rate == 0xff) {
 				// Abnormal Case: Receive CRC OK packet with Rx descriptor indicating non supported rate.
 				// Special Error Handling here, 2008.05.16, by Emily
@@ -4667,6 +4692,7 @@ static int rtl8192_usb_probe(struct usb_interface *intf,
 	struct r8192_priv *priv = NULL;
 	struct usb_device *udev = interface_to_usbdev(intf);
 	int ret;
+
 	RT_TRACE(COMP_INIT, "Oops: i'm coming\n");
 
 	dev = alloc_ieee80211(sizeof(struct r8192_priv));
@@ -4741,8 +4767,8 @@ void rtl8192_cancel_deferred_work(struct r8192_priv *priv)
 static void rtl8192_usb_disconnect(struct usb_interface *intf)
 {
 	struct net_device *dev = usb_get_intfdata(intf);
-
 	struct r8192_priv *priv = ieee80211_priv(dev);
+
 	if (dev) {
 
 		unregister_netdev(dev);
@@ -4833,6 +4859,7 @@ void EnableHWSecurityConfig8192(struct net_device *dev)
 	u8 SECR_value = 0x0;
 	struct r8192_priv *priv = (struct r8192_priv *)ieee80211_priv(dev);
 	struct ieee80211_device *ieee = priv->ieee80211;
+
 	SECR_value = SCR_TxEncEnable | SCR_RxDecEnable;
 	if (((KEY_TYPE_WEP40 == ieee->pairwise_key_type) || (KEY_TYPE_WEP104 == ieee->pairwise_key_type)) && (priv->ieee80211->auth_mode != 2)) {
 		SECR_value |= SCR_RxUseDK;
@@ -4863,6 +4890,7 @@ void setKey(struct net_device *dev, u8 EntryNo, u8 KeyIndex, u16 KeyType,
 	u32 TargetContent = 0;
 	u16 usConfig = 0;
 	u8 i;
+
 	if (EntryNo >= TOTAL_CAM_ENTRY)
 		RT_TRACE(COMP_ERR, "cam entry exceeds in setKey()\n");
 
-- 
1.9.1


