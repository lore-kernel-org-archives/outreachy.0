X-GM-THRID: 6206280629046214656
X-Received: by 10.50.27.35 with SMTP id q3mr4926666igg.0.1445012330679;
        Fri, 16 Oct 2015 09:18:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.136.130 with SMTP id qa2ls224127igb.31.canary; Fri, 16 Oct
 2015 09:18:50 -0700 (PDT)
X-Received: by 10.66.62.195 with SMTP id a3mr12628338pas.22.1445012330417;
        Fri, 16 Oct 2015 09:18:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si2139298pbb.2.2015.10.16.09.18.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:18:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id cn9so9805230pad.2
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:18:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=O60bpCC5UeagPmPO0cp/h4fX3Rw4IQWOMgxvttoutuE=;
        b=fBeaHw5nneWjgzTXIUIOiqlVQQgnnRPFvbBSMBpL7gyjdZ2aujFJ4h3SIqGfpxlBuC
         T3D5/XRpkumbxc2oq3+wIAdjtmrDrsFZjCsQ2Z9fnNmEeY1obl/JjtEBSNtYf7Y0A0GK
         RHSykW9j2Z0G3B4IsdYFd6zV7VNfmEuesrQzwEawkHbWzq7zp0pxwPn8BSxf6KWumsq3
         SyElrcQzLAj5p2arqNroQiyfkCkibbcZJdRoAkRAEsUKP3gb8NjtSbxb1QgvEKXMUjbS
         GSTXDqTO+FO+E39DtwA+7RFORKr8O9v95lrVIGTrx7B46a5qiGktWgU6iYFkalQ+Mtf9
         Kwmg==
X-Received: by 10.66.222.70 with SMTP id qk6mr17603844pac.68.1445012330270;
        Fri, 16 Oct 2015 09:18:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id rz7sm22066061pbc.7.2015.10.16.09.18.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:18:49 -0700 (PDT)
Date: Fri, 16 Oct 2015 21:48:36 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/3] Staging: fbtft: fb_agm1264k-fl: Remove unnecessary cast
Message-ID: <3378e3e322ebf5dfe97e760c38e5f584d68ddd89.1445012164.git.shivanib134@gmail.com>
References: <cover.1445012164.git.shivanib134@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1445012164.git.shivanib134@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

Remove explicit typecast from variables as compiler can typecast
implicitly.
Semantic patch used:

@@
type T;
T e;
identifier x;
@@

* T x = (T)e;

Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
---
 drivers/staging/fbtft/fb_agm1264k-fl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/fbtft/fb_agm1264k-fl.c b/drivers/staging/fbtft/fb_agm1264k-fl.c
index 19f6136..2a50cf9 100644
--- a/drivers/staging/fbtft/fb_agm1264k-fl.c
+++ b/drivers/staging/fbtft/fb_agm1264k-fl.c
@@ -177,7 +177,7 @@ static void write_reg8_bus8(struct fbtft_par *par, int len, ...)
 {
 	va_list args;
 	int i, ret;
-	u8 *buf = (u8 *)par->buf;
+	u8 *buf = par->buf;
 
 	if (unlikely(par->debug & DEBUG_WRITE_REGISTER)) {
 		va_start(args, len);
-- 
2.1.0


