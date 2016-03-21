X-GM-THRID: 6264247085046956032
X-Received: by 10.129.109.215 with SMTP id i206mr8950333ywc.40.1458590587755;
        Mon, 21 Mar 2016 13:03:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.95.43 with SMTP id h40ls3532769qge.39.gmail; Mon, 21 Mar
 2016 13:03:07 -0700 (PDT)
X-Received: by 10.129.155.147 with SMTP id s141mr25327109ywg.5.1458590587116;
        Mon, 21 Mar 2016 13:03:07 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id ui7si4047484pab.0.2016.03.21.13.03.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 13:03:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id u190so31977456pfb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 13:03:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2thx6Rxdcn1lTkIeN3kb0uuWYOGrz7eTOqxApsU9vdc=;
        b=FhY70Te520tV0IIbpRS61c1h/sr5z0ijjeVxaGmr8WW3hWBXz+UNW1LWuunLBhUpFs
         OQILrJetf0uMFEGQGf4TMEiMxzHjz7IN9Air1cYNNjyPgCbIKTquTBEft1Jc7ziDVpvR
         hUpaD5n/4Z4/03x5mqOh+EmYouhcwoU6mis0zyZw+HggSdMmUn0uNdv0EdQOx2ZpZB6i
         U5sy1pB/52rW7gh+cG7ETMh7bfi+ArO6G6HdjyvvLeZSxDGOdkmvwOUgEotbxVi5Db37
         RU6Sn/zwLYiWzna6C6EfbjkRjnbQkB8HIH6FH2hKWbq/FLPe5oXscIb9Ds0PJHOKVgPI
         zqFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2thx6Rxdcn1lTkIeN3kb0uuWYOGrz7eTOqxApsU9vdc=;
        b=Tu/7+gvRiKjeFOVvIYNjOXEKeZpsHwtHzJq88swhPJptdnPcry9n0qR/vBFO22glsB
         JnmitvCT2eFcY6i6Ycgzvk0TcgotI6Ges7A6RZ7yLKuuBYjfQ2u/RaGQLUL2JpNZV7I3
         8O3ib5dxlnDONIhOQwGP8/HsUSh1eTlJmryzwvFH9xXrmhLdWtNhUvliUEA1gPJfVSuG
         S19OHnuhTGV/VSdWFoTe4on0fpI3lY2iBd19GNoMYzWJxepnxV+pFJ5/yXjCuDqLh5Xt
         RzUHMJgkCe6jztmC495l2SdEwonjgTgfKxhPVVtfWRzWhl2ten2hm+Zm7uCqY/j9xP3G
         tL2Q==
X-Gm-Message-State: AD7BkJIqfuJJ0/VsYjZVhaFdfWD6OCrOywAmnLn6h1F6bGYv9Za/aGmUC5ZqgyfD8Xd6vg==
X-Received: by 10.66.218.225 with SMTP id pj1mr47504789pac.83.1458590586950;
        Mon, 21 Mar 2016 13:03:06 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id 17sm42660398pfp.96.2016.03.21.13.03.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 13:03:06 -0700 (PDT)
Date: Mon, 21 Mar 2016 18:34:17 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v2 3/3] Staging: lustre: o2iblnd: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <ed2d6f01c194ec9700dcec61409dc30e892136ad.1458564530.git.bankarsandhya512@gmail.com>
References: <cover.1458564530.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458564530.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index 0d32e65..89f9390 100644
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -1968,7 +1968,7 @@ static int kiblnd_net_init_pools(kib_net_t *net, __u32 *cpts, int ncpts)
 	 */
 
 	net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
-					   sizeof(kib_fmr_poolset_t));
+					   sizeof(*net->ibn_fmr_ps));
 	if (!net->ibn_fmr_ps) {
 		CERROR("Failed to allocate FMR pool array\n");
 		rc = -ENOMEM;
@@ -1992,7 +1992,7 @@ static int kiblnd_net_init_pools(kib_net_t *net, __u32 *cpts, int ncpts)
 
  create_tx_pool:
 	net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
-					  sizeof(kib_tx_poolset_t));
+					  sizeof(*net->ibn_tx_ps));
 	if (!net->ibn_tx_ps) {
 		CERROR("Failed to allocate tx pool array\n");
 		rc = -ENOMEM;
-- 
1.8.3.4


