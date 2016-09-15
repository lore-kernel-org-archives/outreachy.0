X-GM-THRID: 6330475641288261632
X-Received: by 10.129.53.208 with SMTP id c199mr5587370ywa.0.1473928718818;
        Thu, 15 Sep 2016 01:38:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.205.138 with SMTP id d132ls1060167iog.38.gmail; Thu, 15
 Sep 2016 01:38:37 -0700 (PDT)
X-Received: by 10.36.124.80 with SMTP id a77mr1307484itd.1.1473928717817;
        Thu, 15 Sep 2016 01:38:37 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id z4si759649pam.0.2016.09.15.01.38.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:38:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so1848400pac.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 01:38:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=BOd4v8pdlogJLGrqtu6IXSBC3G0SQFmZs7hV2a4yMaw=;
        b=OAdBtaxrfxl60XFMFB+au1dqGyCRLPTdI6L02EIM9HgBevbk4xTM+ZOGxZqVIqheNY
         +gPGAhRM+mQkAsiO6yWn9T5E2IambsttB46m//+Ty2fIlrKD3BWgLr88uzNbrx2Ixfxp
         d0YH6257DVAzQYSvPaZdmjNrrXHBdNHJaPAsRz2pCBvpoeuj49YbIiMEyXXaJ3gyRlnJ
         /cyHdIHOQFjs2fQECfUzeW6OaiICkgMywXmpK26V7ZSyN1wjQEUL8ODn/AMsRi12TdAZ
         GJ4OjdsfAKBxLVylrp+06MF8iSz5xCRNOfhXhf0hiqof/Vio5eqFBQkQvZK9U4ED3HRp
         XBgg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=BOd4v8pdlogJLGrqtu6IXSBC3G0SQFmZs7hV2a4yMaw=;
        b=DhNGj9e4PnKrBJdvXAtGP0TyCpuWHnRhhmd34ds9+uwX+tDMl3QYBrb9amkKkzuZuc
         fodJ/BCmkorz/XXV550JbrtI+owEOLRo4mkXjQwLkfw8aD9hCDbMprXiRY8BtfhW/9Rv
         qA2gMXLz/jLsm4RT39pC2Ilcznjd+AtwHXhYy+aOiq+/zxJWCZvzVmP0STnoXB6/wlnn
         mxRqN0IxAoAOhH77VnGTEl9Ep2jwgkQrPpzQV9OzkE3xBmL+0yKa9BHcLshrdgaOoo4k
         8Sw1ZfYjmG54OyK42gP8yqbawGuD9Z/IHMzI7XQnVIS4IEiZzegk20Z+tre/ea6m8k5p
         7VUw==
X-Gm-Message-State: AE9vXwM4ewWKAvzRDks8CgeCSdCcbEonTNMKQaw2tJrUkuJv+2sdct0/M1E3z6W9xTdbgA==
X-Received: by 10.66.67.51 with SMTP id k19mr12382008pat.55.1473928717401;
        Thu, 15 Sep 2016 01:38:37 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from sayli-HP-15-Notebook-PC ([182.58.213.135])
        by smtp.gmail.com with ESMTPSA id q8sm3204608pac.32.2016.09.15.01.38.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 01:38:37 -0700 (PDT)
Date: Thu, 15 Sep 2016 14:08:22 +0530
From: sayli karnik <karniksayli1995@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH v3] staging: ks7010: Remove the explicit cast on kmalloc
Message-ID: <20160915083822.GA4278@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

The assignment operator implicitly converts a void pointer to the type of the
pointer it is assigned to. Hence an explicit cast on the result of the kmalloc
function is not required.

Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
---
v3: Fixed the commit message
v2: Fixed the commit message, corrected a spelling error in the subject
 drivers/staging/ks7010/ks_hostif.c | 47 +++++++++++++-------------------------
 1 file changed, 16 insertions(+), 31 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 8e33a43..821892e 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -1174,9 +1174,8 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
 	}
 
 	DPRINTK(4, "skb_buff length=%d\n", packet_len);
-	pp = (struct hostif_data_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
-		    KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
+		     KS_WLAN_MEM_FLAG);
 
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
@@ -1317,8 +1316,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_mib_get_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1348,8 +1346,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
 	}
 
 	/* make primitive */
-	pp = (struct hostif_mib_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1378,8 +1375,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_start_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1406,8 +1402,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_ps_adhoc_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1450,8 +1445,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "ssid.size=%d \n", priv->reg.ssid.size);
 
 	/* make primitive */
-	pp = (struct hostif_infrastructure_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1517,8 +1511,7 @@ static void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 	DPRINTK(2, "ssid.size=%d \n", priv->reg.ssid.size);
 
 	/* make primitive */
-	pp = (struct hostif_infrastructure_set2_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1587,8 +1580,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_adhoc_set_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1633,8 +1625,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_adhoc_set2_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1681,8 +1672,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_stop_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1704,8 +1694,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
 	DPRINTK(3, "\n");
 
 	/* make primitive */
-	pp = (struct hostif_phy_information_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1736,8 +1725,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
 	DPRINTK(3, "mode=%lu wake_up=%lu receiveDTIMs=%lu\n", mode, wake_up,
 		receiveDTIMs);
 	/* make primitive */
-	pp = (struct hostif_power_mngmt_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1763,8 +1751,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 
 	if (mode == SLP_SLEEP) {
 		/* make primitive */
-		pp = (struct hostif_sleep_request_t *)
-		    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+		pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 		if (!pp) {
 			DPRINTK(3, "allocate memory failed..\n");
 			return;
@@ -1797,8 +1784,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
 
 	DPRINTK(2, "\n");
 	/* make primitive */
-	pp = (struct hostif_bss_scan_request_t *)
-	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
+	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
 	if (!pp) {
 		DPRINTK(3, "allocate memory failed..\n");
 		return;
@@ -1854,8 +1840,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
 
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


