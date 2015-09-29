X-GM-THRID: 6200054151412449280
X-Received: by 10.112.149.39 with SMTP id tx7mr23820lbb.11.1443562598205;
        Tue, 29 Sep 2015 14:36:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.90.68 with SMTP id o65ls5095lfb.4.gmail; Tue, 29 Sep 2015
 14:36:37 -0700 (PDT)
X-Received: by 10.152.20.195 with SMTP id p3mr26272lae.5.1443562597401;
        Tue, 29 Sep 2015 14:36:37 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id k7si897220wif.1.2015.09.29.14.36.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 14:36:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id fx3so169902649wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 14:36:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=9CdSFAIUefeqHlu6s88qmaT9wQjdBv5Sefl6S1GTUIw=;
        b=qWsPO/SqTUCmLZub8KXtB0Lx6mIJLs3HWv4Uzv2WEBPldiub21BMlUJ/Sj+6V/4+8n
         RxC/HswjFvvgMgvLFrcsO+rElG1MvPnCY3f4yxlLb+V0cWxCW/+GNTZjJUVzEU7Sw8zO
         78kqkaaWzxpkrYgqjR32kC/kdggkShoOOfWdbs6ajAB5GUup4pFCqM6rZsAFToTqsa5j
         +PFFULyo3p9/eAJJsDijBBTASeG4uJJEC5MWitsiKHim97Kl/ZIA+NegI30nIRR4kFVV
         32mpRKoQjqS9379TarK+wnE8ljSPVCT+GsJCTWxaLDiWixKgTWjrEifSz+FCCulrfi5P
         iuxg==
X-Received: by 10.194.113.131 with SMTP id iy3mr248355wjb.152.1443562597296;
        Tue, 29 Sep 2015 14:36:37 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.234])
        by smtp.gmail.com with ESMTPSA id kr10sm25934310wjc.25.2015.09.29.14.36.36
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 29 Sep 2015 14:36:36 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging:dgnc: Fixed checkpatch warning
Date: Tue, 29 Sep 2015 14:36:08 -0700
Message-Id: <1443562568-42880-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed 'suspect code indent for conditional statements (8, 24)' Warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 5 +++--
 1 file changed, 3 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index a629a78..a2cfe35 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -632,9 +632,10 @@ static void cls_param(struct tty_struct *tty)
 		(ch->ch_c_cflag & CRTSCTS) ||
 		!(ch->ch_digi.digi_flags & DIGI_FORCEDCD) ||
 		!(ch->ch_c_cflag & CLOCAL))
-			ier |= UART_IER_MSI;
+
+		ier |= UART_IER_MSI;
 	else
-			ier &= ~UART_IER_MSI;
+		ier &= ~UART_IER_MSI;
 
 	ier |= UART_IER_THRI;
 
-- 
1.9.1


