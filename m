X-GM-THRID: 6330692191065735168
X-Received: by 10.98.205.131 with SMTP id o125mr8315977pfg.12.1473979143588;
        Thu, 15 Sep 2016 15:39:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.61.202 with SMTP id l68ls4923450otc.1.gmail; Thu, 15 Sep
 2016 15:39:03 -0700 (PDT)
X-Received: by 10.237.59.8 with SMTP id p8mr8378235qte.1.1473979143295;
        Thu, 15 Sep 2016 15:39:03 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id z4si1626703pam.0.2016.09.15.15.39.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 15:39:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q2so106623pfj.0
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Sep 2016 15:39:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=LNaieNDd9Apay8Vf0+gx5P9HxrgJF+j1NOp1pVhdoBg=;
        b=KgRx+10sG/x94GLPQFZWOdJn5MXw1jnvFfaQnNUZ0PzA6MkrDUCFI4KqmsAbSgG51g
         iGx5K1ugtbg+zCfrSFmkpjdFeaHoPb00QEaKC3AcpA8UTovV4DBmEEQSeCWeP4q01xbF
         F93X10PR7op9k1vpcRVVw5d3eKIy8FI9V8lFOtcVPk0/z/gKIPNLrrhGIpA7gTT4fi92
         lnccRZ8rm9EgA7n6zFH716nKYweNZQZEhceJc20HpOFcJV1qpc99dOvuPTjxK2G6b+S/
         rUpc1cNVEUFPuY35wmO2+3vXEPMqUQhdOfNtAVJG6Oglj6TMKvXxMX7a7fZ6XhME3y0S
         EcZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=LNaieNDd9Apay8Vf0+gx5P9HxrgJF+j1NOp1pVhdoBg=;
        b=ceqJo54qz4CL3fJdDw+ivIbcdSYk2Tdl4zfWsEsmRdDOVxyJGKrorml1TX8EeeuP1x
         30KhzzK+/pgeEIt6hXmFGLZ/SCeTlMXfQNpYim3zrG+tzSx7HCOHukd4H/CDTipJ49v5
         eUes++56AWV25/ylsoWFu7n986S0mWEnMzdWKDFxUZ1/rpCeSs1mKVJV6OYnC9JOHTkO
         WpqFpGPRL6e4uGdJNQw3XklkLvp6BJYqD43TwpH+kHhhYQzrw9p7hae07m7E/T4SseUG
         YFJ8wa0VHjxqC0ULqNSrzwV7uGd8T5Emlvt83OFNy2crimPiM+C3U1WEx+lR+51bQPSm
         +D6w==
X-Gm-Message-State: AE9vXwNviRGC6Y5rNzBkYGgkUftZG1q9ME/F5AnTwZ0sJ5z6AQQfFvEHTwgpJZ+5IubTpg==
X-Received: by 10.98.14.20 with SMTP id w20mr18506728pfi.9.1473979143100;
        Thu, 15 Sep 2016 15:39:03 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from gargi-HP-Pavilion-15-Notebook-PC.bits-pilani.ac.in ([45.65.11.138])
        by smtp.googlemail.com with ESMTPSA id h66sm47319967pfc.47.2016.09.15.15.39.00
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 15 Sep 2016 15:39:02 -0700 (PDT)
From: Gargi Sharma <gs051095@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: thomas.petazzoni@free-electrons.com,
	noralf@tronnes.org,
	gregkh@linuxfoundation.org,
	Gargi Sharma <gs051095@gmail.com>
Subject: [PATCH 2/2] staging: fbtft: add spaces around <<
Date: Fri, 16 Sep 2016 04:08:12 +0530
Message-Id: <f17456aff01c295add0bb9f2d0ac32e2a298bb6c.1473978532.git.gs051095@gmail.com>
X-Mailer: git-send-email 2.9.2
In-Reply-To: <cover.1473978532.git.gs051095@gmail.com>
References: <cover.1473978532.git.gs051095@gmail.com>
In-Reply-To: <cover.1473978532.git.gs051095@gmail.com>
References: <cover.1473978532.git.gs051095@gmail.com>

add spaces around << to fix the checkpatch issue, spaces preferred
around that '<<'.

Signed-off-by: Gargi Sharma <gs051095@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1351.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/fbtft/fb_ssd1351.c b/drivers/staging/fbtft/fb_ssd1351.c
index ab1a31d..200aa9b 100644
--- a/drivers/staging/fbtft/fb_ssd1351.c
+++ b/drivers/staging/fbtft/fb_ssd1351.c
@@ -80,10 +80,10 @@ static int set_var(struct fbtft_par *par)
 
 	switch (par->info->var.rotate) {
 	case 0:
-		write_reg(par, 0xA0, remap | 0x00 | 1<<4);
+		write_reg(par, 0xA0, remap | 0x00 | 1 << 4);
 		break;
 	case 270:
-		write_reg(par, 0xA0, remap | 0x03 | 1<<4);
+		write_reg(par, 0xA0, remap | 0x03 | 1 << 4);
 		break;
 	case 180:
 		write_reg(par, 0xA0, remap | 0x02);
-- 
2.9.2


