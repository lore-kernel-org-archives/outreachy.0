X-GM-THRID: 6264136808663089152
X-Received: by 10.182.47.132 with SMTP id d4mr19657111obn.40.1458483381625;
        Sun, 20 Mar 2016 07:16:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.13 with SMTP id j13ls1638798ioi.33.gmail; Sun, 20 Mar
 2016 07:16:20 -0700 (PDT)
X-Received: by 10.50.20.135 with SMTP id n7mr7369775ige.5.1458483380976;
        Sun, 20 Mar 2016 07:16:20 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id ui7si3266104pab.0.2016.03.20.07.16.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 07:16:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id x3so25518208pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 07:16:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=4+j51sAYqLCgmlLgrDq3OtVrsa96VZd/dEvAhaB2tYw=;
        b=bmhCYVOTihjhHGWPjysnL/+TEt9Gs8OML6D/j/HpL6VrFGcDV56eGIAoRwZ2DdWj2N
         FBQ64NxHaSfMBcAObZTc7v8WkEr+2FfY1YRrwSnFBJH5Mvl+uQNa+NeB5T3lkKHwumYd
         0HDY7ubVx3WQwDJclaCupNdgmKSaM2fpLJGRoGio4Y65ygPkKLTDTRoxpAtybHr9Ovfz
         hg3dwnpeYysY3FDh6CY/CUQuqo9SnsdjYMgT+ARv76L3O0qdvyXu+bEh3oIthMgcYONF
         S5ch7ypfHikQHWEFmYx0WBWxTdxoCB28nI6k/oWChxgwl+2wdjmC4cHj9GAIqXWiJz6R
         j6yA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=4+j51sAYqLCgmlLgrDq3OtVrsa96VZd/dEvAhaB2tYw=;
        b=aA4zWIELJKcepPe8ROjNB6+4ODriJvNHGpxk2bMTt0BBegJolZa2gVLao9yjU9t1rx
         ckgVo1j7WEFOVU3WPXPPIVnq1HUSrXEv+9KQJaP2s4NNBNKohdgkJsHpIdBQfilIwstk
         TJ5lcKwZvu244epfzcSjFQ57ppt42I8TRUuemEcT56SzeEXo4CbSFqadh7TOUFUgTOJl
         gIm5ghDqIqbcJI8Z23d9rAsctdoCl4MymG6EXGQHlahMwSKJlT2ziiimeP9iDbjgB7kT
         DJFEQZTn9Jbhc7heRwNmKTIIFS33LOS4rV13EIRpjSZwtJiHKF78CWzCZQjx6tUTcsA0
         FpIA==
X-Gm-Message-State: AD7BkJKy44qX2UtQ3iqKwDDQEqrggWuYvDEPG1aALTwOAnsQHQkDJRw4kRowBUqFW76e+A==
X-Received: by 10.66.163.40 with SMTP id yf8mr38373655pab.148.1458483380821;
        Sun, 20 Mar 2016 07:16:20 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id d19sm33865654pfj.92.2016.03.20.07.16.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 07:16:20 -0700 (PDT)
Date: Sun, 20 Mar 2016 12:47:31 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: lustre: o2iblnd: Correct the argument of
 sizeof().
Message-ID: <ed2d6f01c194ec9700dcec61409dc30e892136ad.1458454678.git.bankarsandhya512@gmail.com>
References: <cover.1458454678.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458454678.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Correct the argument of sizeof().

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


