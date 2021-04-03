X-GM-THRID: 6946995103705595904
X-Received: by 2002:a05:6402:382:: with SMTP id o2mr22770512edv.238.1617473349503;
        Sat, 03 Apr 2021 11:09:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:41a:: with SMTP id d26ls5984312eja.3.gmail; Sat, 03
 Apr 2021 11:09:08 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxKnaIMgJOh1SAxz1mVXhTAJaBkbVYue4PzyOoTTnaeZQDMya7vXboCWX688M3T4XgPCDL/
X-Received: by 2002:a17:907:2d24:: with SMTP id gs36mr20271364ejc.344.1617473348146;
        Sat, 03 Apr 2021 11:09:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473348; cv=none;
        d=google.com; s=arc-20160816;
        b=t95fnT06vvrbjGiZBXQ9lk1iik0jzxm3vId9oS7OR+Sldsyyc3d3U4iyJEzuwk+At+
         yPU5XzUqUlGdcid4DSz8EYCzByva+W+jMyTMtwgnGQBI6bjnPFG2B3BLKsIlZ9hRewVr
         iLEMxVHAStJaTiIbH0+c9ApG3vDY/qRv6GS+A5iXF7q1LQVo4GlpjIXczeH0n+eLVPoi
         kdM7Dt58tMxXMnbBbAASGhji9QkneFB24iOWHEfiW27ocqQLkHipQ2yzIiirK+bTkaBl
         jLlpqXoMP5ZrcE8evsBeX8malnj7YyU5HBHHobXWUchYbwvWdxNw7thZK1cMIrOhWT2Q
         Z8oQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=t734qKFGEnK5lkG+XHQ0j+jWOw9AOKU33SnUXzxrOfc=;
        b=eveyO2XMtX00WVB6aijyjrkca34fY9Us+zGMDPH/+9I/FDVSEOKUIrLVSzMN37QlXn
         qMF6TJGRpV8YinX4VJSj+2asXkPf9FkwyjWyPv0G6l7ydDbxTSlXnKxdUFQJ/rI8DZow
         eAe/atgyyFQEfdG98WnQ1m9ngTF+kKVgPMsCMzrwnry2foPelvGoUCIGFvAnwLlChWx4
         U89TZBAx7CrQnn7pBQMSeRNbyUHLmSpaT0CnsSv5m7LNQCzAu4oAOyrvTcgVEuBGzY1n
         JXPw8WKWxvVRhht/enyhtAcGRYEP/GOVlpGyAUZ5DFU/EUTIfB5dIn/InEqwRSjyy6Qp
         54aQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mumJUhAK;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id ck26si1923090edb.1.2021.04.03.11.09.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mumJUhAK;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x136.google.com with SMTP id 12so11658072lfq.13
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=t734qKFGEnK5lkG+XHQ0j+jWOw9AOKU33SnUXzxrOfc=;
        b=mumJUhAKfW3EP3MOaJUdPWSFLHx0uAxrQz96weLn6d2EfT3wYFUbF4Mn0mM/0xcC+K
         m9x4U39GnJla0U/tzOs6f6hhPJa0aAu3sugMwgDpv7YhrHeqkp1TDGvs0nCqJ5FfjBDp
         OIwQZsFS+pkHg5qSf0zKu4AQSOUmraiMoE7tWcUjCqSBBdwzNsuaK3aj0MvflwMECIbH
         2pP85gEuB0QVNekDuJ7e1GnrV30wLrTRFR8ip3NlTjUwAFdBBjfDOHIYzNCdEVWFcIIU
         3scQmAp5A9m/h+AwN4a2w6U8Egc0AZWftrMjmRutK0xySgxZFC1qsgaOOKFrk2g23i8j
         GLCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=t734qKFGEnK5lkG+XHQ0j+jWOw9AOKU33SnUXzxrOfc=;
        b=MIHGBxXD4hfa0oKptHq3Xuy1VzNPZxNo+yx+lSufNqGk/Q+/YvzmQw0bR1jhTnuc5v
         UHJl4wCs/wJCmLPpE/SMra20hTnt7HzWToc8Atom/1DiH+kKqehCO/IfcMSOAvXTshot
         vAPrQ6b9Yp5ITPx8QwCNo4r0+13bh3+7XaAnqE47PrBiYokWZFo/cF90x5IQTFIn/aTZ
         uDMCbDySLtzTL1/EyJRCj1M4Ef/6ytuh0suuWbOT7kNYjh2CkgQK4KncdSP3II9W9eyd
         wXQxMGBgLjF+fgTj6HefEUG8WCJZ/cBDMZdDf0S9AecKwYq9vcZ/KDYL93zAwPP5Q8wq
         dazA==
X-Gm-Message-State: AOAM533HPC2Xr9aFSoWZ1yap5RqhtOaLlzFcwRCzpt9AhBuxlW0Di/dA
	2OgK7MO0jgGVzb0thFRtIgZa34VNL+tO/60F
X-Received: by 2002:ac2:47e5:: with SMTP id b5mr12410427lfp.476.1617473347482;
        Sat, 03 Apr 2021 11:09:07 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id v20sm1272136ljh.105.2021.04.03.11.09.06
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:07 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:09:05 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 6/7] staging: media: zoran: Rename 'We' to 'we'
Message-ID: <128bc601bb3787470e0d2599af07766575c6c2a0.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename variable 'We' to 'we' to eliminate camelcase.
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 49e0efcc0062..007d8855178e 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -295,7 +295,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	unsigned int disp_mode;
 	unsigned int vid_win_wid, vid_win_ht;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
-	unsigned int wa, We, ha, He;
+	unsigned int wa, we, ha, He;
 	unsigned int X, Y, hor_dcm, ver_dcm;
 	u32 reg;
 
@@ -318,10 +318,10 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	/* horizontal */
 	vid_win_wid = video_width;
 	X = DIV_ROUND_UP(vid_win_wid * 64, tvn->wa);
-	We = (vid_win_wid * 64) / X;
+	we = (vid_win_wid * 64) / X;
 	hor_dcm = 64 - X;
-	hcrop1 = 2 * ((tvn->wa - We) / 4);
-	hcrop2 = tvn->wa - We - hcrop1;
+	hcrop1 = 2 * ((tvn->wa - we) / 4);
+	hcrop2 = tvn->wa - we - hcrop1;
 	h_start = tvn->h_start ? tvn->h_start : 1;
 	/* (Ronald) Original comment:
 	 * "| 1 Doesn't have any effect, tested on both a DC10 and a DC10+"
-- 
2.25.1


