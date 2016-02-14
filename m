X-GM-THRID: 6251014829496074240
X-Received: by 10.182.97.167 with SMTP id eb7mr9993956obb.16.1455427831351;
        Sat, 13 Feb 2016 21:30:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.55.103 with SMTP id r7ls1198836obp.34.gmail; Sat, 13 Feb
 2016 21:30:31 -0800 (PST)
X-Received: by 10.182.135.169 with SMTP id pt9mr9407617obb.17.1455427831059;
        Sat, 13 Feb 2016 21:30:31 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x241.google.com (mail-pa0-x241.google.com. [2607:f8b0:400e:c03::241])
        by gmr-mx.google.com with ESMTPS id ff2si2281873pad.2.2016.02.13.21.30.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 21:30:31 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) client-ip=2607:f8b0:400e:c03::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::241 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x241.google.com with SMTP id gc2so478338pab.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 21:30:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=34iqCdqzUaDa6bCThXCS0WgVIe6fI1OK2eQC7NOqYEY=;
        b=dYyxVmoILI9Y9+7VZqn3x9cltcdM8UU4HCLDaIPlkQhXshuLX9ZGCkAhLH4lpLDLsS
         pRl5zOxDFZt1u3LncCrOoWhvdwC5uLlgRu/8cNe45dEcBq/2BwF2bK3bU8kFw7iow46F
         MUIziTFWKQknQidbGB2iDIf2i896vTGE7eNJ7cQPK0rpFV8tOQj7ixO4h84o4pzeVwYd
         8fqGvzLXyGrdNq9pxJUSCqrlxww7n8J/9u55ZEHUeenMNMg93UQe2/amfuMLOmaO9zrM
         a1ZRiFkZbHrl0EN1MNMC+bU0m23lbiabJJhqU8uKwZheBzD58pDkD5xFUYQnB4J+lUHt
         Pycw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=34iqCdqzUaDa6bCThXCS0WgVIe6fI1OK2eQC7NOqYEY=;
        b=Fsh3CXSV+Zo/93w7PnmOG4yCHsV9u4psvZM9v/2aMxVNnzeSCK2KhpBOorr1Rw4wxC
         bNPjo+8ZHp7c2aenlC06y1MYlKmvH2/xuD6nJZ+o3nw6b/+0zpMN8jWkaDOgO+mlKwGo
         6ODQCrfsCO6wKUut9ODgQxZ3neVcho8Jxm0EHtL2IzbJZangnqqwyW2c8upWjO5rr0/s
         VCrFDTvJia0ruak0dSfhD7FDKYXue7bI357zRpFkhR2cNT03y+xTl94Yo5a0PNZ5aVw1
         /+21UJFeLf17ymtIvBUIvxgbdmWqw3L0CR6wd6DfWG9Dvlyn/1wqL7RkF16B7Nskce8v
         pyyA==
X-Gm-Message-State: AG10YOR0RPQNcXtJK6yEK4j+MT99WCdYpKgBoz1+hQyCSpHI30VjJL6p37GaM1u2sbBrtw==
X-Received: by 10.67.1.237 with SMTP id bj13mr14383021pad.130.1455427830950;
        Sat, 13 Feb 2016 21:30:30 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.130.221])
        by smtp.gmail.com with ESMTPSA id n4sm29528199pfi.3.2016.02.13.21.30.25
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 21:30:30 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 14 Feb 2016 11:00:11 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH 1/2] Staging: rtl8723au: Remove unused macros
Date: Sun, 14 Feb 2016 10:59:49 +0530
Message-Id: <77ddb346efee19873268461a7fe6019f99851c41.1455427132.git.bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1455427132.git.bhumirks@gmail.com>
References: <cover.1455427132.git.bhumirks@gmail.com>
In-Reply-To: <cover.1455427132.git.bhumirks@gmail.com>
References: <cover.1455427132.git.bhumirks@gmail.com>

The macros PlatformAcquireSpinLock and PlatformReleaseSpinLock are
not used anywhere so remove them. Used grep to find occurences.

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
index d46d1c7..33eabf4 100644
--- a/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
+++ b/drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c
@@ -80,8 +80,6 @@ if ((BTCoexDbgLevel == _bt_dbg_on_)) {\
 #define PlatformProcessHCICommands(...)
 #define PlatformTxBTQueuedPackets(...)
 #define PlatformIndicateBTACLData(...)	(RT_STATUS_SUCCESS)
-#define PlatformAcquireSpinLock(padapter, type)
-#define PlatformReleaseSpinLock(padapter, type)
 
 #define GET_UNDECORATED_AVERAGE_RSSI(padapter)	\
 			(GET_HAL_DATA(padapter)->dmpriv.EntryMinUndecoratedSmoothedPWDB)
-- 
1.9.1


