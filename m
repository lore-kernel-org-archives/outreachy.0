X-GM-THRID: 6388941835575754752
X-Received: by 10.157.17.149 with SMTP id v21mr4434909otf.23.1487541439827;
        Sun, 19 Feb 2017 13:57:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.87.199 with SMTP id u190ls1785817ita.8.canary-gmail; Sun,
 19 Feb 2017 13:57:19 -0800 (PST)
X-Received: by 10.107.149.16 with SMTP id x16mr6494725iod.72.1487541439177;
        Sun, 19 Feb 2017 13:57:19 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id z73si2008008pfa.2.2017.02.19.13.57.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 13:57:19 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 1so3106408pgz.2
        for <outreachy-kernel@googlegroups.com>; Sun, 19 Feb 2017 13:57:19 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=+KKhsqdzjKkoNjjhEU3M5ghe5vBDFfE1DfIkbwooNpY=;
        b=WTfJHFDsZeNq1GtEUNjpSEC8HGQqODd+0vFPdOvGwTYoQRZNnIy01KNgbfVLLKwgxa
         UEBXrBucdc0NW9hs3/VqTUmfftNdE9U2OTjtUoN/JjVRHEjz9Hfrv0OpHOIUR5ec1GhD
         17y1BzF/pjvoPRYdc6dw96ZMLw3qSuH5r1lFn07HUn8GLchSVUbJL21F1cuXjBatQkMb
         NgKnUrjQ+SJVhFurHES3oEsmObvg83XPKPyWp5SU2hE+JdjYuuTp7YgqPbLOkAWEgkEF
         b3zFTQQOgruY0/nMixCgZ5AWoAj5woWvMJIaBB9nPLNfiuohGys4tbeI/lsAnTI/6go2
         aS7Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=+KKhsqdzjKkoNjjhEU3M5ghe5vBDFfE1DfIkbwooNpY=;
        b=QdsW/kc8CNeC2gOhaEf49iYFEcymy1Wx68YKX1Qtwu4pqn5Ed7L9uVA5OVc91tknL/
         kjBLrqtGk4FjvPqgvSWPWYbgWNlWCqxCKhJwAxO1XfmquRoBD3uP9laZQAATQojQHuBA
         2PVwPRJA4UEesR9zAdBfO8J1mbBnkbpoJmIG9+bhlF45UvuAx3nVIqhkO2WPpa2WgTns
         hYf22c80wjpU56EhQg16osKLLybQZjLqLBy/WNNl/4+7VuBkMAVPvN3D43NM6sogdP0K
         KBAPKnc9wnywg89i26IYI4IOz425TlJfeVX/811p2gf17M9GTd/Pj4APWe3RyPCtgYS0
         syFA==
X-Gm-Message-State: AMke39nUd3XDzBqNBdQdJrShTpSrs9E3jT7k2vOvc9NAjNraVprjeFTW82itPGw8trCv8g==
X-Received: by 10.98.157.12 with SMTP id i12mr9226412pfd.166.1487541438525;
        Sun, 19 Feb 2017 13:57:18 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id 73sm3029138pfh.56.2017.02.19.13.57.15
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 19 Feb 2017 13:57:16 -0800 (PST)
Date: Mon, 20 Feb 2017 03:27:13 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: ks7010: Unnecessary parentheses are removed to
 make coder nicer.
Message-ID: <20170219215713.GA19354@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses should be avoided as reported by checkpatch.pl.
Remove unnecessary parentheses, as reported by checkpatch as are nicer
to read.For example:-
It's often nicer to read if &(foo[0]) is converted to foo like:
     memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
     memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 1fbd495e5e63..ba283ab741a7 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	int rc = 0;
 
 	DPRINTK(3, "\n");
-	ap = &(priv->current_ap);
+	ap = priv->current_ap;
 
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS) {
 		memset(ap, 0, sizeof(struct local_ap_t));
@@ -121,19 +121,19 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	}
 
 	/* bssid */
-	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
+	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
 	/* essid */
-	memcpy(&(ap->ssid.body[0]), &(priv->reg.ssid.body[0]),
+	memcpy(ap->ssid.body, priv->reg.ssid.body,
 	       priv->reg.ssid.size);
 	ap->ssid.size = priv->reg.ssid.size;
 	/* rate_set */
-	memcpy(&(ap->rate_set.body[0]), &(ap_info->rate_set.body[0]),
+	memcpy(ap->rate_set.body, ap_info->rate_set.body,
 	       ap_info->rate_set.size);
 	ap->rate_set.size = ap_info->rate_set.size;
 	if (ap_info->ext_rate_set.size) {
 		/* rate_set */
-		memcpy(&(ap->rate_set.body[ap->rate_set.size]),
-		       &(ap_info->ext_rate_set.body[0]),
+		memcpy(&ap->rate_set.body[ap->rate_set.size],
+		       ap_info->ext_rate_set.body,
 		       ap_info->ext_rate_set.size);
 		ap->rate_set.size += ap_info->ext_rate_set.size;
 	}
@@ -153,11 +153,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->rsn_ie.id = 0x30;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->rsn_ie.size = ap_info->rsn.size;
-			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
 			       ap_info->rsn.size);
 		} else {
 			ap->rsn_ie.size = RSN_IE_BODY_MAX;
-			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
 			       RSN_IE_BODY_MAX);
 		}
 	} else if ((ap_info->rsn_mode & RSN_MODE_WPA)
@@ -165,11 +165,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->wpa_ie.id = 0xdd;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->wpa_ie.size = ap_info->rsn.size;
-			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
 			       ap_info->rsn.size);
 		} else {
 			ap->wpa_ie.size = RSN_IE_BODY_MAX;
-			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
 			       RSN_IE_BODY_MAX);
 		}
 	} else {
@@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	memset(ap, 0, sizeof(struct local_ap_t));
 
 	/* bssid */
-	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
+	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
 	/* rssi */
 	ap->rssi = ap_info->rssi;
 	/* sq */
@@ -224,7 +224,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	/* channel */
 	ap->channel = ap_info->ch_info;
 
-	bp = &(ap_info->body[0]);
+	bp = ap_info->body;
 	bsize = ap_info->body_size;
 	offset = 0;
 
-- 
2.11.0


