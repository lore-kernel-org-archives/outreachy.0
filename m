X-GM-THRID: 6667148493451165696
X-Received: by 2002:a25:c41:: with SMTP id 62mr4609511ybm.52.1552316506914;
        Mon, 11 Mar 2019 08:01:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1b8b:: with SMTP id b133ls1954655ywb.3.gmail; Mon, 11
 Mar 2019 08:01:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzDLSa9eQ+Dix8X5/R5XMNCaYRy3nmF4LDNLCQs2cyUBbT8rL65Wqyp0bktDHCjvnfs+8QZ
X-Received: by 2002:a81:4fcc:: with SMTP id d195mr14630677ywb.4.1552316505891;
        Mon, 11 Mar 2019 08:01:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316505; cv=none;
        d=google.com; s=arc-20160816;
        b=qcmTWKpzy199UCpuHLHI6gfiI/zJv6hCFggGoacv30FaaS5C8YWqmw1ruKsULW5b7x
         9SDG8gNPVqjlbqfWZrRyHw2QfI9im3uu9Y8po4EnwZd+kMvVOlyruKyspUWEpL7vDP8N
         SZPi5Xn3DnkygVsid8w/lUqydG7GIov2V4AAg7liNA9fLdlkPYAFfZDRgbsURMzUnpH7
         X1c1wB8sXgD/9bXRdaXhFo/hz2d85UyxuL9PT3zrFOMmKdlzIQGCRJBtOMWOv/5zmnBJ
         5pvWbDpfL8iXAlRiUZ4+OlMIBbc6W3LE7AaRdYA19s6iJFqVS73vE10PG8Agzz8rG1so
         sDzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:message-id:date:subject:cc:to:from
         :dkim-signature;
        bh=E2hjZuGzFpM8CBnSxMzhy8YU34bZuKrv85hdvcEJcPA=;
        b=Nw149uE7JiQsJLdSJus3PSs7+RtN2Q87nqY7N8yfx7Gf2HtsECY1V8H/OAn00fYaJW
         N3udC9oalGR68Y27HuWBEooovi4FETjUEbpMJ/UKnEaGWIgl1l//sCbi1OeApFM9LTtt
         UA28tsa/31QzJ192lXsZ8CM3fm4Xea3vHL/zj9xqM8GkwmI9nkhiN04AqOGzl/DzNmmS
         gVIF8jMi2F0jl/yYiEuBKTOv9J6CJ4ljpgloqJCbjdAYs+MCjcTVlf2M2e6+bhsl4PSg
         y0g+k97yoKzUqwlhFiS9o8lbAyD44ACsKVhr2AlEqh+Mb5snH+iwKh62ZSMV8UckebPR
         vV9w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+ul97Uk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id k62si273561ybb.4.2019.03.11.08.01.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:01:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=M+ul97Uk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id u9so3898824pfn.1
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Mar 2019 08:01:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=E2hjZuGzFpM8CBnSxMzhy8YU34bZuKrv85hdvcEJcPA=;
        b=M+ul97UkLdAnna3Yqy6iaAJ4viWR7Ltvq33gATw8DibmrNrNCh5Cu386Dd8DXocSe7
         kzVcF5+7a3gK+XM9MTEnRlwUxucv9E4MQONm2Ieop2UupQ35UYjLsNE+l2o0BRUKNpH5
         3ffL/ohR5Pb+QaxtHoSEuF51NA+M0tc7qYYlXagogJxOMLDvifiCV8yXgBcjXu8ZUggb
         xliOI1UQYKcq3AG7cDI+eOd7SipHx3WfS3lGqKLx9M1xSmSZAFzt5dZJ6cinifLSHjcU
         D+X0wzQ95P1t/TDltV21j3Jp38vqU/fdFnM5xD/FMG92UhzkKcCuoAhxRErdnr1B0h+r
         GBlw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=E2hjZuGzFpM8CBnSxMzhy8YU34bZuKrv85hdvcEJcPA=;
        b=QwIutslKQUt4FV+Q2IYmxcNmr2qqIoiCESioVmk1UQmuIAzT5T18o7tdPoaj0ngRew
         Qfzdwow3r6/Z7Q6ShOQ/g5572tiEtrZcNYHH2aTHJ6hK+1jWLGMYkP5vylCps/c7sG7C
         m38rIUY+q+uJi6ij4vmVLM7518AyYsxe5Ehquua24DGc3nz+UHdznZcIYEjxG9xU0gpy
         5fSxdENqetWgQpMqCX5l+X792lHJDK1CZn4VeCYgOBk6NFOje5uSIF7oHwaE50BTu/rQ
         tmQfl6UJievtVVIdRlwqgN1rcnMxL7w+q7MLwpqMUgdQDMN00GQOfOqg97FdZ5nIqBZG
         Gk8Q==
X-Gm-Message-State: APjAAAXqk8sfuLk+nwxYhp1QjxHfohNPU8MGPxJFNdIV6SAKd0IX/Abg
	45Qu/0osWk6iPh8eJOj9l3g=
X-Received: by 2002:a63:1602:: with SMTP id w2mr1594611pgl.406.1552316505126;
        Mon, 11 Mar 2019 08:01:45 -0700 (PDT)
Return-Path: <etsai042@gmail.com>
Received: from localhost (199.138.240.35.bc.googleusercontent.com. [35.240.138.199])
        by smtp.gmail.com with ESMTPSA id l19sm8007618pff.185.2019.03.11.08.01.44
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 11 Mar 2019 08:01:44 -0700 (PDT)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH 5/5] Staging: most: video: Replace '--help--' in Kconfig
Date: Mon, 11 Mar 2019 08:01:08 -0700
Message-Id: <20190311150108.4717-6-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0
In-Reply-To: <20190311150108.4717-1-etsai042@gmail.com>
References: <20190311150108.4717-1-etsai042@gmail.com>

Replace '--help--' with 'help' to silence checkpatch.pl warning:
WARNING: prefer 'help' over '---help---' for new help texts

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/video/Kconfig | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/video/Kconfig b/drivers/staging/most/video/Kconfig
index ce6af4f951a6..a458d0c74a0f 100644
--- a/drivers/staging/most/video/Kconfig
+++ b/drivers/staging/most/video/Kconfig
@@ -5,7 +5,7 @@
 config MOST_VIDEO
 	tristate "Video"
 	depends on VIDEO_V4L2
-	---help---
+	help
 	  Say Y here if you want to commumicate via Video 4 Linux.
 
 	  To compile this driver as a module, choose M here: the
-- 
2.11.0


