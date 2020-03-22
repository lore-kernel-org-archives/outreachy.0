X-GM-THRID: 6807140134242222080
X-Received: by 2002:aed:2a87:: with SMTP id t7mr18145102qtd.206.1584910818474;
        Sun, 22 Mar 2020 14:00:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2a79:: with SMTP id k54ls5434228qtf.0.gmail; Sun, 22 Mar
 2020 14:00:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvB43+hEvu0R2zM/LHzCTtQEQHRcl1fs0Mn8nCqobPAGhHnrKyVjINAKWyYhx7eOaeXBj8Y
X-Received: by 2002:ac8:6d01:: with SMTP id o1mr18840737qtt.246.1584910817307;
        Sun, 22 Mar 2020 14:00:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584910817; cv=none;
        d=google.com; s=arc-20160816;
        b=v53o2PQBRo0V9RiZWlC9YUJIee+xR9sCgS8Hg5TJrPXU3mNMREThl32opXq8eJ3Eo8
         Es3IGl4/IZkM3UmSPKPzBKBQ2uuRaR/uTWfJRD5IE2ba/PMRBq2dqb6KvsCdEFF94O7z
         iVbMiJEC53mIGZzduZIoQDWncDrYnfSpRP1vgn3WIus7DzoebyA5fIul+WM7NUAiN3QO
         JMjl09DPNfU37PHMeJjVcDTUkQOHMfSY/UOp2nLqM0bfZ/9pxNkBuo4R4iBuVzWIqNy2
         PVNIf1M4e8wPU3tT/wydkWN2wAai1p0uuQjHDE1jPDsRk3lO3aSc3WzpGfP4D/j3MljS
         bcGw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=7oZbZh+R9bx1YanvyF+tsIk0x8EX5Cr3QAyeO68Cw0U=;
        b=JZ8uQB44oGhiGou0q+O3yR1NAuPcmfSiWlFVhIV/8ZOAclUxndS1+OQa+3wgGzmaer
         vYBAUw8zWZ4eobMNvUOnNv+ujZUhCvd0eXNrHHguro53FrA5kTgQAosi+W8nf1V4AaRK
         wCpP59t2bpFKc+3uO38mVxPAZ3NN6z7Q+aO7OZW61eR17oGxYTcL6quKURifY/MEinbL
         V49m8UySXIc/9k5SXM+RD+zsmyzxeMLjvFCkgGI/Gpklw4+d8KXKfbsrtm7dmfu7RLxe
         G//zYWaThITXr6YWJ1vxuh6av695+B6iMpNGO1eqFwN1SwcUuCBSw4oDuoTm/4o7YBmV
         zS3g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orRjSFTN;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pj1-x1041.google.com (mail-pj1-x1041.google.com. [2607:f8b0:4864:20::1041])
        by gmr-mx.google.com with ESMTPS id t24si885515qtt.1.2020.03.22.14.00.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 22 Mar 2020 14:00:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) client-ip=2607:f8b0:4864:20::1041;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=orRjSFTN;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::1041 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pj1-x1041.google.com with SMTP id nu11so5086586pjb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2020 14:00:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=7oZbZh+R9bx1YanvyF+tsIk0x8EX5Cr3QAyeO68Cw0U=;
        b=orRjSFTN2rg6SPyAwxRJLNDXC7XXs0p40EFpl/3xtZ0CaykF0nokRnB8pVs9eEmiqG
         aP6xL2EbmElUmPpl2l/fMW5JDaV0WYzl7MG+vgwtX/08tOQxXMPycoAOYHYH+8eiTlGd
         wT8h0So6ibgL1MaN8Ld1WFylODXTluRgiix5B0xX5m3wdpo/4N1oadTvzZhJxH/TU7gy
         qIGO771aa/PH7uQIbfVcRU/Cceacin4yyACEfwpylbPYi47OGbroY68LvaQh9oh9x6cg
         JmhskaPZfpmw68AamDG+loCSBtyN7b7SQ6dy3mVvepij+sULe+bKfeYNW/sbpj2VXXep
         vkjA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=7oZbZh+R9bx1YanvyF+tsIk0x8EX5Cr3QAyeO68Cw0U=;
        b=qOXsoXeslID8uGXjQF8Mzp6dYZuVdYSAF80T+cMVbwi5YKWadwTEaQ4CE5RxWreXTT
         ka65l1eEZ7fgiJSj/JQWi6AXgvQWHvQz5jrf1NEUoDUPIKfZq7ZjNlg5dyx/3Gh+3txF
         ul3zGBP9UjfBADVYHfB/xXaRY7UBk/vXYc41tl2gLRkhgZY86gAcE0mWf7UqkSZucqWR
         xPM1A9UR8xfCLWSx2z+820NDqvDpXOCBInBkshEXTVIanq8o6bUDtdtNf71uu++rCiHz
         AVhFayodXzWyeR/1naXqhGGGId54oJ93pBu/XlICl7Wqj7QEFY9WkoE+WP0ruzSDZLeF
         DTrg==
X-Gm-Message-State: ANhLgQ3NgrCHcVxAtDXLPu6zdrD/24bUeRfJ+8SKYm/Q1ihJcYAMZV/P
	8BSKOVojOYQPwz4RA/sV57wJVFln
X-Received: by 2002:a17:90a:228c:: with SMTP id s12mr21628977pjc.68.1584910815637;
        Sun, 22 Mar 2020 14:00:15 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.240.207.191])
        by smtp.gmail.com with ESMTPSA id a19sm11552936pfk.110.2020.03.22.14.00.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 22 Mar 2020 14:00:15 -0700 (PDT)
Date: Mon, 23 Mar 2020 02:30:10 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com
Cc: Sakari Ailus <sakari.ailus@linux.intel.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: [PATCH] media: staging/intel-ipu3: Remove extra blank lines
Message-ID: <20200322210005.GA27747@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Remove extra blank lines from the code blocks.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/media/ipu3/ipu3-v4l2.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/ipu3/ipu3-v4l2.c b/drivers/staging/media/ipu3/ipu3-v4l2.c
index 097c10d9da2a..e8f33539a217 100644
--- a/drivers/staging/media/ipu3/ipu3-v4l2.c
+++ b/drivers/staging/media/ipu3/ipu3-v4l2.c
@@ -152,7 +152,6 @@ static int imgu_subdev_set_fmt(struct v4l2_subdev *sd,
 	struct imgu_v4l2_subdev *imgu_sd = container_of(sd,
 							struct imgu_v4l2_subdev,
 							subdev);
-
 	struct v4l2_mbus_framefmt *mf;
 	u32 pad = fmt->pad;
 	unsigned int pipe = imgu_sd->pipe;
@@ -485,7 +484,6 @@ static int imgu_vb2_start_streaming(struct vb2_queue *vq, unsigned int count)
 	if (r < 0)
 		goto fail_return_bufs;
 
-
 	if (!imgu_all_nodes_streaming(imgu, node))
 		return 0;
 
-- 
2.17.1


