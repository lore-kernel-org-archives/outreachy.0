X-GM-THRID: 6200413753544015872
X-Received: by 10.194.109.233 with SMTP id hv9mr867044wjb.1.1443646325432;
        Wed, 30 Sep 2015 13:52:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.101.196 with SMTP id fi4ls3138wib.41.canary; Wed, 30 Sep
 2015 13:52:04 -0700 (PDT)
X-Received: by 10.195.12.234 with SMTP id et10mr869111wjd.2.1443646324801;
        Wed, 30 Sep 2015 13:52:04 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id c1si76795wiv.3.2015.09.30.13.52.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Sep 2015 13:52:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id gb1so794257wic.1
        for <outreachy-kernel@googlegroups.com>; Wed, 30 Sep 2015 13:52:04 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=RW7gNld24fmyishoHTAW9c6LSYYwpH1x3wD+BemaGME=;
        b=dsF4MGqW+5H9jaxalF/lPKP+4+5Pn7WaK+uXBfljLMS2TKXLPVjruM76QE03yA0okJ
         l8drhgZhz/O/Mvc0l7w8cx0bfpyHMe1NudUGrtJXFhrhYlFm+q0wuAwVmKzvl5x7I9Ct
         KGDCTZEV61o3uAtFs3UtEvP/yVZ3xIyjry+RBKnzrA3e6eSgXXRJRkvEekJ0EiZHSDRD
         Gx5B5fdW7IyjaUAsznDXmZLsiKDWaqe3eLBqo8Yunz9560H88E64YlkUyYc3/r4f4wnX
         QQkMQuQiFkGjCRtnbiD3eUvuzu7jFGCF0FfecIDFCIwM/ol5cXnbXEgKFFu9fV06ZwXs
         nsrg==
X-Received: by 10.180.184.201 with SMTP id ew9mr7550410wic.53.1443646324666;
        Wed, 30 Sep 2015 13:52:04 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.104.94])
        by smtp.gmail.com with ESMTPSA id ly4sm2540343wjb.4.2015.09.30.13.52.03
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 30 Sep 2015 13:52:04 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging:dgnc: Fixed indentation warning
Date: Wed, 30 Sep 2015 23:51:32 +0300
Message-Id: <1443646292-46803-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Fixed 'suspect code indent for conditional statements (8, 24)' Warning

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/dgnc/dgnc_cls.c | 13 +++++++------
 1 file changed, 7 insertions(+), 6 deletions(-)

diff --git a/drivers/staging/dgnc/dgnc_cls.c b/drivers/staging/dgnc/dgnc_cls.c
index a629a78..9159e8e 100644
--- a/drivers/staging/dgnc/dgnc_cls.c
+++ b/drivers/staging/dgnc/dgnc_cls.c
@@ -628,13 +628,14 @@ static void cls_param(struct tty_struct *tty)
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
+
+		ier |= UART_IER_MSI;
 	else
-			ier &= ~UART_IER_MSI;
+		ier &= ~UART_IER_MSI;
 
 	ier |= UART_IER_THRI;
 
-- 
1.9.1


