X-GM-THRID: 6805399652543758336
X-Received: by 2002:aed:370a:: with SMTP id i10mr18539719qtb.114.1584906861365;
        Sun, 22 Mar 2020 12:54:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:38ad:: with SMTP id f42ls5370573qtc.9.gmail; Sun, 22 Mar
 2020 12:54:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vty/s12RiTiSewg+zeskQO3bkXMGnoraEaKzYxiBOpnoL3wHkX2ZhJhhKlUF4Q/X8GfKn/X
X-Received: by 2002:ac8:76d5:: with SMTP id q21mr17706617qtr.202.1584906860218;
        Sun, 22 Mar 2020 12:54:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584906860; cv=none;
        d=google.com; s=arc-20160816;
        b=re6AbpCQ5nUNpjAn3mQYYDfuSSALz0PUvis3czWoVYxZE8+4BGpcOOgQ4+V6RupL2j
         1yRFp0CeNyKRzvm9gDQUxGcJNqB/hRZfV941ksYMh0O5iYUB//po36TE6ZAw96Ess02I
         yBw7jhH2sIeoFkhDp/S5VqAuIrWotIBxnSSB/oFP0tczxeF9DEhEGQVJCDN0sq/t3BUo
         xMQHTik0i4mhOrDZLGLTBFu0q5ux33Knx/otpIyakBizUYL+3Vq3OX/DYuzlhhZcgY1+
         0HpJod5zLLX5/ZhCnDgra+SQ1vU2c00xmQKwNFk4hVMtlGHCZk0+J76D5/+n2jcQpxLS
         jhvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=2/rQmKX0XdBt7pgAhTvraA8XGz+IqOTJZGXuwXaH9V4=;
        b=YTTDFPi3D8dqCdsUn87S1BWfYBnLG6r8JHGy1JL/9cstUKrlyVDNzcTWrHKoYNXN62
         650vXks4o/zWK1UptpbaAnQ+3+cerGCUner5v8arJFo1m5mZcf2C1vBvGVlQINjKszu4
         bDijGuVDTsMIf5XSB/EsjYFc2/CpXPMwliK0CbGCSLUGMqkN7rNhkIJc8dX4TR2HjHDx
         yMlPkmPi+Gp/KD4ywbvvSnln4yXgx8KgdHP0N2gE4lyb3y5rdvU1N8FFGKJg5r1Ce/LS
         RSqFz6aAGPSmXHCIk4p9Wu2G1F/RSXvQ5fGJCdz71JJYR7hFnJkZVXu/Igm8PQ/yB3dT
         R8cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cVOWD3+i;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id c194si695815qkb.0.2020.03.22.12.54.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:54:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=cVOWD3+i;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id t3so6054540pgn.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 12:54:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2/rQmKX0XdBt7pgAhTvraA8XGz+IqOTJZGXuwXaH9V4=;
        b=cVOWD3+iu9cLu8Lrk1PJiZ6vFi9ssNFMzMXk9FMX6JlNIZYsJgjJY1CsazofylfVbn
         t0YfSOsNPgFqQj+NcC2UvHyyOI4uQuGO72cJtnxdFVnGTuF8kWCcnijW44u7baYubzPA
         zWj4OcW+1PGRx1j1OBtFqvtn29GdLv/QLl00BN5WmEOVB4ERwM9OGTi1pRn0rhsbBY9U
         JZ92bGgcq4QUjhZTSRXyw+unfovaVgTDsz1Z12b5vkjaRk7+/S2Ke7kCO8gST8kvkzck
         0bFcjs0H2iqhasmUFU3PmrR5ggcTXOHwOzenKIFr1btCii5yBrhTXZAmVN0eIigIHxUY
         +KGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2/rQmKX0XdBt7pgAhTvraA8XGz+IqOTJZGXuwXaH9V4=;
        b=Jahoy8i3OeiTpfpyx2zubAkdAz3omleTi7wDo6DhCyNwJ3gaU+0KYvJs+lheddR0wc
         di9Sl8UGmY00HAYk9pDdXMLTzcp5RWNvSAC/lx0NmbUu42/IhRnk3WNmJNIHzI5fDp4L
         lPZ4CUiIyAfrNOY6ugjSZn8b6LziLngu1UQ6TYm3fnPWjiYt7olhhmsrJrP0+nBDs2jF
         xlvuUapPjUZZFb74NsdgFwDsHRazQjyspEFnv00NklfcmEoCvUZn8TsLBpZy3RYFPbhe
         t+Eq+FadYA8/r9HzFeu1QjuOVGRsOYOsMVSsSRPWvSc0yDdVYdTS09pB22wkVQkT6c22
         95bA==
X-Gm-Message-State: ANhLgQ0DmG14Zf8oMqUdNKKHaZKjDWfMbmS1I233eIXFzCH5mu5YsJTK
	bvfx0fjyYWnHYeG3havmqMDqfyEc
X-Received: by 2002:a63:7359:: with SMTP id d25mr17991902pgn.2.1584906859588;
        Sun, 22 Mar 2020 12:54:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id b16sm3463815pfb.71.2020.03.22.12.54.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 12:54:19 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:24:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 1/4] staging: iio: adc: ad7192: Re-indent enum labels
Message-ID: <5c6bef6462d135b748f58f8c2645c60234482f52.1584904896.git.mh12gx2825@gmail.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584904896.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Re-indent enum labels as per coding style guidelines. Problem
detected by checkpatch script.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v2:
	- None. Version number increment to follow patch series version.

Changes since v1:
	1. Separated other change into a separate patch as suggested by
	   Greg KH.


 drivers/iio/adc/ad7192.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
index 8ec28aa8fa8a..02981f3d1794 100644
--- a/drivers/iio/adc/ad7192.c
+++ b/drivers/iio/adc/ad7192.c
@@ -157,8 +157,8 @@
  */
 
 enum {
-   AD7192_SYSCALIB_ZERO_SCALE,
-   AD7192_SYSCALIB_FULL_SCALE,
+	AD7192_SYSCALIB_ZERO_SCALE,
+	AD7192_SYSCALIB_FULL_SCALE,
 };
 
 struct ad7192_state {
-- 
2.17.1


