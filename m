X-GM-THRID: 6253454979365863424
X-Received: by 10.66.139.162 with SMTP id qz2mr16566421pab.1.1455995947766;
        Sat, 20 Feb 2016 11:19:07 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.164.234 with SMTP id d103ls497580ioj.74.gmail; Sat, 20 Feb
 2016 11:19:07 -0800 (PST)
X-Received: by 10.67.5.233 with SMTP id cp9mr18043625pad.43.1455995947497;
        Sat, 20 Feb 2016 11:19:07 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pa0-x234.google.com (mail-pa0-x234.google.com. [2607:f8b0:400e:c03::234])
        by gmr-mx.google.com with ESMTPS id 12si2294241pfb.1.2016.02.20.11.19.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 11:19:07 -0800 (PST)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) client-ip=2607:f8b0:400e:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c03::234 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x234.google.com with SMTP id ho8so70090165pac.2
        for <outreachy-kernel@googlegroups.com>; Sat, 20 Feb 2016 11:19:07 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=gO1jLk/vC9FQ9frRTo6NgOx0srg3zbmNoUMCy1A4ej8=;
        b=op0kzxO64uHaXO+6Gkvd5cygXfjeyM9Z+Ied+jfhYUmf8fS32d0U5yjzABbGC60Aui
         XkZaV7iKYgEjR+1pcmKZFIdwgMNNQ3rNHAyySQjuvhSx7mkGs7OL6qj2hJupf8aAenc0
         SK39uPoucjNoX91SYN6Vx775Htoeaw+RQdHh/3/qrqTo2ZCHedlHlPdIRTzT8uDvqtDW
         hVl8M/mePZE4beIu0GOyp9eM2MaafmfqHTKALaXEyztoPpdGLu2OMMsg543trZ69go0O
         tqX/gVVI1H0FMtANCRLF6zjZJvN4Aoov1AzXds7cmsLw2BGqZwiI4C0Pz3zEsSzJurJt
         aWPg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=gO1jLk/vC9FQ9frRTo6NgOx0srg3zbmNoUMCy1A4ej8=;
        b=hbT5OmkTfHdGbsWTq222qJA5Oywwxb1/2fTJVPavB5C4WEliOG4vau/xDky3rGc4GX
         Nqo5QsBYSguwMUvONR5qPg8wwGVEXsjb9B7/J4oHfoan9Qs1oHylGGQMAn1Tkhiohb8N
         1OmYU1QkfC8h9IrAdefDB6XyaGP8lmvPNJnKpl/NPJNYdSeihwaWF+sSH5iEQ8D0omEO
         BzXHSMrU3sjo42s6gcVS8qqZzAH9xn4/rGcYIyOQFhPwCHDHK23kWeLtU2EStE4LxLmK
         zhypcPVHWlbJ6bGhpeSL+F+5gMgUDKrdvGjjyvgozbyit1C4vVc5emjQCYbJRb0UbdBB
         Sv/A==
X-Gm-Message-State: AG10YORDNHJVc3Dg7VVEtBqHJileHEUxJ5w1Z8Ardpb+OTI01iuI2ihkI5a1RBBvg5jiqg==
X-Received: by 10.66.193.226 with SMTP id hr2mr26945949pac.20.1455995947345;
        Sat, 20 Feb 2016 11:19:07 -0800 (PST)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.82])
        by smtp.gmail.com with ESMTPSA id wh9sm26433722pab.8.2016.02.20.11.19.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 20 Feb 2016 11:19:06 -0800 (PST)
Date: Sat, 20 Feb 2016 16:49:03 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: wlan-ng: Convert explicit comparison to NULL to
 !x.
Message-ID: <20160220111903.GA3134@sandhya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.20 (2009-12-10)

Convert explicit comparison to NULL to !x.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/wlan-ng/p80211conv.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/wlan-ng/p80211conv.c b/drivers/staging/wlan-ng/p80211conv.c
index 1b02cdf..86fd23f 100644
--- a/drivers/staging/wlan-ng/p80211conv.c
+++ b/drivers/staging/wlan-ng/p80211conv.c
@@ -613,7 +613,7 @@ int p80211skb_rxmeta_attach(struct wlandevice *wlandev, struct sk_buff *skb)
 	/* Allocate the rxmeta */
 	rxmeta = kzalloc(sizeof(struct p80211_rxmeta), GFP_ATOMIC);
 
-	if (rxmeta == NULL) {
+	if (!rxmeta) {
 		netdev_err(wlandev->netdev,
 			   "%s: Failed to allocate rxmeta.\n", wlandev->name);
 		result = 1;
-- 
1.8.3.4


