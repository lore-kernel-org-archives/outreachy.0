X-GM-THRID: 6205040264708358144
X-Received: by 10.50.4.4 with SMTP id g4mr16253036igg.10.1444725487774;
        Tue, 13 Oct 2015 01:38:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.16.165 with SMTP id h5ls1376265obd.93.gmail; Tue, 13 Oct
 2015 01:38:04 -0700 (PDT)
X-Received: by 10.182.28.73 with SMTP id z9mr27762083obg.45.1444725484562;
        Tue, 13 Oct 2015 01:38:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si213401pbb.0.2015.10.13.01.38.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 01:38:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id rc13so15095287pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 01:38:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PuyLiejam/BnRFaXTIDY45LR94XKI48aMPhejcYs7QE=;
        b=ZsLUnyMlB/3D4+c+Vxvv2JS8mABk1vmVlsL1AYJhLL32KtjBLPDubDXMSTSOfeX4Fg
         1rWSzlQ/tqbnr26HJaj5NKdK8q8rSnXsu8agXvPV3eEyuXvk1faCAReu15C7KlRy2olS
         oXw/nIi/5/IQUbd5MO+FSKquIzlfFGGhEZH1PvKA4qVEmGVcxrKoejFutBmbynWeF/dU
         ur05rV52jR/PFFaAJfzGyB9jcXcXbBwp6g+Je3jhITsMxqrLRqAmBP9ZscdAbvcuKp+P
         Vf1ai+zmJstXQff477MAA/VfHvApbBjJO3O634+pOuyeZtf63IgeMFU4O8bVb/YXlC4T
         6mRA==
X-Received: by 10.68.102.225 with SMTP id fr1mr39677357pbb.65.1444725484376;
        Tue, 13 Oct 2015 01:38:04 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.82.229])
        by smtp.gmail.com with ESMTPSA id xd10sm2419060pab.25.2015.10.13.01.38.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 01:38:03 -0700 (PDT)
Date: Tue, 13 Oct 2015 14:08:01 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] staging: rtl8712: Remove useless cast on void pointer
Message-ID: <2109e4a1c74989232680cf926b8473370a801818.1444725049.git.amitoj1606@gmail.com>
References: <cover.1444725049.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444725049.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)


Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
Changes in v2:
        -Remove unnecessary parentheses

 drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 105 ++++++++++-------------------
 1 file changed, 35 insertions(+), 70 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
index 77f01bf..b76b7c4 100644
--- a/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
+++ b/drivers/staging/rtl8712/rtl871x_mp_ioctl.c
@@ -41,8 +41,7 @@ uint oid_null_function(struct oid_par_priv *poid_par_priv)
 uint oid_rt_wireless_mode_hdl(struct oid_par_priv *poid_par_priv)
 {
 	uint status = RNDIS_STATUS_SUCCESS;
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid == SET_OID) {
 		if (poid_par_priv->information_buf_len >= sizeof(u8))
@@ -66,8 +65,7 @@ uint oid_rt_wireless_mode_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_write_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	struct bb_reg_param *pbbreg;
 	u16 offset;
 	u32 value;
@@ -87,8 +85,7 @@ uint oid_rt_pro_write_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_read_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	struct bb_reg_param *pbbreg;
 	u16 offset;
 	u32 value;
@@ -109,8 +106,7 @@ uint oid_rt_pro_read_bb_reg_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_write_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	struct rf_reg_param *pbbreg;
 	u8 path;
 	u8 offset;
@@ -132,8 +128,7 @@ uint oid_rt_pro_write_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_read_rf_reg_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	struct rf_reg_param *pbbreg;
 	u8 path;
 	u8 offset;
@@ -260,8 +255,7 @@ int mp_start_joinbss(struct _adapter *padapter, struct ndis_802_11_ssid *pssid)
 uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
 					 *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32 ratevalue;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -278,8 +272,7 @@ uint oid_rt_pro_set_data_rate_hdl(struct oid_par_priv
 
 uint oid_rt_pro_start_test_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	uint status = RNDIS_STATUS_SUCCESS;
 	u32 mode;
 	u8 val8;
@@ -307,8 +300,7 @@ uint oid_rt_pro_start_test_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	uint status = RNDIS_STATUS_SUCCESS;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -321,8 +313,7 @@ uint oid_rt_pro_stop_test_hdl(struct oid_par_priv *poid_par_priv)
 uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
 						   *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32		Channel;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -339,8 +330,7 @@ uint oid_rt_pro_set_channel_direct_call_hdl(struct oid_par_priv
 
 uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32 antenna;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -357,8 +347,7 @@ uint oid_rt_pro_set_antenna_bb_hdl(struct oid_par_priv *poid_par_priv)
 uint oid_rt_pro_set_tx_power_control_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32 tx_pwr_idx;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -377,8 +366,7 @@ uint oid_rt_pro_query_tx_packet_sent_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
 	uint status = RNDIS_STATUS_SUCCESS;
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID) {
 		status = RNDIS_STATUS_NOT_ACCEPTED;
@@ -397,8 +385,7 @@ uint oid_rt_pro_query_rx_packet_received_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
 	uint status = RNDIS_STATUS_SUCCESS;
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID) {
 		status = RNDIS_STATUS_NOT_ACCEPTED;
@@ -417,8 +404,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 					struct oid_par_priv *poid_par_priv)
 {
 	uint status = RNDIS_STATUS_SUCCESS;
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID) {
 		status = RNDIS_STATUS_NOT_ACCEPTED;
@@ -436,8 +422,7 @@ uint oid_rt_pro_query_rx_packet_crc32_error_hdl(
 uint oid_rt_pro_reset_tx_packet_sent_hdl(struct oid_par_priv
 						*poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -449,8 +434,7 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 						    *poid_par_priv)
 {
 	uint status = RNDIS_STATUS_SUCCESS;
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -465,8 +449,7 @@ uint oid_rt_pro_reset_rx_packet_received_hdl(struct oid_par_priv
 uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
 						 *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -477,8 +460,7 @@ uint oid_rt_reset_phy_rx_packet_count_hdl(struct oid_par_priv
 uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
 						  *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -493,8 +475,7 @@ uint oid_rt_get_phy_rx_packet_received_hdl(struct oid_par_priv
 uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
 						     *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -509,8 +490,7 @@ uint oid_rt_get_phy_rx_packet_crc32_error_hdl(struct oid_par_priv
 uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
 					  *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -522,8 +502,7 @@ uint oid_rt_pro_set_modulation_hdl(struct oid_par_priv
 uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
 					     *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32		bStartTest;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -536,8 +515,7 @@ uint oid_rt_pro_set_continuous_tx_hdl(struct oid_par_priv
 uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
 						 *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32		bStartTest;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -550,8 +528,7 @@ uint oid_rt_pro_set_single_carrier_tx_hdl(struct oid_par_priv
 uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
 						      *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32		bStartTest;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -564,8 +541,7 @@ uint oid_rt_pro_set_carrier_suppression_tx_hdl(struct oid_par_priv
 uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
 					      *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32		bStartTest;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -578,8 +554,7 @@ uint oid_rt_pro_set_single_tone_tx_hdl(struct oid_par_priv
 uint oid_rt_pro_read_register_hdl(struct oid_par_priv
 					 *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	uint status = RNDIS_STATUS_SUCCESS;
 	struct mp_rw_reg *RegRWStruct;
 	u16		offset;
@@ -618,8 +593,7 @@ uint oid_rt_pro_read_register_hdl(struct oid_par_priv
 
 uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	uint status = RNDIS_STATUS_SUCCESS;
 	struct mp_rw_reg *RegRWStruct;
 	u16		offset;
@@ -678,8 +652,7 @@ uint oid_rt_pro_write_register_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_get_thermal_meter_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -706,8 +679,7 @@ uint oid_rt_get_thermal_meter_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_read_efuse_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	uint status = RNDIS_STATUS_SUCCESS;
 
@@ -736,8 +708,7 @@ uint oid_rt_pro_read_efuse_hdl(struct oid_par_priv *poid_par_priv)
 /*------------------------------------------------------------------------*/
 uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	uint status = RNDIS_STATUS_SUCCESS;
 
@@ -765,8 +736,7 @@ uint oid_rt_pro_write_efuse_hdl(struct oid_par_priv *poid_par_priv)
 uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
 					      *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -782,8 +752,7 @@ uint oid_rt_get_efuse_current_size_hdl(struct oid_par_priv
 
 uint oid_rt_get_efuse_max_size_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
@@ -808,8 +777,7 @@ uint oid_rt_pro_efuse_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_pro_efuse_map_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	uint status = RNDIS_STATUS_SUCCESS;
 	u8		*data;
 
@@ -840,8 +808,7 @@ uint oid_rt_pro_efuse_map_hdl(struct oid_par_priv *poid_par_priv)
 
 uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u32		bandwidth;
 
 	if (poid_par_priv->type_of_oid != SET_OID)
@@ -859,8 +826,7 @@ uint oid_rt_set_bandwidth_hdl(struct oid_par_priv *poid_par_priv)
 uint oid_rt_set_rx_packet_type_hdl(struct oid_par_priv
 					   *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 	u8		rx_pkt_type;
 	u32		rcr_val32;
 
@@ -915,8 +881,7 @@ uint oid_rt_set_power_down_hdl(struct oid_par_priv *poid_par_priv)
 /*-------------------------------------------------------------------------- */
 uint oid_rt_get_power_mode_hdl(struct oid_par_priv *poid_par_priv)
 {
-	struct _adapter *Adapter = (struct _adapter *)
-				   (poid_par_priv->adapter_context);
+	struct _adapter *Adapter = poid_par_priv->adapter_context;
 
 	if (poid_par_priv->type_of_oid != QUERY_OID)
 		return RNDIS_STATUS_NOT_ACCEPTED;
-- 
1.9.1


