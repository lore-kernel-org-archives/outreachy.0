X-GM-THRID: 6200751875195666432
X-Received: by 10.112.136.99 with SMTP id pz3mr116070lbb.11.1443725050351;
        Thu, 01 Oct 2015 11:44:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.133 with SMTP id hk5ls211101wib.7.canary; Thu, 01 Oct
 2015 11:44:09 -0700 (PDT)
X-Received: by 10.181.29.103 with SMTP id jv7mr78055wid.0.1443725049938;
        Thu, 01 Oct 2015 11:44:09 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id ha7si177993wib.0.2015.10.01.11.44.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 01 Oct 2015 11:44:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fx3so2162073wic.0
        for <outreachy-kernel@googlegroups.com>; Thu, 01 Oct 2015 11:44:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=phv6iCve0mx6N5A794Gjk2qhm0FNur/OAecSZ8SW7qQ=;
        b=OpvH2Shd+Vj6KYjujJgS4+lL0rBNtmLDii1pN2I3LYgrwzobwM8SaQp2IHPJLlp05p
         KInoVX2tcqL0ivRv9aXIK1Tq5xhiJU6jETl4ErKSDcMpDDscdMOIeClFOR2H2j38J/VU
         qQSoNeKD6LLAaCu5QtywKQafRGr4YGO9gP62oOQiX3Dh/bfKAxWj0cQa1+5Qhb3io8cp
         c/oEJ68zT1ktp5iD8xHob0/7J+DJYp8W6fvVACawJ9OwMut+ReGFgjT2X0Y5yC0iLJ2Y
         F+WG6YdukU7bm1fRSUqCs8W9qePg99MoV8yR008hlnMbP6F38Mf0F0I0LPaOUITO7jzp
         snpg==
X-Received: by 10.194.179.231 with SMTP id dj7mr11487341wjc.146.1443725049828;
        Thu, 01 Oct 2015 11:44:09 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([141.85.225.214])
        by smtp.gmail.com with ESMTPSA id pu6sm7453387wjc.34.2015.10.01.11.44.08
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 01 Oct 2015 11:44:09 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: dgnc: Fix indentation warning
Date: Thu,  1 Oct 2015 21:43:57 +0300
Message-Id: <1443725037-47939-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed 'suspect code indent for conditional statements (8, 24)' Warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 12 ++++++------
 1 file changed, 6 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index a629a78..76fe4b2 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -628,13 +628,13 @@ static void cls_param(struct tty_struct *tty)
 	 * we are in hardware flow control mode, or CLOCAL/FORCEDCD is not set.
 	 */
 	if ((ch->ch_digi.digi_flags & CTSPACE) ||
-		(ch->ch_digi.digi_flags & RTSPACE) ||
-		(ch->ch_c_cflag & CRTSCTS) ||
-		!(ch->ch_digi.digi_flags & DIGI_FORCEDCD) ||
-		!(ch->ch_c_cflag & CLOCAL))
-			ier |= UART_IER_MSI;
+	    (ch->ch_digi.digi_flags & RTSPACE) ||
+	    (ch->ch_c_cflag & CRTSCTS) ||
+	    !(ch->ch_digi.digi_flags & DIGI_FORCEDCD) ||
+	    !(ch->ch_c_cflag & CLOCAL))
+		ier |= UART_IER_MSI;
 	else
-			ier &= ~UART_IER_MSI;
+		ier &= ~UART_IER_MSI;
 
 	ier |= UART_IER_THRI;
 
-- 
1.9.1


