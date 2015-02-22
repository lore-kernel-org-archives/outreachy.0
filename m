X-GM-THRID: 2273030701056
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,1bc0e2b2eb529af1
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.64.171 with SMTP id p11mr511104lbs.12.1424569938681;
        Sat, 21 Feb 2015 17:52:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.95.199 with SMTP id dm7ls331375wib.49.gmail; Sat, 21 Feb
 2015 17:52:18 -0800 (PST)
X-Received: by 10.180.104.101 with SMTP id gd5mr477043wib.6.1424569938518;
        Sat, 21 Feb 2015 17:52:18 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from mail-we0-x232.google.com (mail-we0-x232.google.com. [2a00:1450:400c:c03::232])
        by gmr-mx.google.com with ESMTPS id el6si402496wib.2.2015.02.21.17.52.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 17:52:18 -0800 (PST)
Received-SPF: pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) client-ip=2a00:1450:400c:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gulsah.1004@gmail.com designates 2a00:1450:400c:c03::232 as permitted sender) smtp.mail=gulsah.1004@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesx3 with SMTP id x3so11964214wes.7
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 17:52:18 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :in-reply-to:references;
        bh=pCvs+P4MAkDNJboI4MprXxACjHRUWLNXcdqOCdWt8w0=;
        b=tN09LmGzHmgFMnyeTX6eoNgCDN/WywYp3O4CJ4wuHnGkGhdJive0nLyiTDYUK3ZMUg
         WYGcZaUNan4rcK39K8TW1GRjrDwFx9kkvTMhHfwtu2OAc4SpOBCsNZe11BZ0z1hhEtzh
         y65sYp6f86P3S5z14aV77Hh/Jj5lT0fPqY2t+gpldmxfe5QChzFMrgwBfCOi/4MkKHW9
         pAN6tBpfsmFu4F7IS/kw1jzu0D85BNO6pgjFyV3vqRvi3BQ8y7lIt5v1WRpz1UwpqL7R
         7R1YNRA0jjfwJcEoI6etCTC/66TvM0uqrAorYnk77jbvkWMZTwv9mbgWH0+htMutPDOf
         1Hlg==
X-Received: by 10.180.212.8 with SMTP id ng8mr8240314wic.18.1424569938449;
        Sat, 21 Feb 2015 17:52:18 -0800 (PST)
Return-Path: <gulsah.1004@gmail.com>
Received: from diyorki.kykwifi.com ([81.213.40.143])
        by mx.google.com with ESMTPSA id dm6sm9227136wib.22.2015.02.21.17.52.17
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 21 Feb 2015 17:52:17 -0800 (PST)
From: Gulsah Kose <gulsah.1004@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Gulsah Kose <gulsah.1004@gmail.com>
Subject: [PATCH 2/7] staging: ft1000: ft1000-pcmcia: Used "linux" instead of "asm".
Date: Sun, 22 Feb 2015 03:51:58 +0200
Message-Id: <05bf8f78a414fb666c44db4620fac95a1e1e925b.1424569663.git.gulsah.1004@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>
In-Reply-To: <cover.1424569663.git.gulsah.1004@gmail.com>
References: <cover.1424569663.git.gulsah.1004@gmail.com>

Used "linux" instead of "asm" and removed following checkpatch.pl warning:
WARNING: Use #include <linux/io.h> instead of <asm/io.h>

Signed-off-by: Gulsah Kose <gulsah.1004@gmail.com>
---
 drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
index 017c3b9..5358dac 100644
--- a/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
+++ b/drivers/staging/ft1000/ft1000-pcmcia/ft1000_hw.c
@@ -28,7 +28,7 @@
 #include <linux/timer.h>
 #include <linux/interrupt.h>
 #include <linux/in.h>
-#include <asm/io.h>
+#include <linux/io.h>
 #include <asm/bitops.h>
 
 #include <linux/netdevice.h>
-- 
1.9.1


