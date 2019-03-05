X-GM-THRID: 6663618170330284032
X-Received: by 2002:a9d:6418:: with SMTP id h24mr2336526otl.29.1551825264848;
        Tue, 05 Mar 2019 14:34:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:afc3:: with SMTP id y186ls1268466oie.4.gmail; Tue, 05
 Mar 2019 14:34:24 -0800 (PST)
X-Google-Smtp-Source: AHgI3IY45cag1W9C/giL1RlxpB/L9csQJ8Wp1Y/M9UBvZjuCu1hLPfFxhUEbrGfPrxQgclToFVQO
X-Received: by 2002:aca:f156:: with SMTP id p83mr15683388oih.18.1551825264372;
        Tue, 05 Mar 2019 14:34:24 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825264; cv=none;
        d=google.com; s=arc-20160816;
        b=eo+FGp2OncH7iaceA8Jc9dlDrzoeHJAp4xKtnmRrokVrKWJK+aCrmfmCiB0dtiS2h5
         I2AqwaKHtnuI5PLBlLrPvqOOmzx00Bk/prcNv9BSoojDjQ2RuPaE5DvWOVV8elEztJdx
         jiHCxHDYYR7OgQbDhs+dHFuv893zkGnmD93+JOhN14CGdaBcyXaFkz5bIKbfMFqN3XtP
         1TpR1yUE7yr8SYyTBgSsn+E67jLLaOBwhBriBwtDax2cuGKCZBj9Ce2HnBp/ZkkhYJYz
         JvYsDfQweqhS+Dty7ZOYo24ljFT/UDfE2cakc3GS0LuxJwtrjEMbgrhmx3JMjczB7Goc
         6hzw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=dmJ7tAH31C+MUCenbLP3sVmLFzPkhKOs0xHBymbIRT4=;
        b=v/10mx6KsQalF4Qvxju/DRKQsTnyPVxRmRW6wUn1gyqyutbhQSo1hAQ78T+K+GCnoq
         o+xnrk/TJPwqRjIWMxxGVeWSAzpXRva33zg58BIqnBbi4/WsEjwLTQbwdJZmm4veJBug
         txa7YuJt/QuQBWG+60ZjGQ3gU3cFuOuXbnji1ZEfFczzEeHu78GiK0JxhSciSGO4L8Q8
         JQHUYrSEbAJbnDckkcj15z4SufHQiYwx5mGAma4nReoQp/z8KOF8TkZO6W+b5f7Fssjb
         itauYJj26Qoqm0OxY8NIKdky5Q+NBr4KDjLkTwyhrDXPcWSrdSPC3tIvoRC+q7js08cq
         yXNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvL+lc8k;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id d128si475123oia.3.2019.03.05.14.34.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:24 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=IvL+lc8k;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id x187so8199082oia.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=dmJ7tAH31C+MUCenbLP3sVmLFzPkhKOs0xHBymbIRT4=;
        b=IvL+lc8kXCL+M73B27KiY9qQEBE5JAe3aeV/xjbwePl378CZWWV5ebr2u8uthtGeNh
         KUhZD4ASBC899PgnbHFpOaL7/iTQjFpmu65LMpmUaTE0VSN7KX3/JXyyFAZtOjw9Ck6X
         j+Hycf9y8c0BehTh1Wi6xlvjgmj/T1qihoZKpxv4kPxFvzzbRY04vUyui3oShBA4FbXX
         TEQFpCIIB4Vx429oehdp6oLUXB1v+xNYS40ix7NNxaoKSTqQTAUYZru6+YJ3QlQyTg1H
         dypxya6kE/S1aSezGIujG80SIR3xNOrlsZZDAcsaTv8xnmTayYQ5Mw/vEMUDZBjiHX9y
         1r/A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=dmJ7tAH31C+MUCenbLP3sVmLFzPkhKOs0xHBymbIRT4=;
        b=rpa58zaCDYOTGKz3Hi3UH+JdEDVaflRlFCNVr+Mhw/FPalwA+GTUjXJr0djzp2PJLX
         mPgAJaymohrFVONBLClTkdWWy2OGLgDegzOBz9gGWcJDZbCvUKrARhwGWP/VFP+2GGCs
         KXqpTIpFlaqml5awqy4gGd1UDM5Lo/pzWvXhooaNjpjKiA2rys8GXIKB8J6k5O2HGogl
         HzVytwjFJ4m+6R5uyVWjSLoCRWvWx6X3BsJTbXgzdPxoOvP59xKU0uHVpEX3vrRS0VbX
         TC/gAW8PTCwum/p5DX60fiTPEp+dLg7ZLrGZwjI2+NyKASoENXMABBPIv5FJq7vo0BkB
         SoZg==
X-Gm-Message-State: APjAAAWoee6mxaW9pYQQp9dcGZsaIRTJi6ebm+WIKMCrL/RLpNIG4SW0
	SuvTuO4pMUoxHvC1fnlQhr4=
X-Received: by 2002:aca:b208:: with SMTP id b8mr551410oif.40.1551825264073;
        Tue, 05 Mar 2019 14:34:24 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id b7sm3898989oti.71.2019.03.05.14.34.22
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:23 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 5/6] Staging: vt6655: Fix line over 80 characters
Date: Tue,  5 Mar 2019 16:34:04 -0600
Message-Id: <8801b8eca06b958aef58f227c267a36d3503ade2.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

Fix the checkpatch.pl warning
WARNING: line over 80 characters

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index 8c8c26792343..99de843b4551 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -883,7 +883,8 @@ bool MACbIsRegBitsOff(struct vnt_private *priv, unsigned char byRegOfs,
 
 bool MACbIsIntDisable(struct vnt_private *priv);
 
-void MACvSetShortRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
+void MACvSetShortRetryLimit(struct vnt_private *priv,
+			    unsigned char byRetryLimit);
 
 void MACvSetLongRetryLimit(struct vnt_private *priv, unsigned char byRetryLimit);
 void MACvGetLongRetryLimit(struct vnt_private *priv,
-- 
2.17.1


