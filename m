X-GM-THRID: 6529312870526615552
X-Received: by 10.36.61.21 with SMTP id n21mr8066319itn.35.1520224118890;
        Sun, 04 Mar 2018 20:28:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.160 with SMTP id q32ls972335ioi.3.gmail; Sun, 04 Mar
 2018 20:28:37 -0800 (PST)
X-Google-Smtp-Source: AG47ELtI8/hSWfgrG90P8yk+avRO2NAUxDlZXs6PFzaBwKdyAELr+Smkvn6+zMK4x0xOyYPOj1mt
X-Received: by 10.107.25.8 with SMTP id 8mr10323762ioz.79.1520224117978;
        Sun, 04 Mar 2018 20:28:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520224117; cv=none;
        d=google.com; s=arc-20160816;
        b=T/Y9R1BqUFHUhQtYskkR2pBCLqGrE/GmmFU5XLkQxEm43OWsCb25XWLsQ3hqPFk2QM
         rhYh2OA5dzuipaPbOE5oHnsJFpUzrdlNlo0/qUPgzeyILRqLKGzZJxGkS+cyTgHZBZy9
         eeBZo0ogxSK+qgWEMIn6y8Oq4fyXVdrRADY4ScWfjuKw7d3ppbFMWss18qVnRyGD6U/U
         q5ZEWBPV3+dSlgkdRjG6aaHB7Kf9aeoDRgI9jTCmob4cnsek3WQV7EJwQqAG7WxiOYOG
         QYbtvnJOchOplt8ls7GgQkvZOMbUwwYy1ahW5oDIN2LoknglH7wiVDMfproeQd4vNO6R
         SShQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=zc53r2neUtdUKjj+ed2e7Q3QPwhiZdGkbYaI50NA4KI=;
        b=am+Glwlfokg58THBh/04lvgUyIosuYHS89Jiw5ksLDvjSlETkkABevU3jQJHnWSJpv
         /nU4+t4cUNZorDYKAWActDKkQHoDtinEnwinadm7BeOkvotDmN+oe8G0w04bWVi7EeOA
         3kJkgirhNtswUCDFfo7duuUi5W70+EoPQmz9ONsXdk9VAbgD3mbuO2wm8BGhkVdsbJ4W
         Z0Gu693OQT4n3cTiBXH7J6A7QtvObuEN9kiXndigZlB3swd0U4k2jKfrOKV1AdrCkpL9
         Zk87QBHGfRcigtCYLzohplNao+kqiQJM08A5D4ZE4rSn8G2rOhAiZAgFU7GHoJJ4S+a2
         ReWA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dhqx0Ixj;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <arushisinghal19971997@gmail.com>
Received: from mail-pg0-x241.google.com (mail-pg0-x241.google.com. [2607:f8b0:400e:c05::241])
        by gmr-mx.google.com with ESMTPS id 70si94337itz.4.2018.03.04.20.28.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 20:28:37 -0800 (PST)
Received-SPF: pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) client-ip=2607:f8b0:400e:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dhqx0Ixj;
       spf=pass (google.com: domain of arushisinghal19971997@gmail.com designates 2607:f8b0:400e:c05::241 as permitted sender) smtp.mailfrom=arushisinghal19971997@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x241.google.com with SMTP id g8so1713240pgv.7
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Mar 2018 20:28:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=zc53r2neUtdUKjj+ed2e7Q3QPwhiZdGkbYaI50NA4KI=;
        b=dhqx0IxjuHw6rPSNBNcK7HMdoMqdEaBOd0B9L1a4UeoB0irE2U/S1j9rhs0Z+tqsND
         RKPY8ZEzbiOUrpftQyBUzLVL/lnmK+J4rAZQ/uULAejxSL/Q9X3kM9uEEq4fBClazTwn
         cacEhWuiZmZCzvBcT8rI/chC2IrnNOHczOLFpXG7Iz6l2BsMHpeZz0Hd2xjHBid+H1W2
         YR4HJYj7b6beBJJOqUtId06tZmUlXxogI7N8MdBYy5PbLooSq42syLra92rvJxZ7IyaN
         7lh4Xtb9BAdEDY9Hglc7pkUc7Bxmj8lx8pjh/qVmJwFKFjonKZr21wjofWO8TDKc+1Ud
         KihQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=zc53r2neUtdUKjj+ed2e7Q3QPwhiZdGkbYaI50NA4KI=;
        b=CP1sfezDnuG6v2aAFlp0gqaKfzu9dgsAGMOtfLjLy1o7i+WEoLaEem7ouxkH9t6HUK
         6H839OQJJLDtqXcaPuHlkTKI8ywqTa9mFJv5iQiGwJ3Ics7IJRg5hJcXPRAPMkA+h1Jp
         W5ZujmJjyzQFBRPu3kLqdAuhSQRaqlBB4h+Nvp3BSMGk1TmBi7iJ8E4RNQL3kLB8Br92
         ZKz8q85+h7n5iXv0q9dgds11XbeHCjsbP0antEhgMcImD3zUuh73g3VK0dRImz/aYm+q
         xd60uH6yRR3+/9qAqGzDPpWSNyfm5QAyikSuhELXgUkjKWXNBwCYNyDpg7z4EtTWWHcH
         bwRg==
X-Gm-Message-State: APf1xPAvNWjLIuHKKigNRO9IqnZpIbI1o6Ph6D0nPWer6Ay3s83zJ6CG
	fZa2B65PE0jO0pBJ6mGmlWhoSQ==
X-Received: by 10.99.125.19 with SMTP id y19mr10900419pgc.285.1520224116839;
        Sun, 04 Mar 2018 20:28:36 -0800 (PST)
Return-Path: <arushisinghal19971997@gmail.com>
Received: from seema-Inspiron-15-3567 ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id m12sm17806629pgr.35.2018.03.04.20.28.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Mar 2018 20:28:35 -0800 (PST)
Date: Mon, 5 Mar 2018 09:58:08 +0530
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: abbotti@mev.co.uk
Cc: H Hartley Sweeten <hsweeten@visionengravers.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2] staging: comedi:  Replace "dont" with "don't
Message-ID: <20180305042808.GA24032@seema-Inspiron-15-3567>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace "dont" with "don't".
"Dont" is not same as "Do not" or "Don't".

Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
---
changes in v2
*Commit log is rewrite in the imperative.

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


