X-GM-THRID: 6663618170330284032
X-Received: by 2002:a05:660c:150:: with SMTP id r16mr3888542itk.39.1551826118229;
        Tue, 05 Mar 2019 14:48:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3b69:: with SMTP id i41ls7219024jaf.3.gmail; Tue, 05 Mar
 2019 14:48:37 -0800 (PST)
X-Google-Smtp-Source: APXvYqwepGa0nh2Z/h4fKPsEUhBPJ1KqQmgPJyDEZ+AdeSLvgSzdrbyPPXGG2SV+5ly+s0F2Yi98
X-Received: by 2002:a02:c611:: with SMTP id i17mr2564614jan.1.1551826117412;
        Tue, 05 Mar 2019 14:48:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551826117; cv=none;
        d=google.com; s=arc-20160816;
        b=WuInXT9ybZZh26pXE10SPAHBl17pLGVM0MSflXrklt45+efcg68S5tgJP/f7SysGJE
         cEcYnwMph7RO8Nq7XBRu9NAjizUNfoONQ8Zo2loz/7IACbCN5KJTh8zvoNDOkWfy47M5
         +zuvXATHpDv3/HQ6YeI3Kb5MfwZanEv/W+ze4esY+lI5xHN7BjMEqE3h77TRaCh3mL9f
         eMJJhcjafqkhIHTdyzTh94Q58/d1h39V1szHBBg5SywuEZyYNuv539YWLq7/Evsbsjeq
         LM0YahMNCCznKV8f056qV3IU9XFZ+8V7kaYLeRU2ccS81DnGCRKpIj5gOMG8BNp3HZS4
         BIhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=Nd9I0SWBS1QQQUG3kOTkA/9K5iPoiXt8RcOKtHMGyS8=;
        b=mH+kcbbLuw3ojMtXFcgsrGpX4SQVkoXbrQZQz85qOfDQgw4TZibhsoS+d4pDFKOK6y
         dN172a9yUqRNEY+/tjUkpODOcwNYuioYrPO6q7t73TzixEwNBU8pOWPYQHhZheiUHUqd
         hOhyDVIO4VaB4tC7qtoatkHwdjGFh+j0wLoCXbe+KIECWr3AUPFq0kQoIbBf2O1Eonhi
         DVpS0mHGV5KA9NKjWX9avkdS4exPdWdn/YYUBs8qFHFfGfvjhmV96TZY6B5LvcYjrfof
         8CA2VMEM2TuDMLfxrsbCAh9L5JPggwXWlXnWTddy976tL12KAyjKOugMAbuxX40CZgL+
         F4ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vB29CXhk;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x22e.google.com (mail-oi1-x22e.google.com. [2607:f8b0:4864:20::22e])
        by gmr-mx.google.com with ESMTPS id v63si613519iof.0.2019.03.05.14.48.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:48:37 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) client-ip=2607:f8b0:4864:20::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vB29CXhk;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::22e as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x22e.google.com with SMTP id x187so8226135oia.7
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:48:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=Nd9I0SWBS1QQQUG3kOTkA/9K5iPoiXt8RcOKtHMGyS8=;
        b=vB29CXhkE/k40/lMyDKaPcbvR7gvqAoFpmS0YZd0usmyR3fQAuJneOrA9LQOX/E54X
         R562hdhlVdSTKbrqUXsemCXUIy9Qlo1EBrZa/lY0PDIwoxu9JXiNhU3Ir4c65NZAaUGl
         QwN4BE/6fSSFIV1LKjFOG8AmYbQ9bta/QiNgUChaq+4JHSJFiqCSQexNNQvLrBLDAPHJ
         ByT3jed1Qy5s1AWhR+Iu4wwria3rj0iQJn94U1yercH4lOl+RsJexdM+Lz/iPFPyeiXk
         2LDTKKXUa3mqE77O3leMx7YrLJ31e53G74eyQGpFJIW0NbtLYWRoyJiZhhjkoWh1yM81
         M9rA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=Nd9I0SWBS1QQQUG3kOTkA/9K5iPoiXt8RcOKtHMGyS8=;
        b=AOWCID9g6A5SnjKiQ66zsfr3+6ezNOlORUDDoXVaFVenIM+N0qKvPqjLpK8I02G9dS
         WkoeePNFSwf4yWzl3pK8abpCxFkVIGHjKAoG+QejiZQezXQk3YStrD3ZwULSwWbSSg7E
         pGUWix6s7EYBYwytJmJ6YSm9fZduFRv473pkBpxQFRRYGUOiSqh4pcF3Wono33OJ5UnJ
         0R+pLmMg4yEJiUFX3izqAV6TkH1yqSY0nvqjugw7zsrsAfRpE7e9W8VqdoEfHdXNbtFB
         D3s+qXJjFzluohGxRvUCfC3lzLxvgDmYaatVyiAlPBPeLEp0/068QpZhmJ8lgh2G1ZUh
         4qXQ==
X-Gm-Message-State: APjAAAW4Upf6NpuXniBkph948vvgzN41omy5v5GymSSyZZcEQOC+4FTK
	ubC3w1Bg+7n9wsmL3FZglSo=
X-Received: by 2002:aca:ecd7:: with SMTP id k206mr545704oih.67.1551826117083;
        Tue, 05 Mar 2019 14:48:37 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id d17sm4692591oih.51.2019.03.05.14.48.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:48:36 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v2 2/6] Staging: vt6655: key.h: Fix comment style for SPDX-License Identifier
Date: Tue,  5 Mar 2019 16:48:24 -0600
Message-Id: <cfc3bcaa43f68ba203bb0ded18dbade868e57de8.1551825578.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
 <cover.1551825578.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551825578.git.madhumithabiw@gmail.com>
References: <cover.1551825578.git.madhumithabiw@gmail.com>

Modify comment style for SPDX-License Identifier based on license
identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
---
 drivers/staging/vt6655/key.h | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/vt6655/key.h b/drivers/staging/vt6655/key.h
index 0942d8703f98..9347776fa3a5 100644
--- a/drivers/staging/vt6655/key.h
+++ b/drivers/staging/vt6655/key.h
@@ -1,4 +1,4 @@
-// SPDX-License-Identifier: GPL-2.0+
+/* SPDX-License-Identifier: GPL-2.0+ */
 /*
  * Copyright (c) 1996, 2003 VIA Networking Technologies, Inc.
  * All rights reserved.
-- 
2.17.1


