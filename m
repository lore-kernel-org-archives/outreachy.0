X-GM-THRID: 9643848892416
X-Received: by 10.194.161.194 with SMTP id xu2mr14886249wjb.1.1427051088880;
        Sun, 22 Mar 2015 12:04:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.178.229 with SMTP id db5ls70280lac.11.gmail; Sun, 22 Mar
 2015 12:04:48 -0700 (PDT)
X-Received: by 10.152.3.70 with SMTP id a6mr4054749laa.0.1427051088022;
        Sun, 22 Mar 2015 12:04:48 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id i8si318012wif.1.2015.03.22.12.04.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Mar 2015 12:04:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x235.google.com with SMTP id w10so22714166wix.0
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Mar 2015 12:04:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=wFe76pSjSXpQCEinMY76dJga/etNDTvQu8kFti9JBPw=;
        b=uaizSoMde/wz7GvFvOMdVYdY7tnaHhOYjte9mH5FjSpS95afKZsuC8MDlkQz/+otpo
         yHm+Pd50FWJjGoSKfqhPY9asfCmBJdnAGvzd9znqg2k2KxGDzpBQP3QdAhzwxVZM6M4x
         PnjyeAz30XnAylzBNmb9RpnjoTWuG2c3vr/3iucbM2P8KMgwM+LDN1xewrOdivH1yI+2
         xJk6B9IQ2TkZDdznE0yVjgSldCJWKui40X5Z7VKV4hGsP7PpPwDL9R5wdznqFig6KXWl
         /x/7Olh67InW8sltLf8pqtbDXSTVVw7iH3LpGcBN/ne/Qt7B8h7a7DWmPPs7LKCuEST/
         4iRA==
X-Received: by 10.194.176.4 with SMTP id ce4mr14438502wjc.75.1427051087951;
        Sun, 22 Mar 2015 12:04:47 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from Inspiron ([46.214.223.212])
        by mx.google.com with ESMTPSA id at4sm16017654wjc.16.2015.03.22.12.04.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Sun, 22 Mar 2015 12:04:47 -0700 (PDT)
Date: Sun, 22 Mar 2015 21:04:00 +0200
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: rtl8712: Use mem_dup() instead of copy_from_user()
Message-ID: <20150322190400.GA1115@Inspiron>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use mem_dup() instead of its duplicated implementation in order
to simplify code. Found with coccinelle.

Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
---
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


