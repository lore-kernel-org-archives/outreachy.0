X-GM-THRID: 6206278129462280192
X-Received: by 10.182.126.47 with SMTP id mv15mr11635559obb.44.1445011731110;
        Fri, 16 Oct 2015 09:08:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.69 with SMTP id c66ls385417iod.15.gmail; Fri, 16 Oct
 2015 09:08:50 -0700 (PDT)
X-Received: by 10.107.167.13 with SMTP id q13mr13665661ioe.12.1445011730813;
        Fri, 16 Oct 2015 09:08:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x236.google.com (mail-pa0-x236.google.com. [2607:f8b0:400e:c03::236])
        by gmr-mx.google.com with ESMTPS id ce6si1548584pad.0.2015.10.16.09.08.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:08:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) client-ip=2607:f8b0:400e:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::236 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pacez2 with SMTP id ez2so8620454pac.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 09:08:50 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=O60bpCC5UeagPmPO0cp/h4fX3Rw4IQWOMgxvttoutuE=;
        b=GZjSkStmZRIawZ77/JiHw6LlbonHiLApb/3I7Y8HonismpxnBNCMrUaCHA6159n71m
         mCiGxbVS40TiK/pJOlqD6FL56NlCX25XR3CQJ3FMfOoIyB2QN/iFx4kPWmADQqa1C2lh
         MpY7PGe8kZUMLlgZciabbHJTGkldQcDUPC+1wkHyy1lJH80N8kVo0VH4ZxA5XCHmkGbg
         85eW6D4WZnvfpHQO+PHfjAsHps2KQhNA392t/PcLcX37B/pCZsudm9Pjzf0qAy7y9MJC
         BYhVdgmdPGci4qXONaSjeFZgv4KSS16EJD6yzl3KEC9XmDDPVDE+nNyK7WD2V3DZAX+a
         ozag==
X-Received: by 10.66.250.197 with SMTP id ze5mr17613180pac.50.1445011730673;
        Fri, 16 Oct 2015 09:08:50 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id sn9sm22146055pac.16.2015.10.16.09.08.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 09:08:49 -0700 (PDT)
Date: Fri, 16 Oct 2015 21:38:34 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: fbtft: fb_agm1264k-fl: Remove unnecessary cast
Message-ID: <20151016160834.GA24455@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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


