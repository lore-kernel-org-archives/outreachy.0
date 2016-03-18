X-GM-THRID: 6263429030948634624
X-Received: by 10.182.236.4 with SMTP id uq4mr12581352obc.3.1458318530474;
        Fri, 18 Mar 2016 09:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.102.52 with SMTP id v49ls2701269qge.71.gmail; Fri, 18 Mar
 2016 09:28:49 -0700 (PDT)
X-Received: by 10.129.154.16 with SMTP id r16mr12245316ywg.39.1458318529893;
        Fri, 18 Mar 2016 09:28:49 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si2250474pab.0.2016.03.18.09.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 09:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so18029866pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 09:28:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=1kyGWjA78x63vDMEZjeJn9YZkicCY+vZg/vW/p309Yk=;
        b=YUtYrN0etHhVo3D9alqMFAatNioOHG9jDfoOILki/Lpm5fsHR4G29czrYYvttL2AP8
         glsXdGFh1W6SdJjKkjU4E7+NHqpl/kYcwsaa/eQRZNJWlTCYdBHX14uIexBBcyjt7zrM
         6prrd1QXD37qakHmpipGaJKetlndzB3gCVSARcudqymac+r61/ZTghPFFM4fAhf9Defk
         NgI80BIRbZ27UdH8efJ/4w+9yZE1uujI5h4xhrZezRMlv51QuIZWcE1mrYsk8KsoEVzG
         asSlXOxJpsp7DMSoRtAWp44Kx5aMI0uE8V6h6RnrTv396i4zMhUkSpGl7xw4R4CMW3Lj
         Se4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=1kyGWjA78x63vDMEZjeJn9YZkicCY+vZg/vW/p309Yk=;
        b=bf+rghhV4CfMSTZk2PvXf4Hjz9t98+N/YNBzF8PadisJmg4P0N0rqnCOHEHw/2Ui3B
         tVz76GIoFh0avo40HzOuRZEtHSE4WjP8XpEOpyUuCysujHQHJvD504NwWuoHI/x0XRlj
         Ysg+iwJSTHOc4sMj8QFiIHixOHXHv15goO3jL4TFjsKgZ433OcepfRKSPVf7cQcyBvFI
         WvBXx+EZ4BGiEl+kkbTeOuyVBM1Q/rXSFh/uRbxSBuEX6Gg0mc1SGIL43XL2/7Xnu5d/
         rSdqRmUDN+Wo5KS4dljPpiQebIlFNw7nC/AC4wM7oQMbk/1fh7YWeLJJCz+/+cB45DOq
         6dGQ==
X-Gm-Message-State: AD7BkJLzV85SJwdhylsbJwJGaj9tdxvcD86RKh7xWSFJI6bQovM1GOpUoaOTTWBciPCr2Q==
X-Received: by 10.98.14.67 with SMTP id w64mr25123215pfi.154.1458318529695;
        Fri, 18 Mar 2016 09:28:49 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.148])
        by smtp.gmail.com with ESMTPSA id 3sm22094693pfn.59.2016.03.18.09.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 09:28:49 -0700 (PDT)
Date: Fri, 18 Mar 2016 14:59:34 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: fbtft: fbtft-io: No space is necessary after
 cast.
Message-ID: <b5e3b4e9482c9341ba0d2ed7c8c30bf448b4842b.1458292699.git.bankarsandhya512@gmail.com>
References: <cover.1458292699.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458292699.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

No space is necessary after cast.This patch is found by checkpatch.pl script.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/fbtft/fbtft-io.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-io.c b/drivers/staging/fbtft/fbtft-io.c
index a6f091f..4dcea2e 100644
--- a/drivers/staging/fbtft/fbtft-io.c
+++ b/drivers/staging/fbtft/fbtft-io.c
@@ -141,7 +141,7 @@ int fbtft_write_gpio8_wr(struct fbtft_par *par, void *buf, size_t len)
 		"%s(len=%d): ", __func__, len);
 
 	while (len--) {
-		data = *(u8 *) buf;
+		data = *(u8 *)buf;
 
 		/* Start writing by pulling down /WR */
 		gpio_set_value(par->gpio.wr, 0);
@@ -170,7 +170,7 @@ int fbtft_write_gpio8_wr(struct fbtft_par *par, void *buf, size_t len)
 		gpio_set_value(par->gpio.wr, 1);
 
 #ifndef DO_NOT_OPTIMIZE_FBTFT_WRITE_GPIO
-		prev_data = *(u8 *) buf;
+		prev_data = *(u8 *)buf;
 #endif
 		buf++;
 	}
@@ -191,7 +191,7 @@ int fbtft_write_gpio16_wr(struct fbtft_par *par, void *buf, size_t len)
 		"%s(len=%d): ", __func__, len);
 
 	while (len) {
-		data = *(u16 *) buf;
+		data = *(u16 *)buf;
 
 		/* Start writing by pulling down /WR */
 		gpio_set_value(par->gpio.wr, 0);
@@ -220,7 +220,7 @@ int fbtft_write_gpio16_wr(struct fbtft_par *par, void *buf, size_t len)
 		gpio_set_value(par->gpio.wr, 1);
 
 #ifndef DO_NOT_OPTIMIZE_FBTFT_WRITE_GPIO
-		prev_data = *(u16 *) buf;
+		prev_data = *(u16 *)buf;
 #endif
 		buf += 2;
 		len -= 2;
-- 
1.8.3.4


