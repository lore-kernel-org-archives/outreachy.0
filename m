X-GM-THRID: 6259697708137709568
X-Received: by 10.31.165.1 with SMTP id o1mr21049537vke.12.1457449446202;
        Tue, 08 Mar 2016 07:04:06 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.245.202 with SMTP id xq10ls156186obc.17.gmail; Tue, 08 Mar
 2016 07:04:05 -0800 (PST)
X-Received: by 10.182.16.199 with SMTP id i7mr18711353obd.44.1457449445740;
        Tue, 08 Mar 2016 07:04:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-pf0-x22f.google.com (mail-pf0-x22f.google.com. [2607:f8b0:400e:c00::22f])
        by gmr-mx.google.com with ESMTPS id ui7si576525pab.0.2016.03.08.07.04.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 08 Mar 2016 07:04:05 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) client-ip=2607:f8b0:400e:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400e:c00::22f as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22f.google.com with SMTP id x188so14640885pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 08 Mar 2016 07:04:05 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=nv/Uh+BgxC79qL/4KdkPs5aKLmNyE9w/pDKQp8JGbRs=;
        b=OqO/xWCRs4PKQZdHl8zds/ddMmGFADPYbsy0UlLk9Sf+64qhBt1chm38St10DwlTWz
         o7qiQifwhMouXqtuKjveeFJnlLxcSMQrZ656T0zemb7ANHXCKn6ulltvuTheO7M1DPwt
         Ih4EQggjglSoS5jLqPEQIbKhK51Hg2MOZxks+dzntYdYGU1b/u/1SUUNx0KV8wB10rrW
         bUJRTw31EYo+A1i9YVRsg2tmTaBm/7+zCm1JYtkL5MAcN/HDZBJqTxWeqgLBaPaYGtK3
         knWWQWpl2sqyvQP02LX/0ZxPozzn9q4VO/wwlcKaN1SGJ8ItXiTynHIraGnZDnR9zf0Q
         zTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=nv/Uh+BgxC79qL/4KdkPs5aKLmNyE9w/pDKQp8JGbRs=;
        b=TuZ0C6Jx/adoSqKYf4fGkBFT6Jww1x2GothrNHfAZtPtjLBuigav0J7TZFBnuVxbJU
         o7kZErFlhHlV7e6elC7SVRWJGO119rLuI0vPjgYXAjdP1E35JUpDURNbNosfNFzRCqP8
         U655V5OixOfXG2w5kSDKFJmSu6AaWiYW5mex31tV+7fJOk7HyDk604W4EfWTRyRmFX1d
         yFYlhomG1MYkgWMmF8gEQwmkcI4Er6aaCTFUR4SpdbndHuRdLLOnNRUovgpfqyNBybCP
         +TrOnhEPNOA3xDtCre35j8pRzhYYaiPRla0/1rFO111eFn8nmC3X/i8j9VvODCt9HMod
         vNKQ==
X-Gm-Message-State: AD7BkJKAds8vQauLek5KpqvPd9muIDWAkB1DV8qr2Ud+jHd6MkSXtIK5dU4GksjCoSo4Mw==
X-Received: by 10.98.71.210 with SMTP id p79mr42235388pfi.4.1457449445577;
        Tue, 08 Mar 2016 07:04:05 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from Karyakshetra ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id vy6sm5713717pac.38.2016.03.08.07.04.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 08 Mar 2016 07:04:05 -0800 (PST)
Date: Tue, 8 Mar 2016 20:21:52 +0530
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: osc: Use list_for_each_entry_safe
Message-ID: <20160308145152.GA31555@Karyakshetra>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.23 (2014-03-12)

Doubly linked lists which are  iterated  using list_empty
and list_entry macros have been replaced with list_for_each_entry_safe
macro.
This makes the iteration simpler and more readable.

This patch replaces the while loop containing list_empty and list_entry
with list_for_each_entry_safe.

This was done with Coccinelle.

@@
expression E1;
identifier I1, I2;
type T;
iterator name list_for_each_entry_safe;
@@

T *I1;
+ T *tmp;
...
- while (list_empty(&E1) == 0)
+ list_for_each_entry_safe (I1, tmp, &E1, I2)
{
...when != T *I1;
- I1 = list_entry(E1.next, T, I2);
...
}

Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
---
 drivers/staging/lustre/lustre/osc/osc_page.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/osc/osc_page.c b/drivers/staging/lustre/lustre/osc/osc_page.c
index 537107c..d720b1a 100644
--- a/drivers/staging/lustre/lustre/osc/osc_page.c
+++ b/drivers/staging/lustre/lustre/osc/osc_page.c
@@ -563,6 +563,7 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	struct cl_object *clobj = NULL;
 	struct cl_page **pvec;
 	struct osc_page *opg;
+	struct osc_page *temp;
 	int maxscan = 0;
 	int count = 0;
 	int index = 0;
@@ -582,14 +583,12 @@ int osc_lru_shrink(struct client_obd *cli, int target)
 	client_obd_list_lock(&cli->cl_lru_list_lock);
 	atomic_inc(&cli->cl_lru_shrinkers);
 	maxscan = min(target << 1, atomic_read(&cli->cl_lru_in_list));
-	while (!list_empty(&cli->cl_lru_list)) {
+	list_for_each_entry_safe(opg, temp, &cli->cl_lru_list, ops_lru) {
 		struct cl_page *page;

 		if (--maxscan < 0)
 			break;

-		opg = list_entry(cli->cl_lru_list.next, struct osc_page,
-				 ops_lru);
 		page = cl_page_top(opg->ops_cl.cpl_page);
 		if (cl_page_in_use_noref(page)) {
 			list_move_tail(&opg->ops_lru, &cli->cl_lru_list);
--
2.1.4


