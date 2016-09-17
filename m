X-GM-THRID: 6331045009787191296
X-Received: by 10.13.201.3 with SMTP id l3mr12264836ywd.24.1474130140070;
        Sat, 17 Sep 2016 09:35:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.66 with SMTP id h2ls3318481otd.18.gmail; Sat, 17 Sep
 2016 09:35:39 -0700 (PDT)
X-Received: by 10.129.131.19 with SMTP id t19mr1717513ywf.79.1474130139679;
        Sat, 17 Sep 2016 09:35:39 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 142si5345495pfx.2.2016.09.17.09.35.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 09:35:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id n24so4992515pfb.3
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 09:35:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=I7wSVaHJrFBoRjOcCmejIxU9taAqoJxPch7giQ7cIy0=;
        b=xRX4Uy+eFbm2ZeG2yvy1JNghWPL6BmlUiqQh8AwBp9oS+1W4KT/O6jUNF9uvS0UAfF
         oZa7XnihVKYxZ8GEwODD5F/EZP3DkrewkELHo8dwLlToWugI3yQFKfWjgM3M5fNvC6aF
         ZW30jfJCwuzqILFp5c3NZqu6Lnusp6QPx6CDR+J/EN9fUQ/cC/G0gM6vO1Uc7rg7Uera
         HCD4yVl/a4N5LWWoD2ilcU8KX1Bxag/gWu5jTKDYgXE0nNlK3yyTqSuRsS92fYadMZpy
         fJQ4WIRC65u0Na+7+90wwJmPcLxfX/HSKVzg182tFXlTgi2IKLINIhLWleIXXVDu/04O
         uIlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=I7wSVaHJrFBoRjOcCmejIxU9taAqoJxPch7giQ7cIy0=;
        b=dAqsAuHu1xOB6nqzgphqHo8xvsGxZibiKmgwBNiEQlt+Eo1Qp5Mc5Z+JV0T7afRRV7
         e4rZAP7E05jeZaqkUzx+bSKvIre1bQ71op3LM6jAXl93wxs9keEW/lFLpkN4HFTxLsWk
         kRFVJ3qo7XYgPk54+bzyJ2laTYPkNrsUjk+629CfYLMAsxVUA0/NvwvDbmrF9f0gOuWl
         ISrJNhkL/mt2wDetCfFmHCeqmEMPLqsTmris8ELGhvvuabhRBIvUQ/cvsBlU0QxLIFtj
         BacIhEAIKxfo2Ya/1wz9MyRnehxVrlEN1tqT4fwrCVoatN9wxtFDn9Zm03t5bgVBV4i/
         OS6A==
X-Gm-Message-State: AE9vXwPiLJsQzKE027cltiCDM9szjhXB25flBeKRRX41D1qR2rXLfXmHZH4y7imBcbCU7Q==
X-Received: by 10.98.144.1 with SMTP id a1mr32848116pfe.23.1474130139226;
        Sat, 17 Sep 2016 09:35:39 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.191.204])
        by smtp.gmail.com with ESMTPSA id l81sm22076034pfi.14.2016.09.17.09.35.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 09:35:38 -0700 (PDT)
Date: Sat, 17 Sep 2016 22:05:19 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH v2] staging: rtl8188eu: core: Replace memcpy() with
 ether_addr_copy() if ethernet addresses are __aligned(2)
Message-ID: <20160917163519.GA16529@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch warning:
Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
__aligned(2)
Done using coccinelle:

@@ 
expression exp1, exp2; 
@@
- memcpy(exp1, exp2, ETH_ALEN);
+ ether_addr_copy(exp1, exp2);

The output of pahole shows that the addresses are aligned:

struct ieee80211_hdr {
        __le16                     frame_control;        /*     0     2 */
        __le16                     duration_id;          /*     2     2 */
        u8                         addr1[6];             /*     4     6 */
        u8                         addr2[6];             /*    10     6 */
        u8                         addr3[6];             /*    16     6 */
        __le16                     seq_ctrl;             /*    22     2 */
        u8                         addr4[6];             /*    24     6 */

        /* size: 30, cachelines: 1, members: 7 */
        /* last cacheline: 30 bytes */
};

struct wlan_bssid_ex {
        u32                        Length;               /*     0     4 */
        unsigned char              MacAddress[6];        /*     4     6 */
        u8                         Reserved[2];          /*    10     2 */
        struct ndis_802_11_ssid    Ssid;                 /*    12    36 */
        u32                        Privacy;              /*    48     4 */
        long int                   Rssi;                 /*    52     8 */
        enum NDIS_802_11_NETWORK_TYPE NetworkTypeInUse;  /*    60     4 */
        /* --- cacheline 1 boundary (64 bytes) --- */
        struct ndis_802_11_config  Configuration;        /*    64    32 */
        enum ndis_802_11_network_infra InfrastructureMode; /*    96     4 */
        unsigned char              SupportedRates[16];   /*   100    16 */
        struct wlan_phy_info       PhyInfo;              /*   116     4 */
        u32                        IELength;             /*   120     4 */
        u8                         IEs[768];             /*   124   768 */
        /* --- cacheline 13 boundary (832 bytes) was 60 bytes ago --- */

        /* size: 892, cachelines: 14, members: 13 */
        /* last cacheline: 60 bytes */
};

struct stadel_event {
        unsigned char              macaddr[6];           /*     0     6 */
        unsigned char              rsvd[2];              /*     6     2 */
        int                        mac_id;               /*     8     4 */

        /* size: 12, cachelines: 1, members: 3 */
        /* last cacheline: 12 bytes */
};


Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
Changes in v2:
Included pahole output.

 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 89 ++++++++++++++-------------
 1 file changed, 46 insertions(+), 43 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 9544e55..fa8a5ca 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -353,9 +353,9 @@ static void issue_beacon(struct adapter *padapter, int timeout_ms)
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
 
-	memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, cur_network->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, bc_addr);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, cur_network->MacAddress);
 
 	SetSeqNum(pwlanhdr, 0/*pmlmeext->mgnt_seq*/);
 	/* pmlmeext->mgnt_seq++; */
@@ -495,9 +495,9 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
 
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
-	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
-	memcpy(pwlanhdr->addr3, bssid, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, da);
+	ether_addr_copy(pwlanhdr->addr2, mac);
+	ether_addr_copy(pwlanhdr->addr3, bssid);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -642,15 +642,15 @@ static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pss
 
 	if (da) {
 		/*	unicast probe request frame */
-		memcpy(pwlanhdr->addr1, da, ETH_ALEN);
-		memcpy(pwlanhdr->addr3, da, ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, da);
+		ether_addr_copy(pwlanhdr->addr3, da);
 	} else {
 		/*	broadcast probe request frame */
-		memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
-		memcpy(pwlanhdr->addr3, bc_addr, ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, bc_addr);
+		ether_addr_copy(pwlanhdr->addr3, bc_addr);
 	}
 
-	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr2, mac);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -785,9 +785,11 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
 	if (psta) {/*  for AP mode */
 #ifdef CONFIG_88EU_AP_MODE
 
-		memcpy(pwlanhdr->addr1, psta->hwaddr, ETH_ALEN);
-		memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-		memcpy(pwlanhdr->addr3, myid(&(padapter->eeprompriv)), ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, psta->hwaddr);
+		ether_addr_copy(pwlanhdr->addr2,
+				myid(&(padapter->eeprompriv)));
+		ether_addr_copy(pwlanhdr->addr3,
+				myid(&(padapter->eeprompriv)));
 
 
 		/*  setting auth algo number */
@@ -825,9 +827,9 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
 	} else {
 		__le32 le_tmp32;
 		__le16 le_tmp16;
-		memcpy(pwlanhdr->addr1, pnetwork->MacAddress, ETH_ALEN);
-		memcpy(pwlanhdr->addr2, myid(&padapter->eeprompriv), ETH_ALEN);
-		memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+		ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
+		ether_addr_copy(pwlanhdr->addr2, myid(&padapter->eeprompriv));
+		ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 
 		/*  setting auth algo number */
 		val16 = (pmlmeinfo->auth_algo == dot11AuthAlgrthm_Shared) ? 1 : 0;/*  0:OPEN System, 1:Shared key */
@@ -921,9 +923,10 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
 
-	memcpy((void *)GetAddr1Ptr(pwlanhdr), pstat->hwaddr, ETH_ALEN);
-	memcpy((void *)GetAddr2Ptr(pwlanhdr), myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy((void *)GetAddr3Ptr(pwlanhdr), pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy((void *)GetAddr1Ptr(pwlanhdr), pstat->hwaddr);
+	ether_addr_copy((void *)GetAddr2Ptr(pwlanhdr),
+			myid(&(padapter->eeprompriv)));
+	ether_addr_copy((void *)GetAddr3Ptr(pwlanhdr), pnetwork->MacAddress);
 
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
@@ -1044,9 +1047,9 @@ static void issue_assocreq(struct adapter *padapter)
 
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
-	memcpy(pwlanhdr->addr1, pnetwork->MacAddress, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -1252,9 +1255,9 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned
 	if (power_mode)
 		SetPwrMgt(fctrl);
 
-	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, da);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -1380,9 +1383,9 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16
 
 	SetAckpolicy(qc, pattrib->ack_policy);
 
-	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, da);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -1483,9 +1486,9 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned s
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
 
-	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, da);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -1601,9 +1604,9 @@ static void issue_action_BA(struct adapter *padapter, unsigned char *raddr,
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
 
-	memcpy(pwlanhdr->addr1, raddr, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, raddr);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -1760,9 +1763,9 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
 	fctrl = &pwlanhdr->frame_control;
 	*(fctrl) = 0;
 
-	memcpy(pwlanhdr->addr1, cur_network->MacAddress, ETH_ALEN);
-	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
-	memcpy(pwlanhdr->addr3, cur_network->MacAddress, ETH_ALEN);
+	ether_addr_copy(pwlanhdr->addr1, cur_network->MacAddress);
+	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
+	ether_addr_copy(pwlanhdr->addr3, cur_network->MacAddress);
 
 	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
 	pmlmeext->mgnt_seq++;
@@ -2159,7 +2162,7 @@ static u8 collect_bss_info(struct adapter *padapter,
 	if (subtype == WIFI_PROBEREQ) {
 		/*  FIXME */
 		bssid->InfrastructureMode = Ndis802_11Infrastructure;
-		memcpy(bssid->MacAddress, GetAddr2Ptr(pframe), ETH_ALEN);
+		ether_addr_copy(bssid->MacAddress, GetAddr2Ptr(pframe));
 		bssid->Privacy = 1;
 		return _SUCCESS;
 	}
@@ -2171,10 +2174,10 @@ static u8 collect_bss_info(struct adapter *padapter,
 
 	if (val16 & BIT(0)) {
 		bssid->InfrastructureMode = Ndis802_11Infrastructure;
-		memcpy(bssid->MacAddress, GetAddr2Ptr(pframe), ETH_ALEN);
+		ether_addr_copy(bssid->MacAddress, GetAddr2Ptr(pframe));
 	} else {
 		bssid->InfrastructureMode = Ndis802_11IBSS;
-		memcpy(bssid->MacAddress, GetAddr3Ptr(pframe), ETH_ALEN);
+		ether_addr_copy(bssid->MacAddress, GetAddr3Ptr(pframe));
 	}
 
 	if (val16 & BIT(4))
@@ -4395,7 +4398,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
 	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
 
 	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
-	memcpy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr, ETH_ALEN);
+	ether_addr_copy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr);
 	memcpy((unsigned char *)(pdel_sta_evt->rsvd), (unsigned char *)(&reason), 2);
 
 
@@ -4448,7 +4451,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
 	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
 
 	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
-	memcpy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr, ETH_ALEN);
+	ether_addr_copy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr);
 	padd_sta_evt->cam_id = cam_idx;
 
 	DBG_88E("report_add_sta_event: add STA\n");
-- 
2.7.4


