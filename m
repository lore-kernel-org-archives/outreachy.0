X-GM-THRID: 6389561220722065408
X-Received: by 10.99.124.23 with SMTP id x23mr3468824pgc.97.1487764070657;
        Wed, 22 Feb 2017 03:47:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.12.97 with SMTP id 88ls623762otr.34.gmail; Wed, 22 Feb
 2017 03:47:50 -0800 (PST)
X-Received: by 10.157.40.8 with SMTP id m8mr11002632otb.133.1487764070293;
        Wed, 22 Feb 2017 03:47:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id s64si204468pfk.0.2017.02.22.03.47.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 22 Feb 2017 03:47:50 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id 1so10874pgz.2
        for <outreachy-kernel@googlegroups.com>; Wed, 22 Feb 2017 03:47:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=Zd8N77w4Qe33CBUpsXo4Hs4Iils1Pp/5yBfeGroKt3A=;
        b=LB/yGTETiaEo8Nbx/rjmV0kj8PZOY9n76UJFT1vrLr0gY3xcMhFXjMH7zMWRE/RqGA
         07kiF4zcAycON+IvOGt5Yx06MsQ4QCeqPpiXv3fbjINDapEdFzC7z0z2C1jSJB6W3Pg9
         +Ye8mtUS1wy0Vj2QXew9C7Ih2NdQ/RSVoWc6w+McGKeqKaEUj/X2CbfFa/yf6m7cSxSw
         q02tSNeHM6pDhGjHEqKRHGV7spMeNvtQPE0POkrS7QfoZVVKcX1xa3ewurkdhbRZ8BEa
         2y1Ig/L2+Y/OldIc/8/0P5/37K9bhOyojdTzUGx2dztQ7N8L8j0jyG7pjB8O450VQnRI
         q68g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=Zd8N77w4Qe33CBUpsXo4Hs4Iils1Pp/5yBfeGroKt3A=;
        b=eMW8tvdqHKbZWKBC9/0pNb10IH9zLCKacMbd89WHSV+vweSiTzmQVOLct4QI+Tm59H
         c+iUoii3BpimTvArP++quy15y1idhm9sniv465whjrjGl4OvI0bQMfhWsWynKM8Ei+LR
         qPSeqTK8OVygX9/QEXVHNsyjh+SlyZRnCoP9051urO5WP4+r6SzVwmTm90spReUF3a09
         BNkhtg44CgcrOZmUGfrFU8fP29ZoflX+fewdFpgx3VP+UE6H6TgZXoZi9GA3CGJgAUTD
         ORfd2pkqKng/nslsMogLxSDL2eKUF8bzLsHyLCgvc6t5RTxCUGX5OMeH9Db5Owgzw7bG
         9l7Q==
X-Gm-Message-State: AMke39mA56yy8ug9mj6cXsceb+anUAtReTdecWhzX6M/J4XCuFqexsbchjLHdglbVdk+5Q==
X-Received: by 10.84.195.164 with SMTP id j33mr47217961pld.171.1487764070044;
        Wed, 22 Feb 2017 03:47:50 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id r1sm3299748pgn.47.2017.02.22.03.47.47
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 22 Feb 2017 03:47:48 -0800 (PST)
Date: Wed, 22 Feb 2017 17:17:45 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v3 1/1] staging: ks7010: Unnecessary parentheses are removed
 and also improved coding style.
Message-ID: <20170222114745.GA25670@arushi-HP-Pavilion-Notebook>
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
Changes in v3:
  - Commit message made more accurate and as per the changes.
  - previously versions were not marked.
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


