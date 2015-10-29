X-GM-THRID: 6210894171417346048
X-Received: by 10.141.23.137 with SMTP id z131mr41295831qhd.7.1446086487633;
        Wed, 28 Oct 2015 19:41:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.133.41 with SMTP id oz9ls41211obb.82.gmail; Wed, 28 Oct
 2015 19:41:27 -0700 (PDT)
X-Received: by 10.182.52.132 with SMTP id t4mr42836450obo.16.1446086487006;
        Wed, 28 Oct 2015 19:41:27 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x22a.google.com (mail-pa0-x22a.google.com. [2607:f8b0:400e:c03::22a])
        by gmr-mx.google.com with ESMTPS id pe1si5307098pac.2.2015.10.28.19.41.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Oct 2015 19:41:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) client-ip=2607:f8b0:400e:c03::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22a.google.com with SMTP id z6so25094092pas.2
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Oct 2015 19:41:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=AO4B0XNVSE8q4ojjxAdBcYurySNkKtMXBnEJA/ta3No=;
        b=MzEfMEwkOy9fQbD4Uv7lMLvAQbnZL7OIQdr4zSmpjpeHop0hu3+lrBjPvFdQn/lF9P
         spW6JhW7PO9AeOppZBYFWETJ05XnAkwvzAjxErCratcNZS1Gt5BUSTy7N4dnVbu8vrf3
         jGgQdaMmEDnt8H0H9/XZh7XiJnjTE+6DmxGvz2EBMsE5WMGjhntD02+RvBFmFB6Bf/v5
         2O+zt4oHiw/UElNjNlnY2bmYPxubRmyvJYa6SNCPBteCzPRKEa4BL4+42VuPd4oDHjEd
         oER/07hANqxPhDJ8Kc7f/VA+qGmIORkh/f6grmNShToZYGuALLU4aiBMpucNhI2aQanp
         nRkw==
X-Received: by 10.66.129.137 with SMTP id nw9mr37198604pab.107.1446086486807;
        Wed, 28 Oct 2015 19:41:26 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id xa4sm48099873pac.28.2015.10.28.19.41.25
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 28 Oct 2015 19:41:26 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: gdm72xx: Fix sparse warning
Date: Wed, 28 Oct 2015 19:41:18 -0700
Message-Id: <1446086478-14386-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

Calls copy_{to,from}_user() do not use '__user' annotation
while refrencing user space pointers.

Fix following sparse warnings by passing missing __user annotation:

drivers/staging/gdm72xx/gdm_wimax.c:381:37: warning: incorrect type in
argument 1 (different address spaces)
drivers/staging/gdm72xx/gdm_wimax.c:381:37:    expected void [noderef]
<asn:1>*to
drivers/staging/gdm72xx/gdm_wimax.c:381:37:    got void *buf
drivers/staging/gdm72xx/gdm_wimax.c:404:41: warning: incorrect type in
argument 2 (different address spaces)
drivers/staging/gdm72xx/gdm_wimax.c:404:41:    expected void const
[noderef] <asn:1>*from
drivers/staging/gdm72xx/gdm_wimax.c:404:41:    got void *buf

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
index d9ddced..a5b4b72 100644
--- a/drivers/staging/gdm72xx/gdm_wimax.c
+++ b/drivers/staging/gdm72xx/gdm_wimax.c
@@ -378,7 +378,7 @@ static int gdm_wimax_ioctl_get_data(struct data_s *dst, struct data_s *src)
 	if (src->size) {
 		if (!dst->buf)
 			return -EINVAL;
-		if (copy_to_user(dst->buf, src->buf, size))
+		if (copy_to_user((void __user *)dst->buf, src->buf, size))
 			return -EFAULT;
 	}
 	return 0;
@@ -401,7 +401,7 @@ static int gdm_wimax_ioctl_set_data(struct data_s *dst, struct data_s *src)
 			return -ENOMEM;
 	}
 
-	if (copy_from_user(dst->buf, src->buf, src->size)) {
+	if (copy_from_user(dst->buf, (void __user *)src->buf, src->size)) {
 		kdelete(&dst->buf);
 		return -EFAULT;
 	}
-- 
1.9.1


