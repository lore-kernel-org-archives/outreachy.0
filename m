X-GM-THRID: 6662428250323550208
X-Received: by 2002:aca:881:: with SMTP id 123mr2122001oii.39.1551303574095;
        Wed, 27 Feb 2019 13:39:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:d685:: with SMTP id n127ls1275486oig.2.gmail; Wed, 27
 Feb 2019 13:39:33 -0800 (PST)
X-Google-Smtp-Source: AHgI3IamgTHGAAHtjYOyH1EMOaIOos/JouZ0/7ZrFw2jrSR6RwyFKWR5KdpbY0FePramxPE1oAbU
X-Received: by 2002:aca:5286:: with SMTP id g128mr2118548oib.20.1551303573475;
        Wed, 27 Feb 2019 13:39:33 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551303573; cv=none;
        d=google.com; s=arc-20160816;
        b=NsvEJHz0TRSy0m9HgVM08ImqNJgjPgyZOUli52hcPrj04+c7wkgjhTJArngwGWNK1i
         squlH9o+Nvb7RZdBOQUFbHJ7Uru4VM64sS7WG2mED6Nx2X57TyuwQrAIbMAgIs9rTnEn
         dfCu9+2ge6J7t93koOadszRo1h4Lpu/FWLH2bVsH28NDis8CTk/UCS5GBD3B8DKSJJXk
         s0fV/0MwcVMeXO8Oh6elUykC0L1tHl6R0zXqyYnm1JwkRvoTSR7r9n/wdJUShSXkdGUn
         NBJMjGENnYA62dMaj5bAn0RhxiTMJFDzNcvFX7RlYSdh18Sv7YMGX/W58f8dsLVhwpsE
         VGcQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=nlUIZfLZCRvqIFwEMOfEx4xJQEZobhAPKnbhTrNIpEo=;
        b=XTb6L6fo9ECIKooAXgyD/FNvlumSyoHg7NTgroZJsHnWdT2raSZV+JoljuDbVb3Soy
         h/3mAn1RCnS7TddITkMwP4RhnxyM36iHgceAaH4pULw0L6xvEai6J/reGJqxIIkNWh/y
         pox5D+q3Sm3P9KrE18+HA0aSoQme0ahl1k2osBIa/tjj+izTpfWX9G7jJOlC/A/ZxY92
         1FN9n/Es8N90a8e6aYyrWdPV3mrT5uE/zJgWATbe0jvrT58orE3CwClbtgDAxnuSLCGs
         9LzhVBWFVoeluf8h4ER8rpRs5ymaOQj4TTOMME9Yimw91oBwexuZLe9XzXOWVS9cE6A3
         aDHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mqHbJtHG;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x243.google.com (mail-oi1-x243.google.com. [2607:f8b0:4864:20::243])
        by gmr-mx.google.com with ESMTPS id v129si841627oib.0.2019.02.27.13.39.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 27 Feb 2019 13:39:33 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) client-ip=2607:f8b0:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=mqHbJtHG;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::243 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x243.google.com with SMTP id t82so14718554oie.12
        for <outreachy-kernel@googlegroups.com>; Wed, 27 Feb 2019 13:39:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=nlUIZfLZCRvqIFwEMOfEx4xJQEZobhAPKnbhTrNIpEo=;
        b=mqHbJtHGBk5JtHiKzTngaso56yO9cs2+SEeQbBKC5Kjtwir1Kz2mFQo7AzYQMfXR+F
         cl/D8h+NiREhgYiJbIT/nGEnrarbK7PrKzIDCjogr7xnikorPqfOQUlydykavZUPawHV
         Lb+PAh0JP44e9PIYQ9wqo/18luiNbcCfSt5/KZQCg9GNbucpsSY0sP7ZlqKez2rHijmD
         qafAufenHiHzWwu6cWB+Pl43ZjDWd+9rwnSC1uNoWvC3uk5L1Wa+MCzYNaSNLKz2MfdK
         GcY7NO51j1wJFGo5RS57jx2tbsLvuwTyNgH/9N1FUzbhzM9WLdsYHtwBXVVbUYPR0LPd
         8yhg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=nlUIZfLZCRvqIFwEMOfEx4xJQEZobhAPKnbhTrNIpEo=;
        b=BpM0oedUSBu6+HWPpskDKS1+qAO3kJo52PAIw+rvzqem7ybK0dasnQnexf936yMX2z
         gctJYq1WneRmWZ6Y+r0fUffLioE37TIPX3c2tJfnarMmQMQUDn4PbsxSiEeyjwJ1ygfs
         +wiMzBYiKq5k2aidtqrSLwHUcApaqY5EN/RNiXqVP78eoIYjHS89BzCxmNKLLRZiOlYh
         lRfiBgEncp2LfHfRkH0CZeRZMLzPetPGf5KyqrwoJywhpn1CqkDLCYowTthcwqHBTFZg
         sYST+iCCm7E+ZfhLP4eYRmKvkQ2d0efGRMCZd/GpqWJycBW8LN/Z5WmmclqYvhS4hp+H
         epjw==
X-Gm-Message-State: APjAAAW9zeTm6E30ao4xxncsy7vCZ+RLM3fV4Q+A/5a/CMXdprpXEpBj
	VsT1HmfJDxAbNEdcpnDgnkc=
X-Received: by 2002:aca:6046:: with SMTP id u67mr909823oib.84.1551303573138;
        Wed, 27 Feb 2019 13:39:33 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id i9sm3108197otl.43.2019.02.27.13.39.32
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 27 Feb 2019 13:39:32 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH] Staging: vt6655: Modify comment style for SPDX-License-Identifier
Date: Wed, 27 Feb 2019 15:39:12 -0600
Message-Id: <20190227213912.10797-1-madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1

Fix the comment style for SPDX-License-Identifier, as the file type is
header.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/card.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/card.h b/drivers/staging/vt6655/card.h
index 5884fd56153e..d71022aa3f86 100644
--- a/drivers/staging/vt6655/card.h
+++ b/drivers/staging/vt6655/card.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


