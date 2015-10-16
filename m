X-GM-THRID: 6206280629046214656
X-Received: by 10.107.28.67 with SMTP id c64mr13751339ioc.1.1445012374035;
        Fri, 16 Oct 2015 09:19:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.143 with SMTP id r15ls403117ioi.75.gmail; Fri, 16 Oct
 2015 09:19:33 -0700 (PDT)
X-Received: by 10.107.156.129 with SMTP id f123mr11307902ioe.4.1445012373749;
        Fri, 16 Oct 2015 09:19:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id vy6si2013436pbc.1.2015.10.16.09.19.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:19:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x236.google.com with SMTP id ez2so8830914pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:19:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=I3v5IbUU7ftoyABZWMdSn5qoSKH7a6D2MtTwVSm/qUo=;
        b=xZPH2Jlm/GJTBtC9fy31R49atuugilUk8UXETjAf1qOUYOX7IQdm8Jusl+AxQjV5V8
         5p00lDaXQwOiv6ft+hSbUSg4zfuDnnj7rwy1R0/yin3LpOJFCU/NipbBUmPbT7pWxEDE
         grOPoZPHYUXU2xk/KChLoAJkJm975Qfee1OwTVfqNVtRx5LWt58tmkFkp4JpFN8nnC42
         p5QP27ABMHBNFOtLkQAcgLefA76olMKTKnFHHzIOTQaoJPj9WgfB5XpZUkq/9KfmDoG8
         V6LSIlVDDhpYIYuxW8rfhabFmuZdpa25daBILAzjJ0ZbBQAdomXwm9DteXHSObZRDQgb
         LrnQ==
X-Received: by 10.68.143.4 with SMTP id sa4mr17256117pbb.111.1445012373626;
        Fri, 16 Oct 2015 09:19:33 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id qb7sm22190953pab.47.2015.10.16.09.19.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:19:32 -0700 (PDT)
Date: Fri, 16 Oct 2015 21:49:20 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: fbtft: fb_ssd1331: Remove unnecessary cast
Message-ID: <7d6d2547bbce0a06915d1593cbbbb697ce70914d.1445012164.git.shivanib134@gmail.com>
References: <cover.1445012164.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445012164.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Compiler can typecast variables implicitly so, explicit type cast is not
required and should be removed.
Semantic patch used:

@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/fbtft/fb_ssd1331.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ssd1331.c b/drivers/staging/fbtft/fb_ssd1331.c
index 53cb8e9..bd294f8 100644
--- a/drivers/staging/fbtft/fb_ssd1331.c
+++ b/drivers/staging/fbtft/fb_ssd1331.c
@@ -60,7 +60,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 {
 	va_list args;
 	int i, ret;
-	u8 *buf = (u8 *)par->buf;
+	u8 *buf = par->buf;
 
 	if (unlikely(par->debug & DEBUG_WRITE_REGISTER)) {
 		va_start(args, len);
-- 
2.1.0


