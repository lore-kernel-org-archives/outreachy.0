X-GM-THRID: 7350068969472
X-Received: by 10.112.98.38 with SMTP id ef6mr3477485lbb.3.1425935317588;
        Mon, 09 Mar 2015 14:08:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.85.229 with SMTP id k5ls114924wiz.0.canary; Mon, 09 Mar
 2015 14:08:37 -0700 (PDT)
X-Received: by 10.180.91.76 with SMTP id cc12mr4699122wib.7.1425935317251;
        Mon, 09 Mar 2015 14:08:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id l8si918299wia.0.2015.03.09.14.08.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2015 14:08:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id l15so25003494wiw.4
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2015 14:08:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rNagJKypn44UDARPt7SDhqbptgSxu2+xhKsq2FR1UVk=;
        b=tL4XZYiX5GwYYGyvNVZYdwsyczD6deToACA3qweUht7CR6ds1WQjrnL53npsS7xDqW
         7iW7YoAvaP7rqo6ZXtKYLXL/mXH2LbDh/GYcs3oTLPHMawxrRZqcO4+tGckcuSh+n/0N
         +89fX24bmFjBIgP3W65yhtM0faJo7aBxkSy58/quyBb8Qiczmf6HPAM2xBIeLwRODTrT
         8DeDuB0hyv58wFCWK0O5rycUf69tzas6vrUEw/wg6cA0zJrXG4mCRo+fOqGgIVsmofnN
         +Bmn/WcA2QsRdv78rc9/lev7Q1Gi5PBLkt0E2GpsxAGQzOiZ6KGleKKPGy/IBNUykL6U
         eXLw==
X-Received: by 10.180.89.163 with SMTP id bp3mr7245439wib.88.1425935317172;
        Mon, 09 Mar 2015 14:08:37 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id p1sm796573wib.23.2015.03.09.14.08.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 09 Mar 2015 14:08:36 -0700 (PDT)
Date: Mon, 9 Mar 2015 23:08:00 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8192u: Use __packed instead of
 __attribute__((packed))
Message-ID: <20150309210800.GA27033@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

This patch fixed the following checkpatch.pl warning:
"WARNING: __packed is preferred over __attribute__((packed))".

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211.h | 60 +++++++++++++-------------
 1 file changed, 30 insertions(+), 30 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211.h b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
index 7e81ae1..b6b862a 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211.h
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211.h
@@ -634,7 +634,7 @@ struct ieee80211_snap_hdr {
 	u8    ctrl;   /* always 0x03 */
 	u8    oui[P80211_OUI_LEN];    /* organizational universal id */
 
-} __attribute__ ((packed));
+} __packed;
 
 #define SNAP_SIZE sizeof(struct ieee80211_snap_hdr)
 
@@ -969,7 +969,7 @@ struct ieee80211_security {
 	u8 keys[WEP_KEYS][SCM_KEY_LEN];
 	u8 level;
 	u16 flags;
-} __attribute__ ((packed));
+} __packed;
 
 
 /*
@@ -1024,14 +1024,14 @@ struct ieee80211_hdr {
 	__le16 frame_ctl;
 	__le16 duration_id;
 	u8 payload[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_hdr_1addr {
 	__le16 frame_ctl;
 	__le16 duration_id;
 	u8 addr1[ETH_ALEN];
 	u8 payload[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_hdr_2addr {
 	__le16 frame_ctl;
@@ -1039,7 +1039,7 @@ struct ieee80211_hdr_2addr {
 	u8 addr1[ETH_ALEN];
 	u8 addr2[ETH_ALEN];
 	u8 payload[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_hdr_3addr {
 	__le16 frame_ctl;
@@ -1049,7 +1049,7 @@ struct ieee80211_hdr_3addr {
 	u8 addr3[ETH_ALEN];
 	__le16 seq_ctl;
 	u8 payload[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_hdr_4addr {
 	__le16 frame_ctl;
@@ -1060,7 +1060,7 @@ struct ieee80211_hdr_4addr {
 	__le16 seq_ctl;
 	u8 addr4[ETH_ALEN];
 	u8 payload[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_hdr_3addrqos {
 	__le16 frame_ctl;
@@ -1071,7 +1071,7 @@ struct ieee80211_hdr_3addrqos {
 	__le16 seq_ctl;
 	u8 payload[0];
 	__le16 qos_ctl;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_hdr_4addrqos {
 	__le16 frame_ctl;
@@ -1083,13 +1083,13 @@ struct ieee80211_hdr_4addrqos {
 	u8 addr4[ETH_ALEN];
 	u8 payload[0];
 	__le16 qos_ctl;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_info_element {
 	u8 id;
 	u8 len;
 	u8 data[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_authentication {
 	struct ieee80211_hdr_3addr header;
@@ -1098,18 +1098,18 @@ struct ieee80211_authentication {
 	__le16 status;
 	/*challenge*/
 	struct ieee80211_info_element info_element[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_disassoc {
 	struct ieee80211_hdr_3addr header;
 	__le16 reason;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_probe_request {
 	struct ieee80211_hdr_3addr header;
 	/* SSID, supported rates */
 	struct ieee80211_info_element info_element[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_probe_response {
 	struct ieee80211_hdr_3addr header;
@@ -1119,7 +1119,7 @@ struct ieee80211_probe_response {
 	/* SSID, supported rates, FH params, DS params,
 	 * CF params, IBSS params, TIM (if beacon), RSN */
 	struct ieee80211_info_element info_element[0];
-} __attribute__ ((packed));
+} __packed;
 
 /* Alias beacon for probe_response */
 #define ieee80211_beacon ieee80211_probe_response
@@ -1130,7 +1130,7 @@ struct ieee80211_assoc_request_frame {
 	__le16 listen_interval;
 	/* SSID, supported rates, RSN */
 	struct ieee80211_info_element info_element[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_reassoc_request_frame {
 	struct ieee80211_hdr_3addr header;
@@ -1139,7 +1139,7 @@ struct ieee80211_reassoc_request_frame {
 	u8 current_ap[ETH_ALEN];
 	/* SSID, supported rates, RSN */
 	struct ieee80211_info_element info_element[0];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_assoc_response_frame {
 	struct ieee80211_hdr_3addr header;
@@ -1147,7 +1147,7 @@ struct ieee80211_assoc_response_frame {
 	__le16 status;
 	__le16 aid;
 	struct ieee80211_info_element info_element[0]; /* supported rates */
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_txb {
 	u8 nr_frags;
@@ -1164,7 +1164,7 @@ struct ieee80211_txb {
 struct ieee80211_drv_agg_txb {
 	u8 nr_drv_agg_frames;
 	struct sk_buff *tx_agg_frames[MAX_TX_AGG_COUNT];
-}__attribute__((packed));
+} __packed;
 
 #define MAX_SUBFRAME_COUNT		  64
 struct ieee80211_rxb {
@@ -1172,7 +1172,7 @@ struct ieee80211_rxb {
 	struct sk_buff *subframes[MAX_SUBFRAME_COUNT];
 	u8 dst[ETH_ALEN];
 	u8 src[ETH_ALEN];
-}__attribute__((packed));
+} __packed;
 
 typedef union _frameqos {
 	u16 shortdata;
@@ -1240,19 +1240,19 @@ struct ieee80211_qos_information_element {
 	u8 qui_subtype;
 	u8 version;
 	u8 ac_info;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_qos_ac_parameter {
 	u8 aci_aifsn;
 	u8 ecw_min_max;
 	__le16 tx_op_limit;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_qos_parameter_info {
 	struct ieee80211_qos_information_element info_element;
 	u8 reserved;
 	struct ieee80211_qos_ac_parameter ac_params_record[QOS_QUEUE_NUM];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_qos_parameters {
 	__le16 cw_min[QOS_QUEUE_NUM];
@@ -1260,7 +1260,7 @@ struct ieee80211_qos_parameters {
 	u8 aifs[QOS_QUEUE_NUM];
 	u8 flag[QOS_QUEUE_NUM];
 	__le16 tx_op_limit[QOS_QUEUE_NUM];
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_qos_data {
 	struct ieee80211_qos_parameters parameters;
@@ -1273,7 +1273,7 @@ struct ieee80211_qos_data {
 struct ieee80211_tim_parameters {
 	u8 tim_count;
 	u8 tim_period;
-} __attribute__ ((packed));
+} __packed;
 
 //#else
 struct ieee80211_wmm_ac_param {
@@ -1286,7 +1286,7 @@ struct ieee80211_wmm_ts_info {
 	u8 ac_dir_tid;
 	u8 ac_up_psb;
 	u8 reserved;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_wmm_tspec_elem {
 	struct ieee80211_wmm_ts_info ts_info;
@@ -1305,7 +1305,7 @@ struct ieee80211_wmm_tspec_elem {
 	u32 min_phy_rate;
 	u16 surp_band_allow;
 	u16 medium_time;
-}__attribute__((packed));
+} __packed;
 enum eap_type {
 	EAP_PACKET = 0,
 	EAPOL_START,
@@ -1344,7 +1344,7 @@ struct eapol {
 	u8 version;
 	u8 type;
 	u16 length;
-} __attribute__ ((packed));
+} __packed;
 
 struct ieee80211_softmac_stats{
 	unsigned int rx_ass_ok;
@@ -1374,7 +1374,7 @@ struct ieee80211_softmac_stats{
 struct ieee80211_info_element_hdr {
 	u8 id;
 	u8 len;
-} __attribute__ ((packed));
+} __packed;
 
 /*
  * These are the data types that can make up management packets
@@ -1387,7 +1387,7 @@ struct ieee80211_info_element_hdr {
 	u16 listen_interval;
 	struct {
 		u16 association_id:14, reserved:2;
-	} __attribute__ ((packed));
+	} __packed;
 	u32 time_stamp[2];
 	u16 reason;
 	u16 status;
@@ -1448,7 +1448,7 @@ struct	ether_header {
 	u8 ether_dhost[ETHER_ADDR_LEN];
 	u8 ether_shost[ETHER_ADDR_LEN];
 	u16 ether_type;
-} __attribute__((packed));
+} __packed;
 
 #ifndef ETHERTYPE_PAE
 #define	ETHERTYPE_PAE	0x888e		/* EAPOL PAE/802.1x */
-- 
1.9.1


