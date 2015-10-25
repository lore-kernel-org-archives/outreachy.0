X-GM-THRID: 6209697474171371520
X-Received: by 10.112.140.202 with SMTP id ri10mr7420534lbb.10.1445807859730;
        Sun, 25 Oct 2015 14:17:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.211.137 with SMTP id k131ls594539lfg.53.gmail; Sun, 25 Oct
 2015 14:17:39 -0700 (PDT)
X-Received: by 10.112.134.129 with SMTP id pk1mr605080lbb.24.1445807859091;
        Sun, 25 Oct 2015 14:17:39 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id c7si382578wiy.3.2015.10.25.14.17.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 14:17:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.moraru09@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=cristina.moraru09@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id q8so139498096wik.1
        for <outreachy-kernel@googlegroups.com>; Sun, 25 Oct 2015 14:17:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=j/x/t7WZGf6PJZ4KxspgTciCnd/6x1r5Za4EqydNtqM=;
        b=splyCScdsT6XFFlPAwvJ8X9SOOCid/NE3La7oAamx0k+N0HnVVPmlKVhdLwadgCPOU
         BT0AtXAilfmwtIP9/Z+aCNtggHn+YC0Q2Q3LmdGo+CR8dRURbv2zI5Edx2bknFFTrUGn
         uFPgFHqTLl29I0UKrXLS1ViXMHIIts5hk73d45VrJunEZGTSNE7c+j9mYQH42+MrkQtN
         N0jjywFfq6pgTE+GjTRxiB9Zd2mOsolZYIOozJpgEFEkYgcqO4yCtPT6J5nhR0REWhUl
         C0GB8tkcZYEBYIzFVPqQybKJMiaQ9G7J8RIAbdL50j66pOUr6SLasebDEgeVt5xdbHUt
         bcWg==
X-Received: by 10.180.87.1 with SMTP id t1mr17332982wiz.77.1445807858978;
        Sun, 25 Oct 2015 14:17:38 -0700 (PDT)
Return-Path: <cristina.moraru09@gmail.com>
Received: from localhost.localdomain ([213.233.101.193])
        by smtp.gmail.com with ESMTPSA id hk5sm35327867wjb.6.2015.10.25.14.17.37
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 25 Oct 2015 14:17:38 -0700 (PDT)
From: Cristina Moraru <cristina.moraru09@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Moraru <cristina.moraru09@gmail.com>
Subject: [PATCH] staging: lustre: Don't ignore error code
Date: Sun, 25 Oct 2015 23:16:31 +0200
Message-Id: <1445807791-8328-1-git-send-email-cristina.moraru09@gmail.com>
X-Mailer: git-send-email 1.9.1

Error stored in rc was never reported,
so directly return it here.

Signed-off-by: Cristina Moraru <cristina.moraru09@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conctl.c b/drivers/staging/lustre/lnet/selftest/conctl.c
index 8173966..556c837 100644
--- a/drivers/staging/lustre/lnet/selftest/conctl.c
+++ b/drivers/staging/lustre/lnet/selftest/conctl.c
@@ -441,7 +441,7 @@ lst_group_info_ioctl(lstio_group_info_args_t *args)
 	if (args->lstio_grp_dentsp != NULL &&
 	    (copy_to_user(args->lstio_grp_idxp, &index, sizeof(index)) ||
 	     copy_to_user(args->lstio_grp_ndentp, &ndent, sizeof(ndent))))
-		rc = -EFAULT;
+		return -EFAULT;
 
 	return 0;
 }
-- 
1.9.1


