X-GM-THRID: 6663863789016842240
X-Received: by 2002:a81:4fcc:: with SMTP id d195mr10092910ywb.4.1551728775415;
        Mon, 04 Mar 2019 11:46:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:2304:: with SMTP id j4ls1320105ybj.5.gmail; Mon, 04 Mar
 2019 11:46:14 -0800 (PST)
X-Google-Smtp-Source: APXvYqwuRGLMzCb5qNViclUiwViddNsjPEvUCcwEgMnf1JDYBS1ir/2jwivipN12kCs/YmqR0Yfh
X-Received: by 2002:a25:e642:: with SMTP id d63mr11039821ybh.53.1551728774731;
        Mon, 04 Mar 2019 11:46:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551728774; cv=none;
        d=google.com; s=arc-20160816;
        b=b+3guKORUM1veXQ5Fx5uUCAuMbMbrNUMPN/OY7itDPZq4gfTdZR9zH7mVDv2L9QRwj
         k1gy0vLvmQ14o6PpB9fkt59B9SyGLev6FRu7gATO8kyJqpOoCWmd/w+kwAzkGdbJ39Rq
         f7vFUvhlzMcHBMV+OKLbArFOFC4H5nbK2SQXrZmvvNaDRu7oEPT0HlzqN4wOo7u8rgpu
         totRWnrkyGhHuGh/e15rzxfoLA3MIuZPR9TLFoNtOSJNZvoTkMoA5pDpIY6KPQ0e5kr5
         +bjUqOT+/sUe3VeToZLzwvU2SEVSZKFxzRI1IYu7v/a9/GYL1THN9p4eGeQgUULu6RPg
         nYaA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=BZmjW7Bnsy4tu8qvPb/CzLDsojVcHwMgkNf/80UtAfY=;
        b=TUodUhp8q0Uv/6/WeSlFgGEkdceW0UxKzF+w4u7uk8dcJUCU8Hz9xG6/eCi+uTgS2/
         TScXT+mfHAOZg4SBJ2t3Ad5Va6amVqR1JObTo/6SLzDG1RF91FG/OAzNF8dX8WbBnBYR
         QiFNY/utsWO4gJ5I/w4AV3xiCdAsb3rNzguR87KpG9be37sgu6CLwyRAiHKyHNaQSiL6
         U7m0bePu9xyXclKYuUH9PcTEmUTkGC3RDexD32yHzqg3pPYi3ALho4/TkZ2+pT4d7/8q
         RdmOkH2V1jQixQR3JYthpEd/1rYLHv7dTJHeD5JdXtICclzuNpN02C1RRxbzhBkaknKq
         XoLw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ug+lb4QP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-oi1-x234.google.com (mail-oi1-x234.google.com. [2607:f8b0:4864:20::234])
        by gmr-mx.google.com with ESMTPS id t128si311160ywa.4.2019.03.04.11.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 11:46:14 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) client-ip=2607:f8b0:4864:20::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Ug+lb4QP;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::234 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oi1-x234.google.com with SMTP id j10so4821885oij.13
        for <outreachy-kernel@googlegroups.com>; Mon, 04 Mar 2019 11:46:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=BZmjW7Bnsy4tu8qvPb/CzLDsojVcHwMgkNf/80UtAfY=;
        b=Ug+lb4QPEBmuzULWLkmZ37V3FhTl37SvUwiPzlZ8Q/UPqmhNidFOWKgL0yf01Ib7l7
         YKYeFp5Ic8xBvwlRSXZeC3rw0i9itniOR5djaqB8YmOjsQr3hfX9YYjWSljHQLoRkhsc
         Fm3nldrsWkpImLXFwLwrej1n95Ow3EWbQXeryh3sBApZftZvtr6Vv5rWTfsfZ0anBpw6
         KIBctUI4Dy0fp1Yfk9gQtidPCaOwrlkgpb63aa+tZaWFW5ndbgxmemlaZr29PTiUwoMi
         5V/JI3f79VVybfptByuFeFTOhusKukI8asndrdU4aRxcav/KrkxQsDj/vrx2JFc+t8DW
         h9sg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=BZmjW7Bnsy4tu8qvPb/CzLDsojVcHwMgkNf/80UtAfY=;
        b=rlKuH3x24q4AXE8jUpCqQQ5It1w2Was3UKzdpDnzmP6p0B8uSKD/9AiLMFcNCVJaCA
         PhPWLxIIyZ+ELSAuoXH5POvwzvkIuy99sQrbPFEprzjkKi3kcBxGSMOkopQJjX7LWTHu
         3gmEcEBvYMmXWhsUZpda0fKyXfuKw0LHiie5VG8XnFMFs7F5gVW9nS0N2sm8JzsYprlt
         7fuTgsp6S8FpRpAAhlLoGdj3Uisu4KstfMpLx2K8btCoNQJgZNh4WfHqyCamJJUf68hF
         5cts6MzQ+smhpMFaE8XKVXFvXduecOV6qeMtWS2Qq33diYgobdDrQPQwvhhE96LhDH6q
         WXww==
X-Gm-Message-State: AHQUAubIbUuJvmC9g6QNax/0wCM6+eNO4grM3e0rHqe30AkQO7q3lN/2
	gkCUgppFFMetIZZe8Duvnc4=
X-Received: by 2002:aca:e612:: with SMTP id d18mr13679457oih.52.1551728774431;
        Mon, 04 Mar 2019 11:46:14 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id u24sm2841099otj.44.2019.03.04.11.46.13
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 04 Mar 2019 11:46:13 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Subject: [PATCH v6 2/2] Staging: vt6655: desc.h: Fix comment style of SPDX-License Identifier
Date: Mon,  4 Mar 2019 13:45:56 -0600
Message-Id: <fe25000bd4e41085fe4c917f43daf413401ec84b.1551727866.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551727866.git.madhumithabiw@gmail.com>
References: <cover.1551718323.git.madhumithabiw@gmail.com>
 <cover.1551727866.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551727866.git.madhumithabiw@gmail.com>
References: <cover.1551727866.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier for header file based on
License Identifier syntax.

Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>

---
Change in v6:
- Included changelog below Signed-off-by

Change in v5:
- Edited subject line
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


