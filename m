X-GM-THRID: 6665853350981926912
X-Received: by 2002:ab0:6455:: with SMTP id j21mr10625217uap.11.1552014926062;
        Thu, 07 Mar 2019 19:15:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:2c98:: with SMTP id w24ls1494376uaj.1.gmail; Thu, 07 Mar
 2019 19:15:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqzjTxDTF0XDP/X4SGRHXO/EPiimwO8sPHnmfKl9VanKsDEvTGmasIrczbRZvD6fQlaHBHvX
X-Received: by 2002:ab0:641a:: with SMTP id x26mr10636653uao.12.1552014925537;
        Thu, 07 Mar 2019 19:15:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1552014925; cv=none;
        d=google.com; s=arc-20160816;
        b=YS5qeNiMMC66ARbIP63G0YpkX1BbXcc+IvC5jmX5mxtMbumIOoXbgBBQMtJzbujRj5
         P1pqDwN3zJOBMC/YckvCH4NetgixclWwuGvkZWfZSN8SFahdoVvsvQ360SZlV354Ktru
         pC/ku2Mg2xiPzIm0S/lzT6QJGggRrfQNZarYcIOJYzSCjmdXfh4BKbNc9HpUxEV4Hg+D
         PdeNS8E8guU0ER/Vsz8N1e09XaFg7qz6E2FDAc/wc3TIutA8Cm8wwonrkEXzxVZfuEFj
         fnwom1saPfo0cFFnA3nCTrSJSQzteFsKHJlzb4GNMbJVADIQqt0Kh1qjY4D3gr3t3gxO
         fXMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=hMm6p7VncMot7eugQa7/XfWTyQ6uSXn/5377g+2+ZdU=;
        b=znhE3CjNruq9gFWnW/cqr5kgi0v7pzCvT29sKoCKyIJnCKlxQsB3qEjsxpZZIeRHyY
         2wU0698z+7NhpPTryUamXdyoJv37HJrRxWTYPr5vyMeRvY91BUHGT5CQfplM1EgilVKR
         L3YqB71e8dYSjmiD0vTLTuWxEBDdwfKkIZCkupaHxVUsbVgHeJ8tfZsMEx7O/bg6fzob
         iE2+hby/c7HH5eXTfQ2d/ItxPGb8i00xrJjdWGscV0l0eLb8Nd3kQQnPj0QhmMepsjbO
         DftGC1nx4cobdbM1Nfeu1K8Pd48zcQ0QBp9KOD/6N/Q36bjrdSKHqIgx+930kSqER0XB
         dtiQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2+4Gvvk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <etsai042@gmail.com>
Received: from mail-pg1-x535.google.com (mail-pg1-x535.google.com. [2607:f8b0:4864:20::535])
        by gmr-mx.google.com with ESMTPS id n62si439092vkg.2.2019.03.07.19.15.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 19:15:25 -0800 (PST)
Received-SPF: pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) client-ip=2607:f8b0:4864:20::535;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=T2+4Gvvk;
       spf=pass (google.com: domain of etsai042@gmail.com designates 2607:f8b0:4864:20::535 as permitted sender) smtp.mailfrom=etsai042@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x535.google.com with SMTP id a22so314682pgg.13
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 19:15:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=hMm6p7VncMot7eugQa7/XfWTyQ6uSXn/5377g+2+ZdU=;
        b=T2+4Gvvk/wRqWg2UYlDGhgnlU8u42A3g2nh5CXVNhE2G6hqxpY3vpEPIjyh2mxrx8v
         GHx0j+ihJIORLctbpONuG5a85nNGylNocSP05kn2On9coEpC9EKAuduAYUReH4spyFLB
         UwzP/R0X4T0hhDOROtH8l6d1treqLU5JDdfkKMO4ty/Aw+XoPoDI0jCVR0FhlBg46Hfg
         SuZXxro1jvNs89ZGLZmq2/hN1bjuxshFwKz6JpqGBF1KwRRAq5QG1omn5q5kNzONKHmN
         plcm3uIEmseZgSmgAuX2wCNP1kxC09PCRrDM+0iaL+SCtQqRh5V0IN9ZwZBW+O/u+OOZ
         rxzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=hMm6p7VncMot7eugQa7/XfWTyQ6uSXn/5377g+2+ZdU=;
        b=OqIN9BYa7gzaf6oMv1bff9ygiXwybty9fyAQIiGx/ED4BBObpql8ngVBpu3Vg+thBQ
         827/O1xkUEs54zLXXIo+kScSAKSkHarTCzwNspXlSljZEM5aTGDYmBWYwCXtPxOg6bhN
         Cs8qQ98MTuhDj1SgaypLp4zfq+aydS8pEEH2W8FBTfyE9Lrv2Uy0huctjjwfcnKVr8tj
         sGnN5skwEfIhaP+ZpND27Rr5TE2uWq9S6kGYSx1Z+oNmQoIHcbpWbmN2sbwm/l5D2LKA
         iaFEQ4TKGEIumz91ahy+TJr23+yNTbooQrRVoHBlzPjde6RMBquTIQXgL6o9+m1TYtBa
         PoXw==
X-Gm-Message-State: APjAAAUQhkfwNzrydCcSGowyTECPw6L5vpeTuyafmCR8ZGBxe0VkRtLo
	57HqHo/bYOL9fb6euO7/BVE=
X-Received: by 2002:a63:8942:: with SMTP id v63mr14131655pgd.406.1552014925216;
        Thu, 07 Mar 2019 19:15:25 -0800 (PST)
Return-Path: <etsai042@gmail.com>
Received: from debian ([2001:da8:d800:199:7e1:7347:f861:5837])
        by smtp.gmail.com with ESMTPSA id l79sm15188462pfb.102.2019.03.07.19.15.24
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 19:15:24 -0800 (PST)
From: Wentao Cai <etsai042@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com,
	Wentao Cai <etsai042@gmail.com>
Subject: [PATCH v3 2/4] Staging: most: dim2: Fix SPDX-License-Identifier in hal.h
Date: Thu,  7 Mar 2019 19:15:21 -0800
Message-Id: <20190308031521.8120-1-etsai042@gmail.com>
X-Mailer: git-send-email 2.11.0

Fix the checkpatch.pl warning in drivers/staging/most/dim2/hal.h:
WARNING: Missing or malformed SPDX-License-Identifier tag in line 1

Signed-off-by: Wentao Cai <etsai042@gmail.com>
---
 drivers/staging/most/dim2/hal.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/most/dim2/hal.h b/drivers/staging/most/dim2/hal.h
index e04a5350f134..fca6c22de8a6 100644
--- a/drivers/staging/most/dim2/hal.h
+++ b/drivers/staging/most/dim2/hal.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0
+/* SPDX-License-Identifier: GPL-2.0 */
 /*
  * hal.h - DIM2 HAL interface
  * (MediaLB, Device Interface Macro IP, OS62420)
-- 
2.11.0


