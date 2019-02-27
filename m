X-GM-THRID: 6662794656438288384
X-Received: by 2002:a24:16cf:: with SMTP id a198mr937736ita.0.1551302768894;
        Wed, 27 Feb 2019 13:26:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:41a6:: with SMTP id b38ls741025itd.2.canary-gmail; Wed,
 27 Feb 2019 13:26:08 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZC3YlLmwridOFd5g7x1odAt+ZUMixeZeOGZT0dcr+l7Q53Srae4ha7kbUVpWpJ6v+xDYqR
X-Received: by 2002:a24:2c53:: with SMTP id i80mr934672iti.2.1551302768139;
        Wed, 27 Feb 2019 13:26:08 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551302768; cv=none;
        d=google.com; s=arc-20160816;
        b=rjohmSsUfqAiIsAsYopiteGNt/xFvoO0mr0Sp7QJZnv9PYAk5B33f2rdYwNdoDftxG
         DUH6kINLuVJDcXA0TLBfKef7ZwER1VmsPkBFRhUWsesVKvZm7b7K2w9iYZlHJIO2+ufu
         pbmt3bLR5FJ7Mmyx3xU6kVsDk/TrHqQntWHBMpyd2MxErA3jszul2til9pFg0LcGd4wR
         cP+uvGi9WRjDNnCOwEqyIPzuK0/spfO3J2ANP29fymkQ8e0FS7M4EFswchWimOTzi6Wf
         ilv/lIb+SaAWp5QpZEBw0OfJo6ZZN7ECbKOLekQlf/zTYLNqPyCMGWk2RlprTXV4aWF7
         XFKw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=koaKLuSPfsjKRMvvdeMUh7MomiusT1zIQyzIF8mK7Tc=;
        b=QwtCk3N0ay69Nx7yVbP62Ai19s7MaSz1POJLB0PXifSX0M+6hTJ7UAbLQZt9zbzw3P
         FbDAPuklqOj6yDdEMECqIffdv9pNyhYMtBmdychuQfe0P5nzbOLMwbsE5792V7WJtCbv
         2jtcQ6KySUIuRREzdmDSGKSoY8vHdvH5XDgiyq0GiRl37spgOcXNm8q6Ny+GncrBOW6M
         w6BN5vxWiwaF66/7b2lFPnRUkeJf5n/PpJJ5B5SnHIpgTXT06x2WcEI+8l5ik8jlEa0m
         6DCIzGtcov5snrrbnWYPQl80XQhEEjSbnRhvyWS9FeS+UZANd3lbOLRZiyPEHUgtTu6E
         +VFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGx1JqNx;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x333.google.com (mail-ot1-x333.google.com. [2607:f8b0:4864:20::333])
        by gmr-mx.google.com with ESMTPS id x76si12038itb.1.2019.02.27.13.26.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 13:26:08 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) client-ip=2607:f8b0:4864:20::333;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=YGx1JqNx;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::333 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x333.google.com with SMTP id n71so15724454ota.10
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 13:26:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=koaKLuSPfsjKRMvvdeMUh7MomiusT1zIQyzIF8mK7Tc=;
        b=YGx1JqNx3MdjvUyfjMHVDu87NkrZ1XXZZpKplRB/vZKR+VvbnDcrYK4Yrg1kfug2AO
         SPJUAE7I87PKMYEPob5nlHXVBUfyMB5K03XpG9Q0UB4BrPVCAUwFLLHqjXYbVY0bnKdT
         DeJLcelrY/wdAdLFZvyt1iQmCf8pI+njADb6iO0sLFAqIOngkZ9FFyPtwP2duiVOgwcs
         /vzCFgpSq+YBhu4/B7vPdz5PHREOAkWOcYI6GXozTPcPU7DIPev9ebU0XHQN+ndgAkhg
         zhOuUCNlEw8vVIxFw2yQXns75u8jLpyFLJHv6pj4KpKrLEs3hj33SoI2I/KSKKyZ7Nz0
         UNGg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=koaKLuSPfsjKRMvvdeMUh7MomiusT1zIQyzIF8mK7Tc=;
        b=DJJWBjpuhjLdErz4GCrN/mYtw/yrl31Q8z4cgrxbsB9z6bC///WHVmeBzzegBjP6Ve
         gOHVj5hz5j6gTrTFTE/Yw/dJtWnR8MDATQGbLMJ6IIrX0xVzZO1FjwEfw9bbqswmm2ak
         h/+Xfu2w+TFl7vE9slmDI540TcYpoYKoWibnxkMBM+dYrzCytY0eaNDLfegGz0M/wwvU
         8fySF9ZNFDhmJW8b2chhyAfdpgCRc6tQmzaQlj5GJurpyL4i2qA8eWoxNSZMDoK6YrYU
         0Uke+74TD9+pLlL0CYOLNrsZoCws1je08ckm1uq549fTsMFuc+UeVnXRXv/sfuGOXZ/O
         9G6w==
X-Gm-Message-State: APjAAAVoW5jTKn0kzWKGWeyXTDmCYr0Obc3b1Kvv23sA3yv/pfOOeyhf
	nht1DYHEZBq6q0nMQgmkz/b5EznYfSlh/w==
X-Received: by 2002:a9d:648f:: with SMTP id g15mr3517962otl.160.1551302767817;
        Wed, 27 Feb 2019 13:26:07 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 9sm830668oid.22.2019.02.27.13.26.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 13:26:07 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4] Staging: vt6655: Align a function declaration
Date: Wed, 27 Feb 2019 15:26:03 -0600
Message-Id: <20190227212603.10411-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Align function return type and function arguments to improve
readability.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
Changes in v4
- Improved function arguments alignment

Changes in v3
- Commit message and subject line are modified
- Alignment of function parameters

Changes in v2
- Made a commit message imperative
- Use multiple lines to improve readability
---
 drivers/staging/vt6655/baseband.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/vt6655/baseband.c b/drivers/staging/vt6655/baseband.c
index b5ba0c76fb43..b4cdc0b7fee7 100644
--- a/drivers/staging/vt6655/baseband.c
+++ b/drivers/staging/vt6655/baseband.c
@@ -1704,13 +1704,9 @@ static const unsigned short awcFrameTime[MAX_RATE] = {
  * Return Value: FrameTime
  *
  */
-unsigned int
-BBuGetFrameTime(
-	unsigned char byPreambleType,
-	unsigned char byPktType,
-	unsigned int cbFrameLength,
-	unsigned short wRate
-)
+unsigned int BBuGetFrameTime(unsigned char byPreambleType,
+			     unsigned char byPktType,
+			     unsigned int cbFrameLength, unsigned short wRate)
 {
 	unsigned int uFrameTime;
 	unsigned int uPreamble;
-- 
2.17.1


