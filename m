X-GM-THRID: 6805399652543758336
X-Received: by 2002:a37:a44a:: with SMTP id n71mr5719287qke.210.1584558612868;
        Wed, 18 Mar 2020 12:10:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6487:: with SMTP id y129ls13382270qkb.10.gmail; Wed, 18
 Mar 2020 12:10:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vs0H3SihikLtuEyaPOSn350KopY3nZXQC5PcSlw9tPCjr8lPFf1osN/nWw2OgvTR2WAtBA0
X-Received: by 2002:a37:b045:: with SMTP id z66mr5818500qke.297.1584558608920;
        Wed, 18 Mar 2020 12:10:08 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584558608; cv=none;
        d=google.com; s=arc-20160816;
        b=0EZHn9JCMJ0IDWNadRwbCxL2HRb6zlhYWtoa8HfmO4NLvoyxGYLAga9ocBT9vxNBZR
         l6aBUhwSai9O2+OllLJ+WxIG7YuAkP0F6heEQFXW3TAlib/xcN6ihGvQM6w19QPEqk99
         z/FCaq6zmK7LMKZNLNM4YhG/7MY3HZDHop9TfBKj6zz8WCrBr1sXH7xKkogFDH9bf/w7
         RI3PXvLfiAzvX1uCrhVe/njRAMPmz+SYUTgEJhnkZgEJ8VxP1X+CoDXS/CQOLENflnWG
         3ETuxN37jxxkb1bTfTVn1mOrIUwLs8abXlqWQuNkkrJVHlkXWCpu9PSBdudbC9KOeA06
         4FiA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VOBWLQGfw9hrqp4HF5VYzgZRzQyGWfm20OBERquZAJc=;
        b=k/C0BhfmFMq8ztWx7Ys3aDt02kAJSXqEkmV7TZUsnkG6XbOnpfvD8m054xmboAdJ2O
         tAACkAvBIjzVu7K+5EsdULzRBzCaXnQf56BlzOo3ztKzEkt9QVsKZZdvr+UK7gdCN1zv
         Ver4gBmxyF80NsqBQHHAQI6YVwOHpnTyhQ6ImAkYJlxRTkF/JDsn3ALLm+1mcZkA6V/r
         Fh4uvWDwRQmsVsZ3ghcTxMWN1xJAHTR5T5lUlkDdXAHgah0bwiFK9kXYcfwQFqKqAC3a
         5OaJSI9+/7ND5SMd0WzkC7MXTTXGGEn0zZ9N4Ro8YEu0TvKsBXF7P2JWOPkbypXWGpOt
         JyfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U7zWEe3W;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id m6si417252qtk.2.2020.03.18.12.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 12:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U7zWEe3W;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id u68so14407320pfb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 12:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=VOBWLQGfw9hrqp4HF5VYzgZRzQyGWfm20OBERquZAJc=;
        b=U7zWEe3WEQ29YB5/radORzKH73O5kRYHPpMzba+xgFWKmGl7C/o7Q5Fe4iH0LzeEKy
         O+e3AQFmpsr7dwb94lu+zUyeZ6lURQuNd1CHRLuJpquzbz4UD3nfJa5SajkmawxS/f3l
         hMAtYbR+Cf5JDSkDiWbj0/Q4Y7raEaj0/cd4jXAcPyIhVlZ6arhRE99yOf/GuECybr2W
         FI3BV/goHCyztfawbmMzxh5qRQ/sJoHS5Uz0JcStd2O06lVL+U7RNXnpKgGYKSC90V8/
         wioTPZxFQptjiPLtlPW81Lfd3u36KV5A+gS+MsxHXbpKJGInXKrvZEkoxqsP0hKyVWmS
         AKFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=VOBWLQGfw9hrqp4HF5VYzgZRzQyGWfm20OBERquZAJc=;
        b=C183i6NExV6tIsE6T96Xv5h18R4tYtvXpwiv0SyOaNSCKC6eGDAQSNC2gGtDYXvXqT
         Fb0ZqeOl/V7Nj7tOsnXdTE7LGYeMOoeScQ6t9uSML9NTtqhhRArYtHZBcAv0KDfCe9zO
         Vl3J8KJpO8Tf4FrALZnc04QZCPiTaMdi5KZ+4kMkLDW20BGq4hJWC7yX2GfWA4UD8iHO
         zjI1YB29fSN/jfL7MKWXxpbkFPJjsbTY7Qc3XL+bzWb9x3LW2dAJv1CbE04Psm9erDvJ
         pI+34D1Pevt5gIWj3YM+nj+duSkE1+68ryHfXWuN2lkciAd/1ZYBmkioN6OdRsK08LRQ
         Zj+A==
X-Gm-Message-State: ANhLgQ2BTE7k4+8FHZK3F+WneYlE/uBuPG1K+y5Qnr/dN1wIO23+S3FG
	AZVi+0+PXXyWXhnh8Nb6JbmHKeKY
X-Received: by 2002:a62:5c87:: with SMTP id q129mr5801804pfb.82.1584558607941;
        Wed, 18 Mar 2020 12:10:07 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id b70sm7678812pfb.6.2020.03.18.12.10.04
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 12:10:07 -0700 (PDT)
Date: Thu, 19 Mar 2020 00:40:02 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH 3/3] staging: iio: adc: ad7192: Reformat lines crossing 80
 columns
Message-ID: <89282ed6f355553eb1e81ae9b5f991eae4cd96ba.1584557481.git.mh12gx2825@gmail.com>
References: <cover.1584557481.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584557481.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Macro arguments are computed at the time of calling the macro. This
makes the lines cross 80 column width. Add variables to perform the
calculations before hand and use these variable in the macro calls instead.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 9 +++++----
 1 file changed, 5 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index a5b6cc1fc375..2a9c68aa8260 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -480,14 +480,15 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
 						    int *freq)
 {
 	unsigned int fadc;
+	unsigned int sinc3_filter, sinc4_filter;
 
 	/* Formulas for filter at page 25 of the datasheet */
-	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
+	sinc4_filter = AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode);
+	fadc = DIV_ROUND_CLOSEST(st->fclk, sinc4_filter);
 	freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
-	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
+	sinc3_filter = AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode);
+	fadc = DIV_ROUND_CLOSEST(st->fclk, sinc3_filter);
 	freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
 	fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
-- 
2.17.1


