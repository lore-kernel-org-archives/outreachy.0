X-GM-THRID: 1263646277632
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b53554fe122ef8f1,start
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.214.234 with SMTP id od10mr101564lbc.3.1424433671446;
        Fri, 20 Feb 2015 04:01:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.210 with SMTP id ba18ls239964lab.78.gmail; Fri, 20 Feb
 2015 04:01:10 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr11037laj.6.1424433670026;
        Fri, 20 Feb 2015 04:01:10 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id ta1si90545wic.1.2015.02.20.04.01.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 04:01:09 -0800 (PST)
Received-SPF: pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of yeliztaneroglu@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=yeliztaneroglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-f49.google.com with SMTP id l18so12714543wgh.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 04:01:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=+2MI2vGMZKS/ehYntL8QEdmTYVpIp20EY3AbmNQX1DE=;
        b=l+ivH1r7X+O/83w3vJQnAX5Ksxj0WhtMCZ/jjMNNeP6ts8ka7l7PnaVH7PQOWPqEBT
         db3enYVaGtoFNznRSA6Yoq+Oe4dZfzNmkcSRwFDeTEIJeYD/ef0/YXZ0L42c2oJleSYw
         e3cUc0xio8aH2TF1t5kK2C2MNfsoeAkcoSSOHs3YY8+IoJyCUf9JfwIPFyYIK9NTcvbv
         n/BtVgOu+gBkQfEc0PbabR9aZw9BFapRNJeIsxtlVPYyNNfAXanH7lG9+MsR067shnvE
         rlJ8IE9ChoJXKb3RAD50G5Rq76a7lhm8zozcSkrera2tEfY/blsDKusG1Vu7cw8FN5Vm
         CImg==
X-Received: by 10.194.240.164 with SMTP id wb4mr18016870wjc.66.1424433669871;
        Fri, 20 Feb 2015 04:01:09 -0800 (PST)
Return-Path: <yeliztaneroglu@gmail.com>
Received: from localhost.localdomain ([78.187.192.151])
        by mx.google.com with ESMTPSA id cb14sm2053863wib.22.2015.02.20.04.01.08
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 04:01:09 -0800 (PST)
From: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
Subject: [PATCH] Staging: dgnc: Add blank line
Date: Fri, 20 Feb 2015 14:01:10 +0200
Message-Id: <1424433670-7218-1-git-send-email-yeliztaneroglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2

This patch fixes the checkpatch.pl warning:
WARNING: "Missing a blank line after declarations"

Signed-off-by: Yeliz Taneroglu <yeliztaneroglu@gmail.com>
---
 drivers/staging/dgnc/dgnc_tty.c | 1 +
 1 file changed, 1 insertion(+)

diff --git a/drivers/staging/dgnc/dgnc_tty.c b/drivers/staging/dgnc/dgnc_tty.c
index 67dc8ef..7a31fbf 100644
--- a/drivers/staging/dgnc/dgnc_tty.c
+++ b/drivers/staging/dgnc/dgnc_tty.c
@@ -3066,6 +3066,7 @@ static int dgnc_tty_ioctl(struct tty_struct *tty, unsigned int cmd,
 	case DIGI_REALPORT_SENDIMMEDIATE:
 	{
 		unsigned char c;
+
 		DGNC_UNLOCK(ch->ch_lock, lock_flags);
 		rc = get_user(c, (unsigned char __user *) arg);
 		if (rc)
-- 
1.8.3.2


