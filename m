X-GM-THRID: 6663618170330284032
X-Received: by 2002:a65:66cd:: with SMTP id c13mr1630437pgw.73.1551825262449;
        Tue, 05 Mar 2019 14:34:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:8f45:: with SMTP id r5ls8016084pgn.8.gmail; Tue, 05 Mar
 2019 14:34:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqyX+ItmwYMwKgBNXLLRX7C1X4B0lASE0UUCBYMUP3WUO4cF4IhTcQ5BigE3NFCuTr/kxiBP
X-Received: by 2002:a63:5c60:: with SMTP id n32mr1653987pgm.146.1551825261836;
        Tue, 05 Mar 2019 14:34:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551825261; cv=none;
        d=google.com; s=arc-20160816;
        b=gQRoq+iepL2vEf/Acjy90LIA74r0vpTGpokXUa0KGD8m9YAM17jGccS1yi0JKcLkb7
         CYam0ztMOYxa8e7tfEOnGyionyWy+hljhWUQjVdjMnjx2GvYJONlhUBEz5GB0nyvTUof
         ruK7/JmDYybxRd2ydhR4R+NyG6pJJ4o/iJJPezt4n+HnPGvIKQGm8d+iOyknbxuOb8lz
         VD2hO9XEHlUe54o0yscMzO4dPvUnrznSiWhoZol14AzXXhG792JwVP3eo6CMmFqomJde
         iDELOn7d+erKJngILuxs3k3m5PfvHA1KrJFIGxvjErtO4Ay9zXB6Q+6KcGuRyb/Yy2P7
         yXHQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=K3fZ6thlzgsWYAioy+4vt5idTiVzSGdHyZrrObn3xEE=;
        b=0F2KgnZnzsWDgASkl8JqBwq0RuDGC1EaYLM0JDZud6m7eq+zsjSVYiOBCxWJa+zn3q
         HfAnkfRH/Zl1Np+UGxEWBdfBpiD8FzSNWf9drk9LcYCd8rhUAY0AL7FF0lKY+jYyJ+ak
         TOjtwTNPW2hhv6TlD9QAh3LwUgGATDE5fqbEkvncERJFSWEA/ykz/r1JaNKDnK/LEKzQ
         DCu8hTJoA4cssgCQQD5wC5lMJWQjO5+ZarTY7LgEdpvg83tcwBNvCOMEquDyNJ3ruSM3
         1FpW5rxzY9WIDMtDOi51jgGc8/ehC4VadXtfE72K92W3IG1s1f0pHewVP+MWr9Wk8SJQ
         lyDw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PhxxCoZ3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x343.google.com (mail-ot1-x343.google.com. [2607:f8b0:4864:20::343])
        by gmr-mx.google.com with ESMTPS id q140si597838pgq.2.2019.03.05.14.34.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 14:34:21 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) client-ip=2607:f8b0:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=PhxxCoZ3;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::343 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x343.google.com with SMTP id c18so8902528otl.13
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 14:34:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=K3fZ6thlzgsWYAioy+4vt5idTiVzSGdHyZrrObn3xEE=;
        b=PhxxCoZ3ZFVWyLb1VqI27iW4CP0DdlUy4EeKnQeKwdGBUfSLUZkSi9YzdkDpMBB9Rk
         SxmrvAbxEC87JaI5RqfpsV+EItVcuEiQzPvZpIpsjxif9FAhPcpZglZgc0FyqDtEBZ+x
         CNmvTtfwaLWRm63T45gPSC/MRupDcFkfs83Y5aXyMhJkkkc1u1nt0uqG6bQ2b+ZMpyEV
         vCIdJJy1lTYqo9IpxemXLsOKW58z5VHp9hY4SrBDo7kiipVQhjwYG1CPVxRXDYsE1Cis
         dKTMvr+E1ywqCOAyn12J4Ssd4IV9sSakAdUzabh2vdrDgP7HU/s3x7aaYLG5DqDWfKzy
         04cQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=K3fZ6thlzgsWYAioy+4vt5idTiVzSGdHyZrrObn3xEE=;
        b=llOEL0MGSSHsBQRfxEMqs2lRC3iYn9A30MlTJXysKpjS/HEwvaAKMAX2hiD6JM4tSw
         8w16Q6is8QUqgz06pkvZbXR+dvbsA+sQ9kwi7hW95ksiYpVSUJBmS+ESUOcDB1uBsAqm
         uLcr/f++vauzokpSfB78pJjSPBPeVL74XQRREBiOdbKyZD+ufIqUYnckDKx4V81OzvxU
         RrVBmAHbiOUFCED4y/xn2jT/9mF9GW4YJTmY+QC/rkCXdg6wgG9ROLrE9di9L+BrkxU0
         LsUw4krmLe/IQK9dtZ2vQuG0cBGPn/SdwdlFv22Eet0P4nMjDU+9VyOXspkfFpd1NFJS
         gUpA==
X-Gm-Message-State: APjAAAX/K25Tos7AKNYKQY51gJDBc/R8IvlUPSdAWSfpCW09TV0BbiN2
	GCwZh7QsgUppZXbQKXS0APQ=
X-Received: by 2002:a05:6830:105a:: with SMTP id b26mr2585000otp.320.1551825261083;
        Tue, 05 Mar 2019 14:34:21 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id i9sm3959986otl.43.2019.03.05.14.34.20
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 05 Mar 2019 14:34:20 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH 4/6] Staging: vt6655: mac.h: Fix comment style for SPDX-License Identifier
Date: Tue,  5 Mar 2019 16:34:03 -0600
Message-Id: <65c1b6b403fe1660ef41d5f6b870ebf2569f73e2.1551824831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551824831.git.madhumithabiw@gmail.com>
References: <cover.1551824831.git.madhumithabiw@gmail.com>

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


