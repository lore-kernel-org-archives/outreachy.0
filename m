X-GM-THRID: 6946995103705595904
X-Received: by 2002:a05:600c:4f8e:: with SMTP id n14mr18336491wmq.34.1617473350594;
        Sat, 03 Apr 2021 11:09:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6a89:: with SMTP id s9ls3201681wru.2.gmail; Sat, 03 Apr
 2021 11:09:09 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzFsfkSq87koLT7dnsY45JGcI4GH1YkGC/KSV8HPyDRXmb8duo8dF54PDm3kbCVSof/fwLy
X-Received: by 2002:a5d:64af:: with SMTP id m15mr20828685wrp.231.1617473349285;
        Sat, 03 Apr 2021 11:09:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617473349; cv=none;
        d=google.com; s=arc-20160816;
        b=MRmbLLzxKhM9dH8hQnegha1Ofi0aRd8mnE0wf047N2WFniX3R+bdBe7JszeiFMgs6p
         XMbLSvUJID3hexg1BFItDfJ7g0sPMPOx9lfoH8JjOj0oz63jbi7M5rjkhBA5I2lTS5oo
         j2DzgFniXvL+LnNFDP6TgIhBRb/fmt4tbLK8bNgMxNjX4ktkro89L/54q3ObQUMnwGPo
         7fomSVHtH77juJYT8eC8Jwpj7Q9gqz4KtqMQuGxVTEGZQyNeJQF0aHKdDiotSuIDcm60
         mLBmQSHRaHqlXNBWu2qlMxSJVd6t6nacYNFTIgF4QUQcjTyBKkRtdQu2fIGejl5Ky84B
         mwzA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=iakHsUyxM+lHRQnNUqoKM3RMjlnWm90jWJwLczQ8GBc=;
        b=DMllZX7W7Fhf6o7IWaPfTJzqFm8RplZLQiykwRsKwekuSsKj6KSFvQnR7TTqymra/S
         Ty83tFgNBgVdIeXLbmJ2xgOxfwgMA6rEIG7IjwCEH9Jm08CGtY0OqwxO5/8uyvyZp28e
         x5Euo1vhcVGXECxYCFPM6D3LD70Ycj4YJqh+TgvO+iCnJZ4qYkxGTwwPD8KdDadi36rk
         v8x//y9J1hw6WIhcnZG/m0MXbid3evwqgmIekXFH+I9Awjgw8Puj8ixFGNTSt02tLOPi
         V8M1TOeOnLnAvw8Fzhu1rrRF2CCq2OxdDDHogJXb6XH5SAcrWENc4E0v+jqEOad7u8ib
         Qh/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REKzfIMS;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from mail-lf1-x136.google.com (mail-lf1-x136.google.com. [2a00:1450:4864:20::136])
        by gmr-mx.google.com with ESMTPS id q145si1285085wme.1.2021.04.03.11.09.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 03 Apr 2021 11:09:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) client-ip=2a00:1450:4864:20::136;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=REKzfIMS;
       spf=pass (google.com: domain of zhansayabagdaulet@gmail.com designates 2a00:1450:4864:20::136 as permitted sender) smtp.mailfrom=zhansayabagdaulet@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-lf1-x136.google.com with SMTP id g8so11704612lfv.12
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Apr 2021 11:09:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to;
        bh=iakHsUyxM+lHRQnNUqoKM3RMjlnWm90jWJwLczQ8GBc=;
        b=REKzfIMSxu75FMS0vPW083LBOEofNy1L0DSWLf2a5noReX7W/17BBYn2NrTC0THspE
         uVRT++z4G1WbGhksXMAYh9pfZRKgkXifeWLYrNGgCE79MSjchNSejsM95AizztVWTWlO
         cq8TvFGubvdRS8uwy/ZfOjIMGk0u4KINn/b9ilOX7wLYNkcqXPRXuGoWtGjJtndZWhzr
         xUlsavfgmE6Aa2gQZkmmk3/w/bXXtZ+fVwp4L6nV68jXlyTuvVpwV1OyHX38P7jX/OOe
         XFJNrg6USY2ytR5P84BXIP2W+sOqdPKXqKATR9CizWC6jWP1aLdcbOwQB9nrLpbt14p3
         gbsw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to;
        bh=iakHsUyxM+lHRQnNUqoKM3RMjlnWm90jWJwLczQ8GBc=;
        b=iE2OdKqGStIgurayDu036x7ZMoh1fpmavnb3yhL5EWX9cwZtK7T8rWbwHrOYWwSZqr
         wWBATYFoExAzDPSB66JbLtXC8uE+f8axF1Dp60tcEJ2g8Qhj0hPrKmdAXGHmr9Qu4Mhx
         HfKVC8VoCv5Z0m2ZxVBvPZlTL9Rs+FH1Hdd/iJfmx+JzgaAQEQSonrFTJVzfAoL/gJ6I
         XMpkhmuxGQ19mJeihbB4xikr4+IbEsty1kphG87WS2DHxVmXAb9ezqB5HQaIosFzstXV
         2y4XhKlbmTSY9rWHyaCI5t4gie6HuVJ26C67tamWIHqSfSrrAAUIg0orVp1XjP9bt1ik
         HJMQ==
X-Gm-Message-State: AOAM533LM5mdBXEPeTMNAbTD08nQjTrmj1sfj4sma/x/d6Pl+BZ3P68J
	r56ctRIAehbpb9qyv+zgzymPhnyNjf4r81ct
X-Received: by 2002:a19:501b:: with SMTP id e27mr12726473lfb.584.1617473348592;
        Sat, 03 Apr 2021 11:09:08 -0700 (PDT)
Return-Path: <zhansayabagdaulet@gmail.com>
Received: from zhans ([37.151.32.231])
        by smtp.gmail.com with ESMTPSA id b28sm1204452lfo.219.2021.04.03.11.09.08
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 03 Apr 2021 11:09:08 -0700 (PDT)
Date: Sun, 4 Apr 2021 00:09:07 +0600
From: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
To: clabbe@baylibre.com, mchehab@kernel.org, gregkh@linuxfoundation.org
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: [PATCH 7/7] staging: media: zoran: Rename 'He' to 'he'
Message-ID: <9982cf0d54cb0677519aa7f14d931fba65e023d3.1617472411.git.zhansayabagdaulet@gmail.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

Rename variable 'He' to 'he' to eliminate camelcase.
Reported by checkpatch.pl.

Signed-off-by: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
---
 drivers/staging/media/zoran/zoran_device.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/zoran/zoran_device.c b/drivers/staging/media/zoran/zoran_device.c
index 007d8855178e..cf788d9cd1df 100644
--- a/drivers/staging/media/zoran/zoran_device.c
+++ b/drivers/staging/media/zoran/zoran_device.c
@@ -295,7 +295,7 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	unsigned int disp_mode;
 	unsigned int vid_win_wid, vid_win_ht;
 	unsigned int hcrop1, hcrop2, vcrop1, vcrop2;
-	unsigned int wa, we, ha, He;
+	unsigned int wa, we, ha, he;
 	unsigned int X, Y, hor_dcm, ver_dcm;
 	u32 reg;
 
@@ -344,10 +344,10 @@ static void zr36057_set_vfe(struct zoran *zr, int video_width, int video_height,
 	disp_mode = !(video_height > BUZ_MAX_HEIGHT / 2);
 	vid_win_ht = disp_mode ? video_height : video_height / 2;
 	Y = DIV_ROUND_UP(vid_win_ht * 64 * 2, tvn->ha);
-	He = (vid_win_ht * 64) / Y;
+	he = (vid_win_ht * 64) / Y;
 	ver_dcm = 64 - Y;
-	vcrop1 = (tvn->ha / 2 - He) / 2;
-	vcrop2 = tvn->ha / 2 - He - vcrop1;
+	vcrop1 = (tvn->ha / 2 - he) / 2;
+	vcrop2 = tvn->ha / 2 - he - vcrop1;
 	v_start = tvn->v_start;
 	v_end = v_start + tvn->ha / 2;	// - 1; FIXME SnapShot times out with -1 in 768*576 on the DC10 - LP
 	v_start += vcrop1;
-- 
2.25.1


