X-GM-THRID: 6663599523023028224
X-Received: by 2002:a81:8546:: with SMTP id v67mr3852474ywf.1.1551490176944;
        Fri, 01 Mar 2019 17:29:36 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:4c4:: with SMTP id 187ls3371528ybe.11.gmail; Fri, 01 Mar
 2019 17:29:36 -0800 (PST)
X-Google-Smtp-Source: APXvYqwKKNLRv4e+uioQCD0D6QUVjFM9E3dP1Mo69JJSWEdDofMhPEy+CdDGa99jrgU+fULshWTP
X-Received: by 2002:a25:c74f:: with SMTP id w76mr3573526ybe.16.1551490176158;
        Fri, 01 Mar 2019 17:29:36 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551490176; cv=none;
        d=google.com; s=arc-20160816;
        b=Ko25S5TxuiEAw74uglZmmhz6thkoLfGS4/79cWQ5j2O61QqhoS/ENa1Wa+244xPwcF
         5oRrPkbcoDPc7udFJyQFxHvkBLQXJfcUzS8wyWaPyijPhpu8WFhouS2sMpsIdsb/Wmz3
         8CCQi6aXOSbCMX6TNcRM43kId9Ff9rDqwtY4fwRsnKgSYxHhEEFZmjj5Q+Z1XrxaynrO
         SjeQG7iWGzeQrD3l5FHlsjC4nOIxROk6HFezlrGf0yC2o1KSreQSmoGtJapC7lE29w9g
         QPBZejmVFJdEp6KmIReY0h9Zoq1RyyisRB8OlNBhYEpRS316oGz1Jp5GOUZ4cxrD88P4
         3svg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=CHNj2Qici2c7eYVtZNKafaWddtSFGIAP0cY1uCeyK7gknZ8Hrsmq4tf37uXnUT9bcA
         1hQtifQO/4Uqp6I7+9xr7T17Uk1xSKsxs0HabzNpTta+ePXS7vtPOnhu1/N1GRzjy874
         vimA9NALYQZwVjQliOEBncHRVIgLFmNN5WMt5mkxMh5cGMOEJvA1EJts5upMMIYIq9AV
         pEGSImW03K2Xqx61tmIkqWehXwM3LR8OznoYDEtjoNZMUZo6+QmP9R9n6Cr8NljqCF5w
         hR05jQK03I43a+8BjhbNFlhGWYcL6Yyqvgp0oL/c5moU/93wme5DguU+CPIOMkV+4Deo
         JhRw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O4SrVm5B;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x230.google.com (mail-oi1-x230.google.com. [2607:f8b0:4864:20::230])
        by gmr-mx.google.com with ESMTPS id l39si1635899ywh.5.2019.03.01.17.29.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 17:29:36 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) client-ip=2607:f8b0:4864:20::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O4SrVm5B;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::230 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x230.google.com with SMTP id q81so21089609oic.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 17:29:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=O4SrVm5BWOc1ORRGp2DeGLOzdafcYPE91Zc5alHNS3fmdsVpJnVOrIjEQnbvNOUTzv
         XntNSuxPsvQQ/sQR5EOBPCBTsC2c9rN5Bj3PC8ThVYMu4UqQrLzUUfxScBjwFXYJy1aA
         QP3gbD4TLj/WJJ+kguC266Z7doXtmzqXQOMVemRo4Ny6MStqTfo5sCEWa/snO+J4Pbtu
         DODEFHqZT647fP2SGM8OEqvwDdHgsdZQ3Eaw5zBt/meIu5ycbSPjAXXSC3/aDuICqxIc
         IUSltBmhSVgwLh7w99tzJyjRizWT58MeOl+SOFu/VHq4FaRRQ5r6jGc3P4Cd+N8903rK
         y26g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=2IkPVriKgaxBQuX4pjXK7mzy5EPpy2EiIioTA/Qj+yY=;
        b=kMfMlrVtxfBR15RPoi1Ka7kYY6lVZ9lkIKlIYh3FTq8HPVDqk70Yoy0bU67W2LpfjK
         /6kIxzzSbIkS8mubDv7GNNKcvK6gRVhuN4Y6lVqnaP5PElbMH9Np6nDMU8PA9/hs6utO
         /zCmOeRtlGo6h1A+tT7yaJU9xng2+h3PLaRvNog/uJQ/qGjgqRJGjQdfq2BRcihFVhhY
         Zh3RtuUV2VWqxs1FuL5ppGwIIpFpmDmlBx0BSo/NgvFmvoz5Hf2f15oZ8W89mdLI3qbr
         BPso012b/2O3yOY7w0HJLpd7L8aw5bBONy7JmP4gO30TRIJkK/Wu5XMhoc3Uz4sEzfKq
         4c4A==
X-Gm-Message-State: AHQUAuZnE/n7oJHCsuS1FY1HvzdbbBRP3+RnibK/SNlJqNqhF9W/U4Al
	5L6zBkLpy3fNlGIO2b45dSDcVh9vpug=
X-Received: by 2002:aca:3ed4:: with SMTP id l203mr5288370oia.88.1551490175822;
        Fri, 01 Mar 2019 17:29:35 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id l93sm282482otc.15.2019.03.01.17.29.34
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 17:29:35 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v3 1/2] Staging: vt6655: Modify comment style of SPDX License Identifier
Date: Fri,  1 Mar 2019 19:29:10 -0600
Message-Id: <08d13e80547c2adf149c73829f8bdf95546786d8.1551489576.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551489576.git.madhumithabiw@gmail.com>
References: <cover.1551489576.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551489576.git.madhumithabiw@gmail.com>
References: <cover.1551489576.git.madhumithabiw@gmail.com>

Fix warning by changing comment style based on header file type as per
License identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/channel.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/channel.h b/drivers/staging/vt6655/channel.h
index 53f623a4af65..0d2709607456 100644
--- a/drivers/staging/vt6655/channel.h
+++ b/drivers/staging/vt6655/channel.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


