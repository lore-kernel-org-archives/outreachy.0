X-GM-THRID: 6388479452970483712
X-Received: by 10.200.41.243 with SMTP id 48mr3802765qtt.80.1487433783112;
        Sat, 18 Feb 2017 08:03:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.40.233 with SMTP id s96ls131038ota.11.gmail; Sat, 18 Feb
 2017 08:03:02 -0800 (PST)
X-Received: by 10.157.66.6 with SMTP id q6mr198238ote.47.1487433782689;
        Sat, 18 Feb 2017 08:03:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id f7si1357395pfk.5.2017.02.18.08.03.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 18 Feb 2017 08:03:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 68so6383765pfx.2
        for <outreachy-kernel@googlegroups.com>; Sat, 18 Feb 2017 08:03:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=N/j2YAZxKGmrw8PFg+23zZZRvWuYxc23LY0sQ/cOUjw=;
        b=KSanVX1nnK1RZ3VsarbWU8qcZGxfsuqTXaY6oSLUDYfogcfVqf/pwbEgxNMe3QELSE
         kEyY/cyGMqNuEfPjtVAT5HdqeXwBm91yE8ye4b1/N3pFaRR7goh/Kox4DSoNaqjdbQZb
         BQkbfly7yHcO5kiW+kwvvPbjSPcs7+Sdw3NDJ1M5AsuL6p7CltGXaUsIEX+g7O2VYi2a
         gQGVtjzNUGBKFxt3bkzYbCREf9LRuUd25T4+e4KBebSGKcb5Dyz6NgqnySmw+eMi5/JF
         Tyl9ZTAwAwa89YI8AX5srN4pEMH9gbdDi+mGE/VR5nlBwGb2HRI2qNos5vb6D2ZAQCAM
         HqfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=N/j2YAZxKGmrw8PFg+23zZZRvWuYxc23LY0sQ/cOUjw=;
        b=iA6jGq/j7Q/WlmFQ8xjzyak+WXY427gWY5M3PZS5b1jVuPjUesiO6lTNoVYw8zSXw+
         sjibsqEQhw0dbUj8BeaDDXFk9fNpgimb8XbNbeUEPQXsemv5W5tT6sHO7iy43Ru2mX/G
         FDSNwj6gNcYO6/GCnES8bDWWpunZy15U1Sv+XhebahbxTEDBjv54QAPulortwhUmI2bl
         rzSEq5avxkCW4NWy9Exd3kp1eJbNEwtSRXfN0FLF7GmHnNjPcWBEPr5Y8Wz4ou8DlYUl
         XcBEn9/ALsilVoJ01ovme0/2P5rUQGs1+C6kcsTn326+FWo2VHrBfBMER36vj2I4zHe3
         OFnQ==
X-Gm-Message-State: AMke39nr8lGLsEo25szYjrXO256YsYu6VwmUDapsiRrQjE6iQcKVSRp+2uWKmAgO568jeg==
X-Received: by 10.98.196.1 with SMTP id y1mr15862426pff.105.1487433782374;
        Sat, 18 Feb 2017 08:03:02 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from arushi-HP-Pavilion-Notebook ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id b7sm26087746pfg.53.2017.02.18.08.03.00
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 18 Feb 2017 08:03:01 -0800 (PST)
Date: Sat, 18 Feb 2017 21:32:57 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: gregkh@linuxfoundation.org
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: ks7010: Unnecessary parentheses should be avoided
Message-ID: <20170218160257.GA6915@arushi-HP-Pavilion-Notebook>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary parentheses as reported by checkpatch.pl

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index 1fbd495e5e63..819e08b5fa91 100644
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
+	memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN);
 	/* essid */
-	memcpy(&(ap->ssid.body[0]), &(priv->reg.ssid.body[0]),
+	memcpy(&ap->ssid.body[0], &priv->reg.ssid.body[0],
 	       priv->reg.ssid.size);
 	ap->ssid.size = priv->reg.ssid.size;
 	/* rate_set */
-	memcpy(&(ap->rate_set.body[0]), &(ap_info->rate_set.body[0]),
+	memcpy(&ap->rate_set.body[0], &ap_info->rate_set.body[0],
 	       ap_info->rate_set.size);
 	ap->rate_set.size = ap_info->rate_set.size;
 	if (ap_info->ext_rate_set.size) {
 		/* rate_set */
-		memcpy(&(ap->rate_set.body[ap->rate_set.size]),
-		       &(ap_info->ext_rate_set.body[0]),
+		memcpy(&ap->rate_set.body[ap->rate_set.size],
+		       &ap_info->ext_rate_set.body[0],
 		       ap_info->ext_rate_set.size);
 		ap->rate_set.size += ap_info->ext_rate_set.size;
 	}
@@ -153,11 +153,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->rsn_ie.id = 0x30;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->rsn_ie.size = ap_info->rsn.size;
-			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(&ap->rsn_ie.body[0], &ap_info->rsn.body[0],
 			       ap_info->rsn.size);
 		} else {
 			ap->rsn_ie.size = RSN_IE_BODY_MAX;
-			memcpy(&(ap->rsn_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(&ap->rsn_ie.body[0], &ap_info->rsn.body[0],
 			       RSN_IE_BODY_MAX);
 		}
 	} else if ((ap_info->rsn_mode & RSN_MODE_WPA)
@@ -165,11 +165,11 @@ int get_current_ap(struct ks_wlan_private *priv, struct link_ap_info_t *ap_info)
 		ap->wpa_ie.id = 0xdd;
 		if (ap_info->rsn.size <= RSN_IE_BODY_MAX) {
 			ap->wpa_ie.size = ap_info->rsn.size;
-			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(&ap->wpa_ie.body[0], &ap_info->rsn.body[0],
 			       ap_info->rsn.size);
 		} else {
 			ap->wpa_ie.size = RSN_IE_BODY_MAX;
-			memcpy(&(ap->wpa_ie.body[0]), &(ap_info->rsn.body[0]),
+			memcpy(&ap->wpa_ie.body[0], &ap_info->rsn.body[0],
 			       RSN_IE_BODY_MAX);
 		}
 	} else {
-- 
2.11.0


