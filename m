X-GM-THRID: 6661092310784147456
X-Received: by 2002:a1f:16d4:: with SMTP id 203mr1532498vkw.3.1550906410652;
        Fri, 22 Feb 2019 23:20:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2706:: with SMTP id a6ls1973047uaa.0.gmail; Fri, 22 Feb
 2019 23:20:10 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ibdj5X1W9JDyi5DNnBsDCaV3oFvV0kZ63/zAjgWTldCX0e1tld3pPnZl3SkqMltiTXAVAhj
X-Received: by 2002:ab0:22ce:: with SMTP id z14mr1518817uam.20.1550906410030;
        Fri, 22 Feb 2019 23:20:10 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550906410; cv=none;
        d=google.com; s=arc-20160816;
        b=F0bc7oy6x+I3x3N84skD/W6T6ytg0ByhUxI/X6418G8Jk0HyZO+E+S1XLfzAhdd1MB
         tZMbmouOYP+AyeZ1QhzQvUvY8M3rxiESxTpzY5Ww73ygoTSsp+EuBMwEMXXhl7vM7Ogb
         PY/EP2z57F+icfUJ0Tn7zWyEysD9wgOEUmGyOGN17ljj0yDrBzwpzbf9kHjzjy6pzApK
         OMJebIkE6/SGshmcBmb7mTMZMnMj0HxxfDfLI+xLaS6WSZkTCyf+YmfBP/HpPktNNX30
         f6Z86Yvfj02/GhYEWdYfpCW3Yd18aZ22sA/8dFXlSHaaI5YnRVPzgLx16iPScpJHkUtU
         3Vdw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CDSxZQc2QcB6Ntz5TPziMrbYGPwf3G9V8dmBuXt/Ikc=;
        b=tS3Pi2sh4JTkHqsdSSaIUc4M2oJapM2h2DwH+my/B2UF/LlH50EYQ0S8kYFNkhvuEL
         SmTTCjeyAe2TzZvRN9+VzLn4eeUEh/9hvExf+Gs2ylv8A7ajM+gHfgZhIlHmPbhno4TR
         UH9Dt1iAvWjbTR5fKFkmcTBLb/ewXWmrIWQxxJ4FDspo4FC162GDxbKdUTy8ac+Wx9BA
         MPGXEe6YMtrNvbrDVNDWfpONIL5oRIa1r8orSBGhxuEtrVdLp/RvdktuhFugU1Hi2xmE
         JREzuLZFvqpZprCXyc7ZHy5QrGwk1HIo5IP+ORIT/CQWlS3pNRNZ9YBR6OU84xRsXian
         tGog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCrT5AI4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x641.google.com (mail-pl1-x641.google.com. [2607:f8b0:4864:20::641])
        by gmr-mx.google.com with ESMTPS id e64si117362vsd.2.2019.02.22.23.20.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:20:10 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) client-ip=2607:f8b0:4864:20::641;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UCrT5AI4;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::641 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x641.google.com with SMTP id d15so2125704plr.1
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Feb 2019 23:20:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CDSxZQc2QcB6Ntz5TPziMrbYGPwf3G9V8dmBuXt/Ikc=;
        b=UCrT5AI4l0AoJIMBwNHT8Uyq7/CCkjA+APjVKmqQoXiSwKrJzcHF3er/sceiv197P5
         wz8+y1Ov+VkuAIXTqgpTzlwPkM9RCQe0alkGCmBjh5R8UjuKkp3nfyPrFz3Ns2Jb1Ca+
         +mi4i8pJJS9t41B1/xfdZTI31xaiS5BCAYk4aoAG9PLAx4RjhoTobIvTHW5RDJeD/O+x
         5/FuyVA/Tfd7IjRYz6RKpxZomWzkjlqm/eZtZKvy9R8ESKDmSbx79GVDmYsXxKapuWiT
         LH+QmHyoUsDBtGQoEXk6X9jWp/gsefJpWqsfXFNxPd5xCFDXPOj9d17SWAsgK16BkVls
         zh8g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CDSxZQc2QcB6Ntz5TPziMrbYGPwf3G9V8dmBuXt/Ikc=;
        b=sIWQqzeWLK/LzlYAZltIzIyc6zZx7L4rm9vd1K8K1zS0zzYNImF8KoBTbZs1MrPivV
         rI9kLYITbUuREPlOr8WQQmbKM5pLVxGgPAi5HBPuOYjkwtRixHrx1C68/2tHFFkHvQbR
         ybS2ml8anRYsuQMEpUNR4RvBbFLKBdykz5lKOD6cJoAzfFNdhBf31nNsZncNHbyq/Hfg
         4GWFFEog4XRiOEhXcK0f7uAiP254DJOMJ2IjNaxHsvXewdep3AueKyy6wPyPlKfkt7wm
         92EcF8ljToqngNXE7tfaUfCOa/czq13dE6sd4XHAbMfPhJi5QxmoGG+CdL6T3z7o51Yt
         XoIg==
X-Gm-Message-State: AHQUAuaWBaouWpFz6j/XgxXVC3Zj7md3G/eGLV+t51hMR2ZqKC0iMfti
	/ytmppMKQD1buS3JLDBFPyOXooxh4WU=
X-Received: by 2002:a17:902:f64:: with SMTP id 91mr8219460ply.132.1550906408751;
        Fri, 22 Feb 2019 23:20:08 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([2401:4900:16b2:4a74:49f0:95a6:ee9:3324])
        by smtp.googlemail.com with ESMTPSA id w4sm5579501pgk.16.2019.02.22.23.20.06
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Feb 2019 23:20:08 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] Staging: ks7010: Match alignments with open paranthesis
Date: Sat, 23 Feb 2019 12:49:49 +0530
Message-Id: <20190223071949.7174-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Clears checkpatch.pl issue:
CHECK: Alignment should match open parenthesis

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/ks7010/ks_hostif.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
index d938b0997a53..e48fc36b6ebd 100644
--- a/drivers/staging/ks7010/ks_hostif.c
+++ b/drivers/staging/ks7010/ks_hostif.c
@@ -730,7 +730,7 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
 	priv->scan_ind_count++;
 	if (priv->scan_ind_count < LOCAL_APLIST_MAX + 1) {
 		netdev_dbg(priv->net_dev, " scan_ind_count=%d :: aplist.size=%d\n",
-			priv->scan_ind_count, priv->aplist.size);
+			   priv->scan_ind_count, priv->aplist.size);
 		get_ap_information(priv, (struct ap_info *)(priv->rxp),
 				   &priv->aplist.ap[priv->scan_ind_count - 1]);
 		priv->aplist.size = priv->scan_ind_count;
-- 
2.17.1


