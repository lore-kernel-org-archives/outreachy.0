Received: from mail-pj1-f54.google.com (mail-pj1-f54.google.com [209.85.216.54])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C73FE2560
	for <outreachy@lists.linux.dev>; Thu,  7 Apr 2022 12:10:46 +0000 (UTC)
Received: by mail-pj1-f54.google.com with SMTP id fu5so5426235pjb.1
        for <outreachy@lists.linux.dev>; Thu, 07 Apr 2022 05:10:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs-iitr-ac-in.20210112.gappssmtp.com; s=20210112;
        h=from:to:cc:subject:date:message-id;
        bh=aqpPueWPNxzXBHHxJyXiIz6ra+hEX3sVHFaudIBqTWU=;
        b=2DL2TMXKvODXCmBbujyS6l/pZDnDTZc+ey2Xnf1zD2wEV4IlFyH8lvtx01eKv9x+rG
         aD1N4AxqGK60pgBuRZ58NSTZx2eif3LUcDa6VRNUUMKEkdT/WL3aJ3XNDWZkeW5YlP4E
         NlQXsptgN3eguxnvyin1IuUbY53mboBwxfArTY6MvXZgvDvcg8zo/QBDXEk58i2jY90u
         +E9gLXAG5efmwlHs9OiKpUsf56h8TH0G3ZrE3wRGusLay/pYz852c5kbLmjYB/2ixEAw
         7rSYxvH2ZGjm5TY/OPSbC4ikUIwTlTawealj7jFEI2czS7lTw79w+peUvUEhIynlFNgi
         XOlQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=aqpPueWPNxzXBHHxJyXiIz6ra+hEX3sVHFaudIBqTWU=;
        b=DqsMzGHPIUPvnXPLObZzErrlRwWGz7hqUI/ko+ONvitKBukk8qWtULs0wzC7s8aQpO
         koHlCwt/jpxyA1F0MyI2ZV4o+nzwapV/QXsHd80Mmr8SSV9tKBIDNzuiOwFq75EBkgvp
         meqt6zHOgH5NDpAb5Bh8EP5ZL3HmaVhgwp3oTt5AxzvqaQP2q9LG9dlEFZeMZoXQY9k7
         938iE9gPNPbxvjTS4mzyCZCJde4tqpIlSsJ2AtArFazLaAhXLB2DWhndyUClmmcMePNr
         gBOcGadUWFJAfLhK8dI5pmDsmDIn/sBgLB4LwNb4zDs0do4W0lQUzGgyKLhY9i01jdO4
         7I8A==
X-Gm-Message-State: AOAM533b9rTukUy2wgV3KY6cs/3fkcwThWviU7DjrfEZvFRpdVD2C0xG
	DkSgs3YtoqNaRqjlWjfEz/h9GK3OVFQzQ3hCaSg=
X-Google-Smtp-Source: ABdhPJxygEAgUieNSz9kdAgidLjC5IHFf7mloWvF+BsA1T7rAwdhmOSZZQSW29M5jes+IkmxOj1RDw==
X-Received: by 2002:a17:90b:38c7:b0:1c7:6afb:fac6 with SMTP id nn7-20020a17090b38c700b001c76afbfac6mr15455966pjb.198.1649333446047;
        Thu, 07 Apr 2022 05:10:46 -0700 (PDT)
Received: from mahak-Inspiron-7570.iitr.ac.in ([103.37.201.168])
        by smtp.googlemail.com with ESMTPSA id t14-20020a056a00138e00b004fb1d833668sm24095458pfg.33.2022.04.07.05.10.42
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 07 Apr 2022 05:10:45 -0700 (PDT)
From: Mahak Gupta <mahak_g@cs.iitr.ac.in>
To: Larry.Finger@lwfinger.net,
	florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org,
	linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org,
	outreachy@lists.linux.dev
Cc: Mahak Gupta <mahak_g@cs.iitr.ac.in>
Subject: [PATCH] staging: rtl8712: fix camel case in function r8712_generate_ie
Date: Thu,  7 Apr 2022 17:39:45 +0530
Message-Id: <20220407120945.31030-1-mahak_g@cs.iitr.ac.in>
X-Mailer: git-send-email 2.17.1
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>

Adhere to linux kernel coding style.

Reported by checkpatch:

CHECK: Avoid CamelCase: <beaconPeriod>

Signed-off-by: Mahak Gupta <mahak_g@cs.iitr.ac.in>
---
 drivers/staging/rtl8712/ieee80211.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/rtl8712/ieee80211.c b/drivers/staging/rtl8712/ieee80211.c
index f926809b1021..7d8f1a29d18a 100644
--- a/drivers/staging/rtl8712/ieee80211.c
+++ b/drivers/staging/rtl8712/ieee80211.c
@@ -162,13 +162,13 @@ int r8712_generate_ie(struct registry_priv *registrypriv)
 	uint sz = 0;
 	struct wlan_bssid_ex *dev_network = &registrypriv->dev_network;
 	u8 *ie = dev_network->IEs;
-	u16 beaconPeriod = (u16)dev_network->Configuration.BeaconPeriod;
+	u16 beacon_period = (u16)dev_network->Configuration.BeaconPeriod;
 
 	/*timestamp will be inserted by hardware*/
 	sz += 8;
 	ie += sz;
 	/*beacon interval : 2bytes*/
-	*(__le16 *)ie = cpu_to_le16(beaconPeriod);
+	*(__le16 *)ie = cpu_to_le16(beacon_period);
 	sz += 2;
 	ie += 2;
 	/*capability info*/
-- 
2.17.1

