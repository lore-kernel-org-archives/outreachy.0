X-GM-THRID: 6673442126229929984
X-Received: by 2002:a37:4c52:: with SMTP id z79mr4934478qka.42.1553965941404;
        Sat, 30 Mar 2019 10:12:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ade3:: with SMTP id x32ls1116620qvc.1.gmail; Sat, 30 Mar
 2019 10:12:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzd/xBJCYAsXEw2y8kcOdc7mTE1KgcyzKdtYAUjKqe0COutROxudGxcCwe5TXR3r1y2cE0Y
X-Received: by 2002:a0c:c491:: with SMTP id u17mr5345637qvi.30.1553965940850;
        Sat, 30 Mar 2019 10:12:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553965940; cv=none;
        d=google.com; s=arc-20160816;
        b=W9Dn1iQfWrXqbtaIwR5tcLAgpQgFyM8x8rGLP3LCGVu2V4mwwfaIZUJ9GoPetZIdGN
         7DGKyl3jggZgDvBKqTbVaGrNe2bHFIIV2oVp7atL0UudKjv/0DaScDdb0yvHhy9O4Ak2
         C9DydOS43YFjlE6+W74dnp2t6YnB4wrUC5dMjU98acV9i1PJyKAlPA1IZnMmyS/A+zFi
         w5oTKeUC4wdV0Zxlz9uVkqgoyydYs/s40MpulSP7iq0PSkIgVlZrg+o0lXavgqUeed8u
         j7dYRFyf1UAkfSEm4CfGGM32WqqINrDRI3eWMGIId7czfPAP2k/XEJRGu9kS6OEZaUo3
         3d6Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=references:in-reply-to:references:in-reply-to:message-id:date
         :subject:cc:to:from:dkim-signature;
        bh=yHaFKMdI3pjCDSW3H8Gp98e5rwKeV0dUSP4vzy/Gnt8=;
        b=sbzR2xor7HK2bM4E7yHtiWpEb0aPFdnmPTqil/Rvl1pulUcdUhYJy+vl++tjEvnHSM
         5KllisVfuqG08wMAr0AEGWIWN71PaVRG0JNnK+z+d+vNL/eTSDfLlGA8UpOgirD1yVTN
         SfRsYcoOqycteZFYmQ1N6rNu5C4l5JISS9l/ojj+i56naiCg7OQepogNdrB7phy3X8dH
         e+jD4Tz/A3S8+gaPxsjO4cJ0rQChCYf6niGwANGZQsKs1u/EmVVeuW/HtwnPPWSe7bAs
         8ucrExzZA5LUuqsl3yv+AwvW94NhUDYbZU73KMEzjbfOPGBiX/FndarKdblvhmGQUosk
         s5+g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tRQxgufF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from mail-pf1-x442.google.com (mail-pf1-x442.google.com. [2607:f8b0:4864:20::442])
        by gmr-mx.google.com with ESMTPS id a5si280566qkb.2.2019.03.30.10.12.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 10:12:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) client-ip=2607:f8b0:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=tRQxgufF;
       spf=pass (google.com: domain of payal.s.kshirsagar.98@gmail.com designates 2607:f8b0:4864:20::442 as permitted sender) smtp.mailfrom=payal.s.kshirsagar.98@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x442.google.com with SMTP id i17so2504631pfo.6
        for <outreachy-kernel@googlegroups.com>; Sat, 30 Mar 2019 10:12:20 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yHaFKMdI3pjCDSW3H8Gp98e5rwKeV0dUSP4vzy/Gnt8=;
        b=tRQxgufFMrK1IulJuFGjPXivUWuYkCuhDVse3TcBqLdti2OYbqQ30oVzFL8Ct+oD0C
         xKAl5chyyHCA/Z61IG/3IE0dQ6BjiCr4MxJnM8BUSd+fXtZ0x4pGR24ZWvvx6Mo+x5fq
         ujrsOfI/CgHi2iop6x/V+WX1tvK57n4qzwiohMELUBwWlfqLY7N2+03VsxtqYXvc7jIz
         FEdZ66J8WB2c9xcRIv7yyLT9sHNv82h75mwrxunZVb20YrTdf10ePKltIh85D8WWS0zs
         kEM+o8ki5+dpr7Pcw4jEooc3Wfw7CSnPsH/SJ+lh3nCMikKXViUY5aqZL9SJMY4IDXnR
         IUMQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:in-reply-to:references;
        bh=yHaFKMdI3pjCDSW3H8Gp98e5rwKeV0dUSP4vzy/Gnt8=;
        b=M0oDc5BxWuxG6mBHsv+yED45CgEg9hpuWjRHTcHyzDHRa5ejb1JDxWbBQsNdR5D6Jz
         PLya3mpm9TMWUA9XcHLEXvcwPTf0xeuZJcy+zV02joaUlvHbiSz5sFkHHD9VuOm5IRKw
         y4KC5occpV7OFBE8Qu/wZ14Hln/u4NyU9/2TLwssEWBtS1lxkxGECWPxTNrIa0MWgcHM
         WCvQPcgLKMZBFgWCuxQ00WLC3EgKhuhIPEk7qpnJaCBaY7vW6F/NyTB7dmguZLgTtgTq
         AtTSBcVGjDAvtMq5h9qbIXNX8o0+Ap3/E7I2MERRGVRlRC2Gm2cx01yAWmPgLXfIixky
         gchA==
X-Gm-Message-State: APjAAAUyblBN4k3YdmBWwMjtUftJWkrcI7T7vJKJtdYppJavX5qn1TSm
	BMbG/aTjd+0ODp4dtR/dwsPYXPyC
X-Received: by 2002:a62:6383:: with SMTP id x125mr52195500pfb.239.1553965939751;
        Sat, 30 Mar 2019 10:12:19 -0700 (PDT)
Return-Path: <payal.s.kshirsagar.98@gmail.com>
Received: from localhost.localdomain ([157.33.140.226])
        by smtp.gmail.com with ESMTPSA id j4sm7539607pfn.132.2019.03.30.10.12.16
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 30 Mar 2019 10:12:19 -0700 (PDT)
From: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
Subject: [Outreachy kernel] [PATCH v3 1/9] staging: rtl8723bs: hal: sdio_ops.c: Remove unnecessary parentheses
Date: Sat, 30 Mar 2019 22:41:48 +0530
Message-Id: <3edb3e5edc4afff83a6106488888d7c2cc636870.1553964404.git.payal.s.kshirsagar.98@gmail.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
In-Reply-To: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>
References: <cover.1553964403.git.payal.s.kshirsagar.98@gmail.com>

Challenge suggested by coccinelle.
Remove unnecessary parentheses around expressions.

Signed-off-by: Payal Kshirsagar <payal.s.kshirsagar.98@gmail.com>
---
 drivers/staging/rtl8723bs/hal/sdio_ops.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/rtl8723bs/hal/sdio_ops.c b/drivers/staging/rtl8723bs/hal/sdio_ops.c
index 3fee344..f5f7f36 100644
--- a/drivers/staging/rtl8723bs/hal/sdio_ops.c
+++ b/drivers/staging/rtl8723bs/hal/sdio_ops.c
@@ -560,7 +560,7 @@ static s32 _sdio_local_read(
 	n = RND4(cnt);
 	tmpbuf = rtw_malloc(n);
 	if (!tmpbuf)
-		return (-1);
+		return -1;
 
 	err = _sd_read(intfhdl, addr, n, tmpbuf);
 	if (!err)
@@ -601,7 +601,7 @@ s32 sdio_local_read(
 	n = RND4(cnt);
 	tmpbuf = rtw_malloc(n);
 	if (!tmpbuf)
-		return (-1);
+		return -1;
 
 	err = sd_read(intfhdl, addr, n, tmpbuf);
 	if (!err)
@@ -646,7 +646,7 @@ s32 sdio_local_write(
 
 	tmpbuf = rtw_malloc(cnt);
 	if (!tmpbuf)
-		return (-1);
+		return -1;
 
 	memcpy(tmpbuf, buf, cnt);
 
-- 
2.7.4


