X-GM-THRID: 6663223880955461632
X-Received: by 2002:ac8:25a7:: with SMTP id e36mr1420171qte.9.1551402717771;
        Thu, 28 Feb 2019 17:11:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:24ef:: with SMTP id t44ls3056878qtt.4.gmail; Thu, 28 Feb
 2019 17:11:57 -0800 (PST)
X-Google-Smtp-Source: APXvYqxb7/Nw5qIGm5sWZd1jbR+A+QdW9AJekkLO9etx8Q6AtoM/9uGDoOPiTaex9xc9KTQ5DTub
X-Received: by 2002:ac8:297d:: with SMTP id z58mr1379920qtz.3.1551402717052;
        Thu, 28 Feb 2019 17:11:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551402717; cv=none;
        d=google.com; s=arc-20160816;
        b=Ft0SFiU1JVyGe+a4xIRMKa2D1aZFJWJUlZAtoDXkiUoa3ndW+eKuvLysxpgVUccw69
         28cnNcpAwlgQDaew9axuFXQzCuswdQFNESF3eUoBUWxX/CFE/tOOiOIlOZnUgofTShj9
         sTdRJJ97gEbgf3d4ab9HHIb7xn1zJ08/aQogBr/wvQTZSuvjibQXaA4UaOQ1bvlmh+43
         mI+oOCeWsrGl1S2pj2urehcdznRrZr1CAsggkLhP3vLLmmQWeCwIVJLPhTO84mQKrEh2
         H7GT8Jn+uRMDm/s/LRDmpEOtvWsiv8zPjrRibv56M/M05zOwncr8DvHH/GqhY3CuSdrT
         8ZbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=WUvDjetVWd2V688TA67twnNFvWz8Ke5rnQPwiSbJhfGndsaPabhaHhlDWS4mo5ZhBg
         LFQOfrlj6vAmHa/ldhjBQSfpTuakJ9DbRJZZ/+r87e2rf0g8leUgOtjapPhfJBcqo+fm
         7L+xplAFWLnKNFPtSbVOP4jNcx33XDRNODrbpxKCa45a1K87mCJ59l34xTNmT5wBCRq6
         RgFggLKzfPV45YvQlUCP7ePZMX0xAky2aaEbjLN80QMGcOxxB0hc7G5rozy/XXtDEaD3
         v/bZW39J56VVE78qxQF+cSkrFRZRH7TESV+4R7F3u505V+3wmp8UKo4WvzUiC0zfoxcQ
         2Ykw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=anTHj0yg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id m1si1435722qtc.2.2019.02.28.17.11.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 17:11:57 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=anTHj0yg;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id z19so19561770otm.2
        for <outreachy-kernel@googlegroups.com>; Thu, 28 Feb 2019 17:11:57 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=anTHj0ygJ+8lVOjv4MkFE+GjA4Mr7KmDxfF3pgzhLD6NhdOCbHFbRXtlFAvvGwZC1d
         PpuozFAhTbI+uAc6ybzdQK+Q1NI1v9rQVanf4ItZq8HANx3M8D+/U9OrWGl0Z+O+f0QW
         8kRhRuH9aYZFmyJseEG+xub+cjpyfn70tKcDZl6P0X2juc9rD+wWPviwy2kcHZI/PkdT
         HM7zboSB/y3TBPi4QZFWldfMaDg0RHWMYfy2H/oUPo4kkrjlwZ2scAJu4+ddwZ8dd59j
         om1WazEzd2Rrm7msmdmNOhOnvHQXMhx6IvMuvw7jTEopqJVXcGGEs1o3yKYs39nPLQdV
         0NTA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=EFV89KryPvAp86krWsYs1aVBIrMyAxLCih1NZxzougY=;
        b=XC+QPUwuFWHIkrvV6bdfDnSTq6/KgaTVxjZAHz5qtKHRGCsAYufY2Ma8p4uBr7vZtl
         2kZvsnN3y9ZO7rsMGaGM2SOWRChNfc7wP5pezmHBQPhaS+TDz+sdotFTOeljiAjCTvOP
         AyCdON5JldztKZ2JHU97Pkfsyx+oe7cLx/XxjeuY11fPalZxxhLDfl0QgD0vNSPgEcsQ
         UGW3HmRuUOHuVWQhWyymgpzTvl+LIbAUdMfv+YU1qRxaps5BWlKLe5B2b7lfsNS5IdJ7
         GyYCbQdM+RKUGbw8crZooQ0FLLd8QfyXxrx1tr5/AuFsisxs7xmSg258F9Il7lqX3hRd
         7HGw==
X-Gm-Message-State: APjAAAW1ff2Xd3I9fH0tHQM23zUcDRqcMBQJJhtEtd95ipYYBKJGDltl
	9w9Sc+J+j73yl8ZTNm3x1pA=
X-Received: by 2002:a9d:4799:: with SMTP id b25mr1782769otf.294.1551402716492;
        Thu, 28 Feb 2019 17:11:56 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id r124sm8704439oia.35.2019.02.28.17.11.55
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Thu, 28 Feb 2019 17:11:55 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 2/2] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Thu, 28 Feb 2019 19:11:39 -0600
Message-Id: <bcf367421208a4c9777f41226f232e6612c82308.1551402120.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551402120.git.madhumithabiw@gmail.com>
References: <cover.1551402120.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551402120.git.madhumithabiw@gmail.com>
References: <cover.1551402120.git.madhumithabiw@gmail.com>

Modify comment style of SPDX License Identifer based on header file type
as per License identifer syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/desc.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/desc.h b/drivers/staging/vt6655/desc.h
index b4a0037b40c1..d4572847b08a 100644
--- a/drivers/staging/vt6655/desc.h
+++ b/drivers/staging/vt6655/desc.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


