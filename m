X-GM-THRID: 6331045009787191296
X-Received: by 10.98.144.215 with SMTP id q84mr644678pfk.37.1474061284892;
        Fri, 16 Sep 2016 14:28:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.174.38 with SMTP id x38ls2030196ioe.42.gmail; Fri, 16 Sep
 2016 14:28:03 -0700 (PDT)
X-Received: by 10.66.249.36 with SMTP id yr4mr11652163pac.16.1474061283532;
        Fri, 16 Sep 2016 14:28:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 142si4766873pfx.2.2016.09.16.14.28.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 14:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so3887946pac.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 14:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Jp1dWrjbrXDIy5+g0mHJmrJYV5WcGwQUFN/jnOw6bd0=;
        b=LlrZlguGNeU7VNoBIt7EttVjt94kwkTa7NNzjrl9rTETwox99L9zSVfAb34OI5hgzY
         eTYOsNfiWBHMSyQKsKgZYGsSQMdwyK94FGoY2H5W6j4my9+H3AIxPzawh9YOAAN+xTMK
         mnkd/QwmEICqELI5Xi6YVuYSR+iFnBRihTaIuQqH23HIcaTKYU2qpAyr42vD++MLHH+1
         s10lPe3mPzFFCqC1+QifKd+WSIKa0Ex+SshRcTqaHe9dbv0zwTA4POYdW8Jw0u+4rTxs
         29tIZGoEIMj6Iv9BR4fwUcb0rxiP0p5jmFKUDsdkP0XBsPHWXEqsXvEGbAEN7mlzn4pa
         inKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Jp1dWrjbrXDIy5+g0mHJmrJYV5WcGwQUFN/jnOw6bd0=;
        b=AT/Lhj3WNTV2hwNlMkde4N59L32T2BZ3Yk75k4P4wDiro/gJt+NftsG/PDWgSMVk0h
         6OoQdJObjlRzaEUk3AWZIKgakx/UUkrl56n2bCouF8xzNeI82N7SUslainX2dKjfQTSU
         5/vkojpx7vbgAOn/CGAVOALZTHn9EGTRfk8D/2y0+7kPmVrVQiNAgtO2S823GNQgOdNJ
         68z40ImWJr/lmBLa3DtfiNuyKbRc/k2E9lIkJo4JOmXTAlrm9y3usFfX13pSIw/7rOLw
         gibJ7WcvnKOWiSb7qCNbdyFhg1sF1dsYBsxcryRmitY2Nae2ggcztAAZ8MHUDisplXV8
         aNPA==
X-Gm-Message-State: AE9vXwNyy7pqQ9geDq25jBvOqwHNW9fu7l515KwEjnxbZ1E6xUwUanIEmnQfH/8S5+zshg==
X-Received: by 10.66.146.39 with SMTP id sz7mr25930869pab.36.1474061283155;
        Fri, 16 Sep 2016 14:28:03 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.244.96])
        by smtp.gmail.com with ESMTPSA id 25sm6835285pfj.23.2016.09.16.14.27.57
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 14:28:02 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:57:49 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: rtl8188eu: core: Replace memcpy() with
 ether_addr_copy() if ethernet addresses are __aligned(2)
Message-ID: <20160916212749.GA25100@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch warning:
Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
__aligned(2).

Done using coccinelle:

@@ 
expression exp1, exp2; 
@@
- memcpy(exp1, exp2, ETH_ALEN);
+ ether_addr_copy(exp1, exp2);

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
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


