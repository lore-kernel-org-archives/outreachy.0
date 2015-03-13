X-GM-THRID: 8176518823936
X-Received: by 10.194.11.70 with SMTP id o6mr7571898wjb.6.1426277284753;
        Fri, 13 Mar 2015 13:08:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.106.101 with SMTP id gt5ls224778wib.28.gmail; Fri, 13 Mar
 2015 13:08:04 -0700 (PDT)
X-Received: by 10.180.90.175 with SMTP id bx15mr4250219wib.3.1426277284447;
        Fri, 13 Mar 2015 13:08:04 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id gj20si203843wic.1.2015.03.13.13.08.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:08:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id bs8so9111451wib.0
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 13:08:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:reply-to:mime-version:content-type
         :content-disposition:user-agent;
        bh=hWdNpDAFOkoOL1xYDFYRxQVAOtJ9y9t7Ym9d7ivy7mY=;
        b=OdcO7O44/0dXaRJRJM5ENwM6JTVKM4hHKEOctXm/DrZhMMd+2HmBWN9cI/H+BNWa2J
         IEbN53xQDVgCL9Z8dhAZhG38Nbz1xeS5L8Gn5YZ9AUyS3cAn5zeuMHwKVRGou2N2Z6g0
         e3FC7xB+dutaPp06rAqyh5gAFdQ/JQQFPUKPqChOrUiN96l5sqrUEa/dXcRs3pkmGJDR
         JQlO1YfnmcWgHJr2yCAG2tX1fJ8IpbBuYIBbVfbXq6TSdCEDceCACPChhoNfKetdk2pm
         9/qLdoOdFIFny9xzQrKSiq0jWqh7Y8irTIXBMVN6VEw2/QRf3sqFHtoOTXNv+OD2HLSc
         nPNg==
X-Received: by 10.194.94.1 with SMTP id cy1mr98235414wjb.127.1426277284350;
        Fri, 13 Mar 2015 13:08:04 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id nb18sm4196042wic.3.2015.03.13.13.08.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 13 Mar 2015 13:08:02 -0700 (PDT)
Date: Fri, 13 Mar 2015 19:55:55 +0300
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/8] Staging: rtl8188eu: Remove parentheses around right side
 an assignment
Message-ID: <20150313165555.GA6673@haneen-vb>
Reply-To: 20150313165321.GA6657@haneen-vb
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Parentheses are not needed around the right hand side of an assignment.
This patch remove parenthese of such occurenses. Issue was detected and
solved using the following coccinelle script:

@rule1@
identifier x, y, z;
expression E1, E2;
@@

(
x = (y == z);
|
x = (E1 == E2);
|
 x =
-(
...
-)
 ;
)

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_efuse.c         |  6 +++---
 drivers/staging/rtl8188eu/core/rtw_ieee80211.c     |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme.c          |  2 +-
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c      | 22 +++++++++++-----------
 drivers/staging/rtl8188eu/core/rtw_recv.c          |  4 ++--
 drivers/staging/rtl8188eu/core/rtw_sreset.c        |  2 +-
 drivers/staging/rtl8188eu/core/rtw_wlan_util.c     | 18 +++++++++---------
 .../staging/rtl8188eu/hal/Hal8188ERateAdaptive.c   |  4 ++--
 drivers/staging/rtl8188eu/hal/odm_HWConfig.c       |  2 +-
 drivers/staging/rtl8188eu/hal/phy.c                | 20 ++++++++++----------
 drivers/staging/rtl8188eu/hal/rf.c                 |  2 +-
 11 files changed, 42 insertions(+), 42 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_efuse.c b/drivers/staging/rtl8188eu/core/rtw_efuse.c
index defec6b..b667461 100644
--- a/drivers/staging/rtl8188eu/core/rtw_efuse.c
+++ b/drivers/staging/rtl8188eu/core/rtw_efuse.c
@@ -150,12 +150,12 @@ efuse_phymap_to_logical(u8 *phymap, u16 _offset, u16 _size_byte, u8  *pbuf)
 				continue;
 			} else {
 				offset = ((rtemp8 & 0xF0) >> 1) | u1temp;
-				wren = (rtemp8 & 0x0F);
+				wren = rtemp8 & 0x0F;
 				eFuse_Addr++;
 			}
 		} else {
-			offset = ((rtemp8 >> 4) & 0x0f);
-			wren = (rtemp8 & 0x0f);
+			offset = (rtemp8 >> 4) & 0x0f;
+			wren = rtemp8 & 0x0f;
 		}
 
 		if (offset < EFUSE_MAX_SECTION_88E) {
diff --git a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
index f2c3ca7..555efa1 100644
--- a/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
+++ b/drivers/staging/rtl8188eu/core/rtw_ieee80211.c
@@ -663,7 +663,7 @@ int rtw_get_sec_ie(u8 *in_ie, uint in_len, u8 *rsn_ie, u16 *rsn_len, u8 *wpa_ie,
 
 	/* Search required WPA or WPA2 IE and copy to sec_ie[] */
 
-	cnt = (_TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_);
+	cnt = _TIMESTAMP_ + _BEACON_ITERVAL_ + _CAPABILITY_;
 
 	sec_idx = 0;
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index d4632da..c9ce54f 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -2037,7 +2037,7 @@ void rtw_update_ht_cap(struct adapter *padapter, u8 *pie, uint ie_len)
 	p = rtw_get_ie(pie+sizeof(struct ndis_802_11_fixed_ie), _HT_CAPABILITY_IE_, &len, ie_len-sizeof(struct ndis_802_11_fixed_ie));
 	if (p && len > 0) {
 		pht_capie = (struct rtw_ieee80211_ht_cap *)(p+2);
-		max_ampdu_sz = (pht_capie->ampdu_params_info & IEEE80211_HT_CAP_AMPDU_FACTOR);
+		max_ampdu_sz = pht_capie->ampdu_params_info & IEEE80211_HT_CAP_AMPDU_FACTOR;
 		max_ampdu_sz = 1 << (max_ampdu_sz+3); /*  max_ampdu_sz (kbytes); */
 		phtpriv->rx_ampdu_maxlen = max_ampdu_sz;
 	}
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index cd12dd7..432c5eb 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -1639,7 +1639,7 @@ unsigned int OnAction_back(struct adapter *padapter, struct recv_frame *precv_fr
 			break;
 		case RTW_WLAN_ACTION_ADDBA_RESP: /* ADDBA response */
 			status = get_unaligned_le16(&frame_body[3]);
-			tid = ((frame_body[5] >> 2) & 0x7);
+			tid = (frame_body[5] >> 2) & 0x7;
 			if (status == 0) {	/* successful */
 				DBG_88E("agg_enable for TID=%d\n", tid);
 				psta->htpriv.agg_enable_bitmap |= 1 << tid;
@@ -2491,7 +2491,7 @@ void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short
 
 		/* setting IV for auth seq #3 */
 		if ((pmlmeinfo->auth_seq == 3) && (pmlmeinfo->state & WIFI_FW_AUTH_STATE) && (use_shared_key == 1)) {
-			val32 = ((pmlmeinfo->iv++) | (pmlmeinfo->key_index << 30));
+			val32 = (pmlmeinfo->iv++) | (pmlmeinfo->key_index << 30);
 			le_tmp32 = cpu_to_le32(val32);
 			pframe = rtw_set_fixed_ie(pframe, 4, (unsigned char *)&le_tmp32, &(pattrib->pktlen));
 
@@ -3331,7 +3331,7 @@ void issue_action_BA(struct adapter *padapter, unsigned char *raddr, unsigned ch
 			} while (pmlmeinfo->dialogToken == 0);
 			pframe = rtw_set_fixed_ie(pframe, 1, &(pmlmeinfo->dialogToken), &(pattrib->pktlen));
 
-			BA_para_set = (0x1002 | ((status & 0xf) << 2)); /* immediate ack & 64 buffer size */
+			BA_para_set = 0x1002 | ((status & 0xf) << 2); /* immediate ack & 64 buffer size */
 			le_tmp = cpu_to_le16(BA_para_set);
 			pframe = rtw_set_fixed_ie(pframe, 2, (unsigned char *)(&(le_tmp)), &(pattrib->pktlen));
 
@@ -4247,7 +4247,7 @@ void report_survey_event(struct adapter *padapter,
 	if (pcmd_obj == NULL)
 		return;
 
-	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct survey_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (pevtcmd == NULL) {
 		kfree(pcmd_obj);
@@ -4299,7 +4299,7 @@ void report_surveydone_event(struct adapter *padapter)
 	if (pcmd_obj == NULL)
 		return;
 
-	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
 	if (pevtcmd == NULL) {
 		kfree(pcmd_obj);
@@ -4345,7 +4345,7 @@ void report_join_res(struct adapter *padapter, int res)
 	if (pcmd_obj == NULL)
 		return;
 
-	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (pevtcmd == NULL) {
 		kfree(pcmd_obj);
@@ -4398,7 +4398,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	if (pcmd_obj == NULL)
 		return;
 
-	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
 	if (pevtcmd == NULL) {
 		kfree(pcmd_obj);
@@ -4428,7 +4428,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	if (psta)
 		mac_id = (int)psta->mac_id;
 	else
-		mac_id = (-1);
+		mac_id = -1;
 
 	pdel_sta_evt->mac_id = mac_id;
 
@@ -4453,7 +4453,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	if (pcmd_obj == NULL)
 		return;
 
-	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_KERNEL);
 	if (pevtcmd == NULL) {
 		kfree(pcmd_obj);
@@ -5356,7 +5356,7 @@ u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf)
 
 		psta = rtw_get_stainfo(pstapriv, pparm->addr);
 		if (psta) {
-			ctrl = (BIT(15) | ((pparm->algorithm) << 2));
+			ctrl = BIT(15) | ((pparm->algorithm) << 2);
 
 			DBG_88E("r871x_set_stakey_hdl(): enc_algorithm=%d\n", pparm->algorithm);
 
@@ -5365,7 +5365,7 @@ u8 set_stakey_hdl(struct adapter *padapter, u8 *pbuf)
 				return H2C_REJECTED;
 			}
 
-			cam_id = (psta->mac_id + 3);/* 0~3 for default key, cmd_id = macid + 3, macid = aid+1; */
+			cam_id = psta->mac_id + 3;/* 0~3 for default key, cmd_id = macid + 3, macid = aid+1; */
 
 			DBG_88E("Write CAM, mac_addr =%x:%x:%x:%x:%x:%x, cam_entry=%d\n", pparm->addr[0],
 				pparm->addr[1], pparm->addr[2], pparm->addr[3], pparm->addr[4],
diff --git a/drivers/staging/rtl8188eu/core/rtw_recv.c b/drivers/staging/rtl8188eu/core/rtw_recv.c
index bd79e9e..dc57c67 100644
--- a/drivers/staging/rtl8188eu/core/rtw_recv.c
+++ b/drivers/staging/rtl8188eu/core/rtw_recv.c
@@ -2159,7 +2159,7 @@ void rtw_signal_stat_timer_hdl(RTW_TIMER_HDL_ARGS)
 
 		/* update value of signal_strength, rssi, signal_qual */
 		if (check_fwstate(&adapter->mlmepriv, _FW_UNDER_SURVEY) == false) {
-			tmp_s = (avg_signal_strength+(_alpha-1)*recvpriv->signal_strength);
+			tmp_s = avg_signal_strength+(_alpha-1)*recvpriv->signal_strength;
 			if (tmp_s % _alpha)
 				tmp_s = tmp_s/_alpha + 1;
 			else
@@ -2167,7 +2167,7 @@ void rtw_signal_stat_timer_hdl(RTW_TIMER_HDL_ARGS)
 			if (tmp_s > 100)
 				tmp_s = 100;
 
-			tmp_q = (avg_signal_qual+(_alpha-1)*recvpriv->signal_qual);
+			tmp_q = avg_signal_qual+(_alpha-1)*recvpriv->signal_qual;
 			if (tmp_q % _alpha)
 				tmp_q = tmp_q/_alpha + 1;
 			else
diff --git a/drivers/staging/rtl8188eu/core/rtw_sreset.c b/drivers/staging/rtl8188eu/core/rtw_sreset.c
index cd4e344..e725a47 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sreset.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sreset.c
@@ -47,7 +47,7 @@ u8 sreset_get_wifi_status(struct adapter *padapter)
 
 	if (WIFI_STATUS_SUCCESS != psrtpriv->Wifi_Error_Status) {
 		DBG_88E("==>%s error_status(0x%x)\n", __func__, psrtpriv->Wifi_Error_Status);
-		status = (psrtpriv->Wifi_Error_Status & (~(USB_READ_PORT_FAIL|USB_WRITE_PORT_FAIL)));
+		status = psrtpriv->Wifi_Error_Status & (~(USB_READ_PORT_FAIL|USB_WRITE_PORT_FAIL));
 	}
 	DBG_88E("==> %s wifi_status(0x%x)\n", __func__, status);
 
diff --git a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
index 509fc05..fbde6c8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
+++ b/drivers/staging/rtl8188eu/core/rtw_wlan_util.c
@@ -475,14 +475,14 @@ void write_cam(struct adapter *padapter, u8 entry, u16 ctrl, u8 *mac, u8 *key)
 	for (j = 5; j >= 0; j--) {
 		switch (j) {
 		case 0:
-			val = (ctrl | (mac[0] << 16) | (mac[1] << 24));
+			val = ctrl | (mac[0] << 16) | (mac[1] << 24);
 			break;
 		case 1:
-			val = (mac[2] | (mac[3] << 8) | (mac[4] << 16) | (mac[5] << 24));
+			val = mac[2] | (mac[3] << 8) | (mac[4] << 16) | (mac[5] << 24);
 			break;
 		default:
 			i = (j - 2) << 2;
-			val = (key[i] | (key[i+1] << 8) | (key[i+2] << 16) | (key[i+3] << 24));
+			val = key[i] | (key[i+1] << 8) | (key[i+2] << 16) | (key[i+3] << 24);
 			break;
 		}
 
@@ -577,7 +577,7 @@ void WMMOnAssocRsp(struct adapter *padapter)
 		/* AIFS = AIFSN * slot time + SIFS - r2t phy delay */
 		AIFS = (pmlmeinfo->WMM_param.ac_param[i].ACI_AIFSN & 0x0f) * pmlmeinfo->slotTime + aSifsTime;
 
-		ECWMin = (pmlmeinfo->WMM_param.ac_param[i].CW & 0x0f);
+		ECWMin = pmlmeinfo->WMM_param.ac_param[i].CW & 0x0f;
 		ECWMax = (pmlmeinfo->WMM_param.ac_param[i].CW & 0xf0) >> 4;
 		TXOP = le16_to_cpu(pmlmeinfo->WMM_param.ac_param[i].TXOP_limit);
 
@@ -754,14 +754,14 @@ void HT_caps_handler(struct adapter *padapter, struct ndis_802_11_var_ie *pIE)
 		} else {
 			/* modify from  fw by Thomas 2010/11/17 */
 			if ((pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3) > (pIE->data[i] & 0x3))
-				max_AMPDU_len = (pIE->data[i] & 0x3);
+				max_AMPDU_len = pIE->data[i] & 0x3;
 			else
-				max_AMPDU_len = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3);
+				max_AMPDU_len = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x3;
 
 			if ((pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c) > (pIE->data[i] & 0x1c))
-				min_MPDU_spacing = (pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c);
+				min_MPDU_spacing = pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para & 0x1c;
 			else
-				min_MPDU_spacing = (pIE->data[i] & 0x1c);
+				min_MPDU_spacing = pIE->data[i] & 0x1c;
 
 			pmlmeinfo->HT_caps.u.HT_cap_element.AMPDU_para = max_AMPDU_len | min_MPDU_spacing;
 		}
@@ -1283,7 +1283,7 @@ unsigned int update_MSC_rate(struct HT_caps_element *pHT_caps)
 {
 	unsigned int mask = 0;
 
-	mask = ((pHT_caps->u.HT_cap_element.MCS_rate[0] << 12) | (pHT_caps->u.HT_cap_element.MCS_rate[1] << 20));
+	mask = (pHT_caps->u.HT_cap_element.MCS_rate[0] << 12) | (pHT_caps->u.HT_cap_element.MCS_rate[1] << 20);
 
 	return mask;
 }
diff --git a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
index 8d63c83..353ff37 100644
--- a/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
+++ b/drivers/staging/rtl8188eu/hal/Hal8188ERateAdaptive.c
@@ -619,7 +619,7 @@ u8 ODM_RA_GetDecisionRate_8188E(struct odm_dm_struct *dm_odm, u8 macid)
 
 	if ((NULL == dm_odm) || (macid >= ASSOCIATE_ENTRY_NUM))
 		return 0;
-	DecisionRate = (dm_odm->RAInfo[macid].DecisionRate);
+	DecisionRate = dm_odm->RAInfo[macid].DecisionRate;
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
 		(" macid =%d DecisionRate = 0x%x\n", macid, DecisionRate));
 	return DecisionRate;
@@ -631,7 +631,7 @@ u8 ODM_RA_GetHwPwrStatus_8188E(struct odm_dm_struct *dm_odm, u8 macid)
 
 	if ((NULL == dm_odm) || (macid >= ASSOCIATE_ENTRY_NUM))
 		return 0;
-	PTStage = (dm_odm->RAInfo[macid].PTStage);
+	PTStage = dm_odm->RAInfo[macid].PTStage;
 	ODM_RT_TRACE(dm_odm, ODM_COMP_RATE_ADAPTIVE, ODM_DBG_TRACE,
 		     ("macid =%d PTStage = 0x%x\n", macid, PTStage));
 	return PTStage;
diff --git a/drivers/staging/rtl8188eu/hal/odm_HWConfig.c b/drivers/staging/rtl8188eu/hal/odm_HWConfig.c
index f8fae18..36afe45 100644
--- a/drivers/staging/rtl8188eu/hal/odm_HWConfig.c
+++ b/drivers/staging/rtl8188eu/hal/odm_HWConfig.c
@@ -124,7 +124,7 @@ static void odm_RxPhyStatus92CSeries_Parsing(struct odm_dm_struct *dm_odm,
 		/* The RSSI formula should be modified according to the gain table */
 		/* In 88E, cck_highpwr is always set to 1 */
 		LNA_idx = (cck_agc_rpt & 0xE0) >> 5;
-		VGA_idx = (cck_agc_rpt & 0x1F);
+		VGA_idx = cck_agc_rpt & 0x1F;
 		switch (LNA_idx) {
 		case 7:
 			if (VGA_idx <= 27)
diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
index f3b195e..6e4c3ee 100644
--- a/drivers/staging/rtl8188eu/hal/phy.c
+++ b/drivers/staging/rtl8188eu/hal/phy.c
@@ -60,7 +60,7 @@ void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
 	if (bitmask != bMaskDWord) { /* if not "double word" write */
 		original_value = usb_read32(adapt, regaddr);
 		bit_shift = cal_bit_shift(bitmask);
-		data = ((original_value & (~bitmask)) | (data << bit_shift));
+		data = (original_value & (~bitmask)) | (data << bit_shift);
 	}
 
 	usb_write32(adapt, regaddr, data);
@@ -143,7 +143,7 @@ void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
 	if (bit_mask != bRFRegOffsetMask) {
 		original_value = rf_serial_read(adapt, rf_path, reg_addr);
 		bit_shift =  cal_bit_shift(bit_mask);
-		data = ((original_value & (~bit_mask)) | (data << bit_shift));
+		data = (original_value & (~bit_mask)) | (data << bit_shift);
 	}
 
 	rf_serial_write(adapt, rf_path, reg_addr, data);
@@ -393,12 +393,12 @@ void rtl88eu_dm_txpower_track_adjust(struct odm_dm_struct *dm_odm, u8 type,
 
 		if (dm_odm->BbSwingIdxOfdm <= dm_odm->BbSwingIdxOfdmBase) {
 			*direction = 1;
-			pwr_value = (dm_odm->BbSwingIdxOfdmBase -
-				     dm_odm->BbSwingIdxOfdm);
+			pwr_value = dm_odm->BbSwingIdxOfdmBase -
+				     dm_odm->BbSwingIdxOfdm;
 		} else {
 			*direction = 2;
-			pwr_value = (dm_odm->BbSwingIdxOfdm -
-				     dm_odm->BbSwingIdxOfdmBase);
+			pwr_value = dm_odm->BbSwingIdxOfdm -
+				     dm_odm->BbSwingIdxOfdmBase;
 		}
 
 	} else if (type == 1) { /* For CCK adjust. */
@@ -408,12 +408,12 @@ void rtl88eu_dm_txpower_track_adjust(struct odm_dm_struct *dm_odm, u8 type,
 
 		if (dm_odm->BbSwingIdxCck <= dm_odm->BbSwingIdxCckBase) {
 			*direction = 1;
-			pwr_value = (dm_odm->BbSwingIdxCckBase -
-				     dm_odm->BbSwingIdxCck);
+			pwr_value = dm_odm->BbSwingIdxCckBase -
+				     dm_odm->BbSwingIdxCck;
 		} else {
 			*direction = 2;
-			pwr_value = (dm_odm->BbSwingIdxCck -
-				     dm_odm->BbSwingIdxCckBase);
+			pwr_value = dm_odm->BbSwingIdxCck -
+				     dm_odm->BbSwingIdxCckBase;
 		}
 
 	}
diff --git a/drivers/staging/rtl8188eu/hal/rf.c b/drivers/staging/rtl8188eu/hal/rf.c
index eea4c8a..0970927 100644
--- a/drivers/staging/rtl8188eu/hal/rf.c
+++ b/drivers/staging/rtl8188eu/hal/rf.c
@@ -201,7 +201,7 @@ static void get_rx_power_val_by_reg(struct adapter *adapt, u8 channel,
 			break;
 		case 2:	/*  Better regulatory */
 				/*  don't increase any power diff */
-			write_val = ((index < 2) ? powerbase0[rf] : powerbase1[rf]);
+			write_val = (index < 2) ? powerbase0[rf] : powerbase1[rf];
 			break;
 		case 3:	/*  Customer defined power diff. */
 				/*  increase power diff defined by customer. */
-- 
1.9.1


