X-GM-THRID: 6255949616211034112
X-Received: by 10.50.20.135 with SMTP id n7mr2243677ige.5.1456576787258;
        Sat, 27 Feb 2016 04:39:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.171.71 with SMTP id as7ls805423obc.69.gmail; Sat, 27 Feb
 2016 04:39:46 -0800 (PST)
X-Received: by 10.182.148.227 with SMTP id tv3mr4952952obb.30.1456576786914;
        Sat, 27 Feb 2016 04:39:46 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id yd9si2497830pab.1.2016.02.27.04.39.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 04:39:46 -0800 (PST)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id t66so1886404pfb.0
        for <outreachy-kernel@googlegroups.com>; Sat, 27 Feb 2016 04:39:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=iwJbGfEH03/Qe/HeUBjoQaBP/W3i1bTu4JDFpue2Ejs=;
        b=PFggxKNTkotKpTsBhkv4BsPQF8OUjgCTZh75dl3mCpgJxpSvllIbLMuZFBDfY1T19X
         H3+u10dvdPcPR5VzcnUziDCbeZc5tk6URZR7YiaZKS/HG66ibgC73M4fXrcuUN3x/831
         J0g54lG9mlQt/LmSy5ADpMO3UiBTb1yDdQ02rMHEKzm0Cz75qkzMc57b3aij8LH1pH6p
         FuwCZar69Cn8WZ2ZZ3d547pdiZRMSzZpL61g9c6Mk+xCn3U0CxH0j4s9aY8yHNL37XCh
         SW7CEQTgReWwpJ/Mv8ccVy0f1khY2h4tIqi2UZKgN3Fly3Jap6whYs3hVzsEAKwq12Og
         Ym4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=iwJbGfEH03/Qe/HeUBjoQaBP/W3i1bTu4JDFpue2Ejs=;
        b=c+fm+j6x1C+l68bxKPpKuP4Nv3J1081tOaUibJTsn2bipODxHug3LwR9mlTjBREQUj
         YwPHlxuiKjxAKRVt4V+62m7mycCx+SXxIE7FrY75gtTSsAE8TmP/IS8pTlHiiB+gVjBJ
         KKgwj18iwTQiAPAIelLr/ANgvGNyD5uao7MT92j6V6v6tQ6pvT/2ZHRKEshpNFNwRf2G
         OQlcakGbh7t7sdFtmpXV0l5fCKHph5z3g3zH2Dt2dtQdlM1Ls6Lubtm1V5dYv4rRARwn
         P1rvzGj+fW0NSKJ2gau0E4qBQBxUKs3pXxYci5BdFf98yRkhxhqBzKupjSVHkes+pyUm
         nI/Q==
X-Gm-Message-State: AD7BkJK2Pel2wo15h6/Trz8c1qe+Gz3xAzNzPPfjbKUUsAPvHesXJMG+Ljlmfq/JUVZcoQ==
X-Received: by 10.98.0.148 with SMTP id 142mr9134661pfa.84.1456576786746;
        Sat, 27 Feb 2016 04:39:46 -0800 (PST)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.192])
        by smtp.gmail.com with ESMTPSA id e79sm25989621pfb.76.2016.02.27.04.39.45
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 27 Feb 2016 04:39:46 -0800 (PST)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH 4/4] staging: wlan-ng: simplify NULL tests
Date: Sat, 27 Feb 2016 20:39:25 +0800
Message-Id: <1456576765-29100-5-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>
References: <1456576765-29100-1-git-send-email-eraretuya@gmail.com>

Replace direct comparisons to NULL i.e. 'x == NULL' with '!x' for
consistency. Coccinelle semantic patch used:

@@
identifier func;
expression x;
statement Z;
@@

x = func(...);

if (
(
+	!
	x
-	== NULL
|
+	!
-	NULL ==
	x
)
   ) Z

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/staging/wlan-ng/hfa384x_usb.c | 14 +++++++-------
 drivers/staging/wlan-ng/prism2fw.c    |  2 +-
 drivers/staging/wlan-ng/prism2usb.c   |  2 +-
 3 files changed, 9 insertions(+), 9 deletions(-)

diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
index 09b4b2c..fe94c0f 100644
--- a/drivers/staging/wlan-ng/hfa384x_usb.c
+++ b/drivers/staging/wlan-ng/hfa384x_usb.c
@@ -330,7 +330,7 @@ static int submit_rx_urb(hfa384x_t *hw, gfp_t memflags)
 	int result;
 
 	skb = dev_alloc_skb(sizeof(hfa384x_usbin_t));
-	if (skb == NULL) {
+	if (!skb) {
 		result = -ENOMEM;
 		goto done;
 	}
@@ -1300,7 +1300,7 @@ hfa384x_docmd(hfa384x_t *hw,
 	hfa384x_usbctlx_t *ctlx;
 
 	ctlx = usbctlx_alloc();
-	if (ctlx == NULL) {
+	if (!ctlx) {
 		result = -ENOMEM;
 		goto done;
 	}
@@ -1390,7 +1390,7 @@ hfa384x_dorrid(hfa384x_t *hw,
 	hfa384x_usbctlx_t *ctlx;
 
 	ctlx = usbctlx_alloc();
-	if (ctlx == NULL) {
+	if (!ctlx) {
 		result = -ENOMEM;
 		goto done;
 	}
@@ -1471,7 +1471,7 @@ hfa384x_dowrid(hfa384x_t *hw,
 	hfa384x_usbctlx_t *ctlx;
 
 	ctlx = usbctlx_alloc();
-	if (ctlx == NULL) {
+	if (!ctlx) {
 		result = -ENOMEM;
 		goto done;
 	}
@@ -1559,7 +1559,7 @@ hfa384x_dormem(hfa384x_t *hw,
 	hfa384x_usbctlx_t *ctlx;
 
 	ctlx = usbctlx_alloc();
-	if (ctlx == NULL) {
+	if (!ctlx) {
 		result = -ENOMEM;
 		goto done;
 	}
@@ -1652,7 +1652,7 @@ hfa384x_dowmem(hfa384x_t *hw,
 	pr_debug("page=0x%04x offset=0x%04x len=%d\n", page, offset, len);
 
 	ctlx = usbctlx_alloc();
-	if (ctlx == NULL) {
+	if (!ctlx) {
 		result = -ENOMEM;
 		goto done;
 	}
@@ -3448,7 +3448,7 @@ static void hfa384x_int_rxmonitor(wlandevice_t *wlandev,
 	}
 
 	skb = dev_alloc_skb(skblen);
-	if (skb == NULL)
+	if (!skb)
 		return;
 
 	/* only prepend the prism header if in the right mode */
diff --git a/drivers/staging/wlan-ng/prism2fw.c b/drivers/staging/wlan-ng/prism2fw.c
index 8fc80df..8d6ab72 100644
--- a/drivers/staging/wlan-ng/prism2fw.c
+++ b/drivers/staging/wlan-ng/prism2fw.c
@@ -538,7 +538,7 @@ static int mkimage(struct imgchunk *clist, unsigned int *ccnt)
 	/* Allocate buffer space for chunks */
 	for (i = 0; i < *ccnt; i++) {
 		clist[i].data = kzalloc(clist[i].len, GFP_KERNEL);
-		if (clist[i].data == NULL) {
+		if (!clist[i].data) {
 			pr_err("failed to allocate image space, exitting.\n");
 			return 1;
 		}
diff --git a/drivers/staging/wlan-ng/prism2usb.c b/drivers/staging/wlan-ng/prism2usb.c
index ae6a53c..41358bb 100644
--- a/drivers/staging/wlan-ng/prism2usb.c
+++ b/drivers/staging/wlan-ng/prism2usb.c
@@ -67,7 +67,7 @@ static int prism2sta_probe_usb(struct usb_interface *interface,
 
 	dev = interface_to_usbdev(interface);
 	wlandev = create_wlan();
-	if (wlandev == NULL) {
+	if (!wlandev) {
 		dev_err(&interface->dev, "Memory allocation failure.\n");
 		result = -EIO;
 		goto failed;
-- 
1.9.1


