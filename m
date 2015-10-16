X-GM-THRID: 6206267235727572992
X-Received: by 10.182.28.100 with SMTP id a4mr13149541obh.20.1445009195856;
        Fri, 16 Oct 2015 08:26:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.14 with SMTP id b14ls812112iob.5.gmail; Fri, 16 Oct
 2015 08:26:35 -0700 (PDT)
X-Received: by 10.66.122.201 with SMTP id lu9mr12705477pab.8.1445009195361;
        Fri, 16 Oct 2015 08:26:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-pa0-x22d.google.com (mail-pa0-x22d.google.com. [2607:f8b0:400e:c03::22d])
        by gmr-mx.google.com with ESMTPS id zg1si2112198pbb.2.2015.10.16.08.26.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 08:26:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) client-ip=2607:f8b0:400e:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2607:f8b0:400e:c03::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22d.google.com with SMTP id rc13so123639245pab.0
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 08:26:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=E/dfNiK4ZxDtzlAJOPoi3sCKGYXG4CKbGYTdOTS2thc=;
        b=sQzAkpNBMsqsBB8UXvjDCZRGCXT0Jg1QSW3LBHxbkUVhqltHyobTZAUXBXKgfv+jCP
         ixm0wmTtfXHq23QqTKQq7llwq82jCU+2ErNysAY2+YzNqoWYZMmTPTwtRl/bR/Jon011
         SrX0kX/e9bN7PxaD5atRedvJOogGf7LT9Ozaqvz0En/fS/I/qxaIEvSe3ZyoB7272J0n
         bPV6cP11bDire10zafXmGFIb2Uf7Z5hIx1wbr/Lw7jv40dLmCYRvVGtdatY/Bzfo8uhL
         UnlZKideJb6r+GLzsk+ZdtmEz1UmXGjIPNdVRnMcNH57/KAPJ3/HAu8sk73tuYwLAQ68
         opkQ==
X-Received: by 10.68.196.202 with SMTP id io10mr17397670pbc.108.1445009195240;
        Fri, 16 Oct 2015 08:26:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from ubuntu ([124.124.47.116])
        by smtp.gmail.com with ESMTPSA id xd10sm21995482pab.25.2015.10.16.08.26.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 08:26:34 -0700 (PDT)
Date: Fri, 16 Oct 2015 20:56:22 +0530
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: gdx724x: gdm_mux: Remove explicit cast
Message-ID: <20151016152622.GA19808@ubuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
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
 drivers/staging/gdm724x/gdm_mux.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_mux.c b/drivers/staging/gdm724x/gdm_mux.c
index 1cf24e4..a6bfd42 100644
--- a/drivers/staging/gdm724x/gdm_mux.c
+++ b/drivers/staging/gdm724x/gdm_mux.c
@@ -222,7 +222,7 @@ static void do_rx(struct work_struct *work)
 	struct mux_dev *mux_dev =
 		container_of(work, struct mux_dev, work_rx.work);
 	struct mux_rx *r;
-	struct rx_cxt *rx = (struct rx_cxt *)&mux_dev->rx;
+	struct rx_cxt *rx = &mux_dev->rx;
 	unsigned long flags;
 	int ret = 0;
 
-- 
2.1.0


