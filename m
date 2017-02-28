X-GM-THRID: 6392114405347164160
X-Received: by 10.99.61.207 with SMTP id k198mr507795pga.3.1488280111673;
        Tue, 28 Feb 2017 03:08:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.13.110 with SMTP id 101ls897178oti.43.gmail; Tue, 28 Feb
 2017 03:08:31 -0800 (PST)
X-Received: by 10.157.27.231 with SMTP id v36mr515968otv.125.1488280111337;
        Tue, 28 Feb 2017 03:08:31 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id f7si251891pfk.5.2017.02.28.03.08.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 03:08:31 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 25so1184184pgy.3
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 03:08:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=SUap2RF9r0ngEOa1zHX7vI/bFAVABmOgu3eWOqkuEe8=;
        b=M7XilWFRJtDSFCtufdo3jORDReOJ4qz8ga+S5MkjNffe4NsOWme1XIMXxV1rolG/+L
         kB+ccbgES/XUvhOsWdMzrmQnpomZcgcK5V16OSzatl1ibPAV/TN/wjQu/hPd3jVs/fLg
         H1jsB6WcZu8rWYYbgqyqC2s6t839NOU8/uF3gf4pJUjVYnfCZjqL2kZT0PbLHKt5ioKU
         yxPCcGxf1IkSEBK2EJmuyDBh6DssqI3qhLJ0n0pnhqCFO/vBsb9Il1IDMW9DU6mCRqia
         P5k2QFQiH/89CVf/FaAd7Lrn7F5lZWfu5WSWzJ8vqbXiYKGVXsRQ/pbCqZmBPHK+9hqo
         l9DA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=SUap2RF9r0ngEOa1zHX7vI/bFAVABmOgu3eWOqkuEe8=;
        b=MLgnAiJ0JcvbFY6ePmAGYF2UbRzKbr0KYhm/OFuo8jZzsls6VeUt2IsMd9wO7GHLBN
         vMVCHulH5xwujUDYWSjxG1o2rNwLWm7b24U1tMHHry4v6ykjhlW/vg5/OCzIRjKAT672
         Vd613gb1IPZHptMSLaSSmeJ7GCWVjFBjjm/k28TrgduWeGQP4OhVYRI8H1naFbFy1TYc
         QBlKBBlTD1Y8HXdi4rvGYDXf48psiya9v2LsbQei7Aatu2Mds2+mAUHzPFcdFVlXzFbC
         qN+R1TSReRnHww+n7eM5AXTsnbr15BU2z9FkV7/IpC4FQyhnOHO7Ea13QNLfi5MHJ5xz
         ROVA==
X-Gm-Message-State: AMke39m7a21sB0j94LQNUu/HD7ApzZEzy9wPTEPSt2h4olXYI10w2QvijP9JXWFtpNxP0Q==
X-Received: by 10.99.184.18 with SMTP id p18mr2068065pge.20.1488280110927;
        Tue, 28 Feb 2017 03:08:30 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id v8sm3620323pgo.14.2017.02.28.03.08.29
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 28 Feb 2017 03:08:29 -0800 (PST)
Date: Tue, 28 Feb 2017 16:38:25 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: Unnecessary parentheses removed and
 improved coding style.
Message-ID: <20170228110825.GA11349@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses are removed as reported by checkpatch.pl
to make coder nicer and to improve readability.
Also coding style is improved as it's often nicer to read if
 &(foo[0]) is converted to foo like:
 memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
 memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 26 +++++++++++++-------------
 1 file changed, 13 insertions(+), 13 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index a533408cf0b9..ae7cf3ffae8e 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	int rc = 0;
 
 	DPRINTK(3, "\n");
-	ap = &(priv->current_ap);
+	ap = &priv->current_ap;
 
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
@@ -184,7 +184,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	wrqu.ap_addr.sa_family = ARPHRD_ETHER;
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS) {
 		memcpy(wrqu.ap_addr.sa_data,
-		       &(priv->current_ap.bssid[0]), ETH_ALEN);
+		       priv->current_ap.bssid, ETH_ALEN);
 		DPRINTK(3,
 			"IWEVENT: connect bssid=%pM\n", wrqu.ap_addr.sa_data);
 		wireless_send_event(netdev, SIOCGIWAP, &wrqu, NULL);
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


