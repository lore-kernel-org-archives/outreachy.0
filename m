X-GM-THRID: 6661107741495394304
X-Received: by 2002:a6b:510c:: with SMTP id f12mr10717801iob.16.1551141407588;
        Mon, 25 Feb 2019 16:36:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:5917:: with SMTP id n23ls3642837iob.1.gmail; Mon, 25 Feb
 2019 16:36:47 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbPbyidjZ83yLjqI2MbVEFpiZ0L3VWhR58NI+pXrQDhbfXaCacc4PuLIp333lRb1gUOP8Wf
X-Received: by 2002:a6b:b281:: with SMTP id b123mr10743572iof.39.1551141407108;
        Mon, 25 Feb 2019 16:36:47 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551141407; cv=none;
        d=google.com; s=arc-20160816;
        b=AqbbacgFHlX6lyM9JpbZgEMLzr7ayw8/JkRPQ0tPPPSPxM8EiZelASiE7QF7x0sB0l
         fOskk/V56VA3FZgWafS8beP2o0+hyVVyjx6ThMWhvLYstLLSS8BimDglwsSRJHUAs2HN
         L1w6DgJBMjXCD7fyEX9r27ZsWvtePncXQ/eamvG2ogMPQ8QUMCENwyKDnTNb24/1LCFX
         MBc7AvN90UqbxiuN5oF6DqJeX+VKkhqfcGnPF1UfLApGueeOD1K7YYWI2BxiGLkiopB2
         Vz7qiUuCiY8+kU4MuU7jhThQt6++aqYUTNOxkTL1oJk8tVXClbXyeste8/6oBvNX95yg
         Ow9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=b+uK7uXOopFDOFhou9GmBpNm5GIApFhm9q0P5LRLQX8=;
        b=iJaEfgUP8CGNqcLKVNNMf3xx0jFo2qo4vDvH/kKrTDA1lhU7WIFQ6JRx9XukLSYa8R
         wXbtpdQiEfqzv82ObmqkP/I9omDhBoCV+ojLirl3uMuA98GOgCdarzMv983rivE75s/S
         IIg5FB84y8X6jReiFO2r+MJHTqO5KW7uyVJZ+IR0s1mPGK/R9WRqvB/Ps/QdiAQiBvc8
         6/+S4d02RDDhe22/y/VEUP+uSewrYTIYbLwFztMgq/g919EN/YPkOlJNPTqv1duHvwcF
         fW1XzRM65p5rjrkkoFgei6WlOHz5y3SJcFbHHpm+tO7sj5g/WRbOgdZ2fDgY67zTISVk
         b/6g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQdoSIju;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pl1-x643.google.com (mail-pl1-x643.google.com. [2607:f8b0:4864:20::643])
        by gmr-mx.google.com with ESMTPS id c191si649703itc.1.2019.02.25.16.36.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:36:47 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) client-ip=2607:f8b0:4864:20::643;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IQdoSIju;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::643 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x643.google.com with SMTP id c17so2133978plz.13
        for <outreachy-kernel@googlegroups.com>; Mon, 25 Feb 2019 16:36:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=b+uK7uXOopFDOFhou9GmBpNm5GIApFhm9q0P5LRLQX8=;
        b=IQdoSIju9r+DHsoYSgDYEY4rxzpEzPLZYP0pvKjIStL4wYlbXwh1CigpGUzF2zKJ9s
         R9XVIPVhrZtb4xTZQuefJtCdNDLcS/7GUVjv/zfUDDtntTB9BwXoNn7EltolOSNcx4qf
         5r5q/pOCUHGt87HlpnOmnGn0upJWQJLZWJ0Nrn/I/aiVrkrOa5YZ+svYdEmSs5Y2Fc99
         uUm2aUVCh0GcTeGVdbrU9SBrAWz9YGhHNVHHl6QlhUe3FGXF6pvhlVrUnc/3fPf15Jk8
         rSP7aGLwZXbxZG+Lo4sqbCs/Ldp2mb8m8nB4Zplu9hVd9/HTtTO4iLIyR30SJDBRpHif
         ezHA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=b+uK7uXOopFDOFhou9GmBpNm5GIApFhm9q0P5LRLQX8=;
        b=FvGgfIiQH+8rF3FIwVvM2yZ7d18UOSG2xzAb9g8j/TCB6G20vkdhmypIBKwFBB1KYb
         xlegafQ1sqaYJlNrEq2cdsF/kLfqjmD2JaGkkn66YQs5+8OpDP+mgHhYe8LjjoGgG6nH
         o1RmvOTE+6ekjSLqswNRXoif7tM9BVVaGv9GsZ/Bulin57cO4BoAMLqr0wKr9zEeFk0G
         EjoJ49HO6gj74ceIcsKTMk+sXtL1ktFyiGPevu+fvtQ5v54eg4YquyejmGgQ0d/3HLWl
         izLx+pE7u4uJWvme9+gKFNUNqDZhqitRmaPj1mlZrDAcv8NEFKOyjxuKWSHP292AkmGU
         KUKA==
X-Gm-Message-State: AHQUAuYwDMQldpwBCuH+N0JAMs/O8MtvBwTrNEVSFvIqw2uVCyIoVIkw
	6uQRWGMBxd7/bIe90Nc6uVN8xKDqNO8=
X-Received: by 2002:a17:902:b483:: with SMTP id y3mr16853737plr.114.1551141406361;
        Mon, 25 Feb 2019 16:36:46 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b70sm17965861pfm.6.2019.02.25.16.36.44
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 16:36:45 -0800 (PST)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Matthias Brugger <matthias.bgg@gmail.com>
Subject: [PATCH v3 2/2] Staging: mt7621_dma: Prefer unsigned int over just unsigned
Date: Tue, 26 Feb 2019 06:06:27 +0530
Message-Id: <20190226003627.15650-3-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190226003627.15650-1-bhanusreemahesh@gmail.com>
References: <20190226003627.15650-1-bhanusreemahesh@gmail.com>

Replace 'unsigned' with 'unsigned int' to be specific with data type.
Issue found with checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 20c8879d4979..7b2cdd2829a5 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -191,7 +191,7 @@ static inline u32 mtk_hsdma_read(struct mtk_hsdam_engine *hsdma, u32 reg)
 }
 
 static inline void mtk_hsdma_write(struct mtk_hsdam_engine *hsdma,
-				   unsigned reg, u32 val)
+				   unsigned int reg, u32 val)
 {
 	writel(val, hsdma->base + reg);
 }
-- 
2.17.1


