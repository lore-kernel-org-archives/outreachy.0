X-GM-THRID: 986854719488
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6ef541a6a31e12b0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.159.227 with SMTP id xf3mr494567lbb.11.1424380033078;
        Thu, 19 Feb 2015 13:07:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.232 with SMTP id fr8ls375182wib.19.gmail; Thu, 19 Feb
 2015 13:07:12 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr847503wjc.7.1424380032816;
        Thu, 19 Feb 2015 13:07:12 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id by11si187721wib.1.2015.02.19.13.07.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Feb 2015 13:07:12 -0800 (PST)
Received-SPF: pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aybuke.147@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mail=aybuke.147@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x234.google.com with SMTP id h11so12030007wiw.1
        for <outreachy-kernel@googlegroups.com>; Thu, 19 Feb 2015 13:07:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=Nmu0HPYb7kvJvwi94R8kFGIHWn/Vs8kgKvt35amJdPk=;
        b=Ik9zXhgl3bzUmdSC3x70JQ2zQ8v8AoY+IuMmiuAju+p551E//NYcMmcGk6fDe4xYr/
         5qf1j5Fl+AsL4Plu1qfVFXvipB7BWOOM3iAB6WgvVTkA4dRLdM/NKqwlNyTkw+KOfI4G
         H5rpdl6GJ5ZbJw7lCggtZzSvD5m2y54YdWsl7PV4H8iEMqqhb6yippYmoRhhO3ZBFeYC
         I7Pe0XdoSYJ24JdaCDSYtQfU7m4sMBhjQ2+TxWj1VhW40X6jPXTaql5fgi24xW3ZbT19
         j7DNNV1aTbUftrCGHchwKGlmghUkNefRqDqFrMB3/SD64xqmsWfZOmH9XXcwYZTLCxGu
         WzcA==
X-Received: by 10.180.11.205 with SMTP id s13mr10014465wib.32.1424380032746;
        Thu, 19 Feb 2015 13:07:12 -0800 (PST)
Return-Path: <aybuke.147@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id hn2sm39054027wjc.5.2015.02.19.13.07.10
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 19 Feb 2015 13:07:12 -0800 (PST)
From: aybuke ozdemir <aybuke.147@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: aybuke ozdemir <aybuke.147@gmail.com>
Subject: [PATCH 2/2] Staging: lustre: lnet: add spaces around '||'
Date: Thu, 19 Feb 2015 23:06:46 +0200
Message-Id: <1424380006-18213-2-git-send-email-aybuke.147@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1424380006-18213-1-git-send-email-aybuke.147@gmail.com>
References: <1424380006-18213-1-git-send-email-aybuke.147@gmail.com>

This fixes the checkpatch.pl error in conctl.c:
ERROR: spaces required around that '||' (ctx:VxE)

Signed-off-by: aybuke ozdemir <aybuke.147@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/conctl.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lnet/selftest/conctl.c b/drivers/staging/lustre/lnet/selftest/conctl.c
index f945aff..045fe29 100644
--- a/drivers/staging/lustre/lnet/selftest/conctl.c
+++ b/drivers/staging/lustre/lnet/selftest/conctl.c
@@ -203,7 +203,7 @@ lst_group_add_ioctl(lstio_group_add_args_t *args)
 	if (args->lstio_grp_key != console_session.ses_key)
 		return -EACCES;
 
-	if (args->lstio_grp_namep == NULL||
+	if (args->lstio_grp_namep == NULL ||
 	    args->lstio_grp_nmlen <= 0 ||
 	    args->lstio_grp_nmlen > LST_NAME_SIZE)
 		return -EINVAL;
-- 
1.9.1


