X-GM-THRID: 6621613104664936448
X-Received: by 2002:a1c:968b:: with SMTP id y133-v6mr25707wmd.12.1541714441344;
        Thu, 08 Nov 2018 14:00:41 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:b7c2:: with SMTP id t2-v6ls995840wre.27.gmail; Thu, 08
 Nov 2018 14:00:40 -0800 (PST)
X-Google-Smtp-Source: AJdET5diuTw0kIG8eRWEBkm6TWsySV3TWLKiudt9ak0R99cPabv13/4Ba2XDpMVy7HICXOuxhz8e
X-Received: by 2002:adf:e948:: with SMTP id m8-v6mr1279067wrn.6.1541714440292;
        Thu, 08 Nov 2018 14:00:40 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541714440; cv=none;
        d=google.com; s=arc-20160816;
        b=hs2Pgddk+mg8SobAtyFJilpxZ6XGpvW+aXywhJXes9i8XCaW19YlMto1kdLr/6Trss
         WkjbPLnwUm++cVCpQmIZdsL14oTtxaMBC6xMIUHNlIvJdEqCreBsuSbFgSrLyKGB172s
         SOodU+7LdS4CVxS2lPkQjy1yi32z4YgvWcukdva6DbCxjQiJjxd7PbR60WnhNNOzjSpc
         lXLB3aBjQrVum7ISvAEiGEmoIIlOYCB8u6a/Gcq4DQ5Eg/YAAGJtHDV+AzdiB5dgmBzR
         0BIUOvLyA54FQkUTY9zxRavrJw0am6toIhPuC1HQQbQVQaUPXfdJjjRCdy851MchfH1Q
         9aRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=0DHIoBDHI27eQaKG+HzYENlC+rtYv2iuH55dA6zLXVA=;
        b=A8ZtUDOaoldAtzepsCl3zqgNrWDQ9Bq8UlS91WvZJ4YGGz1/rYDpJf47jtJMvtAjti
         /2/M6d3/1HpCDnXdhAnX7g2dFqOlOSJPqlkYwGKGwUDj53cYOZGXOZWXeLA1nAwMw09I
         p+udQ3KkQOVgbioCMe9HhLG8GR+4UNQdAQppjpb/Erl7Qd+sOEbKVCuonXddYMQFN1ny
         f3AhyaCUot1ROy3HT25G2AkIH6ezxU7RwHLmKZcDvbkS4Ln5TJG9r68ihnWVT5E1Wg6C
         YUlGmH6VuUiTQaILTBsAPTl2YWBAk+Q+jInO3a9Rqb2eOBNNVOGhtXLzXAf966N2b4aH
         z+Ig==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRHKqcaS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x441.google.com (mail-wr1-x441.google.com. [2a00:1450:4864:20::441])
        by gmr-mx.google.com with ESMTPS id j187-v6si670wmf.3.2018.11.08.14.00.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Nov 2018 14:00:40 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) client-ip=2a00:1450:4864:20::441;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jRHKqcaS;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::441 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x441.google.com with SMTP id r10-v6so22857541wrv.6
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Nov 2018 14:00:40 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=0DHIoBDHI27eQaKG+HzYENlC+rtYv2iuH55dA6zLXVA=;
        b=jRHKqcaSCbrQanOcLf/yD0+tA0E1dy1XBnxDz+CuRN5K4zdy2Ebhnaq13kSJdfvoe6
         sVuVJsMYnPUNZu67PQa2wOoa1gcpaiBP+j02PJ/ICxdLcsc1MSMXVKuXYq15Oox3kCzq
         bY+N2vPILyQK6bXsye8LqjqIt2CviEgI9KI9rNru5XBIQ6nIKqWU/po292LKo5kDuICe
         kmb62YfPaVS4TXpUDAYdzkHsV+mIEf4UNWPAg8RPBZUYa72l/sZAKXaXj2E0QWWWKReM
         Yg9hW4K0bj1efRaFYd/hvS7BCx/k68D10g41VmdFXqa96MzdCpQJs0jqFv0uNK1bBnli
         Zu/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=0DHIoBDHI27eQaKG+HzYENlC+rtYv2iuH55dA6zLXVA=;
        b=gjXTmUvm7tgm/5x3fm+OyqnbJrbeDGgMRgOU99I0Tc6lJnuB0nAdIwr1/O3eaHxQ2E
         nGaiLN1qGoQ9eFeDP2ZBTFca0RTm6uQmnEi1sanndLKV6CsuFaIg7NVTvmE9ioXvQ0tY
         bhnFoIkkAHaI3GSkT73dN04Iy6aK1Vm8+4v8TCN8U/awWEXBwLjh9aCVQ2m+RI0fY64x
         tJDe7YFVz+Yrju8rJ24TBI/e+raLlOk21XuvoGy3UEoFLcL4zkgIRwfGVGD1uV3HpnX3
         jX/2DEEz8Ad98g7JH0kNP8VMzL8ie1Dm/+nT+5lvpYfjpKZsuB/vp8K0BfKeiiJHhxRT
         6izw==
X-Gm-Message-State: AGRZ1gJZUUkRPqQwD5wOl1RgvQ40YKQJAYjWWHGGYdLoFOi2S0bkjxuT
	fL6LVeA5tXZhAsnd4VWYTZblkaA=
X-Received: by 2002:a5d:5544:: with SMTP id g4-v6mr5552634wrw.222.1541714439593;
        Thu, 08 Nov 2018 14:00:39 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.gmail.com with ESMTPSA id c18-v6sm2816307wrr.74.2018.11.08.14.00.38
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 08 Nov 2018 14:00:38 -0800 (PST)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Irenge Jules Bashizi <jbi.octave@gmail.com>
Subject: [PATCH] staging: davinci_vpfe: Remove multiple blank space
Date: Thu,  8 Nov 2018 22:00:29 +0000
Message-Id: <20181108220029.1469-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Remove multiple blank space complained by checkpatch

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 2 --
 1 file changed, 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index ccb59fd653c9..3d910b85905c 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1817,8 +1817,6 @@ vpfe_ipipe_init(struct vpfe_ipipe_device *ipipe, struct platform_device *pdev)
 	v4l2_ctrl_new_std(&ipipe->ctrls, &ipipe_ctrl_ops,
 			  V4L2_CID_CONTRAST, 0,
 			  IPIPE_CONTRAST_HIGH, 1, 16);
-
-
 	v4l2_ctrl_handler_setup(&ipipe->ctrls);
 	sd->ctrl_handler = &ipipe->ctrls;
 
-- 
2.17.2


