X-GM-THRID: 6388887439725821952
X-Received: by 10.98.1.81 with SMTP id 78mr3087627pfb.13.1488130067648;
        Sun, 26 Feb 2017 09:27:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls11569379oty.0.gmail; Sun, 26 Feb
 2017 09:27:47 -0800 (PST)
X-Received: by 10.237.59.74 with SMTP id q10mr3964951qte.49.1488130067151;
        Sun, 26 Feb 2017 09:27:47 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x244.google.com (mail-pg0-x244.google.com. [2607:f8b0:400e:c05::244])
        by gmr-mx.google.com with ESMTPS id d63si2521400pfe.2.2017.02.26.09.27.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 09:27:47 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) client-ip=2607:f8b0:400e:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::244 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x244.google.com with SMTP id 25so1283016pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 09:27:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=MgxVcM0DQcRLKl490tspekZezj9lGr+zbVSB0czyfnA=;
        b=rLDeNr1fvidnRkBfqHr2H3dPKEakACMUoHNgVsNA67sHNzst2If8MON723+J3rAbKk
         mOzb3uyMbtrfHDj3zNJVbygseLb0pIIHeMwQJDZPw3PLwTrCLDN4shDUTvxdg4GAJgpo
         Jeye46KnTolAbCD3+Nlq0KDmmZAzD4UQCUZtfTgvnl2oyYwpM8f3kO4d/AYcDhDtLXex
         LXScpKKRZIqxlEFWtDQ4JicRaRLLgZ9WgmVhQYrqNGlR30EpihjInGS8kA1G+A+bkDMo
         RVk8DsTUhmx1E27QxPzQc63Sj79MACeshJz3Au7454pkrQ8jM2ZFXhUBDk+d/n1aS5qO
         dS1A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=MgxVcM0DQcRLKl490tspekZezj9lGr+zbVSB0czyfnA=;
        b=hAcsLeSxVT8NQ/4XntCwV2lGD3hpIddgVYQdDXATTYEC+HpHXv0Yy++yKStNTfJI1G
         n6A6Vc1nRYBdpjqWgoy9+/x3lvPfDAPvscrwP06FOaaGWmgQmMTm9u9oCI5RoV0JipLH
         YIspeKUxaK8kNwHTXA4pnasswB3GTAL6trEMBFPw6ySR59gc2T7DTYDZJYNbbEf79EAw
         Aoj1U+TX0iLKpmTIJtnpK/UoU2hKIr1kAcvuPwwhpK1AJ0fUWueHNtO6xVVpn5IcYt0i
         DmlrXOIqoZPSqaLV2ZJHziy5lxVkOC5t2Afwa+Op+WLzH0bPbQgZEhjrvz6lEy5Gk2H6
         ohnA==
X-Gm-Message-State: AMke39m6shfH4VDqSHwc5TpF2RT0eH3cR0dHzT/6bam0Sky/HtDTQiGoXeQn+GTlHy/OFg==
X-Received: by 10.98.92.4 with SMTP id q4mr15896295pfb.151.1488130066843;
        Sun, 26 Feb 2017 09:27:46 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id l188sm25675856pfl.28.2017.02.26.09.27.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 09:27:45 -0800 (PST)
Date: Sun, 26 Feb 2017 22:57:41 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH v4 1/2] staging: ks7010: Unnecessary parentheses are removed.
Message-ID: <20170226172741.GA20524@arushi-HP-Pavilion-Notebook>
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
Changes in v4:
  - Commit message made more accurate and as per the changes.

 drivers/staging/ks7010/ks_hostif.c | 24 ++++++++++++------------
 1 file changed, 12 insertions(+), 12 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index b643a37fb943..1fbd495e5e63 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -113,7 +113,7 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	int rc = 0;
 
 	DPRINTK(3, "\n");
-	ap = &priv->current_ap;
+	ap = &(priv->current_ap);
 
 	if ((priv->connect_status & CONNECT_STATUS_MASK) == DISCONNECT_STATUS) {
 		memset(ap, 0, sizeof(struct local_ap_t));
@@ -121,19 +121,19 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 	}
 
 	/* bssid */
-	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
+	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
 	/* essid */
-	memcpy(ap->ssid.body, priv->reg.ssid.body,
+	memcpy(&(ap->ssid.body[0]), &(priv->reg.ssid.body[0]),
 	       priv->reg.ssid.size);
 	ap->ssid.size = priv->reg.ssid.size;
 	/* rate_set */
-	memcpy(ap->rate_set.body, ap_info->rate_set.body,
+	memcpy(&(ap->rate_set.body[0]), &(ap_info->rate_set.body[0]),
 	       ap_info->rate_set.size);
 	ap->rate_set.size = ap_info->rate_set.size;
 	if (ap_info->ext_rate_set.size) {
 		/* rate_set */
-		memcpy(&ap->rate_set.body[ap->rate_set.size],
-		       ap_info->ext_rate_set.body,
+		memcpy(&(ap->rate_set.body[ap->rate_set.size]),
+		       &(ap_info->ext_rate_set.body[0]),
 		       ap_info->ext_rate_set.size);
 		ap->rate_set.size += ap_info->ext_rate_set.size;
 	}
@@ -153,11 +153,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->rsn_ie.id = 0x30;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->rsn_ie.size = ap_info->rsn.size;
-			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
 			       ap_info->rsn.size);
 		} else {
 			ap->rsn_ie.size = RSN_IE_BODY_MAX;
-			memcpy(ap->rsn_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
 			       RSN_IE_BODY_MAX);
 		}
 	} else if ((ap_info->rsn_mode & RSN_MODE_WPA)
@@ -165,11 +165,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->wpa_ie.id = 0xdd;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->wpa_ie.size = ap_info->rsn.size;
-			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
 			       ap_info->rsn.size);
 		} else {
 			ap->wpa_ie.size = RSN_IE_BODY_MAX;
-			memcpy(ap->wpa_ie.body, ap_info->rsn.body,
+			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
 			       RSN_IE_BODY_MAX);
 		}
 	} else {
@@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	memset(ap, 0, sizeof(struct local_ap_t));
 
 	/* bssid */
-	memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
+	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
 	/* rssi */
 	ap->rssi = ap_info->rssi;
 	/* sq */
@@ -224,7 +224,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
 	/* channel */
 	ap->channel = ap_info->ch_info;
 
-	bp = ap_info->body;
+	bp = &(ap_info->body[0]);
 	bsize = ap_info->body_size;
 	offset = 0;
 
-- 
2.11.0


