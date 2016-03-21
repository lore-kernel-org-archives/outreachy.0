X-GM-THRID: 6264247085046956032
X-Received: by 10.66.191.230 with SMTP id hb6mr24804654pac.25.1458595291597;
        Mon, 21 Mar 2016 14:21:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.168.25 with SMTP id r25ls1881390ioe.88.gmail; Mon, 21 Mar
 2016 14:21:31 -0700 (PDT)
X-Received: by 10.50.20.135 with SMTP id n7mr12755640ige.5.1458595291245;
        Mon, 21 Mar 2016 14:21:31 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id y20si4226825pfa.2.2016.03.21.14.21.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 14:21:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bankarsandhya512@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=bankarsandhya512@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id q129so32696247pfb.3
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 14:21:31 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Ip1FS1WaDSVDJ+3Dx/iesEpuBbmlZdoWTFJJth/TQCI=;
        b=B5TtGYMdzKiap9aWXjWRAjKOtGgddGCOPazFIjK3PiGIAVlTQHGqc9/LIPEuA5sVUq
         G0KsfC0iY0BWF5veSlNNL8e3jd3FEI1xyhmi7RGBiMZu+VJnZ7eeK6BukuEgf3lVhMSF
         mFVyfGcOFcWu0Jc/9gmeqMYbuggw8SjjU2mBVBI9Dza/xwLNJuSnp7VnxbG3mYCbIxV1
         FTp0ddZdoCYg6UKztiXAHyVGK3AGRGBEHirZ3ia85WbirlQCyhpcE+TvPgxlnb6skHMz
         JGBZ23NtJFta7UWsv9wQsfE7uXkZkKN/VsJuMy+ph2MWktU1LU4/IxCSrWngZSKW+2p+
         QLlA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Ip1FS1WaDSVDJ+3Dx/iesEpuBbmlZdoWTFJJth/TQCI=;
        b=fcq62ec5941ZJ0wuJmr0uF/MyoQpHGz2VbiTauHv2mn9qBj9gOE7gL/buny+9V5L4F
         bhnBntUch7sOtBavyTaCKRw9fSvbja/2iib1yngxG7V1PcGLZEcNwiNpdf+U9hc/WjEu
         Smt68C/CnvT6438ZP/pDV6wHwzuatJGQGlbQ5rqaKneiVEn1/4oaiYXDqmw9Oez2x8Hw
         n8I0OvwPgzLG0Os/AJJSivPxU5/4PUkc/rNy64e3HjEEMSt0Hw2rXgaT3n+MSKRtSeJQ
         BjVknRVAbJFdAFzgLGp6gcDNs6nEqIyGGVORuf29Mkd303je2140gMMCsm8pKJeCMLR+
         04Dg==
X-Gm-Message-State: AD7BkJIZisD/m2TX+7V7k+t0NZcdMTgVX+uZ/aqjIFsiON2InALW9nxOmqY+hBUuSaLk9Q==
X-Received: by 10.67.4.1 with SMTP id ca1mr48134618pad.7.1458595291083;
        Mon, 21 Mar 2016 14:21:31 -0700 (PDT)
Return-Path: <bankarsandhya512@gmail.com>
Received: from sandhya ([59.161.35.46])
        by smtp.gmail.com with ESMTPSA id ta2sm42906275pab.42.2016.03.21.14.21.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Mon, 21 Mar 2016 14:21:30 -0700 (PDT)
Date: Mon, 21 Mar 2016 19:52:44 +0530
From: Sandhya Bankar <bankarsandhya512@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH v3 3/3] Staging: lustre: o2iblnd: Use sizeof type *pointer
 instead of sizeof type.
Message-ID: <ed2d6f01c194ec9700dcec61409dc30e892136ad.1458569051.git.bankarsandhya512@gmail.com>
References: <cover.1458569051.git.bankarsandhya512@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1458569051.git.bankarsandhya512@gmail.com>
User-Agent: Mutt/1.5.20 (2009-12-10)

Use sizeof type *pointer instead of sizeof type.

Signed-off-by: Sandhya Bankar <bankarsandhya512@gmail.com>
---
changes in v3:
* Adding changes of v2 to each patch of patchset.
changes in v2:
* Correcting the commit message.

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


