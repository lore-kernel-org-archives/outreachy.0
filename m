X-GM-THRID: 6527357137219223552
X-Received: by 10.223.132.68 with SMTP id 62mr1465015wrf.25.1519768763626;
        Tue, 27 Feb 2018 13:59:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.208.195 with SMTP id z3ls703608wrh.13.gmail; Tue, 27 Feb
 2018 13:59:21 -0800 (PST)
X-Google-Smtp-Source: AH8x225HbblBQOLpulfIvo5kgBm3km4vT2N3frV+KqvUMiMhP3RhM2wxhwHo9ZXBMzUnmgHRSzjo
X-Received: by 10.223.184.60 with SMTP id h57mr1514290wrf.0.1519768761772;
        Tue, 27 Feb 2018 13:59:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519768761; cv=none;
        d=google.com; s=arc-20160816;
        b=aIw1EL1Tz9gZtQuW1JRcf+nllF+KZcX6lnviMNPnKV/bi6U4IHoEan1MtRU4dJrTY9
         Xi372Pgnkfj8/pMwr1zCaWu2iPGHCA/5P9cq3VmMlIOjXc5shpqDwt9zW5UOfqegrNGf
         47OVCMgM0CHzpgcojQz6AgoB+X+sRZEjfsZPoV9mBYIInDbj0hAgyWXFpn2tzGolIeaQ
         QKnIqn+nYM7IfaB+z9uQQVINkE/ipNsRO+TxukeVvgZ/msVcwjjVd6j9BxB+ySB0c3B5
         L/yAFEXLg0aFHbEF3X3pFSGOg50R59CC4WBckfE1XTMgSWBTcEgEznjRTvsLgqSZXig1
         3zJw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:content-disposition:mime-version:message-id:subject:cc
         :to:from:date:dkim-signature:arc-authentication-results;
        bh=vNpQPRD6X1jkkq0GqR2YMC0CQvmIXnH9R3i0PJAeXho=;
        b=p3L8DhwZ23QYoz3DlH7olwiOv2HnJ9Fhhm5LTH3U8KgIZcv/uxjiDWZ3xAN+hz/WdG
         XHV1kCNf41E1bH7P4T15XvMSXYPezw1JHk0UL9xlyhQZkciaM0ypG046chwtxG/yECnR
         fP/K/xePuEGmgKMj31tSzX2H3Cn38GHLJAHwbh93DFso9rmJn3MqfYJMN0xFvGkPyOf5
         X7hd2XmlaSJv1qJVt2oJ4yvz6KPn3/ct3RGtHJhC2fxBhVmOS06Mt3vrOt2ydPP0GSiE
         YyUX0NtNJdLEqCGuquNqwsgAsyyqG/zk3wKim6iNzVHxVqNXb2zOOhwUU6Svz2dphi4F
         2fmw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYNAqGhb;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <dafna3@gmail.com>
Received: from mail-wm0-x22a.google.com (mail-wm0-x22a.google.com. [2a00:1450:400c:c09::22a])
        by gmr-mx.google.com with ESMTPS id f137si39788wme.0.2018.02.27.13.59.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 13:59:21 -0800 (PST)
Received-SPF: pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) client-ip=2a00:1450:400c:c09::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=pYNAqGhb;
       spf=pass (google.com: domain of dafna3@gmail.com designates 2a00:1450:400c:c09::22a as permitted sender) smtp.mailfrom=dafna3@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22a.google.com with SMTP id t3so1375968wmc.2
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Feb 2018 13:59:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:mime-version:content-disposition
         :user-agent;
        bh=vNpQPRD6X1jkkq0GqR2YMC0CQvmIXnH9R3i0PJAeXho=;
        b=pYNAqGhbCPJ5o9Uc3fsUwH+pkjxPOMMeRkn4RcvJmqZUefh8H43Wu//q58D91gx18h
         JEsT2q/Vw0e41uwwCe7JKWojKJjrsCY8NvzMPv/EJxn8EizQaInrQyLxV6CId0RPojE/
         YnWqCfD2LMjAGtFSNtF8WQK/TK0WXNvRnA26m93mGVLED7jjeUzxHyGEoAYASckaKGCF
         oRHqUPjWm+QwQI7Fvr8IGhHR5V1sammpCZXCBMxa+OzopqmBK2Y9kvM/Z/EDofc763Jx
         Sc0GmjIYEfOCeVweskjPU544RmrnUUK25leT/RRAaDtYNMb0cN/kDq/H8IHIioqIozgA
         YcdQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:mime-version
         :content-disposition:user-agent;
        bh=vNpQPRD6X1jkkq0GqR2YMC0CQvmIXnH9R3i0PJAeXho=;
        b=Py4MHRvWBUBrXlDggRQCHZCG51ncp0BWdOELWdq1P1rm4/rPyqL3VuaGWkuEEnd+Ut
         V4N8+FLqGDC8bc4O3a3TEbEA3iiaRjyz8C5vsqPMjGZUAerzoYQoS19yiRRScqltxB3A
         6+TvuzjYDdQECc5/JULWmOoWXpryXCHWOBTbXw8/mt2dYTxdvW8vzYVp1rAFajn3R2kw
         ehpHZ89DHbFkfu5FDRPFCdFBHKz5SgVSPmBvJa4BjfPLatwVivAlUCOQyQr2/oqrnxlC
         x9GRfpPfg6G6shbJupLhTH1PulBtN7dVOSokEqFaY22brfffi+h0WOMTzOj+/hXRefuo
         6AJg==
X-Gm-Message-State: APf1xPDuJG3MxPDj1Vjb8e/+WGktkfFlxA8xQWS6t4bgJo4satPgFDME
	hjXsEFumeNWLFJfpoReco0g=
X-Received: by 10.28.180.132 with SMTP id d126mr6301565wmf.93.1519768761501;
        Tue, 27 Feb 2018 13:59:21 -0800 (PST)
Return-Path: <dafna3@gmail.com>
Received: from gmail.com (IGLD-84-229-54-107.inter.net.il. [84.229.54.107])
        by smtp.gmail.com with ESMTPSA id j42sm176622wre.55.2018.02.27.13.59.20
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Feb 2018 13:59:21 -0800 (PST)
Date: Tue, 27 Feb 2018 23:59:17 +0200
From: Dafna Hirschfeld <dafna3@gmail.com>
To: Julia.Lawall@lip6.fr, Gilles.Muller@lip6.fr, nicolas.palix@imag.fr,
	michal.lkml@markovi.net
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Coccinelle: memdup: Fix typo in warning messages
Message-ID: <20180227215914.GA4522@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.24 (2015-08-30)

Replace 'kmemdep' with 'kmemdup' in warning messages.

Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
---
 scripts/coccinelle/api/memdup.cocci | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/scripts/coccinelle/api/memdup.cocci b/scripts/coccinelle/api/memdup.cocci
index 1249b72..8fd6437 100644
--- a/scripts/coccinelle/api/memdup.cocci
+++ b/scripts/coccinelle/api/memdup.cocci
@@ -56,10 +56,10 @@ statement S;
 p << r.p;
 @@
 
-coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdep")
+coccilib.org.print_todo(p[0], "WARNING opportunity for kmemdup")
 
 @script:python depends on report@
 p << r.p;
 @@
 
-coccilib.report.print_report(p[0], "WARNING opportunity for kmemdep")
+coccilib.report.print_report(p[0], "WARNING opportunity for kmemdup")
-- 
2.7.4


