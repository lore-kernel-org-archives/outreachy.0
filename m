X-GM-THRID: 6664414939270086656
X-Received: by 2002:ac8:362e:: with SMTP id m43mr13645526qtb.53.1552145904057;
        Sat, 09 Mar 2019 07:38:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3bf2:: with SMTP id s47ls2332086qte.5.gmail; Sat, 09 Mar
 2019 07:38:23 -0800 (PST)
X-Google-Smtp-Source: APXvYqx92Uw+SDMzYebiuLnvBAF9ptebYnYmSfMOp5SsqzE5y++MCrR2OHo1o1B/4r1W6c7BTwaw
X-Received: by 2002:ac8:32f7:: with SMTP id a52mr13859923qtb.56.1552145903459;
        Sat, 09 Mar 2019 07:38:23 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552145903; cv=none;
        d=google.com; s=arc-20160816;
        b=AnVvkci4sBQSvQbMVyc41jE3DHlmdCC8UCfRXzZF0q1KfwnyEbb2+GTnabZv0cefIE
         qw2f9r5BhJd5bB2kMMy+WGCvlOzZ+IIxkSJkB2rDR00GEcWuF8xwsHKuS9VUrQBdoSqS
         C+d9lDrx7BO6efr31wV0TQ0DmpYo6kZFvQ11b97jvHLJvjoAgTll93h0XDKBPGQyCRLU
         FadHnsXkR3lf50vTM/OwFuzxnRg7v/jWOCyvApx7+7xnfcV161JnkbQAHTvfZoaTukVD
         8kMJwjPJGvNi5wBG9Ycjnp06gsv7O53T0WUAwCT+oLm5DEbiWv4B/DqD1O4MA7g/DDN1
         vSVw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7RQBDJyarVps8PRsuGmq+hCYxaghDUhj/FT/X/742vA=;
        b=Qz2hLPUG/im04nlbjykC8bNbl85WImTnJAW9xWg7s1HmbIFxI1j+ZQRyAv50YbWDlW
         1wjZvqM38MKkmwVKxvXFqkU3irfXyXVbIg941lePWBq5oUBiBdpl6sy4fjERzGoTU4qM
         RTZhbzwW/F2Ex0Q2JP7Rb+Dv9+mUzawrqjbHxa0taLKbsOTRfsVvcrLt3Sei3U2f3kJN
         j4VC02h+upEMHp9OLsvVQGp1lCxKvUD0iecwECKp0c94bES2axqMz/Dkj6YlCfLZH9BK
         hJn6ito6ap+pRWw09jfqfz4dRcc04MjX0Oo4Z4qLkPbEym4e72xH4Hv7nwTbK+TA8L96
         fhmA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UKt2wh0M;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id p1si43902qkg.3.2019.03.09.07.38.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Mar 2019 07:38:23 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=UKt2wh0M;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id u9so368968pfn.1
        for <outreachy-kernel@googlegroups.com>; Sat, 09 Mar 2019 07:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7RQBDJyarVps8PRsuGmq+hCYxaghDUhj/FT/X/742vA=;
        b=UKt2wh0MAPBCkCgDbMR9QcLTGxXK9OilOwBjNxK4GhwPt7+mo4OrVWT82G+9txgJP3
         t9jaMCUn4H6+3T4JEOREDehcBuFj8fZ1UFP9DMmkf4DySPB5vmRj8NHuWxGpXdYq7T8o
         hbucWkwiuv7AKpTAaQ1dX5HR7/imVaasIEmKW+MXFUNnS9uq+3iBfPt8iHz2us9Q3z0Y
         Qp+oJnapiwkKojx2bwKYWnXSa9+kAQR7JBWvXOz6YZ6yh4t6EA1cjMDi+JklhNj63c4I
         avW/UzsG1BVJCqaIktVv8wMFFELblkl+vPaxaPtNAk5P9BlEGupWNrWtht8Rs0thUGaO
         639g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7RQBDJyarVps8PRsuGmq+hCYxaghDUhj/FT/X/742vA=;
        b=iclnNYRQtvAilh6mL4GBPbcod6HZxanMWZhmYERVwxJGMpvfO61Y7o8pjAzPSk9aJf
         JBgL3QGH1TDCzgyyq2HZkxjpO2ELnLn34l0IGmWAzgWtMtx+QiWfcZVM8SpJ6UBIgrPa
         YmgWV7CAFmPRrxCpMywUkFer1xDw4tWMAfNryK2K5WyURi+90iAC5abfB5X98thEgbYE
         R9JA3UBrrspX+GGccO+O0ueKAO0mY4SrK6SYDNmJQ591dzhdhnZEDT9GuZMdtqxcYT3L
         Pe1zPuAdV/GfIAeqOWNNQFJS92QEB0r4JZv1jqDqpXkQ+ZrWm0tYtvmKi3dHIPipK2HF
         D5ag==
X-Gm-Message-State: APjAAAXdTAGMUxV8doGH0U/dFCv/GIL8AMEQ/UC9Q8Vse4BCOldYHe3U
	gCLj563RUgkPRany5D3Njzn6ZNvJgxM=
X-Received: by 2002:a63:5b43:: with SMTP id l3mr21814975pgm.298.1552145902304;
        Sat, 09 Mar 2019 07:38:22 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2e8c:9ce5:f828:5bfa:d9dc:e4ec])
        by smtp.gmail.com with ESMTPSA id p11sm7054732pfi.10.2019.03.09.07.38.20
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 09 Mar 2019 07:38:21 -0800 (PST)
Date: Sat, 9 Mar 2019 21:08:13 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH v5 1/2] staging: fbtft: line over 80 characters.
Message-ID: <20190309153813.GA16298@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Fix coding style issues, which solves checkpatch.pl warning:
"WARNING: line over 80 characters".

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
Changes in v5:
  - Make patch series.

Changes in v4:
  - Convert a ternary statement into a if statement.
  
Changes in v3:
  - Make the code in original form.
  - Use tab to line up the code.

Changes in v2:
  - Improve code order.
  - Make the code more readable.

 drivers/staging/fbtft/fb_ssd1331.c |  3 ++-
 drivers/staging/fbtft/fbtft.h      | 14 +++++++++++---
 drivers/staging/fbtft/flexfb.c     |  3 ++-
 3 files changed, 15 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 9f54fe2..4cfe9f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -74,7 +74,8 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 		for (i = 0; i < len; i++)
 			buf[i] = (u8)va_arg(args, unsigned int);
 		va_end(args);
-		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device, u8, buf, len, "%s: ", __func__);
+		fbtft_par_dbg_hex(DEBUG_WRITE_REGISTER, par, par->info->device,
+				  u8, buf, len, "%s: ", __func__);
 	}
 
 	va_start(args, len);
diff --git a/drivers/staging/fbtft/fbtft.h b/drivers/staging/fbtft/fbtft.h
index 7fdd3b0..c265aff 100644
--- a/drivers/staging/fbtft/fbtft.h
+++ b/drivers/staging/fbtft/fbtft.h
@@ -347,9 +347,17 @@ module_exit(fbtft_driver_module_exit);
 
 /* shorthand debug levels */
 #define DEBUG_LEVEL_1	DEBUG_REQUEST_GPIOS
-#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS | DEBUG_TIME_FIRST_UPDATE)
-#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET | DEBUG_INIT_DISPLAY | DEBUG_BLANK | DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS | DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT | DEBUG_SYSFS)
-#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ | DEBUG_FB_WRITE | DEBUG_FB_FILLRECT | DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT | DEBUG_FB_BLANK)
+#define DEBUG_LEVEL_2	(DEBUG_LEVEL_1 | DEBUG_DRIVER_INIT_FUNCTIONS |	\
+			 DEBUG_TIME_FIRST_UPDATE)			\
+#define DEBUG_LEVEL_3	(DEBUG_LEVEL_2 | DEBUG_RESET |			\
+			 DEBUG_INIT_DISPLAY | DEBUG_BLANK |		\
+			 DEBUG_REQUEST_GPIOS | DEBUG_FREE_GPIOS |	\
+			 DEBUG_VERIFY_GPIOS | DEBUG_BACKLIGHT |		\
+			 DEBUG_SYSFS)					\
+#define DEBUG_LEVEL_4	(DEBUG_LEVEL_2 | DEBUG_FB_READ |		\
+			 DEBUG_FB_WRITE | DEBUG_FB_FILLRECT |		\
+			 DEBUG_FB_COPYAREA | DEBUG_FB_IMAGEBLIT |	\
+			 DEBUG_FB_BLANK)				\
 #define DEBUG_LEVEL_5	(DEBUG_LEVEL_3 | DEBUG_UPDATE_DISPLAY)
 #define DEBUG_LEVEL_6	(DEBUG_LEVEL_4 | DEBUG_LEVEL_5)
 #define DEBUG_LEVEL_7	0xFFFFFFFF
diff --git a/drivers/staging/fbtft/flexfb.c b/drivers/staging/fbtft/flexfb.c
index b91b459..3747321 100644
--- a/drivers/staging/fbtft/flexfb.c
+++ b/drivers/staging/fbtft/flexfb.c
@@ -671,7 +671,8 @@ static int flexfb_probe_common(struct spi_device *sdev,
 			break;
 		case 9:
 			if (regwidth == 16) {
-				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n", regwidth, buswidth);
+				dev_err(dev, "argument 'regwidth': %d is not supported with buswidth=%d and SPI.\n",
+					regwidth, buswidth);
 				return -EINVAL;
 			}
 			par->fbtftops.write_register = fbtft_write_reg8_bus9;
-- 
2.7.4


