X-GM-THRID: 6206327457482539008
X-Received: by 10.112.202.165 with SMTP id kj5mr4097379lbc.5.1445033094323;
        Fri, 16 Oct 2015 15:04:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.212.195 with SMTP id l186ls207190lfg.67.gmail; Fri, 16 Oct
 2015 15:04:53 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr4086420lbc.23.1445033093764;
        Fri, 16 Oct 2015 15:04:53 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id h2si172680wiy.0.2015.10.16.15.04.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 15:04:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=aybuke.147@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id gb1so26262136wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 15:04:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=rDrFu7oghJBDpUtzd0dGno0Lp0VmgUVwH0srPlNn+54=;
        b=wE5kMTVajLPisxUQzSLfap7lJrzqM6hONbUbY8OulyQTu/KOR2zuqcMAPv45d7o6zV
         daN618Gu+FE13Uw3Vp6ilBS1Jz4/Tm5FDGSG7pDjC+d5OPNSpG8idv+GCFpwkw36+lrw
         qMWF7bbMwLP+/1FdFgWSaWLbmvY5CZmwkOpwH5qtYdkO26RlWfLwAH8K6g53zyMejiS8
         u7TxS0HYeh5I3ofeMFKekAHEX06MZSw6kzGHmAGNU6rSDCToppy7PNYDnxaAuNtp6yaD
         htG+dHOfALG1p+xFm6/mjAeuD4nRe+84ryK20Ez7G81zbC59H059fBCOXv7O0wZMgzA1
         +CIQ==
X-Received: by 10.180.72.16 with SMTP id z16mr7201269wiu.19.1445033093661;
        Fri, 16 Oct 2015 15:04:53 -0700 (PDT)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([88.247.179.54])
        by smtp.gmail.com with ESMTPSA id vr10sm16257597wjc.38.2015.10.16.15.04.51
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 16 Oct 2015 15:04:52 -0700 (PDT)
From: Aybuke Ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Aybuke Ozdemir <aybuke.147@gmail.com>
Subject: [PATCH v2 2/2] Staging: sm750fb: Remove multiple blank lines
Date: Sat, 17 Oct 2015 01:04:33 +0300
Message-Id: <1445033073-10154-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>
References: <1445033073-10154-1-git-send-email-aybuke.147@gmail.com>

Remove multiple blank lines. Problem found using checkpatch.pl
CHECK: Please don't use multiple blank lines.

Signed-off-by: Aybuke Ozdemir <aybuke.147@gmail.com>
---
Changes since v1:
* it is part of a set, was re-versioning.
---
 drivers/staging/sm750fb/ddk750_help.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/sm750fb/ddk750_help.c b/drivers/staging/sm750fb/ddk750_help.c
index d20cd92..2982a7b 100644
--- a/drivers/staging/sm750fb/ddk750_help.c
+++ b/drivers/staging/sm750fb/ddk750_help.c
@@ -13,5 +13,3 @@ void ddk750_set_mmio(void __iomem *addr, unsigned short devId, char revId)
 	if (revId == 0xfe)
 		dev_info("found sm750le\n");
 }
-
-
-- 
1.9.1


