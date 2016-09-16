X-GM-THRID: 6331204832263667712
X-Received: by 10.129.115.4 with SMTP id o4mr11101188ywc.41.1474098819717;
        Sat, 17 Sep 2016 00:53:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.141.77 with SMTP id p74ls2430577iod.9.gmail; Sat, 17 Sep
 2016 00:53:38 -0700 (PDT)
X-Received: by 10.107.15.220 with SMTP id 89mr1202435iop.93.1474098818811;
        Sat, 17 Sep 2016 00:53:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si3440749pfw.1.2016.09.17.00.53.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 00:53:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 6so1627411pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Sep 2016 00:53:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=XphDpAOdSjvAFkZSi+IXcV9yQmoJ/cXat0Tg6SmdSfo=;
        b=tcSwzfs0nQm/6ZJGFZnZ10AEypO5vNjAco31uctpw1s3eM+0F/poDB9Y5vyb0+ivvA
         hN5FACMyf3i1ReCr3DEpH906ic5nhR8yYIAWJTaSB1cBJCQ39ZKndC6sL2BrdSAnIHKL
         gR2trjYGwZGmUU6BMo3xFRjELM6N+PvGrNkh0cDlpLTqEKyVZ8G5Wkz1j1p7FvK4DuDD
         9gUvoGJQGoNq/jIcMOXvYMRQkvfapRavtnDRXy4Me3bAjFMwEQfWjIty/+4iyGRcccOB
         rI7Z9zraERS/3wNbFCgK1INPACwvZGw4wXqCpZAeWfVzsCV27I3dckryWofs3FGW2O0S
         AhUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=XphDpAOdSjvAFkZSi+IXcV9yQmoJ/cXat0Tg6SmdSfo=;
        b=VFq8ZpQY6V3NaQ7wve7mPnMeWPQ8ZORcaZv46vwvh/w9L0z8nnngkGZnJzAxaHEyMn
         lqnBMMaa6QLaPSou2dSDo+ZDNTDcQjAeasqSxMjJavtQTOwH2ll6/dkFHGc2S0NmHM/P
         6934uH8K8nCDtJP4bUzYaFW+hK74wPJU7SJ5v4ACkXgCUgqQOhohDn0fFbPi9PWBO9ky
         hL7ic2qtqkBLElqPx3PiUDz+OGquu3NX2ms3JfokvAM3HTGo6yz9BewAOJHN/g5voMA8
         QztqSbbHzvxlIjenSu/jkEqYrRQ8O0g6+Csa7dJJzQsvkVKDXpC/y7v2x9oTiKwVq1qS
         CXjg==
X-Gm-Message-State: AE9vXwOsJbQx5HhZi6IkHHzTu8dWIT/dqARv30BanzCzsEbQRWk9tdIpae5/1qCqFRLRjw==
X-Received: by 10.98.149.149 with SMTP id c21mr9577005pfk.33.1474098818486;
        Sat, 17 Sep 2016 00:53:38 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([122.170.172.239])
        by smtp.gmail.com with ESMTPSA id f195sm56982305pfa.26.2016.09.17.00.53.36
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sat, 17 Sep 2016 00:53:38 -0700 (PDT)
Date: Sat, 17 Sep 2016 02:23:20 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org,
	gregkh@linuxfoundation.org
Subject: [PATCH 2/2] Staging: lustre: Modify argument of sizeof() to pointer
 variables.
Message-ID: <84439d72e1db653a0e7511e9a29c5b2c23703eab.1474055668.git.bankarsandhya512@gmail.com>
References: <cover.1474055668.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1474055668.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Modify arguments of sizeof() to pointer variables.
The destination of the allocation has type struct **, so the
elements of the array should have pointer type, not structure type.

These changes are made using below Coccinelle script:

@disable sizeof_type_expr@
type T;
T **x;
@@

  x =
  <+...sizeof(
- T
+ *x
  )...+>

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
 .../staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c    |    4 ++--
 1 files changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
index c7a5d49..5f17c82 100755
--- a/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
+++ b/drivers/staging/lustre/lnet/klnds/o2iblnd/o2iblnd.c
@@ -2206,7 +2206,7 @@ static int kiblnd_net_init_pools(struct kib_net *net, lnet_ni_t *ni, __u32 *cpts
 	 * number of CPTs that exist, i.e net->ibn_fmr_ps[cpt].
 	 */
 	net->ibn_fmr_ps = cfs_percpt_alloc(lnet_cpt_table(),
-					   sizeof(struct kib_fmr_poolset));
+					   sizeof(*net->ibn_fmr_ps));
 	if (!net->ibn_fmr_ps) {
 		CERROR("Failed to allocate FMR pool array\n");
 		rc = -ENOMEM;
@@ -2234,7 +2234,7 @@ static int kiblnd_net_init_pools(struct kib_net *net, lnet_ni_t *ni, __u32 *cpts
 	 * number of CPTs that exist, i.e net->ibn_tx_ps[cpt].
 	 */
 	net->ibn_tx_ps = cfs_percpt_alloc(lnet_cpt_table(),
-					  sizeof(struct kib_tx_poolset));
+					  sizeof(*net->ibn_tx_ps));
 	if (!net->ibn_tx_ps) {
 		CERROR("Failed to allocate tx pool array\n");
 		rc = -ENOMEM;
-- 
1.7.1


