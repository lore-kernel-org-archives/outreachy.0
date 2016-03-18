X-GM-THRID: 6263429030948634624
X-Received: by 10.129.130.71 with SMTP id s68mr6440739ywf.29.1458318339237;
        Fri, 18 Mar 2016 09:25:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.227 with SMTP id e90ls2486724qga.74.gmail; Fri, 18 Mar
 2016 09:25:38 -0700 (PDT)
X-Received: by 10.140.42.43 with SMTP id b40mr12385972qga.9.1458318338769;
        Fri, 18 Mar 2016 09:25:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id sf5si2246874pac.1.2016.03.18.09.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 09:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id u190so17707928pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 09:25:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=s99UVt5MteaJC048+bHd9pos7LHwbOGR0pJ9CBHh6XQ=;
        b=U1AJaGgK7MilbB+BqwcoaUxepvWHGuP2U6bZJnKzuQo251SVNO9MxNHVtgjeKZmGob
         flOuAi+o2hnCySk5S1yQunH5Y1lDYS/rMDy0gMKn9Cq9YNeSTXtJ7mT7RdyfmzI/OD9g
         p13BcSxCm9WOOFDZurJ2YIf3SWOWmzNe2yGaesJKgC/SHTPuIYaCmm5B6Hl6MOPTzmkU
         NU+M1IlEmlrhzTzthhfJ8oejocFr6KWYE7buuSW1iCAxvqiM8wNbawXSqxiHu9BhkiBx
         Hcap3PnX2mTCsALB4qZ0s4DC86CGUHaPlSs/rOrhBOUxUFrysZlCOPwqLV5/w8H7QwUd
         FkKw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=s99UVt5MteaJC048+bHd9pos7LHwbOGR0pJ9CBHh6XQ=;
        b=DY5/dmRnZPQDxj9hVCbfDcHXKYUGiXjtLChJuthInOIv9Lir4kxc4DZyExjhU+mrV5
         pKE/0LpccdtNwQdjTpsbF4OycjbHbMuT1Phlk9+AXP9ZMpq+fnvTW2YwJ36nzj8pvoyQ
         uMiZ6Kb0IAGg9EL7dFpHhIRn5dL4GWB+fhOYX9JIWJE60+S/9nkB2PkVfPnhchTo8usd
         a4rPImOvZwpIiKxmtQRHU8+lAMWdwIUL4O39qjmHGJ1x8ongCHR9EgpZH6xfSS9iVMEY
         dYbQjSBlxVprDrEfAzeBTpM17stnZPyb4Zro6109hrX6XOxCuCJNrlZSuegoyQxVrt+o
         Oa4w==
X-Gm-Message-State: AD7BkJISryWPyBqA6hgN5ukOL4Rfj3GB/zvyNYCIVpLfcfzinyJIsGGuDoJ++R2ByZfjWg==
X-Received: by 10.66.175.110 with SMTP id bz14mr24979816pac.41.1458318338602;
        Fri, 18 Mar 2016 09:25:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id n19sm22093156pfi.53.2016.03.18.09.25.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 09:25:38 -0700 (PDT)
Date: Fri, 18 Mar 2016 14:56:31 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: fbtft: fbtft_device: No space is necessary
 after cast.
Message-ID: <6c2af51066f393b5367c9fc5a0fccb85fe030dcd.1458292699.git.bankarsandhya512@gmail.com>
References: <cover.1458292699.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458292699.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after cast.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/fbtft/fbtft_device.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft_device.c b/drivers/staging/fbtft/fbtft_device.c
index 241d7c6..e4a355a 100644
--- a/drivers/staging/fbtft/fbtft_device.c
+++ b/drivers/staging/fbtft/fbtft_device.c
@@ -1254,7 +1254,7 @@ static int write_gpio16_wr_slow(struct fbtft_par *par, void *buf, size_t len)
 		"%s(len=%d): ", __func__, len);
 
 	while (len) {
-		data = *(u16 *) buf;
+		data = *(u16 *)buf;
 
 		/* Start writing by pulling down /WR */
 		gpio_set_value(par->gpio.wr, 0);
@@ -1283,7 +1283,7 @@ static int write_gpio16_wr_slow(struct fbtft_par *par, void *buf, size_t len)
 		gpio_set_value(par->gpio.wr, 1);
 
 #ifndef DO_NOT_OPTIMIZE_FBTFT_WRITE_GPIO
-		prev_data = *(u16 *) buf;
+		prev_data = *(u16 *)buf;
 #endif
 		buf += 2;
 		len -= 2;
@@ -1436,7 +1436,7 @@ static int __init fbtft_device_init(void)
 		}
 		strncpy(fbtft_device_param_gpios[i].name, p_name,
 			FBTFT_GPIO_NAME_SIZE - 1);
-		fbtft_device_param_gpios[i++].gpio = (int) val;
+		fbtft_device_param_gpios[i++].gpio = (int)val;
 		if (i == MAX_GPIOS) {
 			pr_err("gpios parameter: exceeded max array size: %d\n",
 			       MAX_GPIOS);
-- 
1.8.3.4


