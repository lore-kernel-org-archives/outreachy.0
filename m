X-GM-THRID: 2118621593600
X-Received: by 10.112.35.135 with SMTP id h7mr427999lbj.23.1424551258792;
        Sat, 21 Feb 2015 12:40:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.234.232 with SMTP id uh8ls404532lac.82.gmail; Sat, 21 Feb
 2015 12:40:58 -0800 (PST)
X-Received: by 10.152.6.232 with SMTP id e8mr440883laa.2.1424551258341;
        Sat, 21 Feb 2015 12:40:58 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id ev8si361218wib.3.2015.02.21.12.40.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 12:40:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id em10so9490234wid.1
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 12:40:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=1Hngu2k8C83k3XoC8u0ebDGZ55z56+QSPU3CtkYw3Wk=;
        b=sN8fok0CIthx/a2Nr4XMparxJt7G3vcHqvxLH3UAOH7iy7MNk9dNA6asylVO32wg3V
         B+U66TZV93Ma4UlOcrux6rbWNcaNHGfcyiO/PqjFVBEhMEbrW03aCom+Qqz1ZJI6GSD/
         z5fYDPqbfNNIvPunBUsd/CGJk15UUv6pSX97/OtrQY34CJ9FmlVgNWogovv8rOZlaNOH
         cZ71pE1LVCwBnB+ziVkRVUGBsx1J7sfkylk7F4KCOoxaedPrTQJOkS5Pu4AuS5oCjtxY
         lGCbKPzcx06IXs+tknKBSHF8QqXyCjoe3/HRVJvE96mSQYd6QNFKj6JxhgcIqRJwc27N
         ksag==
X-Received: by 10.181.13.14 with SMTP id eu14mr6844305wid.2.1424551258251;
        Sat, 21 Feb 2015 12:40:58 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id gz3sm8416433wib.1.2015.02.21.12.40.55
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 12:40:57 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 2/4] staging: arch: alpha: boot: Added missing space before "*"
Date: Sat, 21 Feb 2015 22:40:36 +0200
Message-Id: <0c856fb049aabf55a317308210df23d3e90b87cc.1424551058.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424551058.git.gulsah.1004@gmail.com>
References: <cover.1424551058.git.gulsah.1004@gmail.com>

This patch fixes "(foo*)" should be "(foo *)" checkpatch.pl errors in bootp.c

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 arch/alpha/boot/bootp.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/arch/alpha/boot/bootp.c b/arch/alpha/boot/bootp.c
index 3ee529d..27807f5 100644
--- a/arch/alpha/boot/bootp.c
+++ b/arch/alpha/boot/bootp.c
@@ -203,8 +203,8 @@ start_kernel(void)
         load(START_ADDR+(4*KERNEL_SIZE), KERNEL_ORIGIN, KERNEL_SIZE);
         load(START_ADDR, START_ADDR+(4*KERNEL_SIZE), KERNEL_SIZE);
 
-	memset((char*)ZERO_PGE, 0, PAGE_SIZE);
-	strcpy((char*)ZERO_PGE, envval);
+	memset((char *)ZERO_PGE, 0, PAGE_SIZE);
+	strcpy((char *)ZERO_PGE, envval);
 #ifdef INITRD_IMAGE_SIZE
 	((long *)(ZERO_PGE+256))[0] = initrd_start;
 	((long *)(ZERO_PGE+256))[1] = INITRD_IMAGE_SIZE;
-- 
1.9.1


