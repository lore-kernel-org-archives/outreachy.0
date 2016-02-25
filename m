X-GM-THRID: 6255098629488377856
X-Received: by 10.107.135.209 with SMTP id r78mr1043343ioi.19.1456378655950;
        Wed, 24 Feb 2016 21:37:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.138.194 with SMTP id c63ls304595ioj.109.gmail; Wed, 24 Feb
 2016 21:37:35 -0800 (PST)
X-Received: by 10.66.147.106 with SMTP id tj10mr40772973pab.30.1456378655677;
        Wed, 24 Feb 2016 21:37:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pf0-x22e.google.com (mail-pf0-x22e.google.com. [2607:f8b0:400e:c00::22e])
        by gmr-mx.google.com with ESMTPS id ui7si978407pab.0.2016.02.24.21.37.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 24 Feb 2016 21:37:35 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) client-ip=2607:f8b0:400e:c00::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c00::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22e.google.com with SMTP id q63so26491882pfb.0
        for <outreachy-kernel@googlegroups.com>; Wed, 24 Feb 2016 21:37:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=otkXj2iIi0DXi7mk+3kH+ic8TrE6erCy7EhEpFSWwd0=;
        b=kZTw8gKzwZ9ilRceBN/0vB8GdrLbL3SfzsRmB4QfS+rDc79C6adiXPvkUEjU9kj0Pl
         CaU+ylxE+UjCtbeVDlIgSLCBKnMJ/RddCjT/t2WbPZGTiEQKNoNLm7QY4vOnKScA/Py4
         QS0ILkrc7GNjKSKv6G5o/n2I26CBMIVznvMJtRQc7E7VNbhf5DdQigm1Nv1LuA0qFSXm
         mZXrJIKzQNR/B5zJ8XxIVLMbOrhbqGuCyLZp6SltjRjVs174bx5/z1pqNyzbYNV8rqro
         GZ9ThH5gRdhhyXfM0YvLhZ85VQoHZ5qUAB05sER+Nn5lmKMJ5NY/LV3S9cOTVcHa+PeO
         5kCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=otkXj2iIi0DXi7mk+3kH+ic8TrE6erCy7EhEpFSWwd0=;
        b=dXl1mhDJJHpYkjayYW1KKOV2O5lNfYBADh0aB3Sq8PCdZmYmBFjEVq3T1ZIAKnX+Dp
         a9z6kYJZ7hUokGJpsl3GaKTISwcCtv6rLzDNYjd6Gx4mAkY7H9Rzrxbi6KZKCiFYelvW
         4KJBGozAz8fTQ8MVc/O+NY0gidSfFC/9rzqcKaOPY9fEFkZY9ny/NI/cYLWfm+bAVgYs
         /dIVZBM5vmP4y+vomFROegMkfDABpcepV0Gd3mPPqqZkzzQgzv3EM4hhhx1m9SrQ+h31
         jcz3gdBXGjoINYcC5pL+KD3XXHiFLr5gXctQbZALxSo7RUVSviXCjqf4XTxOICwUYICo
         eIxQ==
X-Gm-Message-State: AG10YOSplbOSVitP29Ql3y3P4bTnuy+ljrsKx0QcD5R0m9gIn7sm5WA6yKTFhA0R0EyEGg==
X-Received: by 10.98.11.217 with SMTP id 86mr59497236pfl.71.1456378655489;
        Wed, 24 Feb 2016 21:37:35 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([122.176.175.16])
        by smtp.gmail.com with ESMTPSA id b4sm1308449pas.19.2016.02.24.21.37.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 24 Feb 2016 21:37:35 -0800 (PST)
Date: Thu, 25 Feb 2016 11:07:28 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/6] staging: fbtft: Remove unnecessary spi_set_drvdata()
Message-ID: <4d8cf2d62170a550b978be89d210387f43dbb43b.1456377485.git.amitoj1606@gmail.com>
References: <cover.1456377485.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1456377485.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

Unnecessary spi_set_drvdata() has been removed since the driver 
core clears the driver data to NULL after device release or on 
probe failure. There is no need to manually clear the device 
driver data to NULL.

The Coccinelle semantic patch used to make this change is as follows:
@@
struct spi_device *spi;
@@
- spi_set_drvdata(spi, NULL);
// </smpl>

Due to this removal, variable `spi` was unused so dropped `spi`

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 5 -----
 1 file changed, 5 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index 6c9cdd2..574c148 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -985,8 +985,6 @@ int fbtft_register_framebuffer(struct fb_info *fb_info)
 reg_fail:
 	if (par->fbtftops.unregister_backlight)
 		par->fbtftops.unregister_backlight(par);
-	if (spi)
-		spi_set_drvdata(spi, NULL);
 
 	return ret;
 }
@@ -1004,10 +1002,7 @@ EXPORT_SYMBOL(fbtft_register_framebuffer);
 int fbtft_unregister_framebuffer(struct fb_info *fb_info)
 {
 	struct fbtft_par *par = fb_info->par;
-	struct spi_device *spi = par->spi;
 
-	if (spi)
-		spi_set_drvdata(spi, NULL);
 	if (par->fbtftops.unregister_backlight)
 		par->fbtftops.unregister_backlight(par);
 	fbtft_sysfs_exit(par);
-- 
1.9.1


