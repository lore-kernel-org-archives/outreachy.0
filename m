X-GM-THRID: 6329887574772940800
X-Received: by 10.66.148.202 with SMTP id tu10mr1739262pab.8.1473791798752;
        Tue, 13 Sep 2016 11:36:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.43.196 with SMTP id u62ls1841274ota.15.gmail; Tue, 13 Sep
 2016 11:36:38 -0700 (PDT)
X-Received: by 10.31.141.83 with SMTP id p80mr1774981vkd.9.1473791798329;
        Tue, 13 Sep 2016 11:36:38 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id c20si45219pfc.1.2016.09.13.11.36.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 11:36:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 128so9908560pfb.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Sep 2016 11:36:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=KIDa8Pj/aZRNl02MulWf6mRblnR02G99oXZHfpPa7TU=;
        b=dZsu94JFdpX37Lqs+MHDQ1jvsHPGjUE1KzNdnugygfxVqsFPdQhshHSDnYLZ4gu46c
         ffJXGJE6TqhfUgu2Zr6AQ5pVKoI20f50cl+g3jUECVI+HgJtyaLjuaKIZv/xxTu9V+AH
         N+jflPoMjjkgrddwlaAjTNZkOwy3rK0sTe4C9a9koIjqDl2/OEIaDpQoD94brUFSoNnu
         ZYyOsX6FEdKzkTobErdkuzhHNekQ9M3E5nxB1yKwn3nd/tswo0fTSP3DVzdFYuOvVhb7
         Ce5LIZLJrLmU9HsTW0d2tJwNGQX+Qja77HVri0aMxPJ+jty6JELm3hxU/dW5LVRJDMNs
         +vog==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=KIDa8Pj/aZRNl02MulWf6mRblnR02G99oXZHfpPa7TU=;
        b=cLkOfXsq8uaootnGeOtecmZB0/mxmk30pH8KEGTavBist+CZfY82dfEfl7JrxdVBlk
         JUsPU8ogucSLpn/Q+gDZq0NSn2zM97Yn1QFi8wT0aeuFW1duJAvN/iSduqHVJ54OWMZT
         AsrHD6lpJn485UCk0qiMhNue1fhh6EAa4qiDIDScr5Jc8Z0bLqmwU81Iz+hSV4HyqqB6
         zQTsIGp+XXYWCdzz7VPtNSfNtI+7PWdYcXr+CVINaSNm5+bRsUTb8v96f/QnKsjOFxzM
         S8wb6YsjXqnxR0d6B2GztZQdkoRacr/QbhbP3mWhH82j9rNTbDIdFeWIxRdR7J2l/Ng7
         h+AQ==
X-Gm-Message-State: AE9vXwN2WrStOUYmTSIr0HAuH+ri9NXpc5rIDpOZyeKfuuGuQUKLlKULX4/Ohc9UdfQ81g==
X-Received: by 10.98.32.78 with SMTP id g75mr3713041pfg.103.1473791797918;
        Tue, 13 Sep 2016 11:36:37 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.239.145])
        by smtp.gmail.com with ESMTPSA id c11sm32673352pfk.78.2016.09.13.11.36.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 11:36:37 -0700 (PDT)
Date: Wed, 14 Sep 2016 00:06:27 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [Outreachy kernel] [PATCH] staging: ks7010: Remove expicit cast to
 kmalloc
Message-ID: <20160913183627.GA20306@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The assignment operator implicitly converts a void pointer to the type
of the pointer it is assigned to. Hence an explicit cast to the kmalloc
function is not required.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 47 +++++++++++++-------------------------
 1 file changed, 16 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index f32ce5a..0a897c5 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1172,9 +1172,8 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
 	}
 
 	DPRINTK(4, "skb_buff length=%d\n", packet_len);
-	pp = (struct hostif_data_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
-		    KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
+		     KS_WLAN_MEM_FLAG);
 
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
@@ -1313,8 +1312,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_mib_get_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1344,8 +1342,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
 	}
 
 	/* make primitive */
-	pp = (struct hostif_mib_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1374,8 +1371,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_start_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1402,8 +1398,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_ps_adhoc_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1446,8 +1441,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "ssid.size=%d \n", priv->reg.ssid.size);
 
 	/* make primitive */
-	pp = (struct hostif_infrastructure_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1513,8 +1507,7 @@ void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 	DPRINTK(2, "ssid.size=%d \n", priv->reg.ssid.size);
 
 	/* make primitive */
-	pp = (struct hostif_infrastructure_set2_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1583,8 +1576,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_adhoc_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1629,8 +1621,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_adhoc_set2_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1677,8 +1668,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_stop_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1700,8 +1690,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_phy_information_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1732,8 +1721,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
 	DPRINTK(3, "mode=%lu wake_up=%lu receiveDTIMs=%lu\n", mode, wake_up,
 		receiveDTIMs);
 	/* make primitive */
-	pp = (struct hostif_power_mngmt_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1759,8 +1747,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 
 	if (mode == SLP_SLEEP) {
 		/* make primitive */
-		pp = (struct hostif_sleep_request_t *)
-		    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+		pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 		if (!pp) {
 			DPRINTK(3, "allocate memory failed..\n");
 			return;
@@ -1793,8 +1780,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
 
 	DPRINTK(2, "\n");
 	/* make primitive */
-	pp = (struct hostif_bss_scan_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1850,8 +1836,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
 
 	DPRINTK(3, "count=%d :: timer=%d\n", failure_count, timer);
 	/* make primitive */
-	pp = (struct hostif_mic_failure_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
-- 
2.7.4


