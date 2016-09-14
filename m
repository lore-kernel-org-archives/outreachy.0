X-GM-THRID: 6330270649308676096
X-Received: by 10.13.249.6 with SMTP id j6mr3254812ywf.37.1473880989527;
        Wed, 14 Sep 2016 12:23:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls528021ith.10.canary; Wed, 14 Sep
 2016 12:23:08 -0700 (PDT)
X-Received: by 10.66.161.130 with SMTP id xs2mr3275286pab.40.1473880988202;
        Wed, 14 Sep 2016 12:23:08 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id z4si1479817pam.0.2016.09.14.12.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:23:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id pp5so1110452pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 12:23:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nQgNXD1pJpe64pXwuoXIKroW6BNXx9U9PEVOYB5c7Mc=;
        b=Plwv2rb9NEkaYMpXMGMc50Uo7xDtBofoIlLnGHjromh3urgQG6PQAANE2U5In5+ara
         zIS4ECwHx7qC3n+5HLwZFJWxyA/sz0Bv59IUcWXhXSnKW2pnUyn+YzkG+l34l8N79eur
         1KJ5ZRVGdMk9dJTqAGb3xapIHDnC9fjzDZYPiaG4PFDHMixRMK+qI+88l1WR9GdBMsdZ
         fkV7O+ufkRhHh+k3IP8bVEuqoh4xOUOsSXWIqR3RaRJqiMbgjzQpyAlKRyW3UuK9hiis
         sX1ANFj1m5ga6Gt8lOZbEt+lEBAY+arXNcNWH1hFbL20Kg99IdtlidqQRbe2CbyXAdkD
         Jytg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nQgNXD1pJpe64pXwuoXIKroW6BNXx9U9PEVOYB5c7Mc=;
        b=AF6YmyuWOpVRp6Y6VfcvQGa7ePx3auY4CaIX3LUT5+6a5Nf9o3E95ObbCPAkDlT3Rf
         zilqF4WNkeneCpzyzT7T8c2N0hUuwnA9Nu1dhxRBBjU/nGgWzk7stqinUXkj5qTztE11
         2WvuiLQlW0KMt5xoTHshBJESaf20kdjWMxg4WLleD51cy7hnqqlpb/W/CLt3FV0GBC6P
         XGVzGz1zYfkAvT6+u06Q2dTBd+UZ2Q8PJExZfrsxCfG27h4BkLYycWj8tCfjJynxvPgO
         NeWFZ9O6+byvL/jBEdzsVrGnDeke1cRrxAX5tkm2WinBEQZq3Olk6TLpNnUEdBOuPPKg
         GZsw==
X-Gm-Message-State: AE9vXwPf1om3ukbyLtThMQy5WeViat2Hs8pF1tiAcGJv1WgdOOpE1rjZkMHBVw5A19GfDQ==
X-Received: by 10.66.26.207 with SMTP id n15mr7429879pag.69.1473880987760;
        Wed, 14 Sep 2016 12:23:07 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 70sm39890486pfw.92.2016.09.14.12.23.05
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 12:23:06 -0700 (PDT)
Date: Thu, 15 Sep 2016 00:52:58 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] staging: ks7010: Remove whitespace before newline
Message-ID: <20160914192258.GA1317@toblerone>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

This patch fixes the checkpatch.pl warning:
WARNING: unnecessary whitespace before a quoted newline.

Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
---
 drivers/staging/ks7010/ks7010_sdio.c |  6 +++---
 drivers/staging/ks7010/ks_hostif.c   | 24 ++++++++++++------------
 2 files changed, 15 insertions(+), 15 deletions(-)

diff --git a/drivers/staging/ks7010/ks7010_sdio.c b/drivers/staging/ks7010/ks7010_sdio.c
index d5299f0..f9aec4f 100644
--- a/drivers/staging/ks7010/ks7010_sdio.c
+++ b/drivers/staging/ks7010/ks7010_sdio.c
@@ -492,7 +492,7 @@ static void ks7010_rw_function(struct work_struct *work)
 
 	/* wiat after DOZE */
 	if (time_after(priv->last_doze + ((30 * HZ) / 1000), jiffies)) {
-		DPRINTK(4, "wait after DOZE \n");
+		DPRINTK(4, "wait after DOZE\n");
 		queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,
 				   &priv->ks_wlan_hw.rw_wq, 1);
 		return;
@@ -500,7 +500,7 @@ static void ks7010_rw_function(struct work_struct *work)
 
 	/* wiat after WAKEUP */
 	while (time_after(priv->last_wakeup + ((30 * HZ) / 1000), jiffies)) {
-		DPRINTK(4, "wait after WAKEUP \n");
+		DPRINTK(4, "wait after WAKEUP\n");
 /*		queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,&priv->ks_wlan_hw.rw_wq,
 		(priv->last_wakeup + ((30*HZ)/1000) - jiffies));*/
 		printk("wake: %lu %lu\n", priv->last_wakeup + (30 * HZ) / 1000,
@@ -745,7 +745,7 @@ static int ks7010_sdio_data_compare(struct ks_wlan_private *priv, u32 address,
 	retval = memcmp(data, read_buf, size);
 
 	if (retval) {
-		DPRINTK(0, "data compare error (%d) \n", retval);
+		DPRINTK(0, "data compare error (%d)\n", retval);
 		rc = 3;
 		goto error_out;
 	}
diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 8e33a43..76ba236 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -244,13 +244,13 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	offset = 0;
 
 	while (bsize > offset) {
-		/* DPRINTK(4, "Element ID=%d \n",*bp); */
+		/* DPRINTK(4, "Element ID=%d\n",*bp); */
 		switch (*bp) {
 		case 0:	/* ssid */
 			if (*(bp + 1) <= SSID_MAX_SIZE) {
 				ap->ssid.size = *(bp + 1);
 			} else {
-				DPRINTK(1, "size over :: ssid size=%d \n",
+				DPRINTK(1, "size over :: ssid size=%d\n",
 					*(bp + 1));
 				ap->ssid.size = SSID_MAX_SIZE;
 			}
@@ -264,7 +264,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 				       bp + 2, *(bp + 1));
 				ap->rate_set.size += *(bp + 1);
 			} else {
-				DPRINTK(1, "size over :: rate size=%d \n",
+				DPRINTK(1, "size over :: rate size=%d\n",
 					(*(bp + 1) + ap->rate_set.size));
 				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
 				       bp + 2,
@@ -280,7 +280,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 			if (*(bp + 1) <= RSN_IE_BODY_MAX) {
 				ap->rsn_ie.size = *(bp + 1);
 			} else {
-				DPRINTK(1, "size over :: rsn size=%d \n",
+				DPRINTK(1, "size over :: rsn size=%d\n",
 					*(bp + 1));
 				ap->rsn_ie.size = RSN_IE_BODY_MAX;
 			}
@@ -293,7 +293,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 					ap->wpa_ie.size = *(bp + 1);
 				} else {
 					DPRINTK(1,
-						"size over :: wpa size=%d \n",
+						"size over :: wpa size=%d\n",
 						*(bp + 1));
 					ap->wpa_ie.size = RSN_IE_BODY_MAX;
 				}
@@ -311,7 +311,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 		case 47:	/* Reserve ID 47 Broadcom AP */
 			break;
 		default:
-			DPRINTK(4, "unknown Element ID=%d \n", *bp);
+			DPRINTK(4, "unknown Element ID=%d\n", *bp);
 			break;
 		}
 		offset += 2;	/* id & size field */
@@ -408,7 +408,7 @@ void hostif_data_indication(struct ks_wlan_private *priv)
 					    HZ >= 60) {
 						mic_failure->failure = 0;
 					}
-					DPRINTK(4, "MIC FAILURE \n");
+					DPRINTK(4, "MIC FAILURE\n");
 					if (mic_failure->failure == 0) {
 						mic_failure->failure = 1;
 						mic_failure->counter = 0;
@@ -1150,7 +1150,7 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
 
 	packet_len = packet->len;
 	if (packet_len > ETH_FRAME_LEN) {
-		DPRINTK(1, "bad length packet_len=%d \n", packet_len);
+		DPRINTK(1, "bad length packet_len=%d\n", packet_len);
 		dev_kfree_skb(packet);
 		return -1;
 	}
@@ -1447,7 +1447,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
 	struct hostif_infrastructure_set_request_t *pp;
 	uint16_t capability;
 
-	DPRINTK(3, "ssid.size=%d \n", priv->reg.ssid.size);
+	DPRINTK(3, "ssid.size=%d\n", priv->reg.ssid.size);
 
 	/* make primitive */
 	pp = (struct hostif_infrastructure_set_request_t *)
@@ -1514,7 +1514,7 @@ static void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
 	struct hostif_infrastructure_set2_request_t *pp;
 	uint16_t capability;
 
-	DPRINTK(2, "ssid.size=%d \n", priv->reg.ssid.size);
+	DPRINTK(2, "ssid.size=%d\n", priv->reg.ssid.size);
 
 	/* make primitive */
 	pp = (struct hostif_infrastructure_set2_request_t *)
@@ -1759,7 +1759,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 {
 	struct hostif_sleep_request_t *pp;
 
-	DPRINTK(3, "mode=%lu \n", mode);
+	DPRINTK(3, "mode=%lu\n", mode);
 
 	if (mode == SLP_SLEEP) {
 		/* make primitive */
@@ -1783,7 +1783,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
 		queue_delayed_work(priv->ks_wlan_hw.ks7010sdio_wq,
 				   &priv->ks_wlan_hw.rw_wq, 1);
 	} else {
-		DPRINTK(3, "invalid mode %ld \n", mode);
+		DPRINTK(3, "invalid mode %ld\n", mode);
 		return;
 	}
 }
-- 
2.7.4


