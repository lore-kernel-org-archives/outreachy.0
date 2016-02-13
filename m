X-GM-THRID: 6250675847475232768
X-Received: by 10.182.92.226 with SMTP id cp2mr5532862obb.19.1455348880431;
        Fri, 12 Feb 2016 23:34:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.200.232 with SMTP id jv8ls1032951obc.53.gmail; Fri, 12 Feb
 2016 23:34:39 -0800 (PST)
X-Received: by 10.182.250.233 with SMTP id zf9mr5565204obc.5.1455348879025;
        Fri, 12 Feb 2016 23:34:39 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id ui7si2219293pab.0.2016.02.12.23.34.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 23:34:38 -0800 (PST)
Received-SPF: pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of rakhish1994@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=rakhish1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id yy13so4752527pab.1
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 23:34:38 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=5HmSbQWSYIHy0z6q8HndsjdJtOiIwiGI2Qieu2ukwP4=;
        b=j4nd7TKenkvyqRsrRmUYVZmNdhCWkUTqm1fw/535TFT5PymVbRTAunt/25fqWSnxQC
         SWXIbozTGPghstqR8v7LnFNR30dxwsYy/lh37GN+eGsAheMLrqgiQNCDYEXr2tLt40E2
         CgoJpCQ3dVV2U6FYYtXfNAudFhdw1Sgl9LgitR1AeXWDtOVMt/aLFoWf20JYhXBW98gF
         619mZ34eBMMLsbVk9AmaIM2jNvYz78ei0tpaYE1/n66j1Gf4kQgiLOTkO1pfHuceNyn6
         9Uakz7tFaWyE1qP74wQ+zL39ncYFDkWMCyKukyD5P21YeTFW8JnSoVn4nRaqoLraprJh
         Xm/w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5HmSbQWSYIHy0z6q8HndsjdJtOiIwiGI2Qieu2ukwP4=;
        b=AQe/m3yFULuMs4dtMGyYkaojtw6/PJg8vb7EDPDuZRL29ZM1gMKXL/mkrg5Y9LSItq
         ILc8vZsCkWvFmu7tR2+uXQf7NPPJ09GLdtyv1AfVrogiPFgGfpxysIiDCtBm6CnzX5dF
         DfRRPeW3FZU1LZ25WhfPJEIrgbgJgVBmzR3HbZyIMP9jbxlV4wHgA2Gu51G2ZNG6STa+
         tx+1iEn2PauU9aBZ/QJAYx6yJGjYfi/wjcsGBC8h/yVRbEZYApXW0sRE4yFaymaj6owE
         82kvUMQlITDQ8aLGKXTc6AF0y+o7En0dITAu1QPBEE3Ge7YpJwNJxBg3Ttyx7Wc3zhax
         bDdg==
X-Gm-Message-State: AG10YORr64nmhvUJ/MbsgefjvFeeBq/Kj+l5q5jcApsHP4MBaadGOjoXVFhf5F8zqL4c6g==
X-Received: by 10.66.100.228 with SMTP id fb4mr8043040pab.84.1455348878904;
        Fri, 12 Feb 2016 23:34:38 -0800 (PST)
Return-Path: <rakhish1994@gmail.com>
Received: from rakhi-Inspiron-3542.4.2.2.2 ([182.73.140.109])
        by smtp.gmail.com with ESMTPSA id yh5sm24086463pab.13.2016.02.12.23.34.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 23:34:38 -0800 (PST)
From: Rakhi Sharma <rakhish1994@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Rakhi Sharma <rakhish1994@gmail.com>
Subject: [PATCH] Staging: wilc1000: Fixed a coding style error of preference
Date: Sat, 13 Feb 2016 13:04:32 +0530
Message-Id: <1455348872-8892-1-git-send-email-rakhish1994@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch fixes the following warning: __packed is preferred over
__attribute__((packed))

Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
---
 drivers/staging/wilc1000/linux_mon.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/wilc1000/linux_mon.c b/drivers/staging/wilc1000/linux_mon.c
index e550027..284dfb0 100644
--- a/drivers/staging/wilc1000/linux_mon.c
+++ b/drivers/staging/wilc1000/linux_mon.c
@@ -15,14 +15,14 @@
 struct wilc_wfi_radiotap_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
-} __attribute__((packed));
+} __packed;
 
 struct wilc_wfi_radiotap_cb_hdr {
 	struct ieee80211_radiotap_header hdr;
 	u8 rate;
 	u8 dump;
 	u16 tx_flags;
-} __attribute__((packed));
+} __packed;
 
 static struct net_device *wilc_wfi_mon; /* global monitor netdev */
 
-- 
1.9.1


