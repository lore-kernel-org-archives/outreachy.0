X-GM-THRID: 10154202365952
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,f7533a48a2646e96,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.210.132 with SMTP id mu4mr345325wic.5.1427504310909;
        Fri, 27 Mar 2015 17:58:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.20.8 with SMTP id j8ls456006lae.7.gmail; Fri, 27 Mar 2015
 17:58:30 -0700 (PDT)
X-Received: by 10.112.202.227 with SMTP id kl3mr5357318lbc.2.1427504310108;
        Fri, 27 Mar 2015 17:58:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wg0-x235.google.com (mail-wg0-x235.google.com. [2a00:1450:400c:c00::235])
        by gmr-mx.google.com with ESMTPS id bz6si221628wib.3.2015.03.27.17.58.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Mar 2015 17:58:30 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) client-ip=2a00:1450:400c:c00::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c00::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wgdm6 with SMTP id m6so116008778wgd.2
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Mar 2015 17:58:30 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=tj9+AWDCiEfNXlVMjcUxSXbZTGUGvKu4jgEdmplRfto=;
        b=Q8plNXvUOFACGOUrMcXZUesikFAC3qfyY0Xl3q2KhBgJwz3juxwloz3OMIq6dW7j47
         Sm+UcR2Cc31LDziIBts2npHKuRGfSG2Y0DVrNkYpN5zPZ3KPMPRMKxwtBwRNroLVsOhG
         3JdaWAWGNIQM7TU1A8m87Q2PcjFHe8IJRKJQ9x5qyGNRMtQ09/UIA131fNFgLCAYYAtk
         wKw40MRx7ozQmYhg5yQd8tHtsTYwEJhKUVkqEkSGTlx13OBW4iVh8ZChVMBp3bM2hK2y
         9IXZ7dikiisOVP/zEWFJPvaKfR2VNS3hmR2AV5KAv+RReIdexRKmjhkHLK9jeLGvaV/n
         FMbQ==
X-Received: by 10.194.200.166 with SMTP id jt6mr41509902wjc.66.1427504310004;
        Fri, 27 Mar 2015 17:58:30 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron (p3.eregie.pub.ro. [141.85.0.103])
        by mx.google.com with ESMTPSA id pv2sm5023216wjc.33.2015.03.27.17.58.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Mar 2015 17:58:28 -0700 (PDT)
Date: Sat, 28 Mar 2015 02:57:34 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH v2] Staging: rtl8712: Use memdup_user() instead of
 copy_from_user()
Message-ID: <7cbad6d47dc2cb269f6b61de0f7f5c6f18066414.1427503685.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use memdup_user() to avoid its duplicated implementation and simplify
code. memdup_user() uses GFP_KERNEL instead of GFP_ATOMIC,
which is valid because copy_from_user() might sleep and it's useless
to make the allocation atomic. Found with coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
 Changes in v2:
  - edit the commit message to explain why the change is correct

 drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 10 +++-------
 1 file changed, 3 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
index 81f39c3..c39d031 100644
--- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
+++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
@@ -1912,13 +1912,9 @@ static int r871x_mp_ioctl_hdl(struct net_device *dev,
 	bset = (u8)(p->flags & 0xFFFF);
 	len = p->length;
 	pparmbuf = NULL;
-	pparmbuf = kmalloc(len, GFP_ATOMIC);
-	if (pparmbuf == NULL) {
-		ret = -ENOMEM;
-		goto _r871x_mp_ioctl_hdl_exit;
-	}
-	if (copy_from_user(pparmbuf, p->pointer, len)) {
-		ret = -EFAULT;
+	pparmbuf = memdup_user(p->pointer, len);
+	if (IS_ERR(pparmbuf)) {
+		ret = PTR_ERR(pparmbuf);
 		goto _r871x_mp_ioctl_hdl_exit;
 	}
 	poidparam = (struct mp_ioctl_param *)pparmbuf;
-- 
1.9.1


