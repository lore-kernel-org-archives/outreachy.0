X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:ba8e:: with SMTP id k14mr4211311pls.103.1584906982457;
        Sun, 22 Mar 2020 12:56:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b58e:: with SMTP id a14ls5523035pls.5.gmail; Sun, 22
 Mar 2020 12:56:21 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuFwjUZwhvlAvHs9Wro/pI0bJrEtNNt6EN3uZGXy9U0LeAR5LutNQzmtYEXR+GedfJzItjy
X-Received: by 2002:a17:902:7008:: with SMTP id y8mr18599203plk.279.1584906981014;
        Sun, 22 Mar 2020 12:56:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584906981; cv=none;
        d=google.com; s=arc-20160816;
        b=gI+ZxlxzaSao77zftWO24QFvXyYo/wl7CVPENwogor/rHOUrZ2ZRRz86JtYe7rJKdb
         6idxHDNnIMpr+7/DrPhIE6CHGZl5GDcLg3+tF821xaueCW4/TaK1Qv+ymFYrTI0iMCmf
         S3mqdVt85A+ZKkpIIwmK3KWnskwRinQDNuFoQ1IZBvlIeUzvIjeT9YBmNc//G6bnMJw3
         61+477zBYsI7JYakP+iqtlD3NNbgOhi1oteKDAwK1Me99iVcaFW3ltHi4dK6B97bhXle
         YPtRN4zx8MmEhbiD7UaH/CtSOUAblGgxliPFRAdkPaJx6JvYDyoDv+Y2PPSnOe3Hq0eI
         WlAg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4mmFgFlr44x8W7HUsD9TTAhCqpazgNzz0n6SLIavbyQ=;
        b=CudjHYB25QpMZTq5YX2ZtrKxCAl+T426X3nzIMzAudBs3M3s7DxfIqtb5SHnfW8xoF
         Lan09SnyPkap0W2spIAhweER1NjWThQrltk0nW409RVLgCsvZG+xA4aL7zXJz7q2ieMC
         YltoYOaf+99JMo5Bi3YxScDL+piK6u8BSQ14DpIkCcfOvc6Ww5zYkBrxgB5hRcoxfMmP
         pLyx1KZiaaN+xwalwvGY0MZ4UPO4t5WCqcfuyTmH9vjPkMeL3grXMDdLoyQpqlCIYUfU
         m9bf7zwJW9NTW1rjgS9tUtl+VcEhiSBn3B5i+Gp51myLstBM2gsvNWBL4RN3hU7qtHcs
         kzXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rlqFC51D;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1043.google.com (mail-pj1-x1043.google.com. [2607:f8b0:4864:20::1043])
        by gmr-mx.google.com with ESMTPS id 83si504275pge.4.2020.03.22.12.56.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 12:56:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) client-ip=2607:f8b0:4864:20::1043;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=rlqFC51D;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1043 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1043.google.com with SMTP id mj6so5091705pjb.5
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 12:56:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4mmFgFlr44x8W7HUsD9TTAhCqpazgNzz0n6SLIavbyQ=;
        b=rlqFC51DqHLLPbWDm5lUR186fTdfDKfp98yV+fhZiO8B7zcFQ9lX/5HAkCOAJKaDmu
         Y0UJn7AI+slSqQgj1D0rPxjKCLyYSwt4LQ3T3GpjZR+R5LAzfUwGLU0Q36K0x7einr8+
         bGK6nsxULLT/JFplvFNcZGbuQn8LEiEMfoiti/fRCj1tIfRPKdHvGqQwykCW4bboyA1X
         mtj0FrZtluMsTmuVfE+H9gu6AoqhtksIt6xaGA81ctsYRqyKkgo7HIJ21L6ifm+Nfdyg
         D7Gm/Ppzvn3sWAjfLgmuAPw3R6ABUVP6pE27JMaL4ZgEXSEDazHqdYvLe1elQ4bwxyyZ
         F5FA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4mmFgFlr44x8W7HUsD9TTAhCqpazgNzz0n6SLIavbyQ=;
        b=VnekQCKRmq6iThOirtX/Pbr5pma/Bv+G9ZfI+4s17/7FvWe5FWOS95UblABygZufhb
         Gz/ITq3/iwE9n9KDGdBeA4HnFuWSSk3pzJxvD6Fkgbj2g/4c6or6UiYJK5JvctBHc0t1
         B8mAtliyxlT3LtpFaad7wVRfALhCZacabDsWqg5JBY3hxxd11rPXv2sOtQFM7ECKYIw/
         VG9X5uJBAVPZPJqZB3nBqHQPMOSxifHf/2AHNpbWHC9KlKE657fzw05XzzhB+X1/7lEZ
         aXKiW4aUd3+/8nN0fwn9f6TdM8/TOYSYB/4ln3zUc0MxDjO54XdJzSuvDiJPXZ5yb95h
         RLog==
X-Gm-Message-State: ANhLgQ33kcV4hFS1D5GFSANfUHUb2R0FjWx6CAVhiF5IG7lPvzlOR52T
	K5rdtZoKN4auD69TnGoFUq9PlnIP
X-Received: by 2002:a17:902:7008:: with SMTP id y8mr18599189plk.279.1584906980582;
        Sun, 22 Mar 2020 12:56:20 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id i2sm11197333pfr.151.2020.03.22.12.56.17
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 12:56:20 -0700 (PDT)
Date: Mon, 23 Mar 2020 01:26:14 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH v3 3/4] staging: iio: adc: ad7192: get_filter_freq code
 optimization
Message-ID: <dad3cdb5de76234cc460300c31aea6af671f81ad.1584904896.git.mh12gx2825@gmail.com>
References: <cover.1584904896.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584904896.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Current implementation of the function ad7192_get_available_filter_freq
repeats calculation of output data rate a few times. We can simplify
these steps by refactoring out the calculation of fADC. This would also
addresses the checkpatch warning of line exceeding 80 character.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---

Changes since v2:
	1. Improved function implementation. No need to use a ew
	   variable. Changes suggested by Stefano.

Changes since v1:
	1. Corrected variable names to follow datasheet terminology.


 drivers/iio/adc/ad7192.c | 17 ++++++-----------
 1 file changed, 6 insertions(+), 11 deletions(-)

diff --git a/drivers/iio/adc/ad7192.c b/drivers/iio/adc/ad7192.c
index d9a220d4217f..5dafcf8754dd 100644
--- a/drivers/iio/adc/ad7192.c
+++ b/drivers/iio/adc/ad7192.c
@@ -482,18 +482,13 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
 {
 	unsigned int fadc;
 
-	/* Formulas for filter at page 25 of the datasheet */
-	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
-	freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
+	fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode) * 1024);
 
-	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
-	freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
-
-	fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
-	freq[2] = DIV_ROUND_CLOSEST(fadc * 230, 1024);
-	freq[3] = DIV_ROUND_CLOSEST(fadc * 272, 1024);
+	/* Formulas for filter at page 25 of the datasheet */
+	freq[0] = DIV_ROUND_CLOSEST(fadc * 240, AD7192_SINC4_FILTER);
+	freq[1] = DIV_ROUND_CLOSEST(fadc * 240, AD7192_SINC3_FILTER);
+	freq[2] = fadc * 230;
+	freq[3] = fadc * 272;
 }
 
 static ssize_t ad7192_show_filter_avail(struct device *dev,
-- 
2.17.1


