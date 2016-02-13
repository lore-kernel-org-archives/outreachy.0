X-GM-THRID: 6250740412870295552
X-Received: by 10.129.84.6 with SMTP id i6mr6232029ywb.6.1455363913123;
        Sat, 13 Feb 2016 03:45:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.17.33 with SMTP id 30ls2131830qgc.99.gmail; Sat, 13 Feb
 2016 03:45:12 -0800 (PST)
X-Received: by 10.129.155.201 with SMTP id s192mr6426140ywg.4.1455363912388;
        Sat, 13 Feb 2016 03:45:12 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1951750pad.2.2016.02.13.03.45.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 03:45:12 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id c10so5168183pfc.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 03:45:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=fHfvn0L1E5VizdxgnOV0tOQ9GJlEbKFbciF0f5+/n9Q=;
        b=wT6/op5asOO/L4D15pdCemVhPo9WruaSe2jffYUXP1lqQ9SxW9rPeQFAhY+0E4Z3Hj
         dUgd+OZjg+Zvexf4UGfmQ1KQmkBjPkSOnzeO3daFzS2ueXlnanUD6xtiYveVkiGs3h6Y
         GdaLKA6BFGwdfsvQxDgE8e8vqzPc2n0/Pc4feevO0Vb9Rk6p1piacmql7O7iFCISpGK9
         bF3FGWATJ8eJLloGCgMCEhMAU/g1XiEcmBP6PaVvE1eAlm1i10RdBVE/x+x0Hb3M4dR1
         OeH6AdcswBUgm06nrwHeWvP7iHrW4GqGmv3XtxSToV/gRwwRxFgUuyRK+fqsAfh4p6I4
         DNcg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=fHfvn0L1E5VizdxgnOV0tOQ9GJlEbKFbciF0f5+/n9Q=;
        b=ZhygcDOc5dVmP/dJD88edZAQqByQYS5rqPfzBpHYQCoafcAY/+o9ena1IXSd5ULaFR
         ncrkTRnzXyh8YfAb7DDCW5uAZVh+e7h9c5heZOpEy0h6FDcCRY+0xE+L9yyLeNouoYz7
         98s9sDQ7eYP8dXbuSI4rGhYNOnjWeRuTl5Huts4vC4YRBLIIvBwBFNeiNA8Oflglz7Ss
         SEmxC8e8ecFg+hxj1rkfvFjA1juq24HpHsU6d+s4SshHk7xJUnPhojszlLsWx51Me/Ad
         bR62Y5BQj87S7eUmlVa4VGvhwdWO058pV06UvUemoV1srGqjR3CcrilKGFrmep4bYDRQ
         1CvQ==
X-Gm-Message-State: AG10YOQu2Rv66vMWayu+wbt81LHjJBwncsXaMBIY49LfJLQmLkp1vc//NVgKELnw8xdzUg==
X-Received: by 10.98.34.84 with SMTP id i81mr9076461pfi.160.1455363912263;
        Sat, 13 Feb 2016 03:45:12 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id f21sm25775215pfd.6.2016.02.13.03.45.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 03:45:11 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] staging: wilc1000: Fixed a return coding style warning.
Date: Sat, 13 Feb 2016 17:15:07 +0530
Message-Id: <1455363907-15077-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

Remove unusefull return at the end of void function,as warning generted by
checkpatch.
WARNING: void function return statements are not generally useful.

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/wilc1000/linux_wlan.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/wilc1000/linux_wlan.c b/drivers/staging/wilc1000/linux_wlan.c
index 54fe9d7..5ba600c 100644
--- a/drivers/staging/wilc1000/linux_wlan.c
+++ b/drivers/staging/wilc1000/linux_wlan.c
@@ -1120,7 +1120,6 @@ static void wilc_set_multicast_list(struct net_device *dev)
 
 	wilc_setup_multicast_filter(vif, true, (dev->mc.count));
 
-	return;
 }
 
 static void linux_wlan_tx_complete(void *priv, int status)
-- 
1.9.1


