X-GM-THRID: 6805399652543758336
X-Received: by 2002:a17:902:fe83:: with SMTP id x3mr2034903plm.310.1584505627954;
        Tue, 17 Mar 2020 21:27:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:de4b:: with SMTP id y11ls12035041pgi.2.gmail; Tue, 17
 Mar 2020 21:27:06 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtppmyF5UDQ5pYOQYpFLkHZaNvyI5h8oBH7Fclvxly0i7j5cHcNVNqFz+lryFgLvVmrfr4w
X-Received: by 2002:a63:5c18:: with SMTP id q24mr2739092pgb.322.1584505626252;
        Tue, 17 Mar 2020 21:27:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584505626; cv=none;
        d=google.com; s=arc-20160816;
        b=mYHtdYvRfwz3XF2rYQe4wYfx5BCdvRWcV7sqSr69tF6WZcYW0eY8kAD2lAW+SQoT0Z
         jtprinuQFB45Yp7APMJTybAXunkl+/z6kW1sU1eJq4cqxu7l3T/h5xfmlPCTKDnU0ol5
         W+1rFS9ZbQkH3UyqTd5sNlK1UMysuNZ9Q/QeUgwb7XuHaeFgjmXlXKIOPLKb3fn9AAmr
         NqmZUrSOrON5yF/xYaJyn8oyhgMxYVF1+85BlT7nbPJtSxlZbzFx7QTWPbI8j07Qq/n5
         dtPx2xAe9znYdJePUSCQAY0yWU6dDGuU0rnFE53o8WfLmicveptQm5PvHuOCZ2CaT5zs
         40Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Oh2KAIRX8aKqtv+Ffl3IQBandoMpCHIL5wtrJabvgmM=;
        b=uh7OshfjK0zsGw+8Wy2otxKz4mYOBwwhlXzuzC/I+92qucdcB93ZfVcqpNgqWZuwiX
         crZ/tMiY7Xvyiw1swwiCA5s3yzKJWNvcey3bEX5+/l21GQnsxQjzriTPUJug1enYPxEb
         jJKWtau3bbXhxZA7nYB5FZTnJrdlSXDDhRRYzphhc+Aiauf+FCDz178tdrN6OU2Uco6Y
         yMTvlMO7NUn/Kwh6e8KB8VaFd6FFcTNBV08RMWsinhVipuE0iguHM7Org6aFBtUh30dK
         Metjmd9LOprH8FMfLx9sI/lNpGdV/06NNU1D+MtVNDozlU8dJ5N3AtZQ1XeQR82uJ6xZ
         hXuQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K2W3jt/9";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id y13si341157plp.0.2020.03.17.21.27.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 17 Mar 2020 21:27:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="K2W3jt/9";
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id r3so2561102pls.13
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2020 21:27:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Oh2KAIRX8aKqtv+Ffl3IQBandoMpCHIL5wtrJabvgmM=;
        b=K2W3jt/9sV1zNczLnBqkHjRlfTbAxvCZ0ntC5O1osBzt1/yEyftVAlJMVTrflTk8rl
         J7oNswiTsMp5J0O2+YuM9h80c1CBnvv15U2rlv0O/urZzgZoPRC4h9pRp7X55UyoY5vm
         PcAgbfonKlJZdZH/oQThZD18nFA57Er0HiDTwUXocKk0y8WCtCOvfcY+F9KWPm1h0RNm
         jxbHVHgFpr36b6b9rZolhOa4O+qVGYhN+/x3bS1ioAoQjcQs9oGO+JuU6+uBUKIi+RAF
         EfI/mVnnbMAApXOqtJrDZS+3rKCze76/aJBQM8/UA7jDMGB82USz8uJQIoJd+RDH0bBn
         Vktg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Oh2KAIRX8aKqtv+Ffl3IQBandoMpCHIL5wtrJabvgmM=;
        b=IiNXlTF6e8hYfQw404wR8eMwIWdGDV6pNR/CiU0uM1drGx3gPnH+J4HwYDbkwdaEOD
         XZY4s+2eN3OX86LLHUwRtndTz2hWPb+OOBbV/C0cK90lQzyJrccJ+CSjo7t+Tm5SMJIb
         zLfCPyK2GYaCC2wUTYgtfEHTcHPKqUlxAiGd9lsjArDqmVIWHUG/8/B7J8CBnCwwXH+w
         fezT1FRPF33Eoepnzh4YH5o/nHs4NxfvZMxFOM3eeYPKRv3bXNyjOpujDZkddUlwBVXX
         IkF0GzJq1EwzpS3eV6G+DrIxu5xE3npQ40fcJY2fZUgp9FggFoFW+Rngx4Upyw4T0/Ud
         moUg==
X-Gm-Message-State: ANhLgQ38jeElwPB5vYwQQ8mhFLfJLnL5o53/ZyECVZbdPE53lXpbADjT
	Ge/6+rPk82CL5fKDnzyppwpxLOai
X-Received: by 2002:a17:90a:a795:: with SMTP id f21mr2644541pjq.29.1584505625804;
        Tue, 17 Mar 2020 21:27:05 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id c8sm4844023pfj.108.2020.03.17.21.27.01
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 17 Mar 2020 21:27:05 -0700 (PDT)
Date: Wed, 18 Mar 2020 09:56:59 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, stefan.popa@analog.com,
	jic23@kernel.org, knaack.h@gmx.de, pmeerw@pmeerw.net,
	gregkh@linuxfoundation.org, linux-iio@vger.kernel.org
Subject: [PATCH 1/2] staging: iio: adc: ad7192: Reformat lines crossing 80
 columns
Message-ID: <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584505215.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Macro arguments are computed at the time of macro invocation. This makes
the lines cross 80 column width. Add variables to perform the
calculations before hand and use these new variable in the macro calls
instead.

Also re-indent enum members to address checkpatch warning / check messages.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
 1 file changed, 8 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index bf3e2a9cc07f..0265f6607d75 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -156,8 +156,8 @@
  */
 
 enum {
-   AD7192_SYSCALIB_ZERO_SCALE,
-   AD7192_SYSCALIB_FULL_SCALE,
+	AD7192_SYSCALIB_ZERO_SCALE,
+	AD7192_SYSCALIB_FULL_SCALE,
 };
 
 struct ad7192_state {
@@ -477,17 +477,18 @@ static ssize_t ad7192_set(struct device *dev,
 }
 
 static void ad7192_get_available_filter_freq(struct ad7192_state *st,
-						    int *freq)
+					     int *freq)
 {
 	unsigned int fadc;
+	unsigned int sync3_filter, sync4_filter;
 
 	/* Formulas for filter at page 25 of the datasheet */
-	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
+	sync4_filter = AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode);
+	fadc = DIV_ROUND_CLOSEST(st->fclk, sync4_filter);
 	freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
-	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SYNC3_FILTER * AD7192_MODE_RATE(st->mode));
+	sync3_filter = AD7192_SYNC3_FILTER * AD7192_MODE_RATE(st->mode);
+	fadc = DIV_ROUND_CLOSEST(st->fclk, sync3_filter);
 	freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
 	fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
-- 
2.17.1


