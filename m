X-GM-THRID: 6393356071819280384
X-Received: by 10.129.18.130 with SMTP id 124mr1867248yws.56.1488569209836;
        Fri, 03 Mar 2017 11:26:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.194 with SMTP id 60ls9636483otx.21.gmail; Fri, 03 Mar
 2017 11:26:49 -0800 (PST)
X-Received: by 10.200.57.65 with SMTP id t1mr1292765qtb.62.1488569209513;
        Fri, 03 Mar 2017 11:26:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id 2si221802pfz.1.2017.03.03.11.26.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 03 Mar 2017 11:26:49 -0800 (PST)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 67so6264329pfg.2
        for <outreachy-kernel@googlegroups.com>; Fri, 03 Mar 2017 11:26:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:date:from:to:cc:subject:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+DbuAcyoVp1fHkEStmpzfrE4gI6q3OLaLIDV4elM4n8=;
        b=gu3OvFNLuwxPgD8+sy+8es8JOFPGWr/QdAUB1+RIihJtsoT3YO9z5/GpX0WNzG6k7i
         anxeRUx6B5q0SqJR+7Udi9N+OT2+jCdZhegdWlC24cSL9FIT8b1O/xvEBtCaaqa6Qf55
         3THsoxC8jjA9LzWy1OAdIIa2OQret+mVjGocHMLVC0OuM+hPuzXtrgj0NP/zUBFkWXw8
         WNVgpbb1EGPK/Vun822c5Q3IH3OjYZYFZKCfB6mH3t8YHbhgxV7RGpGB8BQnPNaVHu+Q
         74JKH+x/fnqkxX8RkU1p4Iy4utEv7l/ZJZqYfaLcukr8Xu+wmUBjn7mOr1NWItBaAQlz
         ue9g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:date:from:to:cc:subject:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+DbuAcyoVp1fHkEStmpzfrE4gI6q3OLaLIDV4elM4n8=;
        b=i0Cn1TjLL96bG0unb7i5EE4EO7wbGQdM3pqUqn1TzassVEj37kjelY9EyeI9JjeD0c
         lkHaqGK5guTz+j+Z0B1HW1kC0+O5858aVPmZcb7HxtqntUQRWr4y0XmCf56x+0vqKvJ3
         1nepNMulzrBlqTzP77d9jnrRXKGaSGsEx/8sS4Mf1x+Gw7+2Malwmr/25kVaxc03Kn+r
         WpYKjL5Q0XagBQfvkPHXZ8jCRRPL6bdR6I53RTyx3VKXISZ07w1645pkp8hmMCQmogaX
         UBgthH5QtBM2JdNZ5/Sqgf+rVHc8nPhzmhP+XgjypERpDBf5sW5RxErD9Wb+ZDfiJwqV
         x5mg==
X-Gm-Message-State: AMke39kw25NqSoRzTW3iJ1nJcEU/uSuBN7n+QNn8jrwbnjIZWPG6otr46OtOVrBPAkIS7Q==
X-Received: by 10.98.163.141 with SMTP id q13mr5486333pfl.72.1488569209258;
        Fri, 03 Mar 2017 11:26:49 -0800 (PST)
Return-Path: <rvarsha016@gmail.com>
Received: from euri ([2405:204:5508:2b2:841b:c6f4:fb42:37b7])
        by smtp.gmail.com with ESMTPSA id q7sm24854190pfb.98.2017.03.03.11.26.48
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 03 Mar 2017 11:26:48 -0800 (PST)
Message-ID: <58b9c378.075c620a.f5c7b.20dd@mx.google.com>
X-Google-Original-Message-ID: <20170303192645.GA19976@<rvarsha016@gmail.com>>
Date: Sat, 4 Mar 2017 00:56:45 +0530
From: Varsha Rao <rvarsha016@gmail.com>
To: Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 4/9] staging: media: atomisp: Replace 'uint32_t' with kernel
 type u32.
References: <cover.1488567772.git.varshar186@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1488567772.git.varshar186@gmail.com>
User-Agent: Mutt/1.7.1 (2016-10-04)

Replaced 'uint32_t' with kernel type u32, to fix the checkpatch issue.

Signed-off-by: Varsha Rao <rvarsha016@gmail.com>
---
 .../pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c      | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
index 5ff2529..46b702e 100644
--- a/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
+++ b/drivers/staging/media/atomisp/pci/atomisp2/css2400/isp/kernels/bnlm/ia_css_bnlm.host.c
@@ -43,9 +43,9 @@ static const int32_t div_lut_intercepts[BNLM_DIV_LUT_SIZE] = {
 static inline void
 bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut_val, const uint32_t lut_size)
 {
-	uint32_t blk, i;
-	const uint32_t block_size = 16;
-	const uint32_t total_blocks = ISP_VEC_NELEMS / block_size;
+	u32 blk, i;
+	const u32 block_size = 16;
+	const u32 total_blocks = ISP_VEC_NELEMS / block_size;
 
 	/* Create VMEM LUTs from the threshold and value arrays.
 	 *
@@ -79,7 +79,7 @@ bnlm_lut_encode(struct bnlm_lut *lut, const int32_t *lut_thr, const int32_t *lut
 
 	/* Copy data from first block to all blocks */
 	for (blk = 1; blk < total_blocks; blk++) {
-		uint32_t blk_offset = blk * block_size;
+		u32 blk_offset = blk * block_size;
 		for (i = 1; i < lut_size; i++) {
 			lut->thr[0][blk_offset + i] = lut->thr[0][i];
 			lut->val[0][blk_offset + i] = lut->val[0][i];
-- 
2.9.3


