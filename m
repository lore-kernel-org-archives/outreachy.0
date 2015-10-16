X-GM-THRID: 6206280629046214656
X-Received: by 10.67.14.6 with SMTP id fc6mr13771633pad.14.1445012354468;
        Fri, 16 Oct 2015 09:19:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.164 with SMTP id x4ls254867igl.31.gmail; Fri, 16 Oct
 2015 09:19:14 -0700 (PDT)
X-Received: by 10.107.161.83 with SMTP id k80mr4593373ioe.8.1445012354195;
        Fri, 16 Oct 2015 09:19:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si2139298pbb.2.2015.10.16.09.19.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:19:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id cn9so9805230pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:19:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xZ6TKBo9THFhE6Vtjg+lJhL756ym5wJLGsoS7JdJVtc=;
        b=Xzdr5LY12z7Z3oZIuIGiS2jxdXpvN2B8SWogs7kbAryJGDqDBC3hBXDX9LFjEYd0dP
         voN+FjgomnWMQxkm0JQNoVvL47JgUkcHCoVFSFNlXyRw1+A3EyHKQTE3LJD+4+5QetWK
         +Xe4EGHEEQHgO0TnSohbjl40n2ZxdisDSSTQLmtBGwAcXnz0arGALWPb5cjxsi7LdUGG
         wYY5rSlUgfBuig6M6ynBjyIIYdarjgExkSjdmXGjejiUHmjf3lynvDUBnaZhM51sgb9T
         OTvJ6bbB/kOAE7zS59fKAqmWIcBgkk6uBYiAjXodnWxtgF1JMOy9Io200zWGLT7u7lUx
         /y9g==
X-Received: by 10.66.132.37 with SMTP id or5mr17229882pab.5.1445012354100;
        Fri, 16 Oct 2015 09:19:14 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id we9sm22187975pab.3.2015.10.16.09.19.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:19:13 -0700 (PDT)
Date: Fri, 16 Oct 2015 21:49:01 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 2/3] Staging: fbtft: fb_ra8875: Remove useless cast
Message-ID: <f9ee960295c80a287466c55da2e51e0510b0d9e6.1445012164.git.shivanib134@gmail.com>
References: <cover.1445012164.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445012164.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove explicit type conversion as it is not required.
Semantic patch used:

@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/fbtft/fb_ra8875.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_ra8875.c b/drivers/staging/fbtft/fb_ra8875.c
index 86e43e1..b167c50 100644
--- a/drivers/staging/fbtft/fb_ra8875.c
+++ b/drivers/staging/fbtft/fb_ra8875.c
@@ -204,7 +204,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 {
 	va_list args;
 	int i, ret;
-	u8 *buf = (u8 *)par->buf;
+	u8 *buf = par->buf;
 
 	/* slow down spi-speed for writing registers */
 	par->fbtftops.write = write_spi;
-- 
2.1.0


