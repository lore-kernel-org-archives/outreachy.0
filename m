X-GM-THRID: 6391115303185547264
X-Received: by 10.99.111.143 with SMTP id k137mr4971310pgc.1.1488124478446;
        Sun, 26 Feb 2017 07:54:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.8.69 with SMTP id 63ls11459815oty.0.gmail; Sun, 26 Feb
 2017 07:54:38 -0800 (PST)
X-Received: by 10.129.90.215 with SMTP id o206mr4677509ywb.101.1488124478063;
        Sun, 26 Feb 2017 07:54:38 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id u12si2815868pfd.3.2017.02.26.07.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 26 Feb 2017 07:54:37 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id 25so1091689pgy.3
        for <outreachy-kernel@googlegroups.com>; Sun, 26 Feb 2017 07:54:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0ZHELMaWsFKXOB5AJn9z4PaVhdAK9c15wJM0MLJBcu4=;
        b=GQsQsIS1//uuDdPza/e3YujYrBipN9T2FPS4Ycz2yzvg7c1jWjt3kE7CG+gHGOZO2e
         SemjSwhpoSeyaayF01ZmYnTGpdew0+iy7mGp7qjjJm9BKm7mPPyH//TVEHuMQK1Lk9zb
         c19k0AHMoF3O7TAGR2MATlA869jnhf8vunrwqtKjy82epDHbPJpIf35ddWSYigmG62x0
         Z99F4oBsFjNTUNvB4uvk5mmOSbuM3GmHpgu4gy912In07O0cetOvkc0CyhIrc44JVqoA
         m5Ccq7zpkDd9dby1UwHlumbJnJB8KeDhB0cPLSv5wDoowKlQhET3/5xn6tQIu8zQ86QU
         XLHQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=0ZHELMaWsFKXOB5AJn9z4PaVhdAK9c15wJM0MLJBcu4=;
        b=InVT7CvJ2KKDoVvBl6YBJD+BihSE3v4abKcAt9+j+OmTxEo8v24uCwjKy3rN0SCA1R
         jCsXFuNskWqSMTXKNXSv1Nuwjdy/Nuowb/zzlw8kxeBQFo8ObNM1eS34vA0VJP+5dt/f
         FegLwP/RkJXXzMMJFS1/MilR7QbWevKw8SnoE+4AFxonAwMZhWUNUGcODinLeYmlJagP
         rf3B/8POB1ti8j03oIgF7hH3pPWy4951XaRHzBLP4U5AJH3NxykfKWbFkSzyil2idmkB
         KQzQo2banex8XVORLDXhxgG9RQr9OeYZtm1uXSPQ5CGEEzmOlOdYebH6Ytw/QvOQDmMo
         A/6w==
X-Gm-Message-State: AMke39lKZcEjpCYF2qAV1GxqwSCxZVdaTutau1aRexIll1wZeFwmkHABnY9FJrRSD5NUxQ==
X-Received: by 10.98.35.146 with SMTP id q18mr15607025pfj.59.1488124477658;
        Sun, 26 Feb 2017 07:54:37 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([117.192.145.221])
        by smtp.gmail.com with ESMTPSA id q64sm25558454pga.0.2017.02.26.07.54.36
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 26 Feb 2017 07:54:37 -0800 (PST)
Message-ID: <58b2fa3d.4343630a.91a3b.5bc1@mx.google.com>
X-Google-Original-Message-ID: <20170226155433.GA29036@<rvarsha016@gmail.com>>
Date: Sun, 26 Feb 2017 21:24:34 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: [PATCH v4 5/7] staging: sm750fb: Added spaces around arithmetic
 operators.
References: <cover.1488122987.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488122987.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Added spaces around arithmetic operators (/, *), to fix the checkpatch
issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
Changes in v4
- Added proper version number to patch.

 drivers/staging/sm750fb/sm750.h       | 2 +-
 drivers/staging/sm750fb/sm750_accel.c | 2 +-
 2 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/sm750fb/sm750.h b/drivers/staging/sm750fb/sm750.h
index 28f4b9b..306711e 100644
--- a/drivers/staging/sm750fb/sm750.h
+++ b/drivers/staging/sm750fb/sm750.h
@@ -177,7 +177,7 @@ struct lynxfb_par {
 
 static inline unsigned long ps_to_hz(unsigned int psvalue)
 {
-	unsigned long long numerator = 1000*1000*1000*1000ULL;
+	unsigned long long numerator = 1000 * 1000 * 1000 * 1000ULL;
 	/* 10^12 / picosecond period gives frequency in Hz */
 	do_div(numerator, psvalue);
 	return (unsigned long)numerator;
diff --git a/drivers/staging/sm750fb/sm750_accel.c b/drivers/staging/sm750fb/sm750_accel.c
index af0db57..57ae743 100644
--- a/drivers/staging/sm750fb/sm750_accel.c
+++ b/drivers/staging/sm750fb/sm750_accel.c
@@ -384,7 +384,7 @@ int sm750_hw_imageblit(struct lynx_accel *accel,
 	/* Write MONO data (line by line) to 2D Engine data port */
 	for (i = 0; i < height; i++) {
 		/* For each line, send the data in chunks of 4 bytes */
-		for (j = 0; j < (ul4BytesPerScan/4); j++)
+		for (j = 0; j < (ul4BytesPerScan / 4); j++)
 			write_dpPort(accel, *(unsigned int *)(pSrcbuf + (j * 4)));
 
 		if (ulBytesRemain) {
-- 
2.9.3


