X-GM-THRID: 6743162884292870144
X-Received: by 2002:a9d:554c:: with SMTP id h12mr2244591oti.111.1570014954677;
        Wed, 02 Oct 2019 04:15:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:cc88:: with SMTP id c130ls391646oig.4.gmail; Wed, 02 Oct
 2019 04:15:53 -0700 (PDT)
X-Received: by 2002:aca:4dd1:: with SMTP id a200mr2379495oib.94.1570014953784;
        Wed, 02 Oct 2019 04:15:53 -0700 (PDT)
Received: by 2002:aca:7208:0:0:0:0:0 with SMTP id p8msoic;
        Wed, 2 Oct 2019 04:02:54 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyPCnINEoTI+D+j66FD3PpNMkIfLFVFELsHYgqgo+ps+G+N8n12mOpjXmj7dJuvOLcqkbaU
X-Received: by 2002:a02:80d:: with SMTP id 13mr3309844jac.50.1570014173962;
        Wed, 02 Oct 2019 04:02:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570014173; cv=none;
        d=google.com; s=arc-20160816;
        b=k0HDwo3ALeXAReK1JRdrjk793DOPuykDCuN3l5+xeucd39MY5sth3ql0gs6eI/UflF
         llkbHe6zmqopp2XD0VL4rQA+xyYmw3bZQUdz0SMhX7HJrnlc++c9zFj4VinPpCVGuxXV
         YXaIQ9Otss6sR/I2H/LwzQCaqka0X/exaSjcabbsLJy4OpK6yuhEfpWXJr3ASREh4lyQ
         2Dpda16uUEs9cOlmisMWSEMpUTbaX05qXK/N6re0EZrOe0JTRr3ZZARjAhEuDsmET4Rc
         DDcZHOVE+bLa0hi0jyOZXtn7MIWIhiVty0JaKAolRTwA5QSIWOX3t7RMRrLtyqE5lOer
         FeSQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gtrsuF/Zj/kwKf+KJi/knYENkvbsOmjD/KAmNFeVV3A=;
        b=hD1pHeBvlbLDLos7INMBeB/GrRZTVmhfWG718UVLxFCSjHXagygAxGcbGxJRb3TS8R
         4GzTqT10WA4reuYUciPHo5w1P6idO1l1jATgny511SvdBV8j2W+ZyrbiaLdI/ex8AKuP
         ChVhc0sS6KjuXImvY5mCX1CvtWst9WITNCBzOSgoa+vaHqk5VfsOvwTeszQ8DAVhziAI
         evyUIq+d9ecdrNDab+mMqMuMFzFQ2otIqoGxzIPHzTFR+6Rr1kY4Nmhm8aT0DmVfPrKU
         aqNBSDiFjfkqqzZ6Uzo6+efIYdfdlYbGtKIVoCrz6wM9CJxds0WG/nyvjjQxzeN7bRt1
         ZveQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=COcSLygi;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nachukannan@gmail.com>
Received: from mail-yb1-xb44.google.com (mail-yb1-xb44.google.com. [2607:f8b0:4864:20::b44])
        by gmr-mx.google.com with ESMTPS id b12si732174ile.2.2019.10.02.04.02.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 02 Oct 2019 04:02:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) client-ip=2607:f8b0:4864:20::b44;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=COcSLygi;
       spf=pass (google.com: domain of nachukannan@gmail.com designates 2607:f8b0:4864:20::b44 as permitted sender) smtp.mailfrom=nachukannan@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-yb1-xb44.google.com with SMTP id f4so3393911ybm.2
        for <outreachy-kernel@googlegroups.com>; Wed, 02 Oct 2019 04:02:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gtrsuF/Zj/kwKf+KJi/knYENkvbsOmjD/KAmNFeVV3A=;
        b=COcSLygiNby1mmsadbBs10ISY/QGNcniq4fsr94+Uc1ZXefvtKuwRXdq9VCQ/HKSyz
         xvZcWDsH7IaQcc234c0ms3u35eQ94eu4OnZd7NS2OjXZnfmX+qR4gDcelBriNzwOOl48
         WOVsZZyFYRzqIfJy3BJ6+wKtcYcHtT/gge64WOYZl3li/O2skI9opg/t3681FYmAgsQf
         f7WZM/1lA49iNtgey/HB1Kk2uxURnxcu9rWfwTRswheFE3a+AXPzp/AHn0lC/YTP4ZGh
         eBUQ0SUfZWzO80cAUfl0WXO1ylvIZVztEns3FnIBkqOQ9Q8bYr1my1W9Gf/DedQlMrlh
         BLtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gtrsuF/Zj/kwKf+KJi/knYENkvbsOmjD/KAmNFeVV3A=;
        b=QEjjqabQ5HNDn6RPCF1eqWOtAlXeH2NlwG5vtY5zKLzaFTA3ecvBjNAV200XXtV7e1
         WuSEO0DU2vu1N7cVXJfSUW8mJYgTx8Cn+f+zKe+oTUPReZqYHW9H+SEgFDr/VjfSYRIV
         l77SHC8jmq2Yi4zEAMCePV1x9SowUYKmE1pmJhkdZG6Cj5zQmmIU7u9K2ADQXcoCSHyR
         DFei0dVTiPuvKsP1KjVnlvRywaN3w4LvfRv8q061I2qOzoBacY4AJWEOvYLL41aw8Uyw
         8o/5JuY3ZDFx9HWhKqDozJDPAXeyUIVuO/4c6Vxdsvz8OPbYmQlwBgOUiF/pYs647VAo
         vgfQ==
X-Gm-Message-State: APjAAAUaBqdSZRyIKYRqvBzAndjq97x8hFht/YJ7ZpciMz+pBXGP6In9
	mn9l7OWia6P1BQa0ParQrqRSwsKeFJQ=
X-Received: by 2002:a25:3bd0:: with SMTP id i199mr2006460yba.183.1570014173390;
        Wed, 02 Oct 2019 04:02:53 -0700 (PDT)
Return-Path: <nachukannan@gmail.com>
Received: from ubuntu ([107.15.113.108])
        by smtp.gmail.com with ESMTPSA id x16sm4758653ywx.103.2019.10.02.04.02.52
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 02 Oct 2019 04:02:52 -0700 (PDT)
From: Nachammai Karuppiah <nachukannan@gmail.com>
To: Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
	Mauro Carvalho Chehab <mchehab@kernel.org>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com,
	Nachammai Karuppiah <nachukannan@gmail.com>
Subject: [PATCH] staging: media: omap4iss: Replace NULL comparison.
Date: Wed,  2 Oct 2019 04:02:35 -0700
Message-Id: <1570014155-41266-1-git-send-email-nachukannan@gmail.com>
X-Mailer: git-send-email 2.7.4

This patch modifies NULL comparison to fix checkpatch.pl warning.

Signed-off-by: Nachammai Karuppiah <nachukannan@gmail.com>
---
 drivers/staging/media/omap4iss/iss_video.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index 54144dc..673aa3a 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -671,7 +671,7 @@ iss_video_get_selection(struct file *file, void *fh, struct v4l2_selection *sel)
 		return -EINVAL;
 	}
 	subdev = iss_video_remote_subdev(video, &pad);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EINVAL;
 
 	/*
@@ -726,7 +726,7 @@ iss_video_set_selection(struct file *file, void *fh, struct v4l2_selection *sel)
 		return -EINVAL;
 	}
 	subdev = iss_video_remote_subdev(video, &pad);
-	if (subdev == NULL)
+	if (!subdev)
 		return -EINVAL;
 
 	sdsel.pad = pad;
-- 
2.7.4


