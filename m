X-GM-THRID: 6202652871088930816
X-Received: by 10.66.102.38 with SMTP id fl6mr27717026pab.48.1444167660135;
        Tue, 06 Oct 2015 14:41:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.19.145 with SMTP id 17ls17921iot.4.gmail; Tue, 06 Oct 2015
 14:40:59 -0700 (PDT)
X-Received: by 10.107.37.206 with SMTP id l197mr33844317iol.17.1444167659493;
        Tue, 06 Oct 2015 14:40:59 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id el2si4624269pbb.0.2015.10.06.14.40.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Oct 2015 14:40:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id hy16so81149104pad.1
        for <outreachy-kernel@googlegroups.com>; Tue, 06 Oct 2015 14:40:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=rQK2Q7iJsZRgz4lHrYVO53VmZcfDBx6bvy4TnsNTRd8=;
        b=B62aw/rePBTdeDTVQFTGiEzf0hdteUvlXXy3MtgdrWdH4MCQgW+sblYq4xdOQU5ogJ
         6V4hbJE1W+qud2vbkX5wg6MZHDHaKQumLOXSspYbiLPuOvQ+SKZSTOwqOjkw1+jqp/qG
         STu7zA37XdbY9thDpShoPqxEeYRZboBq5MOp7oJhURPCgCdTXWwAuOu3RYD8l2yFy6ey
         9Rmgy/gpxu5ddpdQFT4Z8pkwdti08ekEM5RHXgx7ERZZadPzZOatAix2AleYDadEzqrr
         L6fH2L7TKs4zzXm0VMOLkcJAeSNMrnPxWr3+ow9fTjGJ+eVtgJInTTDrwifcqlhbR3DL
         fq9w==
X-Received: by 10.68.189.69 with SMTP id gg5mr49620407pbc.118.1444167659379;
        Tue, 06 Oct 2015 14:40:59 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from Ubuntu-D830 (or-67-232-67-97.dhcp.embarqhsd.net. [67.232.67.97])
        by smtp.gmail.com with ESMTPSA id fk8sm1483425pab.33.2015.10.06.14.40.58
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Tue, 06 Oct 2015 14:40:59 -0700 (PDT)
Date: Tue, 6 Oct 2015 14:40:58 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: rtl8712: Move constant to right of test or
 replace with "!"
Message-ID: <20151006214058.GA16035@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Move constant to the right side of comparison operator or replace
equality operator (==) with the unary negation operator (!) if the
comparison is to zero.

Addesses multiple instances of the checkpatch.pl warning:
WARNING: Comparisons should place the constant on the right side of the
test

Signed-off-by: Alison Schofield <amsfield22@gmail.com>
---
Changes in v2:
	- Use ! in comparison tests using "== 0" rather than just moving
	  the "== 0" to right of test. (coding style improvement)
	- Update commit message.
---
 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 143be0f..55d78c5 100644
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
+	if (!strcasecmp(ext, "RSSI")) {
 		/*Return received signal strength indicator in -db for */
 		/* current AP */
 		/*<ssid> Rssi xx */
@@ -974,7 +974,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 		} else {
 			sprintf(ext, "OK");
 		}
-	} else if (0 == strcasecmp(ext, "LINKSPEED")) {
+	} else if (!strcasecmp(ext, "LINKSPEED")) {
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
+	} else if (!strcasecmp(ext, "MACADDR")) {
 		/*Return mac address of the station */
 		/* Macaddr = xx:xx:xx:xx:xx:xx */
 		sprintf(ext, "MACADDR = %pM", dev->dev_addr);
-	} else if (0 == strcasecmp(ext, "SCAN-ACTIVE")) {
+	} else if (!strcasecmp(ext, "SCAN-ACTIVE")) {
 		/*Set scan type to active */
 		/*OK if successful */
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 		pmlmepriv->passive_mode = 1;
 		sprintf(ext, "OK");
-	} else if (0 == strcasecmp(ext, "SCAN-PASSIVE")) {
+	} else if (!strcasecmp(ext, "SCAN-PASSIVE")) {
 		/*Set scan type to passive */
 		/*OK if successful */
 		struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
 
 		pmlmepriv->passive_mode = 0;
 		sprintf(ext, "OK");
-	} else if (0 == strncmp(ext, "DCE-E", 5)) {
+	} else if (!strncmp(ext, "DCE-E", 5)) {
 		/*Set scan type to passive */
 		/*OK if successful */
 		r8712_disconnectCtrlEx_cmd(padapter
@@ -1015,7 +1015,7 @@ static int r871x_wx_set_priv(struct net_device *dev,
 			, 5000 /*u32 firstStageTO */
 		);
 		sprintf(ext, "OK");
-	} else if (0 == strncmp(ext, "DCE-D", 5)) {
+	} else if (!strncmp(ext, "DCE-D", 5)) {
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


