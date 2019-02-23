X-GM-THRID: 6661131417444941824
X-Received: by 2002:a25:2007:: with SMTP id g7mr1259993ybg.17.1550915515875;
        Sat, 23 Feb 2019 01:51:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:50cb:: with SMTP id e194ls2586444ybb.12.gmail; Sat, 23
 Feb 2019 01:51:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ia3YPhnUVm4LDyFo3imrqIel7KTtdvOjKFWTOGZ9NTJCNDBbQkhoMl0fIWeqT4smc/OPaeu
X-Received: by 2002:a25:ddc4:: with SMTP id u187mr1304841ybg.42.1550915515402;
        Sat, 23 Feb 2019 01:51:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550915515; cv=none;
        d=google.com; s=arc-20160816;
        b=zkyJ3SdsOmh6iAgBvFBY6wXf1WR8eBP26+UrRNVvXIybz6dgmGimUUa+oM71XD+mvM
         Sawxm6TI+oqbR6+5Zz1KXPQ+5sPpotDu9MFc4vhUZAUmlag5i3OYYMAyngd/sEY9NA5x
         mPJAIziU5NMgihyEcNz5E1kDfSX/kITGcoVsKiiXcQbOjZ21uaY8aZtDSSRdAZ71ECp6
         DjhO8zN/T5W6UOkIa5eYZgrMQNjrv1wWPY56viygXD/Q1Qr9Y3Yf56zifFaDEJJEvN0o
         zbMJOQd3Y+rB7M6w4p8eF+CNN7ATXwGYaHbGRPdszgREEcTKa8q+axkm2r2NACfzeAN2
         5pEg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=5D9kXgYhP2qI+xYy8EzVkBOXRaN6Wdz1evAx/IwSUpg=;
        b=I7apIRlldwsdIg2s5RiE/pGDcVZkT6I8t4dwV45WPE+yL4Y/0AxGkIQeeNBSFJnS1Y
         4HaimMQnkjzAkYUGc4x67mQHaXC3MozXEtuhuSacTKTlU7X89w+9uUHUCe8A1URzzwyf
         WYX7q9B5Ys6lPf9p5cR1pNxn60wwdUHk29Ap5tm4vXW2ovg8e8cE+TMI7B2l30Id04UH
         eJXWJLyMo/1C83QSBG50lMZjZb8oapntNjcNJH6mqEMIqu4pk6cnQXrOXgjwJkaHtx2w
         9LZ4b1LyGQ+oH4rrOx1fqixJ7fDVVE+fTkDbaaTnqNkd1ieU8hoAmayMQrroyyzcSPmp
         3HAg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XXc/SFQ/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-pf1-x42e.google.com (mail-pf1-x42e.google.com. [2607:f8b0:4864:20::42e])
        by gmr-mx.google.com with ESMTPS id l39si294848ywh.5.2019.02.23.01.51.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 01:51:55 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) client-ip=2607:f8b0:4864:20::42e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="XXc/SFQ/";
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::42e as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x42e.google.com with SMTP id j5so2243712pfa.2
        for <outreachy-kernel@googlegroups.com>; Sat, 23 Feb 2019 01:51:55 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5D9kXgYhP2qI+xYy8EzVkBOXRaN6Wdz1evAx/IwSUpg=;
        b=XXc/SFQ/xUa+82LGtMaX+pDMku4DMIPG1bG/IPsDAvLwWBo8UtUOhqlJ0AvvghGCWh
         R3At1UELM1RTKO6mGfC69WaG4yRK3L9EVKI9t8IUCTO0w6ZJVVkPv+1hJCZksd/xQAJ5
         AjQdWppFbrcAC7dg75QC8rQJ00Qvwho9uiJPB3Sf0DKRo/e4pz/QGj5RqCuUgzzv+/TI
         34XrxlBdh2acwauSu0be4U3kVxgougdAKwdISo59oRr2zdbq4vmK/xnkO6MMxfkcCj2r
         PmfH2WjLL9cYn/ueq2c9YPCvsnSGZRZJlxBlB0CyLcwrYay3YYIMH7GYNXIO09O0uiKJ
         pwfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5D9kXgYhP2qI+xYy8EzVkBOXRaN6Wdz1evAx/IwSUpg=;
        b=rsGB86q4+mCTNg+KZ1L87bedFfEta2qErJRM1y/lEQjy/B6EASuDLIlquGDR8m0KUl
         1SX/Mrld60NhqlhyWY8qA7iLFH44pHlktJj+tHC2kwiiXJQEjoKxeQ6k3UWm6f2JEYe1
         WFauVE4MyrgWFYvAPlcB5p8CcUmf9opBdogvpWVSVGTYGxn/hlOGSyowtzldZWjb+cYU
         jw0Lo6FhL3MhF/tzK8JRgGGkpFZMMcHV/NSDvG57z6w5q/I9D8O/pdPsWEkW59wHnRQn
         mhlz/P1n9jfTDCYXnzqxcH8L5oFE4YgsXqP9WLw/92Xvym8LGwJj0aWV1Ijsvhv9ev5p
         Gz1Q==
X-Gm-Message-State: AHQUAuZPU31FTLCJVDAeUb7Pg6oHAtTHJYaDeVanyI37/8vM28xZZQrj
	AXiabjMROZ6KIJ7wXCL+YixNpqRt6T0=
X-Received: by 2002:a62:3a0d:: with SMTP id h13mr8492881pfa.156.1550915514675;
        Sat, 23 Feb 2019 01:51:54 -0800 (PST)
Return-Path: <digholebhagyashri@gmail.com>
Received: from bhagyashri-Lenovo-G570 ([49.35.247.83])
        by smtp.gmail.com with ESMTPSA id 33sm10817047pgs.81.2019.02.23.01.51.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 23 Feb 2019 01:51:54 -0800 (PST)
Date: Sat, 23 Feb 2019 15:21:49 +0530
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: [PATCH 2/2] staging: netlogic: Remove boilerplate license text
Message-ID: <923dfed2e1f5d4b58b4ff31b434d40d22aea8249.1550915042.git.digholebhagyashri@gmail.com>
References: <cover.1550915042.git.digholebhagyashri@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1550915042.git.digholebhagyashri@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Removes the boilerplate license text.

Signed-off-by: Bhagyashri Dighole <digholebhagyashri@gmail.com>
---
 drivers/staging/netlogic/platform_net.c | 30 ------------------------------
 drivers/staging/netlogic/platform_net.h | 29 -----------------------------
 drivers/staging/netlogic/xlr_net.c      | 30 +-----------------------------
 drivers/staging/netlogic/xlr_net.h      | 30 +-----------------------------
 4 files changed, 2 insertions(+), 117 deletions(-)

diff --git a/drivers/staging/netlogic/platform_net.c b/drivers/staging/netlogic/platform_net.c
index 2637fb1..5ab84d2 100644
--- a/drivers/staging/netlogic/platform_net.c
+++ b/drivers/staging/netlogic/platform_net.c
@@ -2,36 +2,6 @@
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
- *
- * This software is available to you under a choice of one of two
- * licenses.  You may choose to be licensed under the terms of the GNU
- * 1. Redistributions of source code must retain the above copyright
- * General Public License (GPL) Version 2, available from the file
- * COPYING in the main directory of this source tree, or the Broadcom
- * license below:
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- * 1. Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- * 2. Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY BROADCOM ``AS IS'' AND ANY EXPRESS OR
- * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
- * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
- * ARE DISCLAIMED. IN NO EVENT SHALL BROADCOM OR CONTRIBUTORS BE LIABLE
- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
- * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
- * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
- * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
- * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
- * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
- * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #include <linux/device.h>
diff --git a/drivers/staging/netlogic/platform_net.h b/drivers/staging/netlogic/platform_net.h
index f7e7c8a..f152d84 100644
--- a/drivers/staging/netlogic/platform_net.h
+++ b/drivers/staging/netlogic/platform_net.h
@@ -2,35 +2,6 @@
  *
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
- *
- * This software is available to you under a choice of one of two
- * licenses.  You may choose to be licensed under the terms of the GNU
- * General Public License (GPL) Version 2, available from the file
- * COPYING in the main directory of this source tree, or the Broadcom
- * license below:
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- * 1. Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- * 2. Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY BROADCOM ``AS IS'' AND ANY EXPRESS OR
- * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
- * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
- * ARE DISCLAIMED. IN NO EVENT SHALL BROADCOM OR CONTRIBUTORS BE LIABLE
- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
- * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
- * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
- * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
- * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
- * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
- * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
 
 #define PORTS_PER_CONTROLLER		4
diff --git a/drivers/staging/netlogic/xlr_net.c b/drivers/staging/netlogic/xlr_net.c
index a4d6a73..8554fcf 100644
--- a/drivers/staging/netlogic/xlr_net.c
+++ b/drivers/staging/netlogic/xlr_net.c
@@ -2,36 +2,8 @@
 /*
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
- *
- * This software is available to you under a choice of one of two
- * licenses.  You may choose to be licensed under the terms of the GNU
- * General Public License (GPL) Version 2, available from the file
- * COPYING in the main directory of this source tree, or the Broadcom
- * license below:
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- * 1. Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- * 2. Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY BROADCOM ``AS IS'' AND ANY EXPRESS OR
- * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
- * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
- * ARE DISCLAIMED. IN NO EVENT SHALL BROADCOM OR CONTRIBUTORS BE LIABLE
- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
- * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
- * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
- * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
- * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
- * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
- * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
+
 #include <linux/phy.h>
 #include <linux/delay.h>
 #include <linux/netdevice.h>
diff --git a/drivers/staging/netlogic/xlr_net.h b/drivers/staging/netlogic/xlr_net.h
index 0a830ef..518ea80 100644
--- a/drivers/staging/netlogic/xlr_net.h
+++ b/drivers/staging/netlogic/xlr_net.h
@@ -2,36 +2,8 @@
  *
  * Copyright (c) 2003-2012 Broadcom Corporation
  * All Rights Reserved
- *
- * This software is available to you under a choice of one of two
- * licenses.  You may choose to be licensed under the terms of the GNU
- * General Public License (GPL) Version 2, available from the file
- * COPYING in the main directory of this source tree, or the Broadcom
- * license below:
- *
- * Redistribution and use in source and binary forms, with or without
- * modification, are permitted provided that the following conditions
- * are met:
- *
- * 1. Redistributions of source code must retain the above copyright
- *    notice, this list of conditions and the following disclaimer.
- * 2. Redistributions in binary form must reproduce the above copyright
- *    notice, this list of conditions and the following disclaimer in
- *    the documentation and/or other materials provided with the
- *    distribution.
- *
- * THIS SOFTWARE IS PROVIDED BY BROADCOM ``AS IS'' AND ANY EXPRESS OR
- * IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO, THE IMPLIED
- * WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR PURPOSE
- * ARE DISCLAIMED. IN NO EVENT SHALL BROADCOM OR CONTRIBUTORS BE LIABLE
- * FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
- * CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
- * SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR
- * BUSINESS INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY,
- * WHETHER IN CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE
- * OR OTHERWISE) ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN
- * IF ADVISED OF THE POSSIBILITY OF SUCH DAMAGE.
  */
+
 /* #define MAC_SPLIT_MODE */
 
 #define MAC_SPACING                 0x400
-- 
2.7.4


