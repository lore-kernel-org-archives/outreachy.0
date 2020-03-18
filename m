X-GM-THRID: 6805399652543758336
X-Received: by 2002:a9d:798d:: with SMTP id h13mr5361025otm.25.1584558561825;
        Wed, 18 Mar 2020 12:09:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:51c6:: with SMTP id d6ls8019270oth.4.gmail; Wed, 18 Mar
 2020 12:09:20 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt9ZHauGbdJPq0KVG/t9ZbYMcoDQ6DCRtyYaWmbJ3UvWPZXYfAgSRG6NcxIv5ZCeti9e0Vf
X-Received: by 2002:a9d:7458:: with SMTP id p24mr5380567otk.197.1584558560200;
        Wed, 18 Mar 2020 12:09:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584558560; cv=none;
        d=google.com; s=arc-20160816;
        b=sJWrN2oVU3cOL92cDPGBzcaM/REBD2lkV+hnu7uYU3/49djYgzhIscZ3rGfnBTwGzS
         Vnw5+zqImMvAtaSBnHQd1Jt11vb3zxK9fbhC3uDA8B1n2MUPm+0rlHCvlK3ZZ38vBqcp
         ggjSLiX1Tp9DqYNM2X5/Qdye1XN8/nT2EcTKMfFQSvBn70XdBdMftMCnZYfr3HIWxIDD
         Hy8JopIvu8/D1UaGy2jrW0uD9uS6hjYEU0abGukRYLj2ea1qL78JVZHvYMzG7UXmoZyd
         8UgHMImrJeJxQI6fQsuOF2fZTnRQJR1/q8JzWgZrUko5prxtXGHcDThyfkx62wdM4T0I
         W8+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=YEEpLr5+9ztTpGaOz8N7g2LyZGmujAzWy12eX7YdNmo=;
        b=NeetN77OihlKBgB/BJf4uBpGEWUD6GEIct06QrwaWtcEXhgHpkQ55MyY7MMJXwnEwE
         p7IhGQMRRzzoN2TRETJYQUFQBToWOFbKULGLczJmAPximH4/+reMrDiT89PbPDsHbiC+
         vRaI5JDb1NWmzBa7bw8LF6TSQOy8zuWHyJ/HTTysl1C+D/36oLN5BIqIHKuoBuI7Q121
         OIvMAQF5WJMp4iK+fKJzOPx9ho/u6Br76XKlydtra5zRSQvsvz/lkA0HndyLiDUKtMtB
         9/38+ruob7teVcvUvkJUKhrrZo7QAykhmPLZWvUBrXrvA3GnfWd1QA0c1jHgzCYm8iym
         9ZUA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MjZCBBSh;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id b1si241841ots.2.2020.03.18.12.09.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 18 Mar 2020 12:09:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=MjZCBBSh;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id y30so14181254pga.13
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2020 12:09:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=YEEpLr5+9ztTpGaOz8N7g2LyZGmujAzWy12eX7YdNmo=;
        b=MjZCBBShUsR9RJeODy1dBujUBHxI4csLM446yIy8x9e4ZdtloWT0ZD+zMV0E1Ziqil
         IKjFYI5C7ehZdDdSPOCvpudCDOjmnBE3NKaTHUlLNzgq5N0XH6d9TdKgwcY8b6dDeOun
         zk83A8MDbUYPuwAHHweGgxTWEJwleQ+nLFizJLp1X42B+1jMXIQo0GO8kLm5qj8Jk01r
         8WY0NCyzvWIbRfA6VEEHNQ/JE58QAeOnWbPDOCNRuzjrQprkuo2W863dbJbYVqHhrfIy
         O6LBoUWYxcUqEUGpM3ahwk+HwnTdovD8YsVWA0HeO9/U2dls/+Er00gEAN86rutP9XAQ
         u1+Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=YEEpLr5+9ztTpGaOz8N7g2LyZGmujAzWy12eX7YdNmo=;
        b=ZHMFu6u23GP2KYwzUKYXPg1nDnH/GyG8eO9r5XhYQO64a5wnQGS/X8gaiVLeRZQYa1
         wQ8Ijjq1aBZTlebdTZlANU+JPGbrJcDKONfofA8mdkqXVH+IDz4mp56vgtWjkopK9Sbv
         o0PN8cx35WCcXwdsewdmRH1L/WZlMnMsYlBMmdkxWcaQBWBb28T75DPcKtisTReT4A5x
         xDoKYTvZYHrDHXmNfDj/BYuxUHkspu8S4j8yIGKkXHbKHs0rOm4zmGq0pxUSZDTMTloQ
         qhGexYAukDysaKN0toPdboHPKkebIdNU2+0z6GLZpqiRHSO0kuTn5mGx0W6FCqbVtvgu
         +6EQ==
X-Gm-Message-State: ANhLgQ1/MpxlGmVgTP8vyx7h/NfP3gLYpFe81UnsBqvuv1f/aeQWYKe/
	OfPGoFGN7dgmK+/xgFzmxqCYymQE
X-Received: by 2002:a63:c550:: with SMTP id g16mr6330836pgd.9.1584558559252;
        Wed, 18 Mar 2020 12:09:19 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.241.226.97])
        by smtp.gmail.com with ESMTPSA id m2sm6338077pge.81.2020.03.18.12.09.15
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 18 Mar 2020 12:09:18 -0700 (PDT)
Date: Thu, 19 Mar 2020 00:39:13 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org
Subject: [PATCH 2/3] staging: iio: adc: ad7192: Correct macro names from SYNC
 to SINC
Message-ID: <4eaa90f120a24fd5f08338d0643ee8f215f169b1.1584557481.git.mh12gx2825@gmail.com>
References: <cover.1584557481.git.mh12gx2825@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1584557481.git.mh12gx2825@gmail.com>
User-Agent: Mutt/1.9.4 (2018-02-28)

Three macros include SYNC in their names which is a typo. Update those
names to SINC. Change suggested by Lars-Peter Clausen.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/iio/adc/ad7192.c | 20 ++++++++++----------
 1 file changed, 10 insertions(+), 10 deletions(-)

diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
index 51b1cd3ad1de..a5b6cc1fc375 100644
--- a/drivers/staging/iio/adc/ad7192.c
+++ b/drivers/staging/iio/adc/ad7192.c
@@ -143,9 +143,9 @@
 #define AD7192_EXT_FREQ_MHZ_MAX	5120000
 #define AD7192_INT_FREQ_MHZ	4915200
 
-#define AD7192_NO_SYNC_FILTER	1
-#define AD7192_SYNC3_FILTER	3
-#define AD7192_SYNC4_FILTER	4
+#define AD7192_NO_SINC_FILTER	1
+#define AD7192_SINC3_FILTER	3
+#define AD7192_SINC4_FILTER	4
 
 /* NOTE:
  * The AD7190/2/5 features a dual use data out ready DOUT/RDY output.
@@ -366,7 +366,7 @@ static int ad7192_setup(struct ad7192_state *st, struct device_node *np)
 		st->conf |= AD7192_CONF_REFSEL;
 
 	st->conf &= ~AD7192_CONF_CHOP;
-	st->f_order = AD7192_NO_SYNC_FILTER;
+	st->f_order = AD7192_NO_SINC_FILTER;
 
 	buf_en = of_property_read_bool(np, "adi,buffer-enable");
 	if (buf_en)
@@ -483,11 +483,11 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
 
 	/* Formulas for filter at page 25 of the datasheet */
 	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
+				 AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
 	freq[0] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
 	fadc = DIV_ROUND_CLOSEST(st->fclk,
-				 AD7192_SYNC3_FILTER * AD7192_MODE_RATE(st->mode));
+				 AD7192_SINC3_FILTER * AD7192_MODE_RATE(st->mode));
 	freq[1] = DIV_ROUND_CLOSEST(fadc * 240, 1024);
 
 	fadc = DIV_ROUND_CLOSEST(st->fclk, AD7192_MODE_RATE(st->mode));
@@ -575,25 +575,25 @@ static int ad7192_set_3db_filter_freq(struct ad7192_state *st,
 
 	switch (idx) {
 	case 0:
-		st->f_order = AD7192_SYNC4_FILTER;
+		st->f_order = AD7192_SINC4_FILTER;
 		st->mode &= ~AD7192_MODE_SINC3;
 
 		st->conf |= AD7192_CONF_CHOP;
 		break;
 	case 1:
-		st->f_order = AD7192_SYNC3_FILTER;
+		st->f_order = AD7192_SINC3_FILTER;
 		st->mode |= AD7192_MODE_SINC3;
 
 		st->conf |= AD7192_CONF_CHOP;
 		break;
 	case 2:
-		st->f_order = AD7192_NO_SYNC_FILTER;
+		st->f_order = AD7192_NO_SINC_FILTER;
 		st->mode &= ~AD7192_MODE_SINC3;
 
 		st->conf &= ~AD7192_CONF_CHOP;
 		break;
 	case 3:
-		st->f_order = AD7192_NO_SYNC_FILTER;
+		st->f_order = AD7192_NO_SINC_FILTER;
 		st->mode |= AD7192_MODE_SINC3;
 
 		st->conf &= ~AD7192_CONF_CHOP;
-- 
2.17.1


