X-GM-THRID: 6389561220722065408
X-Received: by 10.99.227.21 with SMTP id f21mr9390446pgh.43.1487693959273;
        Tue, 21 Feb 2017 08:19:19 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.63.11 with SMTP id m11ls12645136otc.20.gmail; Tue, 21 Feb
 2017 08:19:18 -0800 (PST)
X-Received: by 10.157.4.43 with SMTP id 40mr8899786otc.13.1487693958891;
        Tue, 21 Feb 2017 08:19:18 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id d63si1050130pfe.2.2017.02.21.08.19.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 08:19:18 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id z128so205509pgb.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 08:19:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=LHhuiPXAy41TXfC+BYF98Aw8GMzf19BPOtYI+ENONIo=;
        b=uJaMbraHX1umfLpcfPckjkhn7yGSQNrlqd0MPLcn29lU/dQWVtjy/Smg0UBog0B7Xh
         YLmDBO+FKRDA7pEs+K/lR9v2YX/wUhLHj5Es/k3aL/VUdAXC6yAWMD1dhDMugXbfBjDd
         ajFR2IsZ5atTG7NRa4OUvLy6NgW7jyf13IMNlj8qw7nSigoxqdPO9WqqwDWhbBNhtBaH
         HcTD/X+hFITfY1aDVL2k+Uj6rfXj15qxzZPl9abs9dTX35HJz1VQQscHbzdt6ajPgJZl
         zMqClpt/sojat2X7Ub0SP2WAS8lppXCA5RWnvU+qAcf41TiFp+iQFEIMRoiCOikRqCCq
         if5A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=LHhuiPXAy41TXfC+BYF98Aw8GMzf19BPOtYI+ENONIo=;
        b=n2wwjK2+zWpwBGDN/u94lgiRzJR3tbapgRAA3DGOAK1pS4O3HysMOvUjjtduuBlbyf
         ZT4wCLmfWK7PZCuNpyo+xfrZHxZ1p54Gmhr1f866lFKEbqvCryb4MdQKjoVhpw40owuX
         Gd6F4GAgCvQlnRgzOMerGmdQg37/FAurojBQPzK6VfOIwvAd7zVHn+iXYqFazI5GuCJt
         cHskfcvKZLaGv7SVmiBVJDZ45f4GhX//uIP05711XOHPeqEHYTmxE12sh6K4Jk6vT5Oc
         jHQD74Yogmrwb0arV877KihiZcKBhPaKQv7K1H6mKFR9kjk78yCMQjVHHGaoyP89QDSZ
         DdaQ==
X-Gm-Message-State: AMke39nChP2ELnVE777+Q71e+9ImzuqGroK7KSu4UzRFR8e2n3vn8/Gw8fVd9OKtE2ZxEA==
X-Received: by 10.99.227.5 with SMTP id f5mr36046619pgh.102.1487693958616;
        Tue, 21 Feb 2017 08:19:18 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id o18sm31438346pgn.36.2017.02.21.08.19.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Feb 2017 08:19:16 -0800 (PST)
Date: Tue, 21 Feb 2017 21:49:13 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH 1/1] staging: ks7010: Unnecessary parentheses are removed and
 also improved coding style.
Message-ID: <20170221161913.GA17560@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses are removed as reported by checkpatch.pl
to make coder nicer and to improve readability.
Also coding style is improved.For example:-
It's often nicer to read if &(foo[0]) is converted to foo like:
     memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
     memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 1fbd495e5e63..b643a37fb943 100644
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


