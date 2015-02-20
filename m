X-GM-THRID: 1229525614592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bbb7b406346b0548
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.194.161.194 with SMTP id xu2mr1220803wjb.1.1424433969827;
        Fri, 20 Feb 2015 04:06:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.115.207 with SMTP id jq15ls271805lab.107.gmail; Fri, 20
 Feb 2015 04:06:09 -0800 (PST)
X-Received: by 10.152.4.229 with SMTP id n5mr1221044lan.1.1424433969446;
        Fri, 20 Feb 2015 04:06:09 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x22a.google.com (mail-wg0-x22a.google.com. [2a00:1450:400c:c00::22a])
        by gmr-mx.google.com with ESMTPS id i7si96008wif.0.2015.02.20.04.06.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:06:09 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) client-ip=2a00:1450:400c:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::22a as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f42.google.com with SMTP id n12so12807165wgh.1
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 04:06:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=ewraK1/i8W1fm/yIXHz8QFf+xMuSG9ahKwj1Aa43rRc=;
        b=aq2jfSrZwYuAX2MNlLgqnCm5awqFjuoWR4XsP6WWWv9kp8FxVcsH2GcP589gXDayBo
         SYUwEnq7/aXq4UGMbtmevvpjh0tUCLTmx7LY6zBDJUF2cbxQRa0nsPKxIQQfAXsZGPbS
         NGJqJIf1++hfc6sZSn71jL00DTkBe6rHIrmSOtlzsfJwu9LT+r5IvLkD+d+ksHV6DqOj
         6bi/3rFtFPRCx+Pqau75K5fBlRcSYB/dfqv/nnPeiiT8Gavr0R0W3ydj/wPf6UL1Pyad
         cnzRqvpSllHDwt7YHp+rukqsd4P6rG97qFp4nfl8tvCkSasgg1syBQZnjvgft2xrbnqd
         +fJQ==
X-Received: by 10.180.108.13 with SMTP id hg13mr4889797wib.7.1424433968292;
        Fri, 20 Feb 2015 04:06:08 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.58.202])
        by mx.google.com with ESMTPSA id fo9sm2087267wib.16.2015.02.20.04.06.07
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 04:06:07 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: dgnc: Remove space before tab
Date: Fri, 20 Feb 2015 14:06:10 +0200
Message-Id: <1424433970-7764-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "please, no space before tabs"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 7a31fbf..8a4e8fe 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -3088,7 +3088,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 		struct digi_getcounter buf;
 
 		buf.norun = ch->ch_err_overrun;
-		buf.noflow = 0;  	/* The driver doesn't keep this stat */
+		buf.noflow = 0;		/* The driver doesn't keep this stat */
 		buf.nframe = ch->ch_err_frame;
 		buf.nparity = ch->ch_err_parity;
 		buf.nbreak = ch->ch_err_break;
-- 
1.8.3.2


