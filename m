X-GM-THRID: 6663863789016842240
X-Received: by 2002:a0c:b996:: with SMTP id v22mr6567096qvf.2.1551551711710;
        Sat, 02 Mar 2019 10:35:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:39c3:: with SMTP id m61ls665557qte.0.gmail; Sat, 02 Mar
 2019 10:35:11 -0800 (PST)
X-Google-Smtp-Source: APXvYqyq3YDUEfPTNmeWc0jLfLIhmxYKBVMZ3KMdRd+sjTuzdK0ny8x0ZGoXVoNl8mpKvNPaI4EN
X-Received: by 2002:aed:3a42:: with SMTP id n60mr6353218qte.62.1551551711195;
        Sat, 02 Mar 2019 10:35:11 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551551711; cv=none;
        d=google.com; s=arc-20160816;
        b=yZgsl2tniMZt2jaKXLPidP9oQHxYZjm4yP5oeavs2OMG844ckINv81NOx1JbM3f/CI
         qyzFCtxI2vsrkyNZXp8DmOF3zYqXdFv1APTtynlCRVarQ1zpoDx7bCrgtIvvsTsixaZ7
         g7SpsQH6mzh40iraW0LdCtgQWB7Sd5jqjSK12aUP4SG36bclfzDH90/b/nBHVHWDKs54
         ldHE8aiD545mfHj867KzDEqurjlNbw3qoCZpF0Dgdvhb2uYVZlfm1h8oUbQlwUdnnmwA
         0dKJctRk7mL1NEco0xzsCpxANevdlb/YOpWFVmYo0K4USAGtZ6XuhgTS4u10UK+SsmzQ
         wLbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=UpOZOnO0aAwaJGffGC4mHCzcrKdw4RyH5bqMo8yZ54o=;
        b=f/KM5KqpA6OdJMyga4CSnAy/WvnwjRa5UkTS0zd4GIbiIJxc6/LVat/Ivsh8oj+9Pg
         C1AeDFN34OjTRPxKqB+kb1C/kfC+XIacOzOj+Y6FOV0z/26FL87eXDeVowwx+IBVoc8N
         Cbelp81XQfx3pCPr8ZJFT94g2Jg3ocAl/Egl6N8HH12V4D7fy/6tkuooNqw3u1kzDLKl
         ml7ED+k7DhyuptDwZRrPxfdyrErb5F0eEUnGDRW7vmAbOeYPXNX+AF46+W1CdtnzA8OI
         iFxbrDGtqkH3hv4qy0di96g3Dxy0v8D9s3okBcgYnMrZm9JDVXKUkrKfgkjSuEPvH/LQ
         gYuw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SMxDe2Cl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <madhumithabiw@gmail.com>
Received: from mail-ot1-x334.google.com (mail-ot1-x334.google.com. [2607:f8b0:4864:20::334])
        by gmr-mx.google.com with ESMTPS id t79si90958qke.0.2019.03.02.10.35.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 10:35:11 -0800 (PST)
Received-SPF: pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) client-ip=2607:f8b0:4864:20::334;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SMxDe2Cl;
       spf=pass (google.com: domain of madhumithabiw@gmail.com designates 2607:f8b0:4864:20::334 as permitted sender) smtp.mailfrom=madhumithabiw@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ot1-x334.google.com with SMTP id m1so957007otf.5
        for <outreachy-kernel@googlegroups.com>; Sat, 02 Mar 2019 10:35:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=UpOZOnO0aAwaJGffGC4mHCzcrKdw4RyH5bqMo8yZ54o=;
        b=SMxDe2ClvYU8Cs/usy1GEsnjmLv93QIhUemwCjootmYhDJfKJRaRlExLvoOrXAS2mH
         LtLYclnNj/qju+6hGLNYo7/vYp2JDc3JArBoLd9YmUbAF2BS1q2dKGCrmaKDDvHbHm20
         09t3x50PfyTYLnRPOdth870q0M1tTfZr3iLcOVSWzwtIIXWtXPPOM2nFhdynPeR4Ih1E
         NTPBsOk7WbNuj2/G3XVpgtTW7gZ4wIHAbXWSuhWglNq4/f+Q/0MpNGZwYXwNwh6yISl2
         UkHZeE1bmUf95VN/IC6BbviHAd5dm5+AxzhJaT+otrFfWB2vuaCS3nxsfvvHwXb0PDqU
         rb5g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=UpOZOnO0aAwaJGffGC4mHCzcrKdw4RyH5bqMo8yZ54o=;
        b=CmStj6YkT5gxxD3IyHvgvaYYuQWH7pOTl3r5XuC8oMpm194KG0r46XEyqpTayX9XbH
         ETMNpCsdjzsvzrQ8pcho6CajT4ltksg8uyfaL4f/DezhViwxj6i9i1BTaiBxFIClm5rD
         nYt5p3NZ8QispavHx5sIEmHh88tKBzl38VP3DsUQyC23LcLwhwpHdiWxLO30xS0aX32C
         kWQDdS6TXMIFElF8jHhfZ1vaT8laPseiRmWet+fYsqaumirpyBR3Taz+BT/GiTn52JRM
         /8Lj2vaDAg+NNs81cksa8CqUzXLI01GXq8/3w7TN7h2uGual0KLxJ6Qz3yRJTf1f2GZx
         Li9w==
X-Gm-Message-State: APjAAAWDyEIWBYf4tne3zyS4CLCryn5gX/JP0+U7qSZnW0UJwjGraXau
	I2rspM50ZGu97oKmaIam9L5PPsMeuzI=
X-Received: by 2002:a05:6830:14d6:: with SMTP id t22mr7676688otq.255.1551551710583;
        Sat, 02 Mar 2019 10:35:10 -0800 (PST)
Return-Path: <madhumithabiw@gmail.com>
Received: from madhuleo (cpe-173-174-122-182.austin.res.rr.com. [173.174.122.182])
        by smtp.gmail.com with ESMTPSA id d129sm479869oia.38.2019.03.02.10.35.09
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 02 Mar 2019 10:35:10 -0800 (PST)
From: Madhumitha Prabakaran <madhumithabiw@gmail.com>
To: madhumithabiw@gmail.com
Cc: forest@alittletooquiet.net,
	gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com
Subject: [PATCH v2 6/8] Staging: vt6655: Fix comment style of SPDX License Identifier
Date: Sat,  2 Mar 2019 12:34:48 -0600
Message-Id: <f818032337f13f76dd677a64ac42ca5bed34e34c.1551550323.git.madhumithabiw@gmail.com>
X-Mailer: git-send-email 2.17.1
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>
In-Reply-To: <cover.1551550323.git.madhumithabiw@gmail.com>
References: <cover.1551550323.git.madhumithabiw@gmail.com>

Fix comment style of SPDX License Identifier for header file type based
on License Identifer syntax.

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


