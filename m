X-GM-THRID: 6665731801196003328
X-Received: by 2002:a1c:2545:: with SMTP id l66mr1182754wml.14.1551986625120;
        Thu, 07 Mar 2019 11:23:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:400e:: with SMTP id n14ls1475148wrp.16.gmail; Thu, 07
 Mar 2019 11:23:44 -0800 (PST)
X-Google-Smtp-Source: APXvYqxV3kUmdR9FLOpFWC3wkhl3RWsXuR835vMgEq8xqORUs07IkPA4XTtNY5AGDgC5YC2votwu
X-Received: by 2002:adf:fb91:: with SMTP id a17mr797415wrr.1.1551986624305;
        Thu, 07 Mar 2019 11:23:44 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551986624; cv=none;
        d=google.com; s=arc-20160816;
        b=inUTXwuWj9e11AwnMct/6SRmMRPTxzD0L0lw1EKCnbWeF9EUJC2oE3OiPt262ouwMT
         emx08QHfq77Xh3aBn0BqXurQZ/rRIhkJcxPrengNMtVFho0XIPXCdFTFpceWzXTdJve5
         MZkU7DbWr01DiaEw+wTlGUdubEyk/FN33PPxFkf0nNLbPdMcwGTEv+NfVy6EzXDqsrd1
         YfvkpHTYTp4gqF0+4RTVEKMvoAk7YUYsfYB5Mz8qd6Pu7zQf0N/Zxkq5VA2u4hqiHc11
         psi0FH+55jGJn8iPf6Tx/sseQmOZij4vhkRL+BgcanhrjDtzSkunu2/5zCylSIdSLVSM
         ZpNA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=CLn0dCqanzWxXfjkKpfpWlF+TO7E3ktSdWyZME41jlc=;
        b=y4a4q6efH4GjRaMDAByLyhNQVV98fLwoSLWkwTFVG4RB/M7KbqJm5PWLqjSCkKKiN3
         tgVl8yWwEmSB6dTmPYjBlAZQYBRSAVwkZ4Xkjvu2HxAF8FklL31WTaZu03UrGdVfC/ix
         Ie6xMb/8+PmJ5LGawuyfttiBHP9WuXwe3Gei2hvDmWB84yLJs3TIYWSX2EowucfQuFv0
         wSBjqUcMu2sS1FBOJoInU9AN3McRsGoRLD3+oOFcLzbYt6rxz6QyJvuHTKjVWURNQ5hO
         PK4oYEUw8GFn4gh/iOAYbE3gO6QzH5v0evedsKEzY39fCgJn/C10ckDfHlXnyQKaDchz
         X8Mg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TOEvdqfD;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniela.mormocea@gmail.com>
Received: from mail-wr1-x444.google.com (mail-wr1-x444.google.com. [2a00:1450:4864:20::444])
        by gmr-mx.google.com with ESMTPS id q192si317706wme.3.2019.03.07.11.23.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Mar 2019 11:23:44 -0800 (PST)
Received-SPF: pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) client-ip=2a00:1450:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=TOEvdqfD;
       spf=pass (google.com: domain of daniela.mormocea@gmail.com designates 2a00:1450:4864:20::444 as permitted sender) smtp.mailfrom=daniela.mormocea@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x444.google.com with SMTP id g12so18797758wrm.5
        for <outreachy-kernel@googlegroups.com>; Thu, 07 Mar 2019 11:23:44 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=CLn0dCqanzWxXfjkKpfpWlF+TO7E3ktSdWyZME41jlc=;
        b=TOEvdqfDySLE6uE18bMD84qz4D8/6WGUuq0vtqspCmLam67NQwZ1CH+pCTXyZnAcoC
         kXIvpWyQ3KC785YHraOW+5CAVQ+JH3iMhnSnrg0HjkMhqvXZKSq4otDY5GBb900bSdAu
         rJDUCHQhdAQ9hQVGhPy3m7yElFJIOfr+nm+nano/aokkJEPqK2vWBV4kk736/9dOfeRc
         L47s+q3PhMWoYlEnyhGSaIEc7uUkGfLNdfQz7oavRc+ffw9hKMyDTKCTOwfQ5m9JWZI+
         qCRYuo7W13qSQddpxVcQ+7sZ1ndOEzAq5tAALGbTqOpz6gcz7oQixwCpwAfuP/5oLMiQ
         FQuA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=CLn0dCqanzWxXfjkKpfpWlF+TO7E3ktSdWyZME41jlc=;
        b=EJPtdmkQMJ5ox8NBPI/M5i6EFvqtcn5DmQiV6049wF8i4U/UxAZfeRiQi7OtpvD3IE
         XL9OOMIlKH4QgR03g+IiuNlRU43futyAqcrfmAXEPBBzTh5MCJhaIduzsnJ0ru0dh/V6
         GC9vFsfmsaD6XfOLdtf2/59gu20nahDyOLQOBjJHH+49oZPn0K+/nCiVeVOtyvBoQQQ7
         f6Y0iFJMo/IBt+Xwn6223Da/obdzFtiha864p4xO2zDrRsHntPt3dcbTtJXN25ms24Ef
         E0soBYL7N6jN0h3msY7p5iMXuINwoE6qBrMaXPXPWgb+iz3x/VPAQBjL/TwzwC0ZLl5a
         nqsw==
X-Gm-Message-State: APjAAAXauhD8g9B27ESpHfOaJ4DKg4NC+qHzbQf/2j1qSWyw6ZTFMaDd
	iAG3qjLS/fATTG8zXFqo6o7epBcaO4o=
X-Received: by 2002:a5d:6785:: with SMTP id v5mr8610863wru.59.1551986623741;
        Thu, 07 Mar 2019 11:23:43 -0800 (PST)
Return-Path: <daniela.mormocea@gmail.com>
Received: from pthm ([2a02:2f0a:b600:4700:9c19:34c6:5e3b:e162])
        by smtp.gmail.com with ESMTPSA id e193sm10446319wmg.18.2019.03.07.11.23.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 07 Mar 2019 11:23:43 -0800 (PST)
From: Daniela Mormocea <daniela.mormocea@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Daniela Mormocea <daniela.mormocea@gmail.com>
Subject: [PATCH] staging: vt6655: Fix malformed SPDX-License-Identifier tag
Date: Thu,  7 Mar 2019 21:23:40 +0200
Message-Id: <1551986620-18182-1-git-send-email-daniela.mormocea@gmail.com>
X-Mailer: git-send-email 2.7.4

Replace "//" comment with "/**/" comment

Signed-off-by: Daniela Mormocea <daniela.mormocea@gmail.com>
---
 drivers/staging/vt6655/device.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/device.h b/drivers/staging/vt6655/device.h
index 2f9e921..29f354c 100644
--- a/drivers/staging/vt6655/device.h
+++ b/drivers/staging/vt6655/device.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.7.4


