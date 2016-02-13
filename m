X-GM-THRID: 6250805948730834944
X-Received: by 10.66.193.131 with SMTP id ho3mr7286543pac.42.1455379172647;
        Sat, 13 Feb 2016 07:59:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.28.71 with SMTP id 65ls1723705qgy.28.gmail; Sat, 13 Feb
 2016 07:59:31 -0800 (PST)
X-Received: by 10.129.134.135 with SMTP id w129mr7142466ywf.24.1455379171822;
        Sat, 13 Feb 2016 07:59:31 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id l85si1185064ywb.2.2016.02.13.07.59.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 07:59:31 -0800 (PST)
Received-SPF: pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of janani.rvchndrn@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=janani.rvchndrn@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id o6so41957596qkc.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 07:59:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=X7X7LSpW82veN9lcE/QDoOTnrvWUMxpcIWat7y1dgQE=;
        b=jp03SWlH4+mW9/Ark+f/XzQe/kg6MeXa3meHGe2t28rEC2PrvSFv3Uuj7EuJmEVIEn
         4Dmr+ZSM340xNJQc8wUKfc3NwsEecRooqfHHXftzx7TkwRjCUGaIMy1V1m3nBpWM2cyr
         PZLZvfP8UHvNLbML9iLkfBmw2MdvxCPj4omgfGWWhF3nLU9ZAuEj4aNONanUxHHCIV1Q
         NqL3CfcyAtpJ3XvhFaBIjTk2B/rNtmT0xIyN7U/0A4YBxmXynPrjQBUV1TB6FhNjhBOa
         0M6+vmbbG4kfYV/UityoWTf1A1JRYAhlgFWNea3r12Izo6t33sA6/Y/caZFR2hsVsa5E
         FJUg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=X7X7LSpW82veN9lcE/QDoOTnrvWUMxpcIWat7y1dgQE=;
        b=DVQTEG5FHLriJaSelKYqvB1bRbNePu7P6t6ighXP5dO2D5LUYgYQFNhY6boY5Pb4Zy
         pBDhY18Ds8EX+lM0KmFXilhZauwfIvc+FouSRrNIGiOcAgUn0Cs46aVSMkiZAURHNMFB
         vpy41kfoKPN/hHmO6sEZtXNl3K3MDn5fsabIGKuDyWWi38wvYRs5MxVWJeRzlqWlZ7sI
         0SJrX/QtGn/4oD0C0r+rqUpKojDUIOOJFaaw+swNlzThuW5PeEGFY1GGGyA6fEZO84O8
         2a4VJqviK/DCoX1kZLb6EZ5ZR7KehoHoU5uM2BFlE/8eDIsxZgE/Z83mZ8s6QH8PrGw+
         x/bg==
X-Gm-Message-State: AG10YOQ2MgSJkDs9ADMQ6wzRCr+uY4PVmRPUAEBu+qWKQKRm06Wx9pkrWzsBcvo/6pkYNg==
X-Received: by 10.55.15.75 with SMTP id z72mr9322279qkg.50.1455379171651;
        Sat, 13 Feb 2016 07:59:31 -0800 (PST)
Return-Path: <janani.rvchndrn@gmail.com>
Received: from janani-Inspiron-3521 (cpe-72-231-208-13.buffalo.res.rr.com. [72.231.208.13])
        by smtp.gmail.com with ESMTPSA id o60sm7679091qge.34.2016.02.13.07.59.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 07:59:31 -0800 (PST)
Date: Sat, 13 Feb 2016 15:58:52 -0500
From: Janani Ravichandran <janani.rvchndrn@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8192u: ieee80211: Fix comment style
Message-ID: <20160213205851.GA21552@janani-Inspiron-3521>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch changes some C99-style "//..." comments to C89 "/* ... */" style.

Signed-off-by: Janani Ravichandran <janani.rvchndrn@gmail.com>
---
 .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 32 +++++++++++-----------
 1 file changed, 16 insertions(+), 16 deletions(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
index 21ee410..54d8078 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
@@ -103,12 +103,12 @@ static void ieee80211_WMM_Info(struct ieee80211_device *ieee, u8 **tag_p)
 {
 	u8 *tag = *tag_p;
 
-	*tag++ = MFIE_TYPE_GENERIC; //0
+	*tag++ = MFIE_TYPE_GENERIC; /* 0 */
 	*tag++ = 7;
 	*tag++ = 0x00;
 	*tag++ = 0x50;
 	*tag++ = 0xf2;
-	*tag++ = 0x02;//5
+	*tag++ = 0x02;	/* 5 */
 	*tag++ = 0x00;
 	*tag++ = 0x01;
 #ifdef SUPPORT_USPD
@@ -128,12 +128,12 @@ static void ieee80211_TURBO_Info(struct ieee80211_device *ieee, u8 **tag_p)
 {
 	u8 *tag = *tag_p;
 
-	*tag++ = MFIE_TYPE_GENERIC; //0
+	*tag++ = MFIE_TYPE_GENERIC; /* 0 */
 	*tag++ = 7;
 	*tag++ = 0x00;
 	*tag++ = 0xe0;
 	*tag++ = 0x4c;
-	*tag++ = 0x01;//5
+	*tag++ = 0x01;	/* 5 */
 	*tag++ = 0x02;
 	*tag++ = 0x11;
 	*tag++ = 0x00;
@@ -186,14 +186,14 @@ static u8 MgntQuery_MgntFrameTxRate(struct ieee80211_device *ieee)
 	PRT_HIGH_THROUGHPUT      pHTInfo = ieee->pHTInfo;
 	u8 rate;
 
-	// 2008/01/25 MH For broadcom, MGNT frame set as OFDM 6M.
+	/* 2008/01/25 MH For broadcom, MGNT frame set as OFDM 6M. */
 	if(pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)
 		rate = 0x0c;
 	else
 		rate = ieee->basic_rate & 0x7f;
 
 	if (rate == 0) {
-		// 2005.01.26, by rcnjko.
+		/* 2005.01.26, by rcnjko. */
 		if(ieee->mode == IEEE_A||
 		   ieee->mode== IEEE_N_5G||
 		   (ieee->mode== IEEE_N_24G&&!pHTInfo->bCurSuppCCK))
@@ -340,7 +340,7 @@ inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
 
 	req = (struct ieee80211_probe_request *) skb_put(skb,sizeof(struct ieee80211_probe_request));
 	req->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
-	req->header.duration_id = 0; //FIXME: is this OK ?
+	req->header.duration_id = 0; /* FIXME: is this OK? */
 
 	memset(req->header.addr1, 0xff, ETH_ALEN);
 	memcpy(req->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
@@ -672,7 +672,7 @@ inline struct sk_buff *ieee80211_authentication_req(struct ieee80211_network *be
 	else if(ieee->auth_mode == 1)
 		auth->algorithm = cpu_to_le16(WLAN_AUTH_SHARED_KEY);
 	else if(ieee->auth_mode == 2)
-		auth->algorithm = WLAN_AUTH_OPEN;//0x80;
+		auth->algorithm = WLAN_AUTH_OPEN; /* 0x80; */
 	printk("=================>%s():auth->algorithm is %d\n",__func__,auth->algorithm);
 	auth->transaction = cpu_to_le16(ieee->associate_seq);
 	ieee->associate_seq++;
@@ -727,7 +727,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 
 	encrypt = ieee->host_encrypt && crypt && crypt->ops &&
 		((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
-	//HT ralated element
+	/* HT ralated element */
 	tmp_ht_cap_buf =(u8 *) &(ieee->pHTInfo->SelfHTCap);
 	tmp_ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
 	tmp_ht_info_buf =(u8 *) &(ieee->pHTInfo->SelfHTInfo);
@@ -765,13 +765,13 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
 	memcpy (beacon_buf->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
 	memcpy (beacon_buf->header.addr3, ieee->current_network.bssid, ETH_ALEN);
 
-	beacon_buf->header.duration_id = 0; //FIXME
+	beacon_buf->header.duration_id = 0; /* FIXME */
 	beacon_buf->beacon_interval =
 		cpu_to_le16(ieee->current_network.beacon_interval);
 	beacon_buf->capability =
 		cpu_to_le16(ieee->current_network.capability & WLAN_CAPABILITY_IBSS);
 	beacon_buf->capability |=
-		cpu_to_le16(ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE); //add short preamble here
+		cpu_to_le16(ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE); /* add short preamble here */
 
 	if(ieee->short_slot && (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_SLOT))
 		beacon_buf->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
@@ -1012,7 +1012,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 	crypt = ieee->crypt[ieee->tx_keyidx];
 	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name,"WEP") || wpa_ie_len));
 
-	//Include High Throuput capability && Realtek proprietary
+	/* Include High Throuput capability && Realtek proprietary */
 	if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
 	{
 		ht_cap_buf = (u8 *)&(ieee->pHTInfo->SelfHTCap);
@@ -1044,8 +1044,8 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 
 #ifdef THOMAS_TURBO
 	len = sizeof(struct ieee80211_assoc_request_frame)+ 2
-		+ beacon->ssid_len//essid tagged val
-		+ rate_len//rates tagged val
+		+ beacon->ssid_len	/* essid tagged val */
+		+ rate_len	/* rates tagged val */
 		+ wpa_ie_len
 		+ wmm_info_len
 		+ turbo_info_len
@@ -1057,8 +1057,8 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
 		+ ieee->tx_headroom;
 #else
 	len = sizeof(struct ieee80211_assoc_request_frame)+ 2
-		+ beacon->ssid_len//essid tagged val
-		+ rate_len//rates tagged val
+		+ beacon->ssid_len	/* essid tagged val */
+		+ rate_len	/* rates tagged val */
 		+ wpa_ie_len
 		+ wmm_info_len
 		+ ht_cap_len
-- 
2.5.0


