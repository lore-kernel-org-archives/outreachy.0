X-GM-THRID: 6264247085046956032
X-Received: by 10.182.106.11 with SMTP id gq11mr20923997obb.45.1458509041376;
        Sun, 20 Mar 2016 14:24:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.28.68 with SMTP id z4ls800359igg.26.gmail; Sun, 20 Mar 2016
 14:24:01 -0700 (PDT)
X-Received: by 10.50.171.137 with SMTP id au9mr8700626igc.7.1458509041049;
        Sun, 20 Mar 2016 14:24:01 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id sf5si3478707pac.1.2016.03.20.14.24.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 20 Mar 2016 14:24:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id x3so26792087pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 20 Mar 2016 14:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2thx6Rxdcn1lTkIeN3kb0uuWYOGrz7eTOqxApsU9vdc=;
        b=zuAW6LmVtFwuQDKblvN/y1bNdZh7iUFDnTMQLEZWflNPQ2TCTCVZejGgqC3OZDQiIF
         tL35HmwTe7H/2yTKWrvz3cJuBn76ahEIbDjC7KjTMblJkZVVFZKVIJMuHviRbcxlpZFS
         trEyTfYovUSOv1xeOvHdwz/8jvECaIZK0d37v3aAgAMuaMK5OSvbeL3F0qWzsPDn/eaK
         /NifONS3YWeWNx+OjzYeVADlUt6KQ1qGzF7jafbzoTjlDTQ2Kpzybt5zK1nPMvEvG8AK
         dY21mSLT3/pRcm1tk3ShtIDLSHgptI9Xbde92+fekqW5pogl0WYf/K8s3JP2KmyCUf9g
         7gEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2thx6Rxdcn1lTkIeN3kb0uuWYOGrz7eTOqxApsU9vdc=;
        b=UacEUgDLjeVIH57wffxqynREOQRpEgmZdGsxbB28HDIGdsR4y1m7U2oAgzkTbnHnI9
         HF0DSHb0jjA545FN4+8q9pHyfNBqlfvbBRfsg6GSeRXFjVn8uKA1g3kEBrPZmWKHPYkB
         66v2VBAZCLjUtB9Qk94riysQawArP3l/anrE977doMpNpXAow3cO5oQKocZVuuCs9PI6
         fiuSKemhcD9LhKMGe9cvMDO4OrWewJNjHK+B4Pb4liOSdQpRQNEbtgT7QHU37M/Xumpx
         XVJe78d7KYFnuWnnJwfr8aydpAdfzgsa/+sgmdbeQsay2ZIw3ly8rJtNMAgURQu3oVIt
         8Wrg==
X-Gm-Message-State: AD7BkJIrPAvtzppzsET/pGaWdOLqwgymuCh/SRihBT12SyIs89/7eXPoiui4bOhRqY5uUg==
X-Received: by 10.66.233.131 with SMTP id tw3mr40945782pac.89.1458509040877;
        Sun, 20 Mar 2016 14:24:00 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.99])
        by smtp.gmail.com with ESMTPSA id p74sm35381914pfa.11.2016.03.20.14.23.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 20 Mar 2016 14:24:00 -0700 (PDT)
Date: Sun, 20 Mar 2016 19:55:10 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 3/3] Staging: lustre: o2iblnd: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <ed2d6f01c194ec9700dcec61409dc30e892136ad.1458482776.git.bankarsandhya512@gmail.com>
References: <cover.1458482776.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458482776.git.bankarsandhya512@gmail.com>
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


