X-GM-THRID: 6675008112137601024
X-Received: by 2002:a25:ea4e:: with SMTP id o14mr3673517ybe.102.1554146437125;
        Mon, 01 Apr 2019 12:20:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:cdc7:: with SMTP id d190ls122551ybf.8.gmail; Mon, 01 Apr
 2019 12:20:36 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwXFamiiIEimuVYlIQ+UU0M/46diGrcBC2mCnvsbxlT56IPvAF9arjrtRSKHQecWxqNvpx6
X-Received: by 2002:a25:1405:: with SMTP id 5mr6176993ybu.10.1554146436070;
        Mon, 01 Apr 2019 12:20:36 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554146436; cv=none;
        d=google.com; s=arc-20160816;
        b=owBH3gr1UA3PRuyoiQwrL5zMMFCW7uT2VPwohsmb7d1Qf95XoKS4+f9G9dpC2CMuOq
         aptpPmdA4tVRBXl7dYxNXmWA77wZ6W0VR7K122gG1fLchWB8WWf+nJK32X51GRc+z5NT
         ljR4+avB0Ij/tl5kP/CbJx8P7lmbh+RH8nRE1Uo37SYyKN2MKOadeIZ0C6Sk63W4bXbp
         WG/N0fYyh1ld84LCSc4fPqmVB0oZiXJew+espKbC+8o/9aYrMmjBG3Flt97UT3oKTcDr
         r6odDUyvuf1H8sa+vzco/PKuQJBl6XtBf3H9qsy7NLx7+tjkGTkyHuWo+zwZapXYWtk7
         DP0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=2UfY544asO19NciaE36lBMwwUGL77GfIMVgtMhYWGtU=;
        b=XYAON+fTq10emG0GOFSvzkMkvUPipjhxhZdEPztrOhN4wZhMi4+sbbHzvczHccqDMA
         FqXTgJ9zjQOz9mWpNvR7J5gX3eBIUl5rDLri6AisTxmCbZESKbH04rkEYoTlS5SbhqYL
         Bz7ojssHy3fRMK1iG4VIsfhXXYQabrBEA1LIUFFf7dqtT2ynm8xLWyEOg+buV3SBo+P0
         hkOPdDJqKcALzFU4twAxOu8kZxx9N70q3jvLTvfyiUCuKQGMkar8Uc8+9WXdLmdNlY1B
         PBENGrEVUlE+8Pvi9n2tqJUT9isrr58B+finlymEuF7yr/IkZfjP4Gtm0E/O0JZ49jJa
         80+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjgsk4X7;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pf1-x441.google.com (mail-pf1-x441.google.com. [2607:f8b0:4864:20::441])
        by gmr-mx.google.com with ESMTPS id l65si620678ywl.1.2019.04.01.12.20.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:20:36 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) client-ip=2607:f8b0:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tjgsk4X7;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::441 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x441.google.com with SMTP id z5so4030819pfn.3
        for <outreachy-kernel@googlegroups.com>; Mon, 01 Apr 2019 12:20:36 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=2UfY544asO19NciaE36lBMwwUGL77GfIMVgtMhYWGtU=;
        b=tjgsk4X7IkT0XBxK1iAqnQlHVD3DdHjwJw/+naMBPJxp+ZNqFixQww4CuQstWZCntc
         +Y55mwH/2Epe3qxiCoI3dMug1c42huaQK8LMpI6j++FfMQOSZ1/NfFQLtqmUI0QoL+Xd
         j5WwtiHkyEp5+mGC5BdRKWIO+P4rEYVYqoyDrY8XwK7ouC3KaWTCWPZVzeGXKqcJI1vd
         +VQN0rVs9CXwpVIlxCDvyHj0/9ZMSFYVewveeWVjEhBcu/iOBedlHHa6dbKMuF7Qk3aI
         xyLplEyQGAOZzEqt/Oh+EijZ6mjzGyp8RIRPklHrRxPhCchiej/906FHplEhE4fNgq7w
         MTpg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=2UfY544asO19NciaE36lBMwwUGL77GfIMVgtMhYWGtU=;
        b=mZsZaNPLRoJzY70U098O0dt6pQa6T01lENWZsv8XxIwyw16USYD+//ES9/r2Digyrc
         rIv3kPO6MuzueTPg8mRU8HkrjJemfXoqJrH5LF9NA4reLIXyCVMLU6Ma4ftjJ1naz0TC
         082NKjV7oYRk/2gAw6oRz/85s0nWYlD7ek74AbnH9VfSb1L2RCIZFuo1Nvw5gNp9jkfE
         tKpYsLO9P4rGxH8YcJC9oYV5Up3tvhhD2SuwkBeCORL+UuhGnQ0t05hyMB6nqZTv5LDB
         YuVpoEle3ldTX2PXTuPcFcXMpQeoUtpemqk1XBnefN+F0AH/UqDo7Mrv3Jg7AH6rOmoH
         N41g==
X-Gm-Message-State: APjAAAXocBWcDeFehSeM8DKSHGAIchr8/3p0qlK6IzusykWiK9f2kZqa
	KyEFvelysbAVLW8mYHF9JgY=
X-Received: by 2002:a65:6289:: with SMTP id f9mr50134427pgv.380.1554146435663;
        Mon, 01 Apr 2019 12:20:35 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id c1sm14246172pgk.44.2019.04.01.12.20.32
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:20:34 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH 1/2] staging: media: omap4iss: redefine to_iss_buffer()
Date: Tue,  2 Apr 2019 00:50:14 +0530
Message-Id: <20190401192015.96166-2-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <20190401192015.96166-1-himadri18.07@gmail.com>
References: <20190401192015.96166-1-himadri18.07@gmail.com>

Currently macro to_iss_buffer converts vb2_v4l2_buffer into iss_buffer.
But the application needs the conversion from vb2_buffer to iss_bufffer.
So they need to convert vb2_buffer into vb2_v4l2_buffer first and then
vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert
from vb2_buffer into iss_buffer directly helps the situation.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
 drivers/staging/media/omap4iss/iss_video.h | 7 ++++++-
 1 file changed, 6 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
index f22489edb562..3722ac8ba2fa 100644
--- a/drivers/staging/media/omap4iss/iss_video.h
+++ b/drivers/staging/media/omap4iss/iss_video.h
@@ -118,7 +118,12 @@ struct iss_buffer {
 	dma_addr_t iss_addr;
 };
 
-#define to_iss_buffer(buf)	container_of(buf, struct iss_buffer, vb)
+static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)
+{
+	struct vb2_v4l2_buffer *vbuf = container_of(vb, struct vb2_v4l2_buffer, vb2_buf);
+
+	return container_of(vbuf, struct iss_buffer, vb);
+}
 
 enum iss_video_dmaqueue_flags {
 	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
-- 
2.17.1


