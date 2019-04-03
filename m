X-GM-THRID: 6675008112137601024
X-Received: by 2002:a0c:b60c:: with SMTP id f12mr17402qve.48.1554305896114;
        Wed, 03 Apr 2019 08:38:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ba02:: with SMTP id w2ls596075qvf.6.gmail; Wed, 03 Apr
 2019 08:38:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyXpHiAYx4VCpEJgrBqo5dBW4OL2QncKT8uWJh781daIXdlrwlnyvYZ3n7FYMbbzuwThV22
X-Received: by 2002:a0c:93ba:: with SMTP id f55mr22626qvf.12.1554305895206;
        Wed, 03 Apr 2019 08:38:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554305895; cv=none;
        d=google.com; s=arc-20160816;
        b=TVK728aiywr8B7hESvImaWxxRfnHybzl6t8AYHiAvWqpyvKr9m+VYSutAUJxDq6PGh
         cE8vOwfAnZzaSgVQrlrc7RjDptEXJ+amZ7pCaLLweKxhLSFBSvrP8gT/2hMk86SaIpIh
         anoP4PQk/sX9bJWDJbjIBSiTgE2Tu7bPj8Z67uGSCUK3SdYp75cmgeQRx9DNo8KDXLdT
         34XgrtjROwPfiOUNqjlkV3qXJl0DtSyNVERxjpsKzvli5rjDQdCGTZwUOmG7e+INw2QO
         1wLNNS/HKGidr2qsb4vycErZyM4jlEPZR7QmNR4C6FNVMuj0HR0bz0OZYg92TCyPxG1Z
         cdaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=5RVZzKI2niqdgrZzi1LDkfFTf3WVJEzi67aLgSW32Y8=;
        b=EWF/l4ATn51r66JsU/IOmSUZ5+2yJyVcyvxImuUPwVZofdHTKHcd78/X25GKrcD5k5
         6b3Q/0JqhzSW9LAyDUfZuXa50dCpbCFw9HVlHCH9Oxg7snx1RsQOGKPKVQRVLeQ707bS
         NUEt8rBZZnif5S+9HnYRM/SdLWCubkUeCg1kMyCd9cFsuHNr2C/NsAnl3lycx8FQMlhz
         uG77TcLeGEf/meC58iwi4pPB/l0qIVVL0E9hx38uqI6YG+fFQtUZMW+avaaaqSrDyDtq
         xGZ44O0SEOKrIjSL7ycMk1hUGFXqOsWXrdr+vGV1bPYK3MaKXFNF6E5fQy3nZbKhPqxf
         q8cg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTy04GKC;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <himadri18.07@gmail.com>
Received: from mail-pl1-x642.google.com (mail-pl1-x642.google.com. [2607:f8b0:4864:20::642])
        by gmr-mx.google.com with ESMTPS id h186si973709qkc.1.2019.04.03.08.38.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2019 08:38:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) client-ip=2607:f8b0:4864:20::642;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=BTy04GKC;
       spf=pass (google.com: domain of himadri18.07@gmail.com designates 2607:f8b0:4864:20::642 as permitted sender) smtp.mailfrom=himadri18.07@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x642.google.com with SMTP id ck15so7035794plb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 03 Apr 2019 08:38:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=5RVZzKI2niqdgrZzi1LDkfFTf3WVJEzi67aLgSW32Y8=;
        b=BTy04GKC4QHQKR7Dh+tVNlG8XI7gOEVGbq57fsr+/5Mutw/5RYAiyWuB2hXw9UgbBX
         2S7c3KRScxfIvhgYaPfKFLHrdGNBSGPu0h5gUgJtYZRn56hHVPCCYkzq47bUhTaEHHFB
         b/FwMVpY5D29q2+SEPDWxlC7XNPQddlslDMIReJvONp8MgB7vxCPQPuK8y7amg1B2pa2
         ZKqbG8XW4zjmWXRF18orx0Sd2Q0pQywzhNFLsfUXmvrCkFDxPUTMLL1flsPDdDJXxI5b
         EMTRp9KETua5TAX2+UmdAo8ZWitEjjMXQ+K5xuhLZzEGS92jV1OSTbn47yFGSkSUcldE
         Y2zA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=5RVZzKI2niqdgrZzi1LDkfFTf3WVJEzi67aLgSW32Y8=;
        b=eRfyQzj2/VkDjcBJIsLZQAcz0iDKuAIbeToPAaQP8o+bIImha/iU9WMB9ehokDJJxE
         IvMbqEAfm43Wu58PD6Zy+f3Hc52pfltgy6p4JZ6dyPXRyAvh4FMKbCfVwSu2f8AwWX6m
         L7EGGA9ohfVVUQQMsJAWiCZfoHOmHwqlB1gK24400g/1kaJtM8AOg5sDimTyWhuqiHhS
         lSt3Crs9WE3EuPNfpHnkElRVV3Q8HeLHxevX8s+kmDxYf3ZiF39+ll+0lXjM5DLrC0lL
         cmbX5fmLPAxzoTy2pUEUSRUwx401it5UDOLUrryELWKYSrekqSNjRMzapr5x9Sl3+r6G
         68JQ==
X-Gm-Message-State: APjAAAV7y+ox3r2WyZkr2dUjwwI1WABuTEqge++Xnu0hBEnmnN6YCa0E
	7IsEINQi6X7l5s4nqhQlek7QevGL
X-Received: by 2002:a17:902:846:: with SMTP id 64mr609829plk.266.1554305893769;
        Wed, 03 Apr 2019 08:38:13 -0700 (PDT)
Return-Path: <himadri18.07@gmail.com>
Received: from localhost.localdomain (mx2.daiict.ac.in. [14.139.122.121])
        by smtp.googlemail.com with ESMTPSA id c134sm33082154pfc.87.2019.04.03.08.38.09
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 03 Apr 2019 08:38:12 -0700 (PDT)
From: Himadri Pandya <himadri18.07@gmail.com>
To: laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org,
	gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Himadri Pandya <himadri18.07@gmail.com>
Subject: [PATCH v2] staging: media: omap4iss: redefine to_iss_buffer()
Date: Wed,  3 Apr 2019 21:07:58 +0530
Message-Id: <20190403153758.34743-1-himadri18.07@gmail.com>
X-Mailer: git-send-email 2.17.1

Currently macro to_iss_buffer converts vb2_v4l2_buffer into iss_buffer.
But the applications needs the conversion from vb2_buffer to iss_bufffer.
So they need to convert vb2_buffer into vb2_v4l2_buffer first and then
vb2_v4l2_buffer into iss_buffer. Redefining to_iss_buffer to convert
from vb2_buffer into iss_buffer directly helps the situation.

This patch redefines the former to_iss_buffer macro into an inline
function to perform above task and uses it in corresponding function.

Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
---
Changes in V2:
	- Merge two patches into one
	- Optimise the new definition of to_iss_buffer
---
 drivers/staging/media/omap4iss/iss_video.c | 3 +--
 drivers/staging/media/omap4iss/iss_video.h | 5 ++++-
 2 files changed, 5 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/media/omap4iss/iss_video.c b/drivers/staging/media/omap4iss/iss_video.c
index c2c5a9cd8642..c99611deed6b 100644
--- a/drivers/staging/media/omap4iss/iss_video.c
+++ b/drivers/staging/media/omap4iss/iss_video.c
@@ -318,8 +318,7 @@ static int iss_video_queue_setup(struct vb2_queue *vq,
 
 static void iss_video_buf_cleanup(struct vb2_buffer *vb)
 {
-	struct vb2_v4l2_buffer *vbuf = to_vb2_v4l2_buffer(vb);
-	struct iss_buffer *buffer = container_of(vbuf, struct iss_buffer, vb);
+	struct iss_buffer *buffer = to_iss_buffer(vb);
 
 	if (buffer->iss_addr)
 		buffer->iss_addr = 0;
diff --git a/drivers/staging/media/omap4iss/iss_video.h b/drivers/staging/media/omap4iss/iss_video.h
index f22489edb562..f5018f4742fc 100644
--- a/drivers/staging/media/omap4iss/iss_video.h
+++ b/drivers/staging/media/omap4iss/iss_video.h
@@ -118,7 +118,10 @@ struct iss_buffer {
 	dma_addr_t iss_addr;
 };
 
-#define to_iss_buffer(buf)	container_of(buf, struct iss_buffer, vb)
+static inline struct iss_buffer *to_iss_buffer(struct vb2_buffer *vb)
+{
+	return container_of(vb, struct iss_buffer, vb.vb2_buf);
+}
 
 enum iss_video_dmaqueue_flags {
 	/* Set if DMA queue becomes empty when ISS_PIPELINE_STREAM_CONTINUOUS */
-- 
2.17.1


