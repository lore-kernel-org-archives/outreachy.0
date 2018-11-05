X-GM-THRID: 6620096919809032192
X-Received: by 2002:ac8:7555:: with SMTP id b21-v6mr16422897qtr.16.1541394849877;
        Sun, 04 Nov 2018 21:14:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:4a83:: with SMTP id x125-v6ls11295999qka.12.gmail; Sun,
 04 Nov 2018 21:14:09 -0800 (PST)
X-Google-Smtp-Source: AJdET5cBuED//7pl/5G+5W4+fQo1DGH2vHYO1v9NUxN4YOV+m4voCMK//niCLB0WbCPx5knD0Nth
X-Received: by 2002:a37:10cd:: with SMTP id 74mr16868068qkq.32.1541394849267;
        Sun, 04 Nov 2018 21:14:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541394849; cv=none;
        d=google.com; s=arc-20160816;
        b=ht5CGJwX5kicWTV5Qm0477rNPQsOcm1runbImXfCFF+sAE8ROPQzOvY6sZ5ZNC+VVM
         ZPoKakd9MnzLNxTiNCr3io/ztYSLGug4p/Bwrr5WStGHwUWlWkdRjioAD4S7rpD6L9Xl
         8rLGpwTm7pJqvkEm4DbS4p0BMqJ012pgtxK6sC+6Jqlap1N08pSOf0LW1Wm6zWt7secV
         IuR1y9dgqY4st7+zdIQC30wZ/fpfkorQ6c3VJY00sfEGopWgOlaW8QWY/wl97yvA9si1
         1FHkJEv0068mxIdraQtce5/vTdMSrtouMTtiL4J1bV9bWxUNCOH3+NRKuHiDxt/Lf6vi
         gWvA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=kmwXq5jEVPUPL4qmGpRRzhJDjLkUzal/mTWnL3R4CrA=;
        b=SGwJFfaWy2eadRPLDYqDGPQY80kbTskaFoLMq5MD/eQ8N66FkbvyWypbn3Si5F9g+J
         0ZH7DI8VFCG0ilFeomphVsT/c4X9zJtR2ECkEpWVj10cJ9NBhz5Bqgqrx3az3MvkHSL1
         kmdMMJQ6g87qwQQU1kvzZ2PA5d6qn5p2eu+vtaiULP+tibZBDfc1pBrjsuN9jiL1VdYM
         0nkzvZChbUkL4WjQmrYQ61e+BCRLQH3DoZGvgcqs+IHL/Swdn9pYRXE3L7aIXybWEBVm
         Q8OYF5cc8V76cNGiM8KWUpqNnt4rOOVQW+DXHCGRks5ynkIcLHykLnz01Wy9aFh2ZMCz
         REnQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F35ESgCB;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id q124-v6si549420qkb.0.2018.11.04.21.14.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 21:14:09 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=F35ESgCB;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id e22-v6so3813830pfn.8
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Nov 2018 21:14:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=kmwXq5jEVPUPL4qmGpRRzhJDjLkUzal/mTWnL3R4CrA=;
        b=F35ESgCBaVXV7hGjKVJpEmwNlkh+IIcvO+wQfz3dqG2zE6YKUOrtjtnMhyuu8das0w
         aw3svSeQ2Iot/62UPe6tlTnDFVX+yrrFuHB40lq9vAxhfaY884mp+8hv3o1y+zrDlyRp
         Jz1X6v6cbbX+tqARlCaRyy9uhC2oH3Ek2eE9ANQyL4LIuc9fIA3Srr16HWfctF/FZEXD
         4tBS5tqTHNUeJ952/R6GtunxHFCksUEK50wSenr3z7XUdlRnWDV9UjwZdCRjPp6MgJkN
         V+qnTfstMwVeiLaS22wMA9hH7SyfcvdlnUpS2VMgy8D392DCY09H86dZxA44vjIulRYE
         h/6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=kmwXq5jEVPUPL4qmGpRRzhJDjLkUzal/mTWnL3R4CrA=;
        b=R+AgLS+Wxk7i3Hi/xacI1EdBXm06IMS7Oga5wZVy62goAGBqmbGKnC9jHmfb+t3fLd
         DRazxYWOIqgTBfbOl1BzqCT8ECqNz552rrUUHU+aAaU1kw26mkISHcpuBB7ehu8sfdoX
         X6J8bBnY6MP8kfC3vKh7F6AqZoJBf+ZOxz2RPvBLAWD3C1h8UgYcBpbRXIrabzkGw+Wu
         pQDr/wH2Fd90qPBxrj6wDVhZtUtc3i6+3fgAcJF+uYdl+OIQPAOcu7yleq0K94dmo+Ur
         xna8rU2yd5J4q4iWGSttZzYv90N9wunY2kn+ik6htE788GrnIemtC7OJlZaQ+/utxFiV
         JzUA==
X-Gm-Message-State: AGRZ1gIuxrQpqEGXEY3X4128Js1YNNXQx53qz6jI76as+5SHxtAI+GaK
	bWUpDKeMjmtUSubPL+uyaQ/1Ntz/SiM=
X-Received: by 2002:a63:a16:: with SMTP id 22mr18973025pgk.318.1541394848275;
        Sun, 04 Nov 2018 21:14:08 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([2409:4042:2107:ff4e:8e11:c0ad:8f43:911b])
        by smtp.gmail.com with ESMTPSA id t8-v6sm42421604pgk.36.2018.11.04.21.14.07
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 04 Nov 2018 21:14:07 -0800 (PST)
Date: Mon, 5 Nov 2018 10:44:03 +0530
From: "Bhagyashri P. Dighole" <digholebhagyashri@gmail.com>
To: Gao Xiang <gaoxiang25@huawei.com>, Chao Yu <yuchao0@huawei.com>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Sasha Levin <sashal@kernel.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>,
	linux-erofs@lists.ozlabs.org
Subject: [PATCH v2 2/2] staging: erofs: Modify Alignment
Message-ID: <ab1426b48b16317bd787f0f15dbd9ffaaacf6c72.1541394756.git.digholebhagyashri@example.com>
References: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3db6ea6f3a7b1fab94e5dacc1ec4a026e38548c2.1541394756.git.digholebhagyashri@example.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Found alignment issue using checkpatch.
Matched alignment with parenthesis of page struct.

Signed-off-by: Bhagyashri P. Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/erofs/data.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/erofs/data.c b/drivers/staging/erofs/data.c
index a671ad4..a62be35 100644
--- a/drivers/staging/erofs/data.c
+++ b/drivers/staging/erofs/data.c
@@ -40,7 +40,7 @@ static inline void read_endio(struct bio *bio)
 
 /* prio -- true is used for dir */
 struct page *__erofs_get_meta_page(struct super_block *sb,
-	erofs_blk_t blkaddr, bool prio, bool nofail)
+				   erofs_blk_t blkaddr, bool prio, bool nofail)
 {
 	struct inode *const bd_inode = sb->s_bdev->bd_inode;
 	struct address_space *const mapping = bd_inode->i_mapping;
-- 
2.7.4


