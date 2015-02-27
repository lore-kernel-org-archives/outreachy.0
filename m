X-GM-THRID: 4475579269120
X-Received: by 10.112.161.9 with SMTP id xo9mr2078917lbb.7.1425042642171;
        Fri, 27 Feb 2015 05:10:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.102 with SMTP id q6ls161711laa.24.gmail; Fri, 27 Feb
 2015 05:10:41 -0800 (PST)
X-Received: by 10.112.222.131 with SMTP id qm3mr2018784lbc.1.1425042641631;
        Fri, 27 Feb 2015 05:10:41 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id cl5si110358wib.3.2015.02.27.05.10.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 05:10:41 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22a.google.com with SMTP id x12so20305567wgg.11
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 05:10:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=GJbuSfNnuO5MSZszV0QVKnuNfAy+IrL3jGUbFE0kE0o=;
        b=whkes+yjYRGcIAt0ZConMyCLrK2o85jnGeNspve0KZCx/D4qT7Vrw7uVdg5xgmmfaK
         HQAX9NK2Vh1VFfMxGVx0cUd/a+3gkJ/s22K5bUfVx1M9vD/sqpNUJ9bLBudh/YSuy2MZ
         ralC/59bcbPwcqWnJZQoYy2aRZCcMdJQpkDQ2QIfSXGhJHvBWYQ2aDak+7IQETS+UJES
         2vvvi/7HvLrhjo9edOfaM08pCrw2h+yw6w2DkuF5IizbzE3sU5AKbRpwOFmRN58PSK9f
         Nnv5WhmfD/WDE6WiIEFLOnuLSwqkN8wWUlOp0a+cKlTgEYIUaOHM82yovgcDzo1OGQzQ
         7RXg==
X-Received: by 10.194.103.228 with SMTP id fz4mr27306115wjb.82.1425042641553;
        Fri, 27 Feb 2015 05:10:41 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id ha5sm2796262wib.1.2015.02.27.05.10.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 05:10:40 -0800 (PST)
Date: Fri, 27 Feb 2015 15:10:30 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 23/24] staging: fbtft: remove unused variable
Message-ID: <2df9d5513b0cad9561ebe355dbed723b987ca4d8.1425035012.git.mahfouz.saif.elyazal@gmail.com>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

This patch removes a variable that was simply used to
store the return value of a function call before
returning it.

The issue was detected and resolved using the following
coccinelle script:

@@
identifier len,f;
@@

-int len;
 ... when != len
     when strict
-len =
+return
        f(...);
-return len;

Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
---
 drivers/staging/fbtft/fbtft-core.c | 4 +---
 1 file changed, 1 insertion(+), 3 deletions(-)

diff --git a/drivers/staging/fbtft/fbtft-core.c b/drivers/staging/fbtft/fbtft-core.c
index ac4287f..8ca4511 100644
--- a/drivers/staging/fbtft/fbtft-core.c
+++ b/drivers/staging/fbtft/fbtft-core.c
@@ -1046,7 +1046,6 @@ int fbtft_unregister_framebuffer(struct fb_info *fb_info)
 {
 	struct fbtft_par *par = fb_info->par;
 	struct spi_device *spi = par->spi;
-	int ret;
 
 	if (spi)
 		spi_set_drvdata(spi, NULL);
@@ -1055,8 +1054,7 @@ int fbtft_unregister_framebuffer(struct fb_info *fb_info)
 	if (par->fbtftops.unregister_backlight)
 		par->fbtftops.unregister_backlight(par);
 	fbtft_sysfs_exit(par);
-	ret = unregister_framebuffer(fb_info);
-	return ret;
+	return unregister_framebuffer(fb_info);
 }
 EXPORT_SYMBOL(fbtft_unregister_framebuffer);
 
-- 
1.9.3


-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

