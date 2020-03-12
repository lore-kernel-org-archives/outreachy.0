X-GM-THRID: 6803294176512311296
X-Received: by 2002:a19:ae03:: with SMTP id f3mr5334695lfc.28.1584015362838;
        Thu, 12 Mar 2020 05:16:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls830297lfh.5.gmail; Thu, 12 Mar
 2020 05:16:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuzQc5zyiou3CNeTodMSO3dYlN5iJYCL8lqsOX/rDmWlDW+qRC7xWMNbVii9Hb5rJGqomQq
X-Received: by 2002:a05:6512:143:: with SMTP id m3mr5141628lfo.64.1584015361280;
        Thu, 12 Mar 2020 05:16:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584015361; cv=none;
        d=google.com; s=arc-20160816;
        b=Acs8ic5VXcOsyszam29BWTa+yahH1HfZFcLQPan0HrLtLfTebIO+8B1hvK2kgzI1LA
         oZ9OVk9LOn2q2iecdFoER1B6OCLCbetywppatC5xq/rWiEM3Fl/toNJgPPp+5eFHK8K0
         4q+jmO2YdwdpENF21d3x7rG3hc86V1LqxjFs4kje+gMWWZBIlbSGK8zbkJeLSu9x+jre
         k46+ui/pRGUGudHoubO4MqSUFmaTouEhlTZwpB6XMwc1kBiJ9TQrVKMCdylRENSkzHyy
         vHOF94uZm7Lg5JtwqUx7Gxaoq8vkMfJDK7qONX2lzANXOJPzqqfWTcWH41yBeRHvcvcR
         ++rg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=SBxd+VD1CEa2QoA/Gz02LOIi0o5j8IPT99gez2LMC+s=;
        b=oXAaoN48a0LlPoyDe1r7DNBkn3L2F/sIcNw+qJMY1wRXZEIh27NC5xc2JqfZ41NTsZ
         xfaFXTOPf7dI3yXac38HqE3RdAw3R5V7S6iM5YnrUB6VH5f2P/GKIgMkx3JHYCheHVcb
         zjmAK2RYf8lpMvH07XLYQwBvAYwlRgs/Uf7b0xpM9wQC9J8k7OUHUCYVrL7jiCY8XC9D
         3pCyOjQG0kJ3L60mvBHnda2fp/7PWVU4kd/o98pYTAKvM3kdPw2K7OxbZTs6x3q5EL4B
         J31RNdqK359FQ0ULsWvIcRnVSIsGk96HPQ8f5JHR2eSP6zlnh/5cY2onzahtdWZQPhFT
         OKFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=U5Eoq1dH;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id s8si294857ljg.0.2020.03.12.05.16.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:16:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=U5Eoq1dH;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id v11so7142779wrm.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 05:16:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=from:to:cc:subject:date:message-id;
        bh=SBxd+VD1CEa2QoA/Gz02LOIi0o5j8IPT99gez2LMC+s=;
        b=U5Eoq1dHgjiOcz1Jk5v1/p7xSPEGqU+gOO72fAxEu2LDc1AnYdKdvt5LjUmnbnv1Ck
         Dv/oJVaLoHBZ0uH4aEKtvboTk1k1LkNayF4YBhYQMmcXBhroWiWZQS1Yu4i+NVfp3HbY
         OCM/RGWspKqT/aj5l+Tb9Hcqs70xzGFD7bN0o=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=SBxd+VD1CEa2QoA/Gz02LOIi0o5j8IPT99gez2LMC+s=;
        b=FLJ8HlqNSZqTyLqtcpz6YDA8B6nscODl3tIyMMA1p+IHZKcWImmAibi3GnNg+nCjvl
         7s8p8gZO6pvYeX3EV2GGvzAJFM1Q5FEWNVh+9X6Yi876aMp9EwHqCPH/8MPiNb8TAepL
         6+K5gH7QKlQ9wYcSiSGSvr0SoZRxqCUQ+C7NQ6wnlbPGH4AaDYhdZfmeT5l/Rq55GFnL
         udJBA7lYRsJQruoaCEHoMIbXTNLaosxtTbZ3E793TMZZEZzbD3PhrszVsygZYeo6OcpP
         v1+g7TTvTu64xykOsucz53dSPwudgl1fB2ICmRosO1P6SaeLAd/Ea+ezrQzez925L6c0
         6MzQ==
X-Gm-Message-State: ANhLgQ0Lc8Hd0PTtsqoEbnMztwbrLc3NiSRp+sNc8MUQ9esbf21PJjZF
	FxB3WNa+yA2xubHz+pT3KZZDw+tvSPo1lg==
X-Received: by 2002:a05:6000:1008:: with SMTP id a8mr5496407wrx.8.1584015360585;
        Thu, 12 Mar 2020 05:16:00 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from localhost.localdomain (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id r9sm5136774wma.47.2020.03.12.05.15.59
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 12 Mar 2020 05:15:59 -0700 (PDT)
From: Lourdes Pedrajas <lu@pplo.net>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org,
	matthias.bgg@gmail.com
Cc: Lourdes Pedrajas <lu@pplo.net>
Subject: [PATCH] staging: mt7621-dma: mtk-hsdma: make a variable non-volatile
Date: Thu, 12 Mar 2020 13:15:48 +0100
Message-Id: <20200312121548.6719-1-lu@pplo.net>
X-Mailer: git-send-email 2.17.1

Change variable declaration volatile unsigned long chan_issued to
unsigned long chan_issued

Use of volatile is usually wrong: see Documentation/process/volatile-considered-harmful.rst

Issue found with checkpatch.pl

Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 20b898954416..e146c5bb5609 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -157,7 +157,7 @@ struct mtk_hsdam_engine {
 	struct device_dma_parameters dma_parms;
 	void __iomem *base;
 	struct tasklet_struct task;
-	volatile unsigned long chan_issued;
+	unsigned long chan_issued;
 
 	struct mtk_hsdma_chan chan[1];
 };
-- 
2.17.1


