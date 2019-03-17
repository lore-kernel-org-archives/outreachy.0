X-GM-THRID: 6669342571581407232
X-Received: by 2002:a1f:f8c1:: with SMTP id w184mr8105294vkh.13.1552827323463;
        Sun, 17 Mar 2019 05:55:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:9752:: with SMTP id z79ls137406vkd.3.gmail; Sun, 17 Mar
 2019 05:55:22 -0700 (PDT)
X-Google-Smtp-Source: APXvYqywJKb37sH72dRh4oVeTNRZ2nZ9cOUcGZVeHgDRRVpxj5gYA+zsHD/BzVxv3SsgsifIijYw
X-Received: by 2002:a1f:2e11:: with SMTP id u17mr8115029vku.22.1552827322665;
        Sun, 17 Mar 2019 05:55:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552827322; cv=none;
        d=google.com; s=arc-20160816;
        b=pehM/aCGE3i8xcwBEQI8U5jm/Siz6b0NXQ9AJZ5eg2y5WBXu2YWwB/IDyUIURgBof9
         1+FJ06WuRYAZHA5rXaD/uL9RqE6Y8mb4ezco0XVpSaaj5wCCatRfwwvCjKnz1SjaYzK+
         dQxMlUuedO/RPjOS63zDH4YIA05dpO2M3UbLQnZDr9guoCE6dN9NlP9mdlveByB+U+k5
         u0eUB0pY9EFNUFDwiJ6WprXVlx9VIIk60/8ZCDfSdxQv/QCSLT8lYjb9d+LOMS+Q1mNl
         sLjq1ugQEtP9wMcaimHmLM0juHgPnljpe0Xefbz/wwWR/ptPoAuv7BUEqqhQmyYNuwcL
         UdXg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:message-id:date:subject:cc
         :to:from:dkim-signature;
        bh=Grdaz1TpFA3Sp7xnPLYnJ6husBDK+NZpFTAA5V97e9M=;
        b=G8CgRyCpKWCh0PksNTQ0p5tZaxBW7ktAp38pc1Dzv0X1eRUGuxIyZabifSYOE7D/KQ
         G88kQ+DvTuWTspkF6lPA/NvsbE/wHCzLpm1H4WPBjDcSZWjr37XDyko05OAPZAxJEDL7
         z1+YTK3e36WHapIUxdyVwUoaWsSOU7B05GBH6bjJ6OXvNGiJMmQhWom9kV9AYYk8Im0W
         Y9Q9d7LBRN8YDwnRFkGe/f4L5nxyeRsPS5pnVnnmmcjMWNhAgr2Kw8MtRbVtQXjIO0iA
         wG0Lz/2pttio4yECZgZ0PDVUNx7/+3sVhF8fkx3OGTCAkeMhadZhfelNDhNca5euQw9B
         ixaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FU+ieH7d;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pg1-x52e.google.com (mail-pg1-x52e.google.com. [2607:f8b0:4864:20::52e])
        by gmr-mx.google.com with ESMTPS id k19si491565vsm.0.2019.03.17.05.55.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 05:55:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) client-ip=2607:f8b0:4864:20::52e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FU+ieH7d;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::52e as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x52e.google.com with SMTP id h34so9484509pgh.11
        for <outreachy-kernel@googlegroups.com>; Sun, 17 Mar 2019 05:55:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Grdaz1TpFA3Sp7xnPLYnJ6husBDK+NZpFTAA5V97e9M=;
        b=FU+ieH7dBINKvFAzrfukj1Zw/RE/pYBTQtS7y+KrOvsoZ8APxNiLBrinsIk+ZIE11b
         kOp7sjxrCoVawL9TiBg3TpX/I020E+jjzIHG9Ji60iCHbXFmAEPfiTeKCUqxnHdnm1R4
         FXoJ4027Ohzm27SEdGI/4eQfmphARfMasZncXX76I2Ch8R9Ahi36/3ycnNWBnP8eFdsX
         BD4Mq12XxuqiMN/3BMke2FP7/td4N0y3uEYZ+Lh30OuObw916X1eBSGFgs+A8Tg4y79i
         z7dOBC6o/pJKUbrU1k90MGRdXWLzGGRi3/IByBmTlimRJabMxTtQg0CCEmWB78NZ8NXi
         476g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
         :content-transfer-encoding;
        bh=Grdaz1TpFA3Sp7xnPLYnJ6husBDK+NZpFTAA5V97e9M=;
        b=mdCoyypv5bzwbqGffAqFjYXWnyB3/FBM74f/DUCjVGt7p9xNEztn+LskzKHRJUMlyt
         9mdi3xsT408O5/DA3GC6qg/ff7uy/Ytn7Hw7zBTfpYeIaTEHkH3jV27qsVrXce9Tj7ec
         SEuWSPheNPGKccIJIkAtbIowFJ4qmrCcwUEKMziU/zTVsJlQvlgwKn/UBGNijZjs1Bs3
         DxHVfNiYPG9o+NOCgg5eizB1OFge6ckpOAW2NT62BTvPWWfTO8B+vJNnUQfaa9OxUqGG
         APPaeJp+QNLjC3maG+Eq5BrW+m7QoYDESeiTuDcm+/TxD+WZoGLoWUwO+GrGgDLPYuvo
         A1GQ==
X-Gm-Message-State: APjAAAWh4EXPphatl1c1UfXpPCUIccuwQTPzBO210tLCvJ8NLqn9Vxit
	aAAeD89oQDI/ztsphA4iTDhrwFLP
X-Received: by 2002:aa7:885a:: with SMTP id k26mr13977977pfo.70.1552827321984;
        Sun, 17 Mar 2019 05:55:21 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([49.35.112.167])
        by smtp.gmail.com with ESMTPSA id e8sm9949728pfn.103.2019.03.17.05.55.19
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 17 Mar 2019 05:55:21 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [PATCH] [Outreachy kernel]staging: greybus: dt compatible string "usbffff,2" documented
Date: Sun, 17 Mar 2019 18:25:08 +0530
Message-Id: <1552827308-3539-1-git-send-email-payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

Any compatible string used must be previously documented. For the same
compatible string ‘usbffff,2’ documented in
./Documentation/devicetree/bindings/vendor-prefixes.txt file.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 Documentation/devicetree/bindings/vendor-prefixes.txt | 1 +
 1 file changed, 1 insertion(+)

diff --git a/Documentation/devicetree/bindings/vendor-prefixes.txt b/Documentation/devicetree/bindings/vendor-prefixes.txt
index de6f2cf..62f0b03 100644
--- a/Documentation/devicetree/bindings/vendor-prefixes.txt
+++ b/Documentation/devicetree/bindings/vendor-prefixes.txt
@@ -422,6 +422,7 @@ udoo	Udoo
 uniwest	United Western Technologies Corp (UniWest)
 upisemi	uPI Semiconductor Corp.
 urt	United Radiant Technology Corporation
+usbffff,2
 usi	Universal Scientific Industrial Co., Ltd.
 v3	V3 Semiconductor
 vamrs	Vamrs Ltd.
-- 
2.7.4


