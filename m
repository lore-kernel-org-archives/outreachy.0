X-GM-THRID: 6806439797189509120
X-Received: by 2002:a2e:9ccb:: with SMTP id g11mr6534374ljj.271.1584747758013;
        Fri, 20 Mar 2020 16:42:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8941:: with SMTP id b1ls1712555ljk.8.gmail; Fri, 20 Mar
 2020 16:42:36 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vshD+3YIbx4ZgtI7V2qd64mnjcmtTwYGOVBdWFc1kFlHOJFDUdRtltPfNB0m5CS9e4Z1w1u
X-Received: by 2002:a2e:818e:: with SMTP id e14mr7160665ljg.104.1584747756734;
        Fri, 20 Mar 2020 16:42:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584747756; cv=none;
        d=google.com; s=arc-20160816;
        b=KWFpO/8LVGQT+BqiB8JxLctz37uThXzhYI513gN6PhV5UzWj+paZkZ1Tf/MQpYOCOP
         RWy/WpK1rKVmAs0G/25qZE9Plw9uqPxDDgRsaJhxA//ys4YBCNjS5yrpNGKFLb8rhvfv
         OyLtsUmoiesj/uZZ67DZSvPwJzlULWPT2WfVpS+tlF7ffLTWZJUskuqJg7iX650BzA9r
         2xSeqlJDJNBf33LtWwebC4naBnyUUQo1jS7QHf1v60pCHGzCx5O3krHkw/80YjEiGx/M
         ks+XsLz9DVuXOAG+dcR8HilLR+qbu+MTX+UY7bgmgCddcIcx91V+saF8FJxFeoOoeDU0
         bx1A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=l7Xr1GKnylbVM1KnZWnKIjPm+9ZvmR1UoqvoCT7VAMY=;
        b=GoqEtnE3LPeeyqsiKE/rQh5fjSwzIyr8Eqq9HrtFFvGZED1l3+Nad93ZszyBp+FHsM
         AEUYoF+sdiELiN4qrv8tAopt+IBCSzb63g+yZ3NCNsOt/lx+jdKqWBTbQrbTptHri9bV
         cNUWgQl5pwMDkJH0Ga/+H8oph7P6RUncRGjJqqL6rTTcxMaeJwYuryKi7q9YKjHDuEkD
         gxhqWaAQyHoPpe4d3hzWNSvlprk0/XeNjUTGS4Zf5RiBnDnkLNT/M047O7HkT3iJVSZf
         fUytUd716v7YMXajs6i1g+uNCyFscn6Ni3VfXVwJWzNoXObIJ9s3Ysm9XyxGEiWDz5j7
         m08w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jHkU1/Wh";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <gokcekuler@gmail.com>
Received: from mail-lf1-x142.google.com (mail-lf1-x142.google.com. [2a00:1450:4864:20::142])
        by gmr-mx.google.com with ESMTPS id e4si294155ljn.1.2020.03.20.16.42.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 16:42:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) client-ip=2a00:1450:4864:20::142;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="jHkU1/Wh";
       spf=pass (google.com: domain of gokcekuler@gmail.com designates 2a00:1450:4864:20::142 as permitted sender) smtp.mailfrom=gokcekuler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x142.google.com with SMTP id j15so5885655lfk.6
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 16:42:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=l7Xr1GKnylbVM1KnZWnKIjPm+9ZvmR1UoqvoCT7VAMY=;
        b=jHkU1/WhUqmiSewuh2d5TcVbwvVj4zkhRVgb8XSdYYJPYo21lEpuHvVhKNDf4GBBbi
         pPZGaURsuqgkEnLULK71mkXr7IOFr751TVYsPFTiN+pJJehWoAmD3K6jjv8DGheSvtWz
         0UT6Qq8HI4uI2wYQu+gEdUP5rI40DF1GmCQMXtXRfYdFxcjGS8Dxzosr/El6Ivi9SNB1
         8rNnHClC8yAwOxlOIjBWMvrbd5ZiA9q71QLYO00MCvUoEF5KpQEfUG+zzV1uT21Zfvwa
         dcIRzNcjaK+KwGnb9Q5ahx6n1DTEn7B/3OAMscHy8tadyis6W0ZELQTbSYH8FJcqFKiO
         k23Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=l7Xr1GKnylbVM1KnZWnKIjPm+9ZvmR1UoqvoCT7VAMY=;
        b=q2ZvQWwTLWTDKx+L2AfLncOeFBwX6GUCzb+hXOhNtdcwxj1gQRu4KUWAiibwNQb3LE
         VzIxxmreSo2XnHPyxMsSU21Eu3oEmfo/N5qmBUlcnVqNlhYnt2cC+pj/icToFj9f1q3E
         C3lna4CXtZOFO37RhMBAQpl1rrShUWXdOEcMUEWFVkA9jxR5JsJci+1dreeqfxE6ovCi
         R9qu4vMu6ifCqDNyUC+lYsY28BZb85X0YDd8l29fQw4egoG4RNUaS28GWBrKcFVHLeOd
         Tv+9EvbiuAGubwGH/zJbiaQ+5Nu1KZB4pNV5jSFzSku5dBhkybbD812nNGfW6mcEhYXP
         jNfw==
X-Gm-Message-State: ANhLgQ2c0BExw9GUamfDh3JZUiibXfd9uYo9Bhvl0trMpNTw5qTfE5ds
	VV4J6itZV0h83e37cGrY4zZQvVy0TsU=
X-Received: by 2002:ac2:4199:: with SMTP id z25mr6902924lfh.90.1584747756512;
        Fri, 20 Mar 2020 16:42:36 -0700 (PDT)
Return-Path: <gokcekuler@gmail.com>
Received: from siyah2 ([88.241.68.50])
        by smtp.gmail.com with ESMTPSA id l16sm4137103lje.7.2020.03.20.16.42.35
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 20 Mar 2020 16:42:35 -0700 (PDT)
Date: Sat, 21 Mar 2020 02:42:34 +0300
From: Gokce Kuler <gokcekuler@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
Subject: [PATCH] staging: mt7621-dma: Possible unnecessary 'out of memory'
 message
Message-ID: <20200320234234.GA9861@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Delete unnecessary 'out of memory' message 

Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index 47f7784..14a3215 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -467,7 +467,7 @@ static struct dma_async_tx_descriptor *mtk_hsdma_prep_dma_memcpy(
 
 	desc = kzalloc(sizeof(*desc), GFP_ATOMIC);
 	if (!desc) {
-		dev_err(c->device->dev, "alloc memcpy decs error\n");
+		dev_err(c->device->dev );
 		return NULL;
 	}
 
-- 
2.7.4


