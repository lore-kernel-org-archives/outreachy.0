X-GM-THRID: 6663442013681090560
X-Received: by 2002:a50:eb05:: with SMTP id y5mr1059553edp.5.1551485609400;
        Fri, 01 Mar 2019 16:13:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:9fad:: with SMTP id c42ls2949211edf.1.gmail; Fri, 01 Mar
 2019 16:13:28 -0800 (PST)
X-Google-Smtp-Source: APXvYqy4YisXsj5BrZjeP33WwWW0UJDz99OBqueEeM0IEuyr3XLTHpJnEnQkaqbQ1ISRBTRwCIAh
X-Received: by 2002:a50:97a6:: with SMTP id e35mr1069111edb.4.1551485608695;
        Fri, 01 Mar 2019 16:13:28 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551485608; cv=none;
        d=google.com; s=arc-20160816;
        b=RwLcYZTn9q2dPHLYHJmfSHSihP713ol62bJAa38bsz5H8UDoIzePIExYHi0zmdSG+M
         I0UXB4+RWy3nmc4knSdfD4QRARQPIVWHPRxkT4Afg7jUqM0eJXefPeyVWbYThqMrrqr9
         viRfrbhoVGrJsrB5bkscX4bASefGQOrgAKAcB1t1plZixZgQFUma/NdYHQcWiCjpzSPN
         Vrym/GHIBdgBjWKaQhqrB8aZHYQ4eNYp6PLpdSQOCsz12qnq7/Ml2rOxqUBGjF4fJnS6
         udfY6OSldcH9dzTkYsl/PwMpDB70at6psWwOVphUyiqTjh8acxJ0wzxCE7I8PZs56cQk
         g/bg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=VbJvsX9LQ4yeEMF+8VjAjloOJ5239y6J93Q/wda6O0U=;
        b=IB7sbbFLZn8VVTmHm0y88yedmKuInXl1uiySjWSCt69BXXquja1CPuFGNfmi0FhFpS
         FpenHrdfjpH62SnJ5xMxcSjndiKzAFnHRr8ex1A+MyR6uIqdt8V6+yCzNU8hSra/hqCf
         liemAimBMx1rwvcMXJ8LlJX/NxNKprRmtqJQ9ggawyr9JclXwb5VWKhR/4SIRbJiU65Y
         qAx5zMn63UDAHpagoc0/gLtLgtQWpNjnDJA/YhKDUfE8bip+dYEx+sLnBDo+N7akCF8e
         r15htxQylViUm526iGzUW8lJLvYjIq48ByFxcom/o74htPTJLsxF8E3/VSt1e5eIYd9H
         MUlQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=epa7q8Eq;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wm1-x343.google.com (mail-wm1-x343.google.com. [2a00:1450:4864:20::343])
        by gmr-mx.google.com with ESMTPS id a7si740256edb.1.2019.03.01.16.13.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 16:13:28 -0800 (PST)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) client-ip=2a00:1450:4864:20::343;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=epa7q8Eq;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::343 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x343.google.com with SMTP id g20so12945772wmh.5
        for <outreachy-kernel@googlegroups.com>; Fri, 01 Mar 2019 16:13:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=VbJvsX9LQ4yeEMF+8VjAjloOJ5239y6J93Q/wda6O0U=;
        b=epa7q8EqZ/1sMQ/LaceJMY9bl1wFVZeTPorqDuwPK4nPY2ZLxO021k4sGQ0TgPH0VV
         IrbbgdS5aKacANlpl2D4Ve+s+cvkqA/cBB2c4gh3Ch0lVgqbxfs6eEGbXHHiQ33XGVVQ
         XpvBnmny8KvgeoXxk5akL5oEWpVx7JV/KBFiUpo32XSMbN7VU/soYvfwYSWFd5+Z9LJo
         TRO8oXmdJLA/RKsLLxZwIzomSypE4SuJhtAflwMn/RNpD7doF9WmXItlMw/tG8vJWhJQ
         cOihzghsN9rEpoFBBuY1mJH8t96UYSFXZAtPfmpLN+qtgjKGnP2q6U0azRGaCf1LOLPY
         9o4Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=VbJvsX9LQ4yeEMF+8VjAjloOJ5239y6J93Q/wda6O0U=;
        b=nRdWipxElRU2lrp6uemoBMSzdDrN29QD+8f2eWFCfPf5E7Ixeik072fLsPzBeO8Y7L
         LzHjNkuzHHNhyScv51CFR7F0kE/8SjSI8K8YBsxS7zN8QDsCFb/4IYxkx3UHYXukwVKx
         cM8cliqteN4QFD4blG5rEtJEW/epmRPp3xKaGZAqEFDGtHGKAjtOOGQU5POIi/e2LjrE
         GA5k6gV7v/ISqoaYoh9S9MoZf90uYzY/z3bbMcEBFvlDcRJ8Q6KJCvBlvlkZD/cqXt+m
         PGFcTF9UNuXUSxrNlqzgprPNTnpnNzz7rRDf70BlAc4sTfmYFaYn60ov1HPM5jwCVJFT
         3E1Q==
X-Gm-Message-State: APjAAAW7onOp+bwlCOWqDCvXgfMW1jxawMc3wc/s9i1woeddRpDNGyLy
	SqshFCpr7jtHezwwJYcdgfaN4ic=
X-Received: by 2002:a1c:9e4b:: with SMTP id h72mr4947734wme.76.1551485608165;
        Fri, 01 Mar 2019 16:13:28 -0800 (PST)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc102034-bagu16-2-0-cust471.1-3.cable.virginm.net. [81.97.71.216])
        by smtp.gmail.com with ESMTPSA id z15sm41551608wrh.18.2019.03.01.16.13.27
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Fri, 01 Mar 2019 16:13:27 -0800 (PST)
From: Jules Irenge <jbi.octave@gmail.com>
To: gregkh@linuxfoundation.org
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: mt7621-dma: add SPDX GPL-2.0+ license identifier
Date: Sat,  2 Mar 2019 00:11:14 +0000
Message-Id: <20190302001115.20477-2-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.20.1
In-Reply-To: <20190302001115.20477-1-jbi.octave@gmail.com>
References: <20190302001115.20477-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit

Add SPDX GPL-2.0+ to fix missing SPDX warning
 reported by checkpatch.pl.

Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
---
 drivers/staging/mt7621-dma/mtk-hsdma.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/mt7621-dma/mtk-hsdma.c b/drivers/staging/mt7621-dma/mtk-hsdma.c
index d67a2504adb1..7d69586f23c0 100644
--- a/drivers/staging/mt7621-dma/mtk-hsdma.c
+++ b/drivers/staging/mt7621-dma/mtk-hsdma.c
@@ -1,3 +1,4 @@
+// SPDX-License-Identifier: GPL-2.0-or-later
 /*
  *  Copyright (C) 2015, Michael Lee <igvtee@gmail.com>
  *  MTK HSDMA support
-- 
2.20.1


