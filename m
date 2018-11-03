X-GM-THRID: 6619603219062456320
X-Received: by 2002:a19:519a:: with SMTP id g26-v6mr1207263lfl.2.1541246478943;
        Sat, 03 Nov 2018 05:01:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8245:: with SMTP id j5-v6ls308033ljh.16.gmail; Sat, 03
 Nov 2018 05:01:17 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c0IGuD9ismqzdKTRKPK8bUgmqj57GiSLrTx8pfVaROG+xQ+scNSG53J095x3FHfqVhV0+E
X-Received: by 2002:a2e:a287:: with SMTP id k7-v6mr1364413lja.12.1541246477832;
        Sat, 03 Nov 2018 05:01:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1541246477; cv=none;
        d=google.com; s=arc-20160816;
        b=YEPQ4UUm0enozEyDTHUHJAqn/Ct3X5Ia8DqILQZH9WFINBsE2i7DNI3xQHAQcnyp5I
         AqlK6tZIp2AFnaOCZ0GBs1LKL0ybW6UYQLDsKX4M7DX8RR1XZVOlbvvV2ypQFttGZc/H
         LFlvyMe6hiW4v3YAiEJ4iai5Qwav/E1vaBsKBO3EvWEamZiR9X4GqDMgHiOHx+zFc3pJ
         3kWGnb6U4lR+OgM8EObMRAJOYg++M6GkAJeDk5NL+fC7ovJixfAz02s6RPpWWCwVy+cR
         E3e7xNHBd2Vhu5HEZejju8Sl5IYKcI37tC0Nl1e91+VlAnFhLDjn6R65vq7Mjqlymj4r
         Xsgw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=gEjKghhG8klE037gdRJQVXHDEby0Ln1kigR9y3q4Zec=;
        b=iTyzWh/gIszAHbXlbk697Fl2KlV/7WYwe1grlE/pjSa+s26KOFe6CIGteLwpQBJY80
         AVMKQSGdvhFMhesrhJ3XfGkES5BuaO4ZBB43fPHHqRrFHyF0HqMIW1F6MR5MQAKxG3Kw
         kslebqH1S+NMKZgnY9lYtXvKJ570NvtP3n3MUp7k9KZDdakxTrOvaPenrjIPhFqZ484K
         Ytr0kgSnUka2xckM1f++S13h2Epf+N3MxmTEa5gOe50R7WcSaVYnFNkM5FTyk46xHywi
         9F5mLZN8m9K53hRtVOvRaGwCjKMZqAJNPZdpv75R6LYeRYLIF8ww3pxRVQlL3ua1hEuP
         P8hQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gmJgEotQ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbi.octave@gmail.com>
Received: from mail-wr1-x431.google.com (mail-wr1-x431.google.com. [2a00:1450:4864:20::431])
        by gmr-mx.google.com with ESMTPS id 73-v6si959635ljc.5.2018.11.03.05.01.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Nov 2018 05:01:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) client-ip=2a00:1450:4864:20::431;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=gmJgEotQ;
       spf=pass (google.com: domain of jbi.octave@gmail.com designates 2a00:1450:4864:20::431 as permitted sender) smtp.mailfrom=jbi.octave@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x431.google.com with SMTP id x12-v6so4520231wrw.8
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Nov 2018 05:01:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=gEjKghhG8klE037gdRJQVXHDEby0Ln1kigR9y3q4Zec=;
        b=gmJgEotQucWErzPfE8I1/cqhwrwg2AsBYNnM+CGoYpRHbVBkd5lXPlhEZruhiBk+jk
         92z1PpX7a2nS3416Cp6NAkECbcXaSB8TFnRzaQU64uwabelrZVuS+dwfwE7EHyVVLzdi
         rB6pt7g5LFzMxSq9qtkEfXFXgoqrI0W8RnXhhAcyyr2keSFSMwWiEwv5sWmado+VQ3cJ
         0XIF3hmWu4L+0/kENPoViLnyO4nvTYyHE+bBiuYoPT71+M9HqZfuGpiVmwfLyBlCgD4G
         bfBlm+Oop3t3b1W8jJWkRjAfkUfLtq/iG04rxSzcgTiVSlyY9HFb7KkA59UC1Zi7cscv
         NLTg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=gEjKghhG8klE037gdRJQVXHDEby0Ln1kigR9y3q4Zec=;
        b=rOrN505FoPXdAyWQZBfGmT7NyFDnZZmUSn2HP96BT9FWA0IDM6i7aWgKQ+AXFFgcpB
         pFzFM0Q1KfyfBrqiIDyAvkJEYON42i4TIwerI6JnfB9NZDSsTNPIilcToaT6IAUlt9/k
         PseGRe44XsUF8rhRui7hgyIQHPWQcxT+S1Xr5k5iniNE2UX3hoyFzrKL6r3pZfUtpxS/
         kSVsMO7PVkxqNttm7miHTo5kFFTuHBfdhSJOxLVOCMXPCRlrgM/39vNCGDfMayf3EF9F
         G7eXxVAxo1XmlF3dgnllcFPduhYTWnn5S5AbrJI5y52nRI6IqB2U+w+erdLpnmQzSGo+
         NKwA==
X-Gm-Message-State: AGRZ1gKXjBVnxm/sTDSa3q8n5S0gZwhNu5I6igX8XSy4sHcwZwBWm/lj
	7Ew9IBswUvJKBQUAkIxi3ps0rkA=
X-Received: by 2002:adf:e7c6:: with SMTP id e6-v6mr5292871wrn.49.1541246477217;
        Sat, 03 Nov 2018 05:01:17 -0700 (PDT)
Return-Path: <jbi.octave@gmail.com>
Received: from localhost.localdomain (cpc114784-brad22-2-0-cust310.17-1.cable.virginm.net. [92.239.7.55])
        by smtp.googlemail.com with ESMTPSA id i204-v6sm46639714wmd.28.2018.11.03.05.01.16
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sat, 03 Nov 2018 05:01:16 -0700 (PDT)
From: Irenge Jules Bashizi <jbi.octave@gmail.com>
To: mchehab@kernel.org
Cc: gregkh@linuxfoundation.org,
	outreachy-kernel@googlegroups.com,
	jules.octave@outlook.com
Subject: [PATCH] staging:dm365_ipipe:Add SPDX License Identifier
Date: Sat,  3 Nov 2018 12:01:09 +0000
Message-Id: <20181103120109.780-1-jbi.octave@gmail.com>
X-Mailer: git-send-email 2.17.2

Add SPDX license Identifier to fix checkpatch malformed license warning

Remove old style text describing the License

Signed-off-by: Irenge Jules Bashizi <jbi.octave@gmail.com>
---
 .../staging/media/davinci_vpfe/dm365_ipipe.c  | 31 ++++++-------------
 1 file changed, 9 insertions(+), 22 deletions(-)

diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
index dcfeac818451..20bd6d652931 100644
--- a/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
+++ b/drivers/staging/media/davinci_vpfe/dm365_ipipe.c
@@ -1,29 +1,16 @@
+// SPDX-License-Identifier: GPL-2.0
+
 /*
- * Copyright (C) 2012 Texas Instruments Inc
- *
- * This program is free software; you can redistribute it and/or
- * modify it under the terms of the GNU General Public License as
- * published by the Free Software Foundation version 2.
- *
- * This program is distributed in the hope that it will be useful,
- * but WITHOUT ANY WARRANTY; without even the implied warranty of
- * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
- * GNU General Public License for more details.
- *
- * You should have received a copy of the GNU General Public License
- * along with this program; if not, write to the Free Software
- * Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307 USA
- *
- * Contributors:
- *      Manjunath Hadli <manjunath.hadli@ti.com>
- *      Prabhakar Lad <prabhakar.lad@ti.com>
  *
  *
- * IPIPE allows fine tuning of the input image using different
- * tuning modules in IPIPE. Some examples :- Noise filter, Defect
- * pixel correction etc. It essentially operate on Bayer Raw data
- * or YUV raw data. To do image tuning, application call,
+ *	IPIPE allows fine tuning of the input image using different
+ *	tuning modules in IPIPE. Some examples :- Noise filter, Defect
+ *	pixel correction etc. It essentially operate on Bayer Raw data
+ *	or YUV raw data. To do image tuning, application call,
  *
+ *	Contributors:
+ *		Manjunath Hadli <manjunath.hadli@ti.com>
+ *		Prabhakar Lad <prabhakar.lad@ti.com>
  */
 
 #include <linux/slab.h>
-- 
2.17.2


