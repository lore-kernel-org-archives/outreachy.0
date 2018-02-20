X-GM-THRID: 6524560209013112832
X-Received: by 10.25.235.140 with SMTP id f12mr46114lfk.19.1519117560319;
        Tue, 20 Feb 2018 01:06:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls757476lfa.11.gmail; Tue, 20 Feb
 2018 01:05:59 -0800 (PST)
X-Google-Smtp-Source: AH8x227NcgJePqFW+t/DwtA2Sk3iyzzuBRnvvUeCzB04DiEfx06uozQK1qK9C9Tyf+FT/IcaIqUc
X-Received: by 10.25.27.209 with SMTP id b200mr1203677lfb.27.1519117559311;
        Tue, 20 Feb 2018 01:05:59 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519117559; cv=none;
        d=google.com; s=arc-20160816;
        b=K/dknjsskapOVoucM3BWhcGApkNneTVMCUm55eNa9Am6slrmespMlupIqMsH/8fjwp
         Ohy7v9rj6LdGa3/n5kumLjj+nhbo+M7KogKpl2wsn9Q3mn85iya+qhDQCDua2QWU9xSw
         ZZ8xXf51UIimgZDsMCF83b3ivrgPTVy/+Nk/Xa2LejVh4xuCjGJoOA8rvp+K8CvTLEBD
         32th1r+0/LAOoI8Uvmf/bg6r4FQ7+luJfVjAi8lnsOmsqLCXw11ZlQ/7uE6fS8goEBOK
         zy+FmjTVc00cXhL+tcnKSmfYrXHQY4gyBGtckQ5KWBISZZXaWvZTJ61SWspRaZ3ZsPX9
         YpkQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature:arc-authentication-results;
        bh=oB3KKe7cDQppJvc3xOLwoniDmF2mDqCps4955XFnOWk=;
        b=etR+vFxV3OJ4z2TMKI3vQJhxPRsdT7P00JJCKoCn8ejs3Spfb3408ts3CfCVOmVwI0
         auEXyTfSPdxDt+oMa8MAYqmyPrFwp/Voe2I6YJkTRxLTjRR+Rmyrlyik4SfI4UssElye
         o4XodHHdTmRw8dNkbBrBzgPFzDeXq9uoQ9aVx67/Dwg5ib48oa4F3xiSkHwcxh/Veovj
         g/uJtuN7R0LOPgTDJkEmYCswc3pN6hFhHKbjYU2km1+pS2Ww2rNtcDB1zfnznxTElVxc
         ahLDklN3pAnLKougVorXoXCLyzoO01C5KFJo/1l2+yS7gQlkLcplLYcaubE2It59KQvL
         W/sg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0k6g8tC;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <chenyensu0@gmail.com>
Received: from mail-wr0-x244.google.com (mail-wr0-x244.google.com. [2a00:1450:400c:c0c::244])
        by gmr-mx.google.com with ESMTPS id z25si25251lfg.5.2018.02.20.01.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Feb 2018 01:05:59 -0800 (PST)
Received-SPF: pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) client-ip=2a00:1450:400c:c0c::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=I0k6g8tC;
       spf=pass (google.com: domain of chenyensu0@gmail.com designates 2a00:1450:400c:c0c::244 as permitted sender) smtp.mailfrom=chenyensu0@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr0-x244.google.com with SMTP id p104so10877573wrc.12
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Feb 2018 01:05:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oB3KKe7cDQppJvc3xOLwoniDmF2mDqCps4955XFnOWk=;
        b=I0k6g8tCETZGlUSkgm9+/pLbdiAnbnShir63vaYZfhQ8AGZ6m9hIxY9RD81YAoPc9F
         1aFxFtDPUxrz6sRdkAB41F113jIMX8liuoNrshicE8E/h3ALQ4it+VG2cpk/do6v8KGD
         3ONkiI2BIlEKiLDBtz1LO3o5sib9lXpAQVzNv2Toh5ZkYpCBWURFKAcj/QTwRLBlZT6n
         hXHlHLRy9OhQj4W3QyQxSkp/QUHuiRKCCmha8qhzdIiszY1Wy653dVstRl7wpSYVj3RV
         Eit6XxwoUoh3lnO3UKZZ4qTVEUFvsexQQndpLSivNQu6SlCAMMh9l8CXgWgeWe2BOeTo
         Pz2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=oB3KKe7cDQppJvc3xOLwoniDmF2mDqCps4955XFnOWk=;
        b=Y4RrjhGR1Bdv4yvm118W5hdoD1Ur3PIcZaJzFOjn5Hm7kHnJ2DBVQrrZ3KDLAyRP77
         1ujmK6rSXRCWsoS1CwSsrIX+3xV3a4WnOINDDHdEtK4d/YJtqG2y+biD+ccSVer/g1tN
         LLyVwJ/aFet6HG+81Cc14fcv1KzrL8+dj5Ce+ktduVDjMkNsu1pZHmRAND/ZMa0kj4lt
         HTZkGl5D03L0WGMkiKHgf2Qylkkr5NcIaSFEGx4hVyyJf3OSctQMp307zZVV3i0skCxr
         /Z/PPGU3NuJS4KLe9u0o7zyPaxbD4mtr1H9oTFSPz7PGchOJPJa5LQf2M7A7JERKK4jA
         XGhQ==
X-Gm-Message-State: APf1xPA7MOSlnTc3MXoI7YsG5q23tzvuUqGp1MiIDHZEmGJ2CxviYgyE
	7Ex2sMn02XHRz8VCmcd8J6aIOzrnxhI=
X-Received: by 10.223.161.144 with SMTP id u16mr16093917wru.137.1519117558803;
        Tue, 20 Feb 2018 01:05:58 -0800 (PST)
Return-Path: <chenyensu0@gmail.com>
Received: from outreachy-kernel.wifirst.net (eth-west-pareq2-46-193-1-181.wb.wifirst.net. [46.193.1.181])
        by smtp.googlemail.com with ESMTPSA id 137sm18602276wml.3.2018.02.20.01.05.57
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 20 Feb 2018 01:05:58 -0800 (PST)
From: Eisha Chen-yen-su <chenyensu0@gmail.com>
To: outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Cc: abbotti@mev.co.uk,
	hsweeten@visionengravers.com,
	Eisha Chen-yen-su <chenyensu0@gmail.com>
Subject: [PATCH 2/2] staging: comedi: Use '"%s:", __func__' instead of function name
Date: Tue, 20 Feb 2018 10:05:25 +0100
Message-Id: <20180220090525.13045-3-chenyensu0@gmail.com>
X-Mailer: git-send-email 2.14.3
In-Reply-To: <20180220090525.13045-1-chenyensu0@gmail.com>
References: <20180220090525.13045-1-chenyensu0@gmail.com>

Replace all occurrences of functions' names in strings by a reference
to __func__, to improve robustness. Problem found with checkpatch.

Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
---
 drivers/staging/comedi/drivers/ni_mio_common.c   | 8 +++++---
 drivers/staging/comedi/drivers/quatech_daqp_cs.c | 2 +-
 2 files changed, 6 insertions(+), 4 deletions(-)

diff --git a/drivers/staging/comedi/drivers/ni_mio_common.c b/drivers/staging/comedi/drivers/ni_mio_common.c
index 5d610af6799f..d6eb55b41814 100644
--- a/drivers/staging/comedi/drivers/ni_mio_common.c
+++ b/drivers/staging/comedi/drivers/ni_mio_common.c
@@ -1965,7 +1965,8 @@ static void ni_cmd_set_mite_transfer(struct mite_ring *ring,
 	if (nbytes > sdev->async->prealloc_bufsz) {
 		if (cmd->stop_arg > 0)
 			dev_err(sdev->device->class_dev,
-				"ni_cmd_set_mite_transfer: tried exact data transfer limits greater than buffer size\n");
+				"%s: tried exact data transfer limits greater than buffer size\n",
+				__func__);

 		/*
 		 * we can only transfer up to the size of the buffer.  In this
@@ -1978,7 +1979,8 @@ static void ni_cmd_set_mite_transfer(struct mite_ring *ring,
 	mite_init_ring_descriptors(ring, sdev, nbytes);
 #else
 	dev_err(sdev->device->class_dev,
-		"ni_cmd_set_mite_transfer: exact data transfer limits not implemented yet without DMA\n");
+		"%s: exact data transfer limits not implemented yet without DMA\n",
+		__func__);
 #endif
 }

@@ -4687,7 +4689,7 @@ static int cs5529_do_conversion(struct comedi_device *dev,
 	retval = cs5529_wait_for_idle(dev);
 	if (retval) {
 		dev_err(dev->class_dev,
-			"timeout or signal in cs5529_do_conversion()\n");
+			"timeout or signal in %s()\n", __func__);
 		return -ETIME;
 	}
 	status = ni_ao_win_inw(dev, NI67XX_CAL_STATUS_REG);
diff --git a/drivers/staging/comedi/drivers/quatech_daqp_cs.c b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
index 802f51e46405..ea194aa01a64 100644
--- a/drivers/staging/comedi/drivers/quatech_daqp_cs.c
+++ b/drivers/staging/comedi/drivers/quatech_daqp_cs.c
@@ -248,7 +248,7 @@ static irqreturn_t daqp_interrupt(int irq, void *dev_id)

 	if (loop_limit <= 0) {
 		dev_warn(dev->class_dev,
-			 "loop_limit reached in daqp_interrupt()\n");
+			 "loop_limit reached in %s()\n", __func__);
 		s->async->events |= COMEDI_CB_ERROR;
 	}

--
2.14.3

