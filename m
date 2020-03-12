X-GM-THRID: 6803294715110227968
X-Received: by 2002:adf:f490:: with SMTP id l16mr11273702wro.150.1584015487014;
        Thu, 12 Mar 2020 05:18:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls2391370wmf.2.gmail; Thu, 12
 Mar 2020 05:18:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsJxQx5/xykjl6uOu0gEjGYDGjC2P0+Fz1s3rabafHFGlfa6tzUlziuu5L8Nc9kSkDiiy/q
X-Received: by 2002:a1c:13:: with SMTP id 19mr4767829wma.183.1584015485493;
        Thu, 12 Mar 2020 05:18:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584015485; cv=none;
        d=google.com; s=arc-20160816;
        b=pxOThi8taqbrXezTDb6hFx+saBhfM7oiUZjMc5Fsvv/dPUE61WB28q9c/ik0HLA9Qz
         EV3+XNCMe3T7shwTSXTcvxHoBGIqCBYJpvI9vAUnpUX5fR+r3BpXJbIEbcKW70zhudyx
         YO/dk0h0Lapw36lrPmnEygL5wb3QG6MEpAJ4FR6vQ0mRdMNtTI8jA1u+ay++SNsvVpT5
         V/eL3iHNIp8ySk7GItDE/3549XhILazs1tGYoLRoerf+okqw82DmCXREqAxj4H/+9RGq
         zORYANbSWDH2Eg4WP4IPH7TEu4RU1AJmoG08uU2meF16i4yZowdVBLCSqchvdvppk+4o
         3feQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=axL5K4bggF4jf+hv+gIt4pU+eJtDLjjSfkkNYb+DXic=;
        b=P+CyT/uzQ97lDtMgCAim0A8NVHJOtEMfh7vU+fz/vhN0v5sISsa88NR+Giq6B/urGy
         rl24BXvnh0KNLtzij0Sq6LAazTrgwPJLeCHPierfppAGWhDoOocGlqtBqMuff+RQtFph
         0m+UQqqCmGPELBQq+lPawn4T77i3rcPDzuJYEoQLRhieXTmp4452jVYkSLTXDEmV7u+o
         dchZDDs2qntnw5kNXNFYD4F6VRYIzBfQKK/sw4r2eNXPPaRWypFuH/mh4nQslbIxPVZe
         IIgQTGSVljWpofATtL/xgFTr1ssy9o/5iOHgTd+pIqKnV5MEfkHg1d9UhZgiwbGKVESY
         LEsQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=cU650Mok;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x443.google.com (mail-wr1-x443.google.com. [2a00:1450:4864:20::443])
        by gmr-mx.google.com with ESMTPS id l17si313453wmg.0.2020.03.12.05.18.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:18:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) client-ip=2a00:1450:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=cU650Mok;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::443 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x443.google.com with SMTP id x11so2389981wrv.5
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 05:18:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=axL5K4bggF4jf+hv+gIt4pU+eJtDLjjSfkkNYb+DXic=;
        b=cU650MokX2YqDfAyEiYlOLqoGykVRyZbj5nO/CNHwvxLmqi20AcdeJO5C9Cag/MOxA
         1324uf2CZCKnBgmaOQgV9e1CU16GNchN0YnmMED/wu0NL5TGbypelQLJPDGbUt4aItge
         VrWPZrV86oQCXMYeTOHOdvL048bloKI7Qi8pk=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=axL5K4bggF4jf+hv+gIt4pU+eJtDLjjSfkkNYb+DXic=;
        b=ol+i5xGm9wHz6zyfVRoto1oXfKoHIAH2eI0QXHk9aajvS6tJT5mdSRGbfXviibaZLm
         h10teSU/h7c03+wh2HZO3hk4gaoaYF1WMfpEHSA0CC7AWQbosVykA51iSKyI73U5+X22
         8EvbeCEcGPsH7Zovhgzj5LQmLTVCn2SzuBjVghHzrDv4PcwHlbcBgFJL5/Gsav4RJnEL
         NRlQLoBMlYiW9f6TwMRiFqq7yrynvtE/wNRpmJrfMDldCih6we+yKrGOtDRzuqvE52IB
         Xy/47DAlXy1Y3EVobfY0dFQN3rptcxcOx7zdk79TRWsePK20ZO290irnAXngz8ndR4w1
         zzog==
X-Gm-Message-State: ANhLgQ0De/3UbGRAAmPZENlQh4SJ7CSQkHkoXBdOTiSKFw/4cm/C6IcK
	ZEsDZ113anTAx132pd4whtm6K27w3QXcqg==
X-Received: by 2002:a5d:67c3:: with SMTP id n3mr11051952wrw.156.1584015484943;
        Thu, 12 Mar 2020 05:18:04 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id t193sm12873100wmt.14.2020.03.12.05.18.03
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 05:18:04 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH] staging: ralink-gdma: ralink-gdma: change variable to a non-volatile
Date: Thu, 12 Mar 2020 13:17:56 +0100
Message-Id: <20200312121756.6799-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Change variable declaration volatile unsigned long chan_issued to
unsigned long chan_issued

Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst

Issue found with checkpatch.pl

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/ralink-gdma/ralink-gdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ralink-gdma/ralink-gdma.c b/drivers/staging/ralink-gdma/ralink-gdma.c
index eabf1093328e..8d1b81f720fd 100644
--- a/drivers/staging/ralink-gdma/ralink-gdma.c
+++ b/drivers/staging/ralink-gdma/ralink-gdma.c
@@ -122,7 +122,7 @@ struct gdma_dma_dev {
 	struct gdma_data *data;
 	void __iomem *base;
 	struct tasklet_struct task;
-	volatile unsigned long chan_issued;
+	unsigned long chan_issued;
 	atomic_t cnt;
 
 	struct gdma_dmaengine_chan chan[];
-- 
2.17.1


