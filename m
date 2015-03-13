X-GM-THRID: 8179991707648
X-Received: by 10.194.201.10 with SMTP id jw10mr7595548wjc.3.1426280260550;
        Fri, 13 Mar 2015 13:57:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.7.208 with SMTP id l16ls424920laa.66.gmail; Fri, 13 Mar
 2015 13:57:40 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr5596116lbb.19.1426280260050;
        Fri, 13 Mar 2015 13:57:40 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x229.google.com (mail-we0-x229.google.com. [2a00:1450:400c:c03::229])
        by gmr-mx.google.com with ESMTPS id c8si193595wiw.1.2015.03.13.13.57.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:57:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) client-ip=2a00:1450:400c:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::229 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wevk48 with SMTP id k48so25775899wev.7
        for <outreachy-kernel@googlegroups.com>; Fri, 13 Mar 2015 13:57:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iYS8/1LZt4L8O7CcPtrX65k0GJwciS+1FL1G4/AJgbQ=;
        b=EUW8mjllr9ZMQVlRMGP5LH7OXrhFrlH5AgO3UQBhq/LCc7y610tPVe376k+AIbD5Au
         R9s4Xdw0V8c1KuIjB3rTEnbqxduKLqUSKPqjbjY/0OenIQLtFkXXfyIyV2tNnEwKVMet
         4+THMmPXy51BjCq4JMt0pRZB1MR+vxI4MQzVOr4Fi16yPUjA6Dg6imQra9ld/stt+zPU
         CbbfRBG59F9NrQUWc1ztcFnaYhwhW2iETUzSQlExk5nlrgTphkdD/BASQJUfiHWMnILF
         9sQHo/q+HN/feBZIHuslMCFEji5uQ92JLROwTYMDzsDnh1wCPhTlDGvjUjQh369SMCVM
         atZQ==
X-Received: by 10.194.176.162 with SMTP id cj2mr36292555wjc.93.1426280259889;
        Fri, 13 Mar 2015 13:57:39 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.55.220])
        by mx.google.com with ESMTPSA id pa4sm4349895wjb.11.2015.03.13.13.57.37
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2015 13:57:38 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id CB6A6C1F52; Fri, 13 Mar 2015 20:45:31 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 3/8] Staging: rtl8723au: Remove parentheses around right side an assignment
Date: Fri, 13 Mar 2015 20:45:25 +0300
Message-Id: <1426268725-7786-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <alpine.DEB.2.02.1503132132180.2065@localhost6.localdomain6>
References: <alpine.DEB.2.02.1503132132180.2065@localhost6.localdomain6>

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
 drivers/staging/rtl8723au/core/rtw_mlme_ext.c       | 16 ++++++++--------
 drivers/staging/rtl8723au/core/rtw_recv.c           |  4 ++--
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c |  2 +-
 drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c   | 12 ++++++------
 drivers/staging/rtl8723au/hal/rtl8723a_phycfg.c     |  4 ++--
 drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c     |  4 ++--
 drivers/staging/rtl8723au/hal/rtl8723au_recv.c      |  4 ++--
 drivers/staging/rtl8723au/hal/usb_halinit.c         |  4 ++--
 8 files changed, 25 insertions(+), 25 deletions(-)

diff --git a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
index 0e0f73c..d01ca1d 100644
--- a/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8723au/core/rtw_mlme_ext.c
@@ -3842,7 +3842,7 @@ void issue_action_BA23a(struct rtw_adapter *padapter,
 				IEEE80211_ADDBA_PARAM_BUF_SIZE_MASK;
 		} else {
 			/* immediate ack & 64 buffer size */
-			BA_para_set = (0x1002 | ((status & 0xf) << 2));
+			BA_para_set = 0x1002 | ((status & 0xf) << 2);
 		}
 
 		put_unaligned_le16(BA_para_set,
@@ -4745,7 +4745,7 @@ void report_survey_event23a(struct rtw_adapter *padapter,
 	if (!pcmd_obj)
 		return;
 
-	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct survey_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (!pevtcmd) {
 		kfree(pcmd_obj);
@@ -4796,7 +4796,7 @@ void report_surveydone_event23a(struct rtw_adapter *padapter)
 	if (!pcmd_obj)
 		return;
 
-	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (!pevtcmd) {
 		kfree(pcmd_obj);
@@ -4840,7 +4840,7 @@ void report_join_res23a(struct rtw_adapter *padapter, int res)
 	if (!pcmd_obj)
 		return;
 
-	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (!pevtcmd) {
 		kfree(pcmd_obj);
@@ -4890,7 +4890,7 @@ void report_del_sta_event23a(struct rtw_adapter *padapter,
 	if (!pcmd_obj)
 		return;
 
-	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (!pevtcmd) {
 		kfree(pcmd_obj);
@@ -4918,7 +4918,7 @@ void report_del_sta_event23a(struct rtw_adapter *padapter,
 	if (psta)
 		mac_id = (int)psta->mac_id;
 	else
-		mac_id = (-1);
+		mac_id = -1;
 
 	pdel_sta_evt->mac_id = mac_id;
 
@@ -4944,7 +4944,7 @@ void report_add_sta_event23a(struct rtw_adapter *padapter,
 	if (!pcmd_obj)
 		return;
 
-	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
+	cmdsz = sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header);
 	pevtcmd = kzalloc(cmdsz, GFP_ATOMIC);
 	if (!pevtcmd) {
 		kfree(pcmd_obj);
@@ -5951,7 +5951,7 @@ int set_stakey_hdl23a(struct rtw_adapter *padapter, const u8 *pbuf)
 
 			/* 0~3 for default key, cmd_id = macid + 3,
 			   macid = aid+1; */
-			cam_id = (psta->mac_id + 3);
+			cam_id = psta->mac_id + 3;
 
 			DBG_8723A("Write CAM, mac_addr =%x:%x:%x:%x:%x:%x, "
 				  "cam_entry =%d\n", pparm->addr[0],
diff --git a/drivers/staging/rtl8723au/core/rtw_recv.c b/drivers/staging/rtl8723au/core/rtw_recv.c
index 559ddde..9c78300 100644
--- a/drivers/staging/rtl8723au/core/rtw_recv.c
+++ b/drivers/staging/rtl8723au/core/rtw_recv.c
@@ -2334,8 +2334,8 @@ void rtw_signal_stat_timer_hdl23a(unsigned long data)
 
 	/* update value of signal_strength, rssi, signal_qual */
 	if (!check_fwstate(&adapter->mlmepriv, _FW_UNDER_SURVEY)) {
-		tmp_s = (avg_signal_strength + (_alpha - 1) *
-			 recvpriv->signal_strength);
+		tmp_s = avg_signal_strength + (_alpha - 1) *
+			 recvpriv->signal_strength;
 		if (tmp_s %_alpha)
 			tmp_s = tmp_s / _alpha + 1;
 		else
diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index e46032e..7f091da 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -3208,7 +3208,7 @@ bthci_CmdDisconnectPhysicalLink(struct rtw_adapter *padapter,
 	pBtDbg->dbgHciInfo.hciCmdCntDisconnectPhyLink++;
 
 	PLH = *((u8 *)pHciCmd->Data);
-	PhysLinkDisconnectReason = (*((u8 *)pHciCmd->Data+1));
+	PhysLinkDisconnectReason = *((u8 *)pHciCmd->Data+1);
 	RTPRINT(FIOCTL, IOCTL_BT_HCICMD, ("HCI_DISCONNECT_PHYSICAL_LINK  PhyHandle = 0x%x, Reason = 0x%x\n",
 		PLH, PhysLinkDisconnectReason));
 
diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
index ebe3339..d3dc24b 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_hal_init.c
@@ -428,10 +428,10 @@ hal_ReadEFuse_WiFi(struct rtw_adapter *padapter,
 				continue;
 
 			offset |= ((efuseExtHdr & 0xF0) >> 1);
-			wden = (efuseExtHdr & 0x0F);
+			wden = efuseExtHdr & 0x0F;
 		} else {
-			offset = ((efuseHeader >> 4) & 0x0f);
-			wden = (efuseHeader & 0x0f);
+			offset = (efuseHeader >> 4) & 0x0f;
+			wden = efuseHeader & 0x0f;
 		}
 
 		if (offset < EFUSE_MAX_SECTION_8723A) {
@@ -527,10 +527,10 @@ hal_ReadEFuse_BT(struct rtw_adapter *padapter,
 					continue;
 
 				offset |= ((efuseExtHdr & 0xF0) >> 1);
-				wden = (efuseExtHdr & 0x0F);
+				wden = efuseExtHdr & 0x0F;
 			} else {
-				offset = ((efuseHeader >> 4) & 0x0f);
-				wden = (efuseHeader & 0x0f);
+				offset = (efuseHeader >> 4) & 0x0f;
+				wden = efuseHeader & 0x0f;
 			}
 
 			if (offset < EFUSE_BT_MAX_SECTION) {
diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_phycfg.c b/drivers/staging/rtl8723au/hal/rtl8723a_phycfg.c
index d34a148..38f8c3d 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_phycfg.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_phycfg.c
@@ -126,7 +126,7 @@ PHY_SetBBReg(struct rtw_adapter *Adapter, u32 RegAddr, u32 BitMask, u32	Data)
 	if (BitMask != bMaskDWord) {/* if not "double word" write */
 		OriginalValue = rtl8723au_read32(Adapter, RegAddr);
 		BitShift = phy_CalculateBitShift(BitMask);
-		Data = ((OriginalValue & (~BitMask)) | (Data << BitShift));
+		Data = (OriginalValue & (~BitMask)) | (Data << BitShift);
 	}
 
 	rtl8723au_write32(Adapter, RegAddr, Data);
@@ -389,7 +389,7 @@ PHY_SetRFReg(struct rtw_adapter *Adapter, enum RF_RADIO_PATH eRFPath,
 	if (BitMask != bRFRegOffsetMask) {
 		Original_Value = phy_RFSerialRead(Adapter, eRFPath, RegAddr);
 		BitShift =  phy_CalculateBitShift(BitMask);
-		Data = ((Original_Value & (~BitMask)) | (Data << BitShift));
+		Data = (Original_Value & (~BitMask)) | (Data << BitShift);
 	}
 
 	phy_RFSerialWrite(Adapter, eRFPath, RegAddr, Data);
diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c b/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c
index 32c58c6..3e3f186 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_rf6052.c
@@ -267,8 +267,8 @@ getTxPowerWriteValByRegulatory(struct rtw_adapter *Adapter, u8 Channel,
 			break;
 		case 2:	/*  Better regulatory */
 			/*  don't increase any power diff */
-			writeVal = ((index < 2) ? powerBase0[rf] :
-				    powerBase1[rf]);
+			writeVal = (index < 2) ? powerBase0[rf] :
+				    powerBase1[rf];
 			break;
 		case 3:	/*  Customer defined power diff. */
 			chnlGroup = 0;
diff --git a/drivers/staging/rtl8723au/hal/rtl8723au_recv.c b/drivers/staging/rtl8723au/hal/rtl8723au_recv.c
index 6075b6d..aae433f 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723au_recv.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723au_recv.c
@@ -194,8 +194,8 @@ void update_recvframe_phyinfo(struct recv_frame *precvframe,
 	bool matchbssid = false;
 	u8 *bssid;
 
-	matchbssid = (!ieee80211_is_ctl(hdr->frame_control) &&
-		      !pattrib->icv_err && !pattrib->crc_err);
+	matchbssid = !ieee80211_is_ctl(hdr->frame_control) &&
+		      !pattrib->icv_err && !pattrib->crc_err;
 
 	if (matchbssid) {
 		switch (hdr->frame_control &
diff --git a/drivers/staging/rtl8723au/hal/usb_halinit.c b/drivers/staging/rtl8723au/hal/usb_halinit.c
index bd9c549..0d08863 100644
--- a/drivers/staging/rtl8723au/hal/usb_halinit.c
+++ b/drivers/staging/rtl8723au/hal/usb_halinit.c
@@ -736,8 +736,8 @@ int rtl8723au_hal_init(struct rtw_adapter *Adapter)
 
 	rtl8723a_InitHalDm(Adapter);
 
-	val8 = ((WiFiNavUpperUs + HAL_8723A_NAV_UPPER_UNIT - 1) /
-		HAL_8723A_NAV_UPPER_UNIT);
+	val8 = (WiFiNavUpperUs + HAL_8723A_NAV_UPPER_UNIT - 1) /
+		HAL_8723A_NAV_UPPER_UNIT;
 	rtl8723au_write8(Adapter, REG_NAV_UPPER, val8);
 
 	/*  2011/03/09 MH debug only, UMC-B cut pass 2500 S5 test, but we need to fin root cause. */
-- 
1.9.1


