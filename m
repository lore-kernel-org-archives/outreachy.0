X-GM-THRID: 6804062901536555008
X-Received: by 2002:a05:620a:2142:: with SMTP id m2mr17534111qkm.365.1584194344214;
        Sat, 14 Mar 2020 06:59:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:5057:: with SMTP id h23ls4996810qtm.8.gmail; Sat, 14 Mar
 2020 06:59:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuxA7aVMYmavpNhccUdtZhdk5R4XwQNDwkAoQ0ilLRNjqj+/5lJxHgiY9SIJiqoXq3YieoH
X-Received: by 2002:aed:2169:: with SMTP id 96mr17900324qtc.124.1584194343156;
        Sat, 14 Mar 2020 06:59:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584194343; cv=none;
        d=google.com; s=arc-20160816;
        b=MonZGOdw0BfPvl0wzLKT/VKBeHqaiufRGPXTcQVEWK+HvN5Pu+kn936/O+2zRZ5ZqI
         a202mj3CnraLf3mTKNdcrmQ7yRshelwu6K0X0B3qyeilhD2p9rVq3myZE2W4r0UwvA6E
         MAJsyZy/sYtzxreBiv2ZXftNGYi5Pl1N5VI+K6HDy0+/dxy5u/6iWO6WU4o9KTs8+nJg
         verQn9pcdS8NzumTgM9Uvr9k6dgoU2EsrYYE7ZYAcRQamo05PmlloztA4e29Y/2YXpdC
         7yCEApGx60YPcpro0KMSP4WuXZkksN1z1SiMxyVikMIKGjZrr5tJupfuFmWnxBI266ze
         6yuA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature;
        bh=cCCp57fkXiWhKuFd13Ij02QsZpOc2yU1Nv+KoqjoMsk=;
        b=btdhPsSfXC8j9QFml0Y/Mm931gMij4aS+nyyCS2jARE67Jburo0it7LBeYWBCUUSHI
         G0s0KzEutpPVs+8dUC+8aC1pqUa9W7tyLCjR6OV9mQdnGeOJ9MSD6oh7cXEurg/kLmuL
         8SpZd1KK84lFE71U6qmaNsN+jyNccyLytW+GpZerDX1/CFJPWIegv9Wh8DzinWSJC1db
         B5W+l4fLb2Ofn9fBBOjsuwF/nDHkfAwMkBy79cgFFshVwHnOH8x+tCnts4IgjneZeuux
         ZVn09zuoECCUwAl5wEmLtNUswv+U8ZOW62KQ5ByBvGvB6TAyO0Wx2YwtMiNT0cwRJZ4G
         KD9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dl6C3A9s;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <mh12gx2825@gmail.com>
Received: from mail-pg1-x544.google.com (mail-pg1-x544.google.com. [2607:f8b0:4864:20::544])
        by gmr-mx.google.com with ESMTPS id e89si684583qtd.3.2020.03.14.06.59.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 14 Mar 2020 06:59:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) client-ip=2607:f8b0:4864:20::544;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Dl6C3A9s;
       spf=pass (google.com: domain of mh12gx2825@gmail.com designates 2607:f8b0:4864:20::544 as permitted sender) smtp.mailfrom=mh12gx2825@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x544.google.com with SMTP id t24so6730583pgj.7
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2020 06:59:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=cCCp57fkXiWhKuFd13Ij02QsZpOc2yU1Nv+KoqjoMsk=;
        b=Dl6C3A9sihIgydYOxF8+i1ru4q78wepd20VsAM/g4jLpAAFB5dKuAohaprs3Uzonun
         yQzjiaddkJuqWzDiIsuQDzew47QJ/81Q+WX183GZ5UdQAYkhbxoz46Q+MgseyE7rxLYk
         3dPjxB3YCuxOQk83OYCbj7uuqu+TlcD4u7ru502r/j6njZ+8yY+p5eoxDJBo1fRoAO3s
         9rL8p4nHnpNptxB1gqyhgxbwiWollf+1g8rW99WmEvtGwbgc0dWK1jsddTJR7tur6Gfv
         G6fdGaIsla79NSocYhua8WwE+13vRWdkRe9xyR1T2yEZ0L4zbaOfwsBUCjgkvMpcHjAY
         9xeA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=cCCp57fkXiWhKuFd13Ij02QsZpOc2yU1Nv+KoqjoMsk=;
        b=O63ha8iYZVTQKQUBQSw8I4Zyl4NZKiwxjYXeiuDmMfgKT4WmxKK+S24QRerXQdi0NK
         41P1zSUrGYqhvKAs9I7hQ2NvsbaNK9xkT87vWQhzpERToFbhGRSRIz1TYZl5h16xibXD
         SkrEzGUom9RGuOqLTikbE2pPBmx1wnjCARyw7mpFztuxUDzjVR8fEVsH/B6WCzFea3kF
         hk5Co88IiGoNJENKwSZW4w08F3iWmr0AP7ChlLe57L+EaTy2YsDn6rlrBDOTBACZUwPH
         BPBdcB7iSyXOJWSHoqRy4AHREQ/C7GhJ7ntPuKhd+OTUawBpPuCpjS4tx5Ao0xQwIHpl
         /9OQ==
X-Gm-Message-State: ANhLgQ3ZDrM5RlC2QupxB+/VV2Z50xeGlgbdYrsL81UapnNcRPy1NxgH
	3eQ/BArou3C6nVCWUKUXDMdSYIkq
X-Received: by 2002:a62:7696:: with SMTP id r144mr19827563pfc.177.1584194342114;
        Sat, 14 Mar 2020 06:59:02 -0700 (PDT)
Return-Path: <mh12gx2825@gmail.com>
Received: from deeUbuntu ([103.228.147.139])
        by smtp.gmail.com with ESMTPSA id h198sm15971052pfe.76.2020.03.14.06.58.59
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 14 Mar 2020 06:59:01 -0700 (PDT)
Date: Sat, 14 Mar 2020 19:28:57 +0530
From: Deepak R Varma <mh12gx2825@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org, daniel.baluta@gmail.com,
	kieran.bingham@ideasonboard.com, abbotti@mev.co.uk,
	hsweeten@visionengravers.com, mh12gx2825@gmail.com
Subject: [PATCH] staging: comedi: dt3000: Reformat multiple line dereference
Message-ID: <20200314135852.GA6336@deeUbuntu>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.9.4 (2018-02-28)

Reformat multiple line dereferences for &cmd->scan_begin_arg. Problem
detected by checkpatch.

Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
---
 drivers/staging/comedi/drivers/dt3000.c | 5 ++---
 1 file changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/comedi/drivers/dt3000.c b/drivers/staging/comedi/drivers/dt3000.c
index f7c365b70106..011e19161b78 100644
--- a/drivers/staging/comedi/drivers/dt3000.c
+++ b/drivers/staging/comedi/drivers/dt3000.c
@@ -439,9 +439,8 @@ static int dt3k_ai_cmdtest(struct comedi_device *dev,
 
 		if (cmd->scan_begin_src == TRIG_TIMER) {
 			arg = cmd->convert_arg * cmd->scan_end_arg;
-			err |= comedi_check_trigger_arg_min(&cmd->
-							    scan_begin_arg,
-							    arg);
+			err |= comedi_check_trigger_arg_min(
+				&cmd->scan_begin_arg, arg);
 		}
 	}
 
-- 
2.17.1


