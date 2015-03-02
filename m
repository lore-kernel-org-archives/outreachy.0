X-GM-THRID: 6035575144448
X-Received: by 10.194.11.70 with SMTP id o6mr4021466wjb.6.1425321869096;
        Mon, 02 Mar 2015 10:44:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.187.106 with SMTP id fr10ls615114wic.8.canary; Mon, 02 Mar
 2015 10:44:28 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr2419556wib.4.1425321868739;
        Mon, 02 Mar 2015 10:44:28 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id ta1si720319wic.1.2015.03.02.10.44.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:44:28 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x232.google.com with SMTP id bs8so17225637wib.0
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 10:44:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=tLMKuHoARfIBpWhR0RT95kgKifFNmSQYCUSdz71FXZc=;
        b=zaqcw0ol8M3icARBlQ+zHiYMJb/Mnd97IjSKxYyvpscagKoPYaR7qUi5D60ou2bJsw
         xobzSDXvhsU0nYcQ2LtE2EgA20XN4t/ZGHqI42MYi9VCSukPraG/pt4lIoPcet93rO+q
         DbDGeCyZROgmXAqNzWY35eC4l1jiY1F51CFXTxMBOXl67Yt6zFdz2fNK3Mw3zMh205wA
         iQjdHFZUf47wHbzPuohkUYVE83LUg/Kuhqjwqwu5Yo5H/OqW6iTnYPfQ1V7xR/9t26pj
         MPyU4R3YsnJ61nk5vZgMLtS136APOMKOArhykIwT4REQb+hRK5b42NO8SQiVKZudddco
         d2fw==
X-Received: by 10.180.85.103 with SMTP id g7mr37608328wiz.19.1425321868637;
        Mon, 02 Mar 2015 10:44:28 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id l6sm2070302wjx.33.2015.03.02.10.44.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 10:44:27 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id C6CC9621FB; Mon,  2 Mar 2015 21:44:24 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v10 3/4] Staging: emxx_udc: Remove custom printk macro ERR
Date: Mon,  2 Mar 2015 21:38:22 +0300
Message-Id: <1425321502-29424-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>
References: <1425320718-28979-1-git-send-email-hamohammed.sa@gmail.com>

This patch removes custom printk macro ERR.
All the calls to this macro were replaced by de_err and pr_err.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
v9 and 10: nothing

 drivers/staging/emxx_udc/emxx_udc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index 57727c6..c19168f 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -642,6 +642,5 @@ union usb_reg_access {
 };
 
 /*-------------------------------------------------------------------------*/
-#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
 
 #endif  /* _LINUX_EMXX_H */
-- 
1.9.1


