X-GM-THRID: 6202235040430030848
X-Received: by 10.68.69.102 with SMTP id d6mr27205225pbu.10.1444070376691;
        Mon, 05 Oct 2015 11:39:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.161.143 with SMTP id k137ls1716571ioe.53.gmail; Mon, 05
 Oct 2015 11:39:36 -0700 (PDT)
X-Received: by 10.50.136.201 with SMTP id qc9mr13592467igb.10.1444070376357;
        Mon, 05 Oct 2015 11:39:36 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x230.google.com (mail-pa0-x230.google.com. [2607:f8b0:400e:c03::230])
        by gmr-mx.google.com with ESMTPS id pe1si3501784pac.2.2015.10.05.11.39.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 11:39:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) client-ip=2607:f8b0:400e:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x230.google.com with SMTP id fv12so187736730pac.2
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 11:39:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=bdTPsA/9PDphneNI0wUV9QYxj9Bq2nBSPDPz3ilgJrI=;
        b=kVDbgVY3/5bFk0KBWGAE3wX16diL69cfwjSSoNOIU9N9zLJLfBphFzCDgp54f4AEpL
         k4bnTPhP7Bg73Qap1thK6aiv5ZmeQcOcfC2UqDRN14PQmmSz4VJumOG3Wx+jQ2k1jKKC
         IOoI8tHw/rZ/9i3GBboEbJngzkWQdFQraxvA63ZYoIm9HlGx4IVR8h9bAZf5rWAu4vum
         CBRrDHeahDzTm++5Uhwe1yinQ9PmzP6Z5LnfS98aWpF5ya7dRoXDmD82cnp/ZX63kmdA
         ZPtotIRuxYVPamCyr11db5zYGuiJdR90c8DDj61FFGIGP5HS5Bvnts/bLkSABPfe/+c4
         FD2g==
X-Received: by 10.68.94.193 with SMTP id de1mr1853634pbb.49.1444070376244;
        Mon, 05 Oct 2015 11:39:36 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id tk4sm29158373pab.45.2015.10.05.11.39.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Mon, 05 Oct 2015 11:39:35 -0700 (PDT)
Date: Mon, 5 Oct 2015 11:39:35 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: rtl8712: fix comparison test warnings
Message-ID: <20151005183935.GA3350@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch fixes multiple instances of the checkpatch.pl warning:

WARNING: Comparisons should place the constant on the right side of the
test

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 143be0f..528e9f5 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -140,7 +140,7 @@ static inline void handle_pairwise_key(struct sta_info *psta,
 static inline void handle_group_key(struct ieee_param *param,
 				    struct _adapter *padapter)
 {
-	if (0 < param->u.crypt.idx &&
+	if (param->u.crypt.idx > 0 &&
 	    param->u.crypt.idx < 3) {
 		/* group key idx is 1 or 2 */
 		memcpy(padapter->securitypriv.XGrpKey[param->u.crypt.
@@ -957,7 +957,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 	if (IS_ERR(ext))
 		return PTR_ERR(ext);
 
-	if (0 == strcasecmp(ext, "RSSI")) {
+	if (strcasecmp(ext, "RSSI") == 0) {
 		/*Return received signal strength indicator in -db for */
 		/* current AP */
 		/*<ssid> Rssi xx */
@@ -974,7 +974,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 		} else {
 			sprintf(ext, "OK");
 		}
-	} else if (0 == strcasecmp(ext, "LINKSPEED")) {
+	} else if (strcasecmp(ext, "LINKSPEED") == 0) {
 		/*Return link speed in MBPS */
 		/*LinkSpeed xx */
 		union iwreq_data wrqd;
@@ -982,30 +982,30 @@ static int r871x_wx_set_priv(struct net_device *dev,
 		int mbps;
 
 		ret_inner = r8711_wx_get_rate(dev, info, &wrqd, extra);
-		if (0 != ret_inner)
+		if (ret_inner != 0)
 			mbps = 0;
 		else
 			mbps = wrqd.bitrate.value / 1000000;
 		sprintf(ext, "LINKSPEED %d", mbps);
-	} else if (0 == strcasecmp(ext, "MACADDR")) {
+	} else if (strcasecmp(ext, "MACADDR") == 0) {
 		/*Return mac address of the station */
 		/* Macaddr = xx:xx:xx:xx:xx:xx */
 		sprintf(ext, "MACADDR = %pM", dev->dev_addr);
-	} else if (0 == strcasecmp(ext, "SCAN-ACTIVE")) {
+	} else if (strcasecmp(ext, "SCAN-ACTIVE") == 0) {
 		/*Set scan type to active */
 		/*OK if successful */
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 		pmlmepriv->passive_mode = 1;
 		sprintf(ext, "OK");
-	} else if (0 == strcasecmp(ext, "SCAN-PASSIVE")) {
+	} else if (strcasecmp(ext, "SCAN-PASSIVE") == 0) {
 		/*Set scan type to passive */
 		/*OK if successful */
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 		pmlmepriv->passive_mode = 0;
 		sprintf(ext, "OK");
-	} else if (0 == strncmp(ext, "DCE-E", 5)) {
+	} else if (strncmp(ext, "DCE-E", 5) == 0) {
 		/*Set scan type to passive */
 		/*OK if successful */
 		r8712_disconnectCtrlEx_cmd(padapter
@@ -1015,7 +1015,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 			, 5000 /*u32 firstStageTO */
 		);
 		sprintf(ext, "OK");
-	} else if (0 == strncmp(ext, "DCE-D", 5)) {
+	} else if (strncmp(ext, "DCE-D", 5) == 0) {
 		/*Set scan type to passive */
 		/*OK if successfu */
 		r8712_disconnectCtrlEx_cmd(padapter
@@ -1454,7 +1454,7 @@ static int r8711_wx_get_rate(struct net_device *dev,
 		if (ht_cap == true) {
 			if (mcs_rate & 0x8000 /* MCS15 */
 				&&
-				RTL8712_RF_2T2R == rf_type)
+				rf_type == RTL8712_RF_2T2R)
 				max_rate = (bw_40MHz) ? ((short_GI) ? 300 :
 					    270) : ((short_GI) ? 144 : 130);
 			else /* default MCS7 */
-- 
2.1.4


