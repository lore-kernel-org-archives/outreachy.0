X-GM-THRID: 6659640267598987264
X-Received: by 2002:ab0:2388:: with SMTP id b8mr17889493uan.16.1550568330529;
        Tue, 19 Feb 2019 01:25:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2706:: with SMTP id a6ls3258765uaa.0.gmail; Tue, 19 Feb
 2019 01:25:29 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbTGDxa2Nl/+pyoqOlv55C0HMKZe5L78pTDHmiqzAsdFR2VD2UogSvleFkF9/mxKRu0Lmzk
X-Received: by 2002:ab0:7048:: with SMTP id v8mr17891785ual.12.1550568329785;
        Tue, 19 Feb 2019 01:25:29 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550568329; cv=none;
        d=google.com; s=arc-20160816;
        b=hoZMA1x5LuQb7i1vEOlKKAMiKRbFQkKxsxbsfQdj/y36wiOdJJEKIVmr9NCqRIwYbC
         6OgLmwqGx6j4WZ36Gvt6Yni52WfxjfCW40RroSS2yMgBMukGvhw5ShX40MieLV0CSjEO
         dafWuCbNI2/X9nwqk0Cg7T4Pa5lD6AOWFLwM8rG6i221HWB6IyW9XaFyAfVp9XleJiFw
         ajGgwdNJRvMHwh1eTKFaQC2dKUeGmka8HOeIfBpngkPcl+lZNFJtHe7/5wLEVtvMn/NS
         YcHPIKW28poY+BODZz/yovjZGyVyQTuDCQq01DysHLU+YcVDDx1fvRZwGvDgSfS4b6ef
         ONpA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=rxCH5SuhdoEqljjpFcfj0Bd0xcQyZ85pFgICXoKwP8U=;
        b=a8S80nyFMbDH3kGSSU+RAQ9IJvOidhxtaTkHGiKrLJZfHudVHDWJrn9jU0JZDaBgFQ
         znnTyl548TCZjdOcjLB7lgrmOePVuEt9oaoCJDo+ygpML+DrsdCnrJXci8DKzJipcXD2
         w0EU5czbyoEUvvewGmw7+aT501c86KzkNH+i4eX8UWwXqkMsms8WqUZMXlEnDwLJEDNg
         8bTkk8yLceZ4xaWMYV/YjeVwMr4AafTPyBsE0D1TIyLXG+hMWBb3e4ryPWKnjbJ93TYY
         yMOzg5X7Ix+m6Fjc+4muzOtqXTm3MoNJtHQciqxdaryJi9fpgCyNrKFDQ/lLvrBC4jHJ
         4IvQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dYSCTc1n;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pg1-x542.google.com (mail-pg1-x542.google.com. [2607:f8b0:4864:20::542])
        by gmr-mx.google.com with ESMTPS id v187si777147vkd.5.2019.02.19.01.25.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Feb 2019 01:25:29 -0800 (PST)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) client-ip=2607:f8b0:4864:20::542;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=dYSCTc1n;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::542 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x542.google.com with SMTP id r11so9854801pgp.6
        for <outreachy-kernel@googlegroups.com>; Tue, 19 Feb 2019 01:25:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=rxCH5SuhdoEqljjpFcfj0Bd0xcQyZ85pFgICXoKwP8U=;
        b=dYSCTc1n1ntW4LP9s8n+I9G3CCRhXjLzaBebC0DKwUCifQyIkN5AF6bEDwMZpI9esZ
         zhZ7FPOl70LgPJrkiSB3+i/VLLJ7heIztfgY78vBi1Ild7juANUHhEu/c8SAasy7kt5T
         uFvPW6DtKwIrVzkxWH/Mg2CIrSGW5fCxT8RSLc1bNgEH3nL6EUBM7JS614DQbrzTflKh
         QwR3P/esFb+KDOLNbMy1jLj1KeWPEzgkCe0iAMaUHMGdtZXedbc8pIstS9+fxcnu3j0B
         yYu2VEMM2JxhVDsqNeVO5ZFQFpVlqkTHt91QuIcygSHlH3fFpygITs18ozKC4GOeUsLX
         Oo4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=rxCH5SuhdoEqljjpFcfj0Bd0xcQyZ85pFgICXoKwP8U=;
        b=iDhkOj+icdh+ANdO/xh4E2Mz1UUukG3cjCKyiCIVGmorXGA71+IWfABAVf0IStSR2N
         ofZN71W2i/Zp5befs6JeKwstEaMLD6Iz5oxkTP6cUIWgjE1dnnukbm5T0g/M2hoRWtKW
         oqVOZMlAUNvCDOCElq2YSays594rYvMKdCFOge+CiMxFXJBwPBFlavbAbzh6VkppTc0I
         j3q7WMKO20ixOibj4zE3Jg8JRU4atfWB+ybq8+HqEp2eWjqM5+QxPj09FaYXLmDT469Q
         42WthZ5QjDxt4iaqYRfl4YuGVWxItOclTgcjxKokrbOWSU6xb9sH+2y5QO3dqUPD46YP
         iwdQ==
X-Gm-Message-State: AHQUAuYIL2Nd8H1iPOTvqM/c7j5hlWA3fwEZndHb8bzKRxqbK2yRqe8n
	ojYvLOT2DYoI3HGspcInfr1qwPhbeCg=
X-Received: by 2002:a65:5142:: with SMTP id g2mr4468135pgq.149.1550568328828;
        Tue, 19 Feb 2019 01:25:28 -0800 (PST)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from bhanusree-MacBookAir ([183.83.84.116])
        by smtp.gmail.com with ESMTPSA id 20sm9639317pgr.80.2019.02.19.01.25.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 19 Feb 2019 01:25:28 -0800 (PST)
Date: Tue, 19 Feb 2019 14:55:25 +0530
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [Outreachy Kernel][PATCH v2] staging: erofs: match alignment with
 open parentheses
Message-ID: <20190219092525.GA4474@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Align code with open parantheses to improve the readability.
Issue found using checkpatch.pl

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2: -modified log message
    -corrected spelling in subject line

drivers/staging/erofs/dir.c | 8 ++++----
 1 file changed, 4 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/erofs/dir.c b/drivers/staging/erofs/dir.c
index 833f052f79d0..e1955703ab8f 100644
--- a/drivers/staging/erofs/dir.c
+++ b/drivers/staging/erofs/dir.c
@@ -24,8 +24,8 @@ static const unsigned char erofs_filetype_table[EROFS_FT_MAX] = {
 };
 
 static int erofs_fill_dentries(struct dir_context *ctx,
-	void *dentry_blk, unsigned int *ofs,
-	unsigned int nameoff, unsigned int maxsize)
+			       void *dentry_blk, unsigned int *ofs,
+			       unsigned int nameoff, unsigned int maxsize)
 {
 	struct erofs_dirent *de = dentry_blk;
 	const struct erofs_dirent *end = dentry_blk + nameoff;
@@ -104,9 +104,9 @@ static int erofs_readdir(struct file *f, struct dir_context *ctx)
 		nameoff = le16_to_cpu(de->nameoff);
 
 		if (unlikely(nameoff < sizeof(struct erofs_dirent) ||
-			nameoff >= PAGE_SIZE)) {
+			     nameoff >= PAGE_SIZE)) {
 			errln("%s, invalid de[0].nameoff %u",
-				__func__, nameoff);
+			      __func__, nameoff);
 
 			err = -EIO;
 			goto skip_this;
-- 
2.17.1


