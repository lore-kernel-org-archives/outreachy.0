X-GM-THRID: 6663863789016842240
X-Received: by 2002:a24:5e94:: with SMTP id h142mr36470itb.35.1551718872603;
        Mon, 04 Mar 2019 09:01:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:194d:: with SMTP id b74ls2666604itb.3.canary-gmail; Mon,
 04 Mar 2019 09:01:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqz0CG3/EF9oEuNLadtq17tHw+ZP6tCP6NqGWMhAKEl9DecZa7Fug7PxxqEXcFGEE1ZlJiAF
X-Received: by 2002:a24:e984:: with SMTP id f126mr54822ith.1.1551718871844;
        Mon, 04 Mar 2019 09:01:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551718871; cv=none;
        d=google.com; s=arc-20160816;
        b=Gmdg8TEatLnZ1J7ZGwFeaM9qJCL5+WAo4iaFYX45pbEPjfBt2v3DDPRzSJZ2SNa18C
         qaCcvByKGUl5h5puHVE3U0/0903t4RJcwbR6iSA5qFL5NE5S4nXh1uN4sCE2k77X7QfG
         JTgKaPgvwLa4+c1CBpygHUjiCa9nYenPSRIj+zLs7i/UtY/55B5HqdZHHPc6OTmQi/E5
         MwQx5dono0+KAteJmG6tO7W0Bgy0L3Vv91NXfAe2vRXNyTmth5GcFzo5iobwdp0UgE/s
         RoFvXEKpfZQhwfHCepen23ElExbHchat2nPIXTJUWQn/htobKj6IOdvhglNPnRaYZutX
         8OYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=5YBA4F2wKU+omTuR+vgYUQD929OZ4gq0tGvDTeihBn4=;
        b=ZYBHU7jVPbX9IrJsCP/1BY4zLAl2wnP3xrnoEEdB9wLCDMFpWl64Mgb3yjD62a1PRd
         ZsQKzJZWkZx6SO4l/Ke3Q1Uxq0er/fo3tD/r+aiRjUDE6QEvM4rb9oG+kBjtL0SdTHjG
         AuAA08j26g2j41Hok/tlH+ID4Zw5gZXsfQDdAR5WawLaod3zFVPO9SoKF70j2hjyGfmV
         nYHNYK5Z5djr7T126BsOC+GkYhmUSUem+B8Gn1VViPcWKBJrwrZjBxSU7nydiDoLmPeE
         F5xgKoxKyHRaxuJobq1Viph43hvTwBMBjbl/5BwT+8GFI3rm4kCaaDDrZVHTJ9igU5ji
         Yo4Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I/4m79ZV";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id c191si431078itc.1.2019.03.04.09.01.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 09:01:11 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="I/4m79ZV";
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id z14so4413432oid.0
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 09:01:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=5YBA4F2wKU+omTuR+vgYUQD929OZ4gq0tGvDTeihBn4=;
        b=I/4m79ZVFN6h3m33To683QqTXm58GGIjzpSy73ZY//ygufAv/5TDbWZngsOcSH5byE
         jFENM7PEAfMcgimPCefCgxkRM3Sj7XVszjVXfOfJmfFYTc6mrF1+v4lhU1pFTeAHcata
         q7DEdwH670craDfO/pJxTAl/Hvstl1Xq7MGOrcAqncWTqI4v3B0vx8bufr6p/EBLkPdO
         fiUa6Szb0BZ916uLm2Ggbm0AmvsVIHY78V9m2JjYyl28isHgNuf+7Gsktt6t4q2q12Hg
         fNV8CN8ZctzAFxRvQPPlI3SemLypE4EQ4w6mQgq0DG8gJfczOw50DmmT6eTcuNs2V6fO
         S15A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=5YBA4F2wKU+omTuR+vgYUQD929OZ4gq0tGvDTeihBn4=;
        b=m5gyxWyqETzxtB6hmLqrL2Um9Zfopif/ONldnQxDf1KybVehla0s+DFWOElEAjCRlA
         PTCwKZx16Dq3DwogXQ6LYnOinY2xk35SHujZHPAc8kXzHViE0oU4KuT3J6adLblfs1xV
         kU/P5c15gX++Kdq1rrgAIxXgmBQ6SkXWuLgDdyuzCwvq+JObCIzSfvS6xLvYdh6VIMBO
         jNVxa57GCUni23UroGvHWJ4VzjGkPX+VYf2ak5m0sZAdsFrgiy39p3rdsThpCNdUQWcp
         LOaXNnTpu/B3dP7QWQmci2pxEDmHvATMwHUpKXbZIAen6tc5TAls4+8tpv/7j4boPQ8I
         U3rQ==
X-Gm-Message-State: AHQUAuZd/Zal8uLZLha9DOJMQ3QBpfgEHjoIdi0SblmtmakXV04hEiyV
	TDHmB0dQkr8NAvoYcykcezI=
X-Received: by 2002:aca:fd91:: with SMTP id b139mr12862252oii.170.1551718871410;
        Mon, 04 Mar 2019 09:01:11 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id f7sm2670227otb.56.2019.03.04.09.01.10
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 09:01:10 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v5 2/2] Staging: vt6655: desc.h: Fix comment style of SPDX-License Identifier
Date: Mon,  4 Mar 2019 11:00:53 -0600
Message-Id: <75d9a943717da2fb9e9aa3e52c74219d332e59b5.1551718323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551718323.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>
 <cover.1551718323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551718323.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier for header file based on
License Identifier syntax.

---
Change in v5:
- Subject line edited

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


