X-GM-THRID: 6663863789016842240
X-Received: by 2002:a81:1b4d:: with SMTP id b74mr5594476ywb.2.1551553475692;
        Sat, 02 Mar 2019 11:04:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2304:: with SMTP id j4ls546846ybj.5.gmail; Sat, 02 Mar
 2019 11:04:35 -0800 (PST)
X-Google-Smtp-Source: APXvYqxqqZtWNJbblvc5ew3VhBXyKqDx7CfAp/Dv7pSIjGjsFajT83raYttOG5/Z1b2yJkFhgnCL
X-Received: by 2002:a25:aaf3:: with SMTP id t106mr5860319ybi.66.1551553475104;
        Sat, 02 Mar 2019 11:04:35 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551553475; cv=none;
        d=google.com; s=arc-20160816;
        b=oiM6gHEFBBdin413BbhMFZ3x4g76hWe1LeJMtdCWG/aLvmueQnO6GnS8OjFonw79rc
         CS+71lSWppb2tfxVftalgwUXPB115EasTA430TI+xFAmU9nL+kW5hZiC+K9MK0kIL3/q
         dniUQhzam/5i9RxRrgvS26GR7bZ9lR6hw7liKjIQxvjZPgl1A4VI+Vi4tT95xdxsfBOD
         fnoEBaJN1UD9KD59Hw39vEu99w2ZBL118uTbK1UagpREJDmTdi+xIEFX3Fc6wZkjk8Eq
         QlJfr913mUKaxOsJzS/kUBlCpFipcmAbTAbPbR7iRHBmE1g3Grzg4V/ZLwCHqQBLu2Ns
         Pk0Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=iMUbYo6Q+KDsvfG1PumdXf7D7yO7cLYcchEFbZvxCaY=;
        b=VBeJTris2pK7cfLlYuzJpzDPNojIhHfuKjCyfR1lalP9ZdrTZz1BWv8o2lwvu+oCPt
         +k4YBSUhAOz4j7S6d5z5Fe1+abneHsZ/PhRjrh7+frMOivwApF4xkEOd8d1CQ/OLysAI
         Q0fJlUxuGguSBus52lXGBLvRIMoTSCyYwSS9vFK9GT5FREoFGW5przFi0n09Z9rbHCnQ
         ByV+Q71aWUDEkL6JCxAI7LUGr32gOOU2+O4o4+GOk+BAKLW2+SNswjIkbugdcNvbS/8r
         8LOLyZ/aXW5G0etg6gmDIPDbzCIFVLaZ5qmAhRVSlDRARGKr1PMSebm5uTh4lx8xFkkw
         hRaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ+e5wPh;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x244.google.com (mail-oi1-x244.google.com. [2607:f8b0:4864:20::244])
        by gmr-mx.google.com with ESMTPS id d186si91304ywa.1.2019.03.02.11.04.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 11:04:35 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) client-ip=2607:f8b0:4864:20::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vZ+e5wPh;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::244 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x244.google.com with SMTP id g16so853559oib.1
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 11:04:35 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=iMUbYo6Q+KDsvfG1PumdXf7D7yO7cLYcchEFbZvxCaY=;
        b=vZ+e5wPhZYWT7VPbvk/uZhEj3LI0oDTUjasqYfWO0Lc/83kG5nKiYKpYCIakJ1X6sR
         zyUPIjXNjAdPVBMqnNQU4UoYkCPN06Podb6bJd9NV7oFoM3hu9tkEXfF+DvdVNfAJElq
         PUmW+ic3ePD11QA6hmAEdIKy3SFZfG9w9I3qz9y3qZr6vcGzprp7MHMFW9NXH+LKbUvA
         NgpKjznSvq5yAA6PzAMI2rtym0xbe3y0KyWDfFDdXH0ycgYAKnQLiGpGQssaYUY2kdig
         bw0foYsJ9mtuRLsk0IpkLBX0WhPQRN7/JkY99k8g2/9Lxd4t+cP4rqQUFfwCU4QoCHAv
         xLqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=iMUbYo6Q+KDsvfG1PumdXf7D7yO7cLYcchEFbZvxCaY=;
        b=Aw2gtrKZZVanbXNS+nciykf2hmZSVHa7oCGsmieFHs68UEk8Ah4V9Q9vZ2OuXUuihY
         LJvcpjWkJM57DSrcIBO20IgGZ5mNTqKboSbaC5G8k7iFX7gVtAJuoE4DcJLGX/sCWpGX
         8g6kljuML2DEnbjFJWJ5FnxETLYTe140k7sQ5i+ya2kuBmc8Nwq09rfiBv6hyVJ6whaw
         7N9sxs53lI5LPBK83MJOH33Rwe0xeiz2JYCaRi3cU69DG25TRYEh72Oz/zCrDUIKdDip
         rEJ0vQGrYLAnvF8tXW84JKaE4nD5fIxOjSYS5C/4gSx2i1lcEFVHY3R/qD1mllVw0/q/
         i13A==
X-Gm-Message-State: AHQUAubHYJTLbYxwndZPCly8j2xhjE7UrfC6l0fQFsnUKV4LIl3P0Lsu
	AJiqjHjQkYcEQVOLZxD8H/s25bOatTc=
X-Received: by 2002:aca:49d5:: with SMTP id w204mr6903073oia.154.1551553474599;
        Sat, 02 Mar 2019 11:04:34 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id r1sm566198otk.48.2019.03.02.11.04.33
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 11:04:33 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v4 1/2] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Sat,  2 Mar 2019 13:04:26 -0600
Message-Id: <8d8c555be4ecbcc804b0c30bb6f682be2d2beabc.1551552831.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551552831.git.madhumithabiw@gmail.com>
References: <cover.1551552831.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551552831.git.madhumithabiw@gmail.com>
References: <cover.1551552831.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier for header file type based
on License Identifier syntax.

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


