X-GM-THRID: 6663618170330284032
X-Received: by 2002:a17:902:6a87:: with SMTP id n7mr1186166plk.87.1551826123224;
        Tue, 05 Mar 2019 14:48:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:f51b:: with SMTP id n27ls4363824pfh.8.gmail; Tue, 05 Mar
 2019 14:48:42 -0800 (PST)
X-Google-Smtp-Source: APXvYqxofPxKuqg9L0lePhXH2YKJLJv/G8n2uYVi8CuR/aG6ghYEI3TdGSnvdoXzWNKQOh3XgyB7
X-Received: by 2002:a63:88c1:: with SMTP id l184mr1666923pgd.128.1551826122512;
        Tue, 05 Mar 2019 14:48:42 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826122; cv=none;
        d=google.com; s=arc-20160816;
        b=iheQcJ2UmT+Q9u3ECH1u1Me0bbI7dywlYKYTdevFv/W6cmOUI0FemFfVVFGPF/n2DR
         qIpn0yKw0bQL3IZh2K3bBRbA3bPaBIXl5Pv2BGnITmmuI0C8P7eV7Bve24XOszvkWArl
         Op96g4QIeZX3Gb7/5YvBcy910iVnTGC1ajeD9GovYjbv/aewwNHSmfDFKCP62CRs53ln
         S4//ZHD+2xKyk5ABMGw/UyIe8bTDX1tN0QlALFwJGnXwRV2q2P/4vVnruD4K1te+Ku8o
         q3FFSXZpuEL5ihH5a4ZmKDcQT0Q59bWEf8Claq9qJ8AeinlgddCXcqchEc4IkpvB0Ao7
         UAhQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=K3fZ6thlzgsWYAioy+4vt5idTiVzSGdHyZrrObn3xEE=;
        b=RlvqA02Db572PgXXTCZ0V3INTPvXElLj6IMIljzHcfXFqgyobGrpAekKnKLkCD3buA
         19gIsWE/PMqdBr/iGMfz/bcUm08QG55hD0TgdX5Ko8FkE1xUoUUrSL9u35uG0Ux97nQi
         xqZUjLXyTOcmPIZy5pUBTEBvngijDE6l/Wi3dLXgA22Y+cewunFuPbRFJ8+2ifO1uSFh
         kPVAiA14n9Uvnss0Rp4esaB74mXiGS2lguS49WiFwVOZZ08YgzLfFIY8ml+OZ3zMs7Re
         shT+ttyE8oSS0UGlyptJ4M8MTa5lTfDyzauu7BMd+cGWFIVAzz7Fg+bkQO5iIk5I8PXi
         ddIg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azUzxm6O;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x236.google.com (mail-oi1-x236.google.com. [2607:f8b0:4864:20::236])
        by gmr-mx.google.com with ESMTPS id z184si499130pgd.0.2019.03.05.14.48.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:42 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::236 as permitted sender) client-ip=2607:f8b0:4864:20::236;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=azUzxm6O;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::236 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x236.google.com with SMTP id e7so8232702oia.8
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=K3fZ6thlzgsWYAioy+4vt5idTiVzSGdHyZrrObn3xEE=;
        b=azUzxm6OcqojIzWVfkg96W1CNNfn7etEknBRmt5kxKTpHy2ZNjfQMenU4Wq6hdpK6I
         TK3+ATaEgwnTEP2dy89EOsFp9AlGqkF5lnzrY4mf5P0uYBV/5UCKqHwZ13mihgiuPZGa
         ENZ+Dw5n6InY7qQ3KYcd+pT6wzlNr+Q4UT4Cw0Kzw6tF8y1fm98T43CsLnFSn82h+JXm
         gPc5JdUIritqd85jvyk9ZvcebBx60l2kMrAYh69j97egQPcozdhGD6NV29XQw0Je/2yZ
         azLRybDH3XMwgKJYkFXIgQS34jmjS3SBYlQk6cQ9mmxX1oE9ir5V7jfw774zVb2ApFr5
         xj2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=K3fZ6thlzgsWYAioy+4vt5idTiVzSGdHyZrrObn3xEE=;
        b=D2wJ9pmF15Yg2s4cMhyjIz7QehV5UncdWdKDdOTrG2sRboch2BjhEvv7Bs7g2y875p
         6AJjE2bOvdcbRB0SHQhTCAKnt4rzdvvtASDQQLJ8oJ+jo5G2PDQ2fgv1KP8uqXscmj9k
         Cu8WzQPwHZ09z8QE0xi6Uir9PA5AiS/SPxZMo4lnctrvMtdp0Gm9vV2WnwAafcX1u9Ol
         5HssztPKXrkvF1fcuj6uq785p3hhAKYQscZFWg65+fSA23Jldq1jvcwVkbVLLCOLyw8n
         2uyJenWt6SDAMOndz8ApR1kezJCwIIjqrc55eEBKw1bJJOJRAU3xwL1j13UCloWuvai2
         0joQ==
X-Gm-Message-State: APjAAAVSQn7UaR4+XTKoRWL1rFpoGDOsV858WpXc3HBb7Qjqzn76AjdW
	b0MkAdTX24kGfBgug3LAnwc=
X-Received: by 2002:aca:aacb:: with SMTP id t194mr544901oie.129.1551826122158;
        Tue, 05 Mar 2019 14:48:42 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id 33sm4531851otr.53.2019.03.05.14.48.41
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:41 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 4/6] Staging: vt6655: mac.h: Fix comment style for SPDX-License Identifier
Date: Tue,  5 Mar 2019 16:48:26 -0600
Message-Id: <65c1b6b403fe1660ef41d5f6b870ebf2569f73e2.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
 <cover.1551825578.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551825578.git.madhumithabiw@gmail.com>

Modify comment style for header type file based on license identifier
syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/mac.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/mac.h b/drivers/staging/vt6655/mac.h
index b8ab09434773..8c8c26792343 100644
--- a/drivers/staging/vt6655/mac.h
+++ b/drivers/staging/vt6655/mac.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


