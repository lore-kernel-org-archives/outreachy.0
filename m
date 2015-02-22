X-GM-THRID: 2273030701056
X-Received: by 10.194.239.41 with SMTP id vp9mr513945wjc.5.1424569938586;
        Sat, 21 Feb 2015 17:52:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.232 with SMTP id t8ls412267laj.100.gmail; Sat, 21 Feb
 2015 17:52:17 -0800 (PST)
X-Received: by 10.112.64.171 with SMTP id p11mr511098lbs.12.1424569937127;
        Sat, 21 Feb 2015 17:52:17 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wg0-x22f.google.com (mail-wg0-x22f.google.com. [2a00:1450:400c:c00::22f])
        by gmr-mx.google.com with ESMTPS id ew5si406276wid.1.2015.02.21.17.52.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:17 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) client-ip=2a00:1450:400c:c00::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c00::22f as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f47.google.com with SMTP id x12so19586594wgg.6
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:17 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=yB2fDrywyZeIFh50up3s7VY5p15LWQO/K107wVp9GT8=;
        b=iF7kpcvZhsU02xOXkkUzlxrjimOy4VXTTgDNO7WGifzpflhEOsMfSdPbpvIFhgvUNC
         i36zfKnS/nXCge2x8EQqOdVskS59gX0vbt/rIyEM34KMIohrmqigrl87k6wN9zn+0ptM
         B4thy7kxfngBL3nE/RHl6BSsK9iAbXs89FC+X90xYRXTD0jdMU6wiTTJRQIHLGxHJKZ6
         UN200zC1eHNxD73gk58aQ0ZYua2uRH6VOlE3hXj1q1pWerRgVKJX9aJ1Otw3vW0VD7qZ
         TWEMKih8RL+cNqEMsSnQrDs2V6Lr+S+q3av8vy3GUtlbwBPtaJidv+lw1qfRC+4mHr72
         SJpw==
X-Received: by 10.180.84.166 with SMTP id a6mr8151064wiz.4.1424569937047;
        Sat, 21 Feb 2015 17:52:17 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.15
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:16 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 1/7] staging: arch: alpha: boot: Combined seperated strings.
Date: Sun, 22 Feb 2015 03:51:57 +0200
Message-Id: <4d23e942ec6501b30262bbdeff3ff2b753f9e6f6.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

This patch fixes "quoted string split across lines" checkpatch.pl
warning in bootpz.c

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 arch/alpha/boot/bootpz.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/arch/alpha/boot/bootpz.c b/arch/alpha/boot/bootpz.c
index 9a5b15f..0d141bb 100644
--- a/arch/alpha/boot/bootpz.c
+++ b/arch/alpha/boot/bootpz.c
@@ -87,8 +87,7 @@ check_range(unsigned long vstart, unsigned long vend,
 		kaddr = (find_pa(vaddr) | PAGE_OFFSET);
 		if (kaddr >= kstart && kaddr <= kend) {
 #ifdef DEBUG_CHECK_RANGE
-			srm_printk("OVERLAP: vaddr 0x%lx kaddr 0x%lx"
-				   " [0x%lx:0x%lx]\n",
+			srm_printk("OVERLAP: vaddr 0x%lx kaddr 0x%lx [0x%lx:0x%lx]\n",
 				   vaddr, kaddr, kstart, kend);
 #endif
 			return 1;
-- 
1.9.1


