X-GM-THRID: 6529042138324271104
X-Received: by 10.202.74.80 with SMTP id x77mr5571160oia.31.1520161083157;
        Sun, 04 Mar 2018 02:58:03 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.202.71.75 with SMTP id u72ls774761oia.6.gmail; Sun, 04 Mar
 2018 02:58:02 -0800 (PST)
X-Google-Smtp-Source: AG47ELtNJU/VdMO/3kRrvQsk/D4uL/uJt4wKkGYUaF/30Vz21fqXnXs//ophvF7Q1Gi5nVVdlJ3X
X-Received: by 10.202.107.147 with SMTP id g141mr5619202oic.51.1520161082141;
        Sun, 04 Mar 2018 02:58:02 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520161082; cv=none;
        d=google.com; s=arc-20160816;
        b=nJ0tcv2dPEJbwe4jN+Q8TfXAc3h2yfu3LSPu4K1rXWu6usfyaRGjw2+xWgwL9loje9
         v/Ns8Ldnz6HqWy3xD6T6wMzgFPPA6s1kmxw1cUorrWY1ZiQnudaUIDFM6BGRcWVtg7cR
         UmH+gArH7r5H0UrzZhHfasbMbTCKWvpKbyKTFzT2AtEFuWYF27S3l6rrBecAm74gRv/6
         T5FJJlWscFOZpXtoROzEYlNglKTi5C6jyUG7An8piHE2+NdlR2NbyJlY/1ZyH77/+3KY
         1ZSdzV1eQWrP/s+Peo8MEwR+BwgFjhIQp7Tr51+ltHm4dR83F2ecZzZUNZgR2wOm0iWM
         lLTA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=uBBNHzhGgyThHf4Nl1Y97KmFeNYDtMq9t4QQSXY68fE=;
        b=aJd7tlpl4LLqKsCgTGbkC3WlI2mABxSgun+M9uKV0lbzSn/q80BJicZeBtEnRTEaWX
         IYJQN9JClS+880eqrd3AM6djJiR/6F9YWgrtBz7AT8/IvlJZsVmcDmMGvQGXw+UhP/R8
         1DYMdqoXQrfb1l1r/QDlhSF+Agz7pa4Zn7/LUDbzM/XYQXfit8gzn4N/VVeI4V+GjUBe
         Efc0g7Rl+Md3cYkKhPBKdL3+1IdNPUACQA0vTkVCksKEKrgFFEQEPQ4FAOMKDVyVo5oN
         qtuMDqVZRcQhzeoGZlhOv7f5R89NXBPWlRNwfRaEMYlBTc0W6TNhF72FeVAeAin0+lMA
         Nb0g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKMYqMf/;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id b13si742374otf.2.2018.03.04.02.58.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 02:58:02 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TKMYqMf/;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id q13so5998689pff.0
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 02:58:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=uBBNHzhGgyThHf4Nl1Y97KmFeNYDtMq9t4QQSXY68fE=;
        b=TKMYqMf/UewdDGf3FJaGULbabrwih5+xpUHWQb4Hy6dfMM04khn0OU+TERpAdJI9Lr
         Js/lEuwovXsCtIIYXk8EuLIpdHV6LvH2UDzcvuI9TrTu1VBv+n/busuz4bU/qqnzcETF
         HgpQYWvNgMBz0DpR2EtT+YuOleiEZA1ws6d6w3iRWTnjWpAn9K4BnYz4MMmwkmyWioBX
         nZTnEUfokShyV3VN2h1wtd7QaDQDVOFJ6M9lJXq6rJ4fpurTFlmShOfyVs7ZqYn0daYS
         B5qlLf9zmxkv37hpD7WMLi7Aw0GVBZYrK7NhuoUlc9Z5xkqUiZogf5G29JhOhQFQJB8D
         gHkQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=uBBNHzhGgyThHf4Nl1Y97KmFeNYDtMq9t4QQSXY68fE=;
        b=ClioS/qTrWQq7MaZPdku+fqXmLiOJZMIEqms+dcyiPTwlvRTEY0rO4eFo5K93P+xx7
         Qu9Oaw4tS394rg/kgaw2ErFgI8NeQo7u0MjfAjNBdAf9/NwTMdTRlFuDuxW5VqpXKMJP
         VhOsHxDC2D2pqQyWIWhO/Hp6ycJHspiKjJjlzBPkfTeAr3mt2JuoKH+UfdJLLyyPHEsU
         qGgqeeNJCY3JsdIluikgFsNkPkCyG0SENgsM9dFJRoutVYWAmOL/OSSlPsS3GdSeCgQc
         o0x98X9oSf3o5kyRGaCeLEBoI0ujdfz3YfOOpeTZ2odcVU5ezRU7r8g8cZNFDWDIlQEr
         Q0fA==
X-Gm-Message-State: APf1xPD8uL9EqpHk7Sk5hCzSboWjPD2FQOuPyYmYAvgEa8mNoM/iEUVW
	k07VqEM3PFvVdJWnGQnB+PIKXA==
X-Received: by 10.99.117.83 with SMTP id f19mr9225993pgn.318.1520161080824;
        Sun, 04 Mar 2018 02:58:00 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id e19sm15919285pga.8.2018.03.04.02.57.58
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 02:57:59 -0800 (PST)
Date: Sun, 4 Mar 2018 16:27:33 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: abbotti@mev.co.uk
Cc: H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: comedi: "dont" is changed to "don't"
Message-ID: <20180304105732.GA24762@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

"dont" is changed to "don't" in messages, "dont" is not correct
english.

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
 drivers/staging/comedi/drivers/cb_pcidas64.c | 2 +-
 drivers/staging/comedi/drivers/das16.c       | 2 +-
 drivers/staging/comedi/drivers/das16m1.c     | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
index c007500..ceef905 100644
--- a/drivers/staging/comedi/drivers/cb_pcidas64.c
+++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
@@ -1700,7 +1700,7 @@ static void i2c_write(struct comedi_device *dev, unsigned int address,
 	 * eeprom and i2c bus
 	 */
 
-	/* make sure we dont send anything to eeprom */
+	/* make sure we don't send anything to eeprom */
 	devpriv->plx_control_bits &= ~PLX_CNTRL_EECS;
 
 	i2c_stop(dev);
diff --git a/drivers/staging/comedi/drivers/das16.c b/drivers/staging/comedi/drivers/das16.c
index 74ff204..81eb51b 100644
--- a/drivers/staging/comedi/drivers/das16.c
+++ b/drivers/staging/comedi/drivers/das16.c
@@ -619,7 +619,7 @@ static int das16_cmd_test(struct comedi_device *dev, struct comedi_subdevice *s,
 
 	/* Step 2b : and mutually compatible */
 
-	/*  make sure scan_begin_src and convert_src dont conflict */
+	/*  make sure scan_begin_src and convert_src don't conflict */
 	if (cmd->scan_begin_src == TRIG_FOLLOW && cmd->convert_src == TRIG_NOW)
 		err |= -EINVAL;
 	if (cmd->scan_begin_src != TRIG_FOLLOW && cmd->convert_src != TRIG_NOW)
diff --git a/drivers/staging/comedi/drivers/das16m1.c b/drivers/staging/comedi/drivers/das16m1.c
index 72f8ed2..4e36377 100644
--- a/drivers/staging/comedi/drivers/das16m1.c
+++ b/drivers/staging/comedi/drivers/das16m1.c
@@ -407,7 +407,7 @@ static void das16m1_handler(struct comedi_device *dev, unsigned int status)
 		if (num_samples > cmd->stop_arg * cmd->chanlist_len)
 			num_samples = cmd->stop_arg * cmd->chanlist_len;
 	}
-	/*  make sure we dont try to get too many points if fifo has overrun */
+	/*  make sure we don't try to get too many points if fifo has overrun */
 	if (num_samples > DAS16M1_AI_FIFO_SZ)
 		num_samples = DAS16M1_AI_FIFO_SZ;
 	insw(dev->iobase, devpriv->ai_buffer, num_samples);
-- 
2.7.4


