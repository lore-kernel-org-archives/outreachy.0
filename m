X-GM-THRID: 6663863789016842240
X-Received: by 2002:ac8:16c8:: with SMTP id y8mr6368769qtk.26.1551553478571;
        Sat, 02 Mar 2019 11:04:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:6394:: with SMTP id x142ls638135qkb.7.gmail; Sat, 02 Mar
 2019 11:04:38 -0800 (PST)
X-Google-Smtp-Source: APXvYqwxHqW9QX/odBm9EgYL0s3glu8ecviTptt6MRklSoG0BC0B3b2nH3I2zyupY9Dxrckr1s6I
X-Received: by 2002:ae9:e915:: with SMTP id x21mr6561247qkf.13.1551553477918;
        Sat, 02 Mar 2019 11:04:37 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551553477; cv=none;
        d=google.com; s=arc-20160816;
        b=A4vFlRRv3JQHFJo6G33/4RYb8UbHSmAskumS9ss0uQ2Mjg6c14R9XJogdHMR8AGaUU
         t5dftofA+jh9krxUBkDAjZbDsVv78JIB0pn7wqpL+JEDHsDBTWDMpWzRWhDPeUK++FEF
         ZR5yqTQvITDmPD6D4I++xOzEBYnQYChKnsQXWTwbET55I2AzIhIl5dAN/efwVS0bNcCZ
         UeBYCJ3k2zqgElMq0TPxFvTbRjcCA1xoHdLn7lMalEhz74pA/l4TRoRbBkwCY2irv8xk
         bnxGC68c5RFuuZwMMTDpWUgxR/4zALohY0DoipT2ESZmbKVsJhVHDBm0rve2+xpfAubP
         O8Kw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=hcica4WA0ek8TQj10VA+11kHXB2d6UZrZwC40vbPDlA=;
        b=PQ7tyXunLpnKP2idxlo36c24Y4dvOHdwknGVrNIL2cGQLpfcLW8GzeZoM6VTDAdnia
         X3lgz0iDQNfai+NugLNYT2tPG3dnKT0rtS3oSX3OlugZOG5nRnoALiszShlMSqOEKzU/
         /XHmNkdiOlJTOK+9PNu7kM7Suiy9fbT8U28oZl07zzywnoZ9YsosvXxQeEnm16Jwa5jo
         uRCBg5rDx067h5c5AEd51ZxOS8gFlphWudjeWgvPz7Fpx59Xb11QudtgqmUI3QaF8ytp
         7oYE9DkVFSnIhI9jDEY/1f8vwjo3IN9kZlDOvL0Qpayhkga/Gx4m2DymE/7NTi4ZKpbo
         rz6w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FroO0BV2;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x342.google.com (mail-ot1-x342.google.com. [2607:f8b0:4864:20::342])
        by gmr-mx.google.com with ESMTPS id m1si32000qtc.2.2019.03.02.11.04.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 11:04:37 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) client-ip=2607:f8b0:4864:20::342;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=FroO0BV2;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::342 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x342.google.com with SMTP id b3so997966otp.4
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 11:04:37 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=hcica4WA0ek8TQj10VA+11kHXB2d6UZrZwC40vbPDlA=;
        b=FroO0BV26/EQDIsCQuByUxO5J1/9zZTEysd+UMPP8+wmND8ZJnXyiXsmLh1rwXNRif
         IgNMSVnZkQq7KkgeCi33K6sDrTSx/OqpKtF0/FrHZVtR6Gk8U2MrAdvdqBBFO7ffiJND
         b78Xs2sByBaNwKnhOs2Ty+/nrrPotD4Mrbkvv4NEAaaSzrzJqgNcij6tR841sayyxHVl
         y0srdcj8Xpkih5f2G8jMhQJqYDmGcIcy33reuRUOPFSiSGXGsR/fLBCSCNiP/kMktREc
         XrgLerHC21GdD0CM6JvvoG0rBG+87io818+OqztHBzLtnBBgRO0nyMIr480y+P0DnM/k
         +HUA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=hcica4WA0ek8TQj10VA+11kHXB2d6UZrZwC40vbPDlA=;
        b=i1iAO/g/ykl2Jd3SU+1RTOBqg/4zkbZo4STHVNoNA5LdywAl0uxq45qyaKLwsd7Fm3
         euddFLjKDZmleaQSh8W5vhjRPbnQvZ4bZ8D/y6J+fuh3R/KLnLvXc5uoCTiYyu/RyCZ8
         7MW+Iw7jL2GPxkJ1j6CfwZahBswwPus/WTLxSTz/6CecEuw085ndgKqrnHjRCxLxcC0b
         +DX1xvpLrB6QLvCILQV7y76OUp+Rs9+3f2ChyJ291/7D8g2n4RdNF2rIIjVUqIKS21Pb
         ZvgZwW+Zep3BCMENP3CJjYOdK0V9v6tYV17t639CnKQyIN/xxNkbi9mP3ciYWdCNBZw5
         kEew==
X-Gm-Message-State: APjAAAV/OfY4HU0pzWKtdEH5FUh/mt44/g8CHeXkFeSraDB2kvLsEFRW
	9oTrNuhoiqqJbNxR25B5erQ=
X-Received: by 2002:a9d:1991:: with SMTP id k17mr7609701otk.20.1551553477357;
        Sat, 02 Mar 2019 11:04:37 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id q6sm498407oia.4.2019.03.02.11.04.36
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 11:04:36 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4 2/2] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Sat,  2 Mar 2019 13:04:27 -0600
Message-Id: <b78814e5e69b587eef1849550bf4e77775cd4e4c.1551552831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551552831.git.madhumithabiw@gmail.com>
References: <cover.1551552831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551552831.git.madhumithabiw@gmail.com>
References: <cover.1551552831.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier for header file type based
on License Identifier syntax.

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


