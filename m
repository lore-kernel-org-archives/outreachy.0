X-GM-THRID: 6671347269722177536
X-Received: by 2002:ab0:6592:: with SMTP id v18mr6943179uam.63.1553294078172;
        Fri, 22 Mar 2019 15:34:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:c782:: with SMTP id t2ls2367246vsk.2.gmail; Fri, 22 Mar
 2019 15:34:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxSMGwQu77Boi0Vj5JibQDybHO5Hgtq4Y4MEZ9oN7lJb9DEpO8M+sfUejsTUcTWsVZkYksh
X-Received: by 2002:a67:f753:: with SMTP id w19mr7613057vso.27.1553294077623;
        Fri, 22 Mar 2019 15:34:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553294077; cv=none;
        d=google.com; s=arc-20160816;
        b=G0BAmkAbf5IsgDHeysDJ57UN0+vYXprhT7bZ8Fh1RK0q44lccuglYg5J/dheNQEUg/
         J9ibc+qsUp07LossQHzlTaBR3KSDOXs+S/jCqUZ9hsbUnq8n4pniQ3ho/dgJQUcjfrEN
         Y0G3guF24fIZLtY2tPEKEDF/AyCaCG9a5lnn2WkQx4u2r4mBimFen/ZKwzOyFifg7Ehn
         ItVzzheY97BwzIl2T4pti0nSg462rJtUWUnRbAHPlyO/PVEe0/Ydziyai0GGHO/ttT7G
         cO5mw2sBNCcviQfsByHfRU1uKk6L1C07tRVeXf7ADHd7f0XHfhrJDCAXLrJiSlf6eQrB
         4Q1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=pXXoNLzsra/pxCOXd+nvGCsSWZxM5wybsxcxUPc20X4=;
        b=dONq7Dz/UpvU9U6SwE+9Ej7IaP6IlMg+jZTpwwW0dkcvcZLWNNcgkx3CmiNg1pK0Jd
         vRY/uBp3Jf2pQ0AcBmWqcX3pKGzY4n64angvxWN1PsFo/vrqRj4Y4DEwS2nxhNIcIjCB
         RAPyXQoMQ8sFv4x7XDfpc8+ru2AsGjftiZTR+yqPr+mCrPGE7BnO/pZSFFBdu6Z8PKWI
         R3mxdtuIfo0jo3cxlV359w9h/5gYRTRAd+oKrLPzi5bq402i1mQs88q43OWJvcHFHI8+
         qnunZuerNAuS5O1kYd+ktVUQX47AxCWLZ25KeITEyWZF6eCol02Q+8qpBHJUkf6I4kki
         70TQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G1Ws70iV;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id k19si657475vsm.0.2019.03.22.15.34.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 15:34:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=G1Ws70iV;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id 103so3305367otd.9
        for <outreachy-kernel@googlegroups.com>; Fri, 22 Mar 2019 15:34:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=pXXoNLzsra/pxCOXd+nvGCsSWZxM5wybsxcxUPc20X4=;
        b=G1Ws70iV5eSWJoM+fJUCgrUYsAxKvyI3binki2keRj3fKeup7pNSTW3TmETzkM/mWv
         3Ka2BUK3NgKGm9rbBQc1bDh5bnJGPxnJyFrPoC70kB6zphEm+W9uah2jWbEBtXwkyrqx
         gUHnxk+Kam8f+ieTszMcf9EYlLaK/wUmy5T/FgaHa4imt1rIo7+oGHHIoUPJROCsBX4H
         jtvikXJ8upIqeRGroUpNMcJGmo/AL0yOYWrr8okIbwjg67jp3teqPclu72rAK1PlHbB+
         QofV0ucNpCmWmLEIn43rYhgrr1AwKFETfMsOj0af9qmHUfx9TG+tbOeVVCs9C//73n4n
         +v2w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=pXXoNLzsra/pxCOXd+nvGCsSWZxM5wybsxcxUPc20X4=;
        b=i6MtaJP0uVhdYGvn3OFDrxKv9vNP6+b3Bd6ZExt2Z/9/LF2X16RDDsUGGf99ygXQ54
         yRiVzSyYuGhNI1RWBRTo7dayMtkiKmV58kfAQfaBHv8IsDEhI9Ka6SYPQGhoOoQUbJvz
         MSTPGREcbtsVGNuYLRsenuV3aJHLR1skSZhziZ0a42DuFbZJD9zA18RI8tMjoDLpW3L6
         fom7YVAG7RuiNylqaciDVViOt5uhfyVxwGXSVYRYBvsFDqWQRFCrnIIbXJIGSeOEJ+fk
         GIdd9oeap1SNEL5Zlqf6ZXICgyVcbrWj8rSpVIT3lxXzcysqNRv1cRi9Vmlgrs5TSt9Q
         mZAg==
X-Gm-Message-State: APjAAAVZTLUhnlHQaBj37IXFJrX/jtdVttgpbq/XtwvBFMF2v6gUyoCf
	GXwpS/1y5LTUTw6Gz0EnfiEYTRPxVi4=
X-Received: by 2002:a9d:4e1a:: with SMTP id p26mr8598138otf.220.1553294077070;
        Fri, 22 Mar 2019 15:34:37 -0700 (PDT)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo ([2605:6000:1023:606d:25c4:3243:c335:9f7b])
        by smtp.gmail.com with ESMTPSA id f15sm3541612otq.65.2019.03.22.15.34.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 22 Mar 2019 15:34:36 -0700 (PDT)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: mchehab@kernel.org,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: media: davinci_vpfe: Fix preferred form of passing a size
Date: Fri, 22 Mar 2019 17:34:31 -0500
Message-Id: <20190322223431.8609-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix perferred form of passing a size of a struct to improve readability
and eradicate an opportunity for a bug when the pointer variable type is
changed but the corresponding sizeof that is passed to a memory
allocator is not.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/media/davinci_vpfe/dm365_ipipe.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index 3d910b85905c..dc7dde83727e 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1264,7 +1264,7 @@ static int ipipe_s_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		module_if = &ipipe_modules[i];
 		from = *(void **)((void *)cfg + module_if->config_offset);
 
-		params = kmalloc(sizeof(struct ipipe_module_params),
+		params = kmalloc(sizeof(*params),
 				 GFP_KERNEL);
 		to = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
@@ -1306,7 +1306,7 @@ static int ipipe_g_config(struct v4l2_subdev *sd, struct vpfe_ipipe_config *cfg)
 		module_if = &ipipe_modules[i];
 		to = *(void **)((void *)cfg + module_if->config_offset);
 
-		params = kmalloc(sizeof(struct ipipe_module_params),
+		params = kmalloc(sizeof(*params),
 				 GFP_KERNEL);
 		from = (void *)params + module_if->param_offset;
 		size = module_if->param_size;
-- 
2.17.1


