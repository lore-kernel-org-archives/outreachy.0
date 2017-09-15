X-GM-THRID: 6465995095819681792
X-Received: by 10.31.14.209 with SMTP id 200mr13471474vko.70.1505481800788;
        Fri, 15 Sep 2017 06:23:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.154.71 with SMTP id c68ls7091002ioe.22.gmail; Fri, 15 Sep
 2017 06:23:19 -0700 (PDT)
X-Received: by 10.99.155.10 with SMTP id r10mr15529339pgd.9.1505481799869;
        Fri, 15 Sep 2017 06:23:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505481799; cv=none;
        d=google.com; s=arc-20160816;
        b=t0VXFaT4TK88yKOOrkBfI6a94EbX58vM3r2McDFIra+bm5TLWL9p+jQ1PKTM1v78jB
         SY7O1V5gDpeAnOSsAKcmHfm4GLUguKRLXuAygiFSkVOuuC3SVdiDh5YS+NpGS6uQK3iH
         +TqRu3WU10Hm5D42yNucWNim2W9/v8WM0dDo16gAP+na+nzuFrvisb4l7jx5RTgeNTND
         jh8QiGq2KxEMNmK+LjlipCqPgzwEEGiMQavAdbhqJK9UMCrHoAwYSCD8eeq1NJ3i7dNr
         47S9L3OY3uT0YtYeL86uoyLRTV5lOy1+nnEgGtoHMkdicbqv9HqZbNnbQGKsepAbY4eH
         buVQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=jHsYohlZHK0ws31wSV2FiW95QNckUrwBrflxG3Y0Mts=;
        b=CccCRYumU8it8ikqiY0IPy7qFjEJyFBZtNZt4GedNgXkk2l9WS0HhO/KHgRLH24pEJ
         MmY0+ohr8D8ghhMEjaMNgUJ7eKI+jMYZE9Ebj8LcPDVlOgn8RRqkNFyxZJ6ftHEQVj8D
         DpvYdoCLUrwwHKPl5wwf7Hn52s1OV70fMedDsa4A7B98Al0iuGbTOpnxdr/YQqPfP3dp
         rTAvP7I2SIVHPNR3Dv4DtzEanDqxdjmX1Jnyi8bIESLUrSaDACsxJpYvI6/gugL3qHw0
         wIGNTL2gHMK7HSV8zwPcbiDK/1+ueCceSxgi34SrPbH8xwaKrJdHsxiR6PGODpXtSd2r
         59Nw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzQTHKI8;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c200si72756pfb.14.2017.09.15.06.23.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 06:23:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=DzQTHKI8;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id h4so1242081pfk.0
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 06:23:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=jHsYohlZHK0ws31wSV2FiW95QNckUrwBrflxG3Y0Mts=;
        b=DzQTHKI8Zcjx0yyMXyA3SSdOw+jBp9/usK+be4XbV41LH8sa3/h3TbiLpeizR1+GQd
         ha26tNsLVQwI0BnGgchjIaZZ7nguxufzUozI/h1pQIuc/WYp3rsZEBjlJM9sVX2va6XR
         ciNZaB104L9L8E3DzqYgmnsDyWhQdw4m74ENJB1RpapZSLXOrxK3QxVD1AEfd2ZzaIs8
         8BtanfDVdge+fHR8uoVmuNlQYBYIpyCZqIegR8TwT3JA+UeQU0IpobNZNYGGZ2wK2esw
         dv/lND/sh9UsTHtxrTYi3okDj7VVp8Sy6dmbmkJlct+ChZR3D3WL45y2KabbUz0qwgDV
         dmcw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=jHsYohlZHK0ws31wSV2FiW95QNckUrwBrflxG3Y0Mts=;
        b=r6Wxe5jUtnQhfA4qc6IamaIUkXYX91K7z8M6NYo7z/LAgDlWPg8HxOkCecqM02Grrk
         Ff50CGYW4wNSy4CoAl9BZ2sC3Oh9j3tl+u81CosEkeszHHhOpiS2uA6gxfVZ3+ch5phq
         X+ouKDwg1Pf5MLEdCabWGkGacQLnvKdktwVTIJfU5TupUhotvc+wIzBrC2Ts0HqQ9g+1
         NRFqF++qvBz2pA2bBHzrwHuuty6wvZRcQuQJ39SItSYAfQTDsyO196zomS3APN0ZLir6
         qupuGHBIR8Dj9BDuhZEKXW1H6oMwqZukDOk2sGLa6obUrOU/2prSOA+tX2WSfBvjn4XE
         jitg==
X-Gm-Message-State: AHPjjUiDzPt//pcKq3BrYCkcj9sGgL1EUjAkRpem+Gq9a60tkx96M8Nd
	SSVhOky3JmUBoUp2
X-Google-Smtp-Source: ADKCNb4mnIkuDeAMCwMxYBtmsCNy9kqLmr7wmNqw/AnZB4y/e/tgUht2iagEwEaPvB+UeraMgIs3TQ==
X-Received: by 10.98.214.131 with SMTP id a3mr24608190pfl.115.1505481799503;
        Fri, 15 Sep 2017 06:23:19 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([171.48.12.47])
        by smtp.gmail.com with ESMTPSA id l74sm4200789pfi.9.2017.09.15.06.23.15
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 06:23:18 -0700 (PDT)
Date: Fri, 15 Sep 2017 18:53:08 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8188eu: remove parenthesis from right hand side
 of assignment
Message-ID: <20170915132308.GA6205@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Parenthesis are not needed around the right hand side of an assignment.
This patch was made on the core files of rtl8188eu using the following
coccinelle script.

@@
binary operator op = {==,!=,&&,||,>=,<=,&,|};
expression l, r, t;
@@

(
l = (r op t)
|
l =
-(
r
-)
)

Signed-off-by: Aishwarya Pant <aishpant@gmail.com>
---
 drivers/staging/rtl8188eu/core/rtw_mlme.c     | 26 +++++++++++++-------------
 drivers/staging/rtl8188eu/core/rtw_mlme_ext.c |  2 +-
 drivers/staging/rtl8188eu/core/rtw_sta_mgt.c  |  4 ++--
 3 files changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
index f663e6c..b9ac9c8 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
@@ -1135,7 +1135,7 @@ static u8 search_max_mac_id(struct adapter *padapter)
 
 #if defined(CONFIG_88EU_AP_MODE)
 	if (check_fwstate(pmlmepriv, WIFI_AP_STATE)) {
-		for (aid = (pstapriv->max_num_sta); aid > 0; aid--) {
+		for (aid = pstapriv->max_num_sta; aid > 0; aid--) {
 			if (pstapriv->sta_aid[aid-1])
 				break;
 		}
@@ -1143,7 +1143,7 @@ static u8 search_max_mac_id(struct adapter *padapter)
 	} else
 #endif
 	{/* adhoc  id =  31~2 */
-		for (mac_id = (NUM_STA-1); mac_id >= IBSS_START_MAC_ID; mac_id--) {
+		for (mac_id = NUM_STA-1; mac_id >= IBSS_START_MAC_ID; mac_id--) {
 			if (pmlmeinfo->FW_sta_info[mac_id].status == 1)
 				break;
 		}
@@ -1569,7 +1569,7 @@ int rtw_set_auth(struct adapter *adapter, struct security_priv *psecuritypriv)
 	psetauthparm->mode = (unsigned char)psecuritypriv->dot11AuthAlgrthm;
 	pcmd->cmdcode = _SetAuth_CMD_;
 	pcmd->parmbuf = (unsigned char *)psetauthparm;
-	pcmd->cmdsz =  (sizeof(struct setauth_parm));
+	pcmd->cmdsz =  sizeof(struct setauth_parm);
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
@@ -1648,7 +1648,7 @@ int rtw_set_key(struct adapter *adapter, struct security_priv *psecuritypriv, in
 	}
 	pcmd->cmdcode = _SetKey_CMD_;
 	pcmd->parmbuf = (u8 *)psetkeyparm;
-	pcmd->cmdsz =  (sizeof(struct setkey_parm));
+	pcmd->cmdsz =  sizeof(struct setkey_parm);
 	pcmd->rsp = NULL;
 	pcmd->rspsz = 0;
 	INIT_LIST_HEAD(&pcmd->list);
@@ -1814,45 +1814,45 @@ void rtw_update_registrypriv_dev_network(struct adapter *adapter)
 	struct	security_priv *psecuritypriv = &adapter->securitypriv;
 	struct	wlan_network	*cur_network = &adapter->mlmepriv.cur_network;
 
-	pdev_network->Privacy = (psecuritypriv->dot11PrivacyAlgrthm > 0 ? 1 : 0); /*  adhoc no 802.1x */
+	pdev_network->Privacy = psecuritypriv->dot11PrivacyAlgrthm > 0 ? 1 : 0; /*  adhoc no 802.1x */
 
 	pdev_network->Rssi = 0;
 
 	switch (pregistrypriv->wireless_mode) {
 	case WIRELESS_11B:
-		pdev_network->NetworkTypeInUse = (Ndis802_11DS);
+		pdev_network->NetworkTypeInUse = Ndis802_11DS;
 		break;
 	case WIRELESS_11G:
 	case WIRELESS_11BG:
 	case WIRELESS_11_24N:
 	case WIRELESS_11G_24N:
 	case WIRELESS_11BG_24N:
-		pdev_network->NetworkTypeInUse = (Ndis802_11OFDM24);
+		pdev_network->NetworkTypeInUse = Ndis802_11OFDM24;
 		break;
 	case WIRELESS_11A:
 	case WIRELESS_11A_5N:
-		pdev_network->NetworkTypeInUse = (Ndis802_11OFDM5);
+		pdev_network->NetworkTypeInUse = Ndis802_11OFDM5;
 		break;
 	case WIRELESS_11ABGN:
 		if (pregistrypriv->channel > 14)
-			pdev_network->NetworkTypeInUse = (Ndis802_11OFDM5);
+			pdev_network->NetworkTypeInUse = Ndis802_11OFDM5;
 		else
-			pdev_network->NetworkTypeInUse = (Ndis802_11OFDM24);
+			pdev_network->NetworkTypeInUse = Ndis802_11OFDM24;
 		break;
 	default:
 		/*  TODO */
 		break;
 	}
 
-	pdev_network->Configuration.DSConfig = (pregistrypriv->channel);
+	pdev_network->Configuration.DSConfig = pregistrypriv->channel;
 	RT_TRACE(_module_rtl871x_mlme_c_, _drv_info_,
 		 ("pregistrypriv->channel=%d, pdev_network->Configuration.DSConfig=0x%x\n",
 		 pregistrypriv->channel, pdev_network->Configuration.DSConfig));
 
 	if (cur_network->network.InfrastructureMode == Ndis802_11IBSS)
-		pdev_network->Configuration.ATIMWindow = (0);
+		pdev_network->Configuration.ATIMWindow = 0;
 
-	pdev_network->InfrastructureMode = (cur_network->network.InfrastructureMode);
+	pdev_network->InfrastructureMode = cur_network->network.InfrastructureMode;
 
 	/*  1. Supported rates */
 	/*  2. IE */
diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
index 611c940..52f31c7 100644
--- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
+++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
@@ -3413,7 +3413,7 @@ static unsigned int OnAssocRsp(struct adapter *padapter,
 	/* following are moved to join event callback function */
 	/* to handle HT, WMM, rate adaptive, update MAC reg */
 	/* for not to handle the synchronous IO in the tasklet */
-	for (i = (6 + WLAN_HDR_A3_LEN); i < pkt_len;) {
+	for (i = 6 + WLAN_HDR_A3_LEN; i < pkt_len;) {
 		pIE = (struct ndis_802_11_var_ie *)(pframe + i);
 
 		switch (pIE->ElementID) {
diff --git a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
index 22cf362..2fd2a9e 100644
--- a/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
+++ b/drivers/staging/rtl8188eu/core/rtw_sta_mgt.c
@@ -239,8 +239,8 @@ struct sta_info *rtw_alloc_stainfo(struct sta_priv *pstapriv, u8 *hwaddr)
 		}
 
 		/* init for DM */
-		psta->rssi_stat.UndecoratedSmoothedPWDB = (-1);
-		psta->rssi_stat.UndecoratedSmoothedCCK = (-1);
+		psta->rssi_stat.UndecoratedSmoothedPWDB = -1;
+		psta->rssi_stat.UndecoratedSmoothedCCK = -1;
 
 		/* init for the sequence number of received management frame */
 		psta->RxMgmtFrameSeqNum = 0xffff;
-- 
2.7.4


