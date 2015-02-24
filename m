X-GM-THRID: 2067485687808
X-Received: by 10.180.83.168 with SMTP id r8mr1676680wiy.6.1424788752755;
        Tue, 24 Feb 2015 06:39:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.75 with SMTP id da11ls627960lad.95.gmail; Tue, 24 Feb
 2015 06:39:11 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr2250955lbw.4.1424788751299;
        Tue, 24 Feb 2015 06:39:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x243.google.com (mail-we0-x243.google.com. [2a00:1450:400c:c03::243])
        by gmr-mx.google.com with ESMTPS id i7si926964wif.0.2015.02.24.06.39.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:39:11 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) client-ip=2a00:1450:400c:c03::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::243 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesq59 with SMTP id q59so8654038wes.0
        for <outreachy-kernel@googlegroups.com>; Tue, 24 Feb 2015 06:39:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lq1RTzCYZ5yc/Etpujvk2WQdvbVw6HeMKrJaCDU2Spo=;
        b=lz5uz8rISIfKuLHAuuY7d7WT4T9oqwj+a0/AHPV/Mr08DfB/DoNlXrkwtEq4xlG1wL
         lQEbH2dIRohWOumVd/lAePgdNLnbCnd/5HJC7jWmrQDoNGvKv+tmP3tBuvXkTshA56Ds
         bl9wc+iMbmKbw/SeEC/aclnCYR71ml58gLfHA1Gf1V8uKOcNhYvG4vQoIODySB87PqSj
         7lfEMz3TRdrS5jLeF2P57pSOwt6m/T+n8pIvecYRSfPH7+hoeh/5jGzRPyOxaegauEKd
         h1WwwJZcxxcgWsf30IIO44T2PKas/jP+epUT8T9KYF9xHbHaOyJdpwzgpDvucLhKnF5S
         mhmw==
X-Received: by 10.194.61.65 with SMTP id n1mr33543160wjr.53.1424788751102;
        Tue, 24 Feb 2015 06:39:11 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.54.205])
        by mx.google.com with ESMTPSA id 18sm60515222wjr.46.2015.02.24.06.39.09
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 24 Feb 2015 06:39:10 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 628FE63386; Tue, 24 Feb 2015 17:39:06 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v5 5/6] Staging: emxx_udc: Remove custom printk macro ERR
Date: Tue, 24 Feb 2015 17:39:05 +0300
Message-Id: <71edf82f5ba89c29d3021c60f392d0b5b2700766.1424786861.git.hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1424786861.git.hamohammed.sa@gmail.com>
References: <cover.1424786861.git.hamohammed.sa@gmail.com>

This patch removes custom printk macro ERR.
All the calls to this macro were replaced by de_err and pr_err.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v5: Fix spelling mistake

 drivers/staging/emxx_udc/emxx_udc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 7b2fcb6..c6cdde4 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -644,6 +644,5 @@ union usb_reg_access {
 };
 
 /*-------------------------------------------------------------------------*/
-#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
 
 #endif  /* _LINUX_EMXX_H */
-- 
1.9.1


