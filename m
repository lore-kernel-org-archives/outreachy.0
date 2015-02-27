X-GM-THRID: 4349090594816
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,8f6db519be982188
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.1.5 with SMTP id 5mr1953380lai.4.1425033274165;
        Fri, 27 Feb 2015 02:34:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.114 with SMTP id r18ls91555wiw.22.gmail; Fri, 27 Feb
 2015 02:34:32 -0800 (PST)
X-Received: by 10.194.178.234 with SMTP id db10mr1947354wjc.2.1425033272867;
        Fri, 27 Feb 2015 02:34:32 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id el6si88996wib.2.2015.02.27.02.34.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:34:32 -0800 (PST)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so19142139wes.5
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:34:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=mIbHDUpuDDpfAIxo0yQ7dM1DEWnh7xPfJrl2+F8Tjgc=;
        b=Xd7qGRDQ8qRAqMDKKSc+cbViM7NUiX54w8s2PqI2l1L0Lw46jcfaHY1NnHPW/4PeHq
         QzWXsJOnL/1hbeT/B1i8cyBdtejBe6vcj2BIx+ftHS7eltVLdMj/8ixGK2QxE3Fy+erY
         jGv8b/d+dcS5U0feUMqZ6GqRpHgP4D2Wx6/RQzRi4pNI8ZKKfHTMyDx97VnUcjzC7VUb
         XSGEdgDWh1dzPd/DVN1SH7MB+JaFp2yvr++gJ93Lb2HH3UBKDgLu8T5wektw0rn2H7FG
         YrlxKa4LvgNmkrfsF6nqsRnzTZ3urlHdHrsz+ML5M8gMPRorgVInpPrOO+8+8upfzmMt
         cZxQ==
X-Received: by 10.180.21.174 with SMTP id w14mr5112020wie.86.1425033272745;
        Fri, 27 Feb 2015 02:34:32 -0800 (PST)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneensa-VirtualBox ([79.170.55.43])
        by mx.google.com with ESMTPSA id uo6sm5283792wjc.49.2015.02.27.02.34.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:34:32 -0800 (PST)
Received: by haneensa-VirtualBox (Postfix, from userid 1000)
	id 164236337C; Fri, 27 Feb 2015 13:34:31 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH v8 4/5] Staging: emxx_udc: Remove custom printk macro ERR
Date: Fri, 27 Feb 2015 13:34:29 +0300
Message-Id: <1425033269-20879-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1425030785.git.hamohammed.sa@gmail.com>
References: <cover.1425030785.git.hamohammed.sa@gmail.com>

This patch removes custom printk macro ERR.
All the calls to this macro were replaced by de_err and pr_err.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/emxx_udc/emxx_udc.h | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/emxx_udc/emxx_udc.h b/drivers/staging/emxx_udc/emxx_udc.h
index c21f211..f4a94c3 100644
--- a/drivers/staging/emxx_udc/emxx_udc.h
+++ b/drivers/staging/emxx_udc/emxx_udc.h
@@ -643,6 +643,5 @@ union usb_reg_access {
 };
 
 /*-------------------------------------------------------------------------*/
-#define ERR(stuff...)		printk(KERN_ERR "udc: " stuff)
 
 #endif  /* _LINUX_EMXX_H */
-- 
1.9.1


