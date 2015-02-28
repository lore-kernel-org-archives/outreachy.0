X-GM-THRID: 4118330474496
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,cfc00415a2b2e159
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr2715059laj.6.1425132841040;
        Sat, 28 Feb 2015 06:14:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.28.100 with SMTP id a4ls278604lah.23.gmail; Sat, 28 Feb
 2015 06:13:59 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr2715052laj.6.1425132839494;
        Sat, 28 Feb 2015 06:13:59 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id i7si313552wif.0.2015.02.28.06.13.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 28 Feb 2015 06:13:59 -0800 (PST)
Received-SPF: pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of dilekuzulmez@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mail=dilekuzulmez@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by widem10 with SMTP id em10so5905989wid.1
        for <outreachy-kernel@googlegroups.com>; Sat, 28 Feb 2015 06:13:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=81Rhb2yKw3MVSwT+0/vZvmvt8X8WQ+yhvEMYEKj2mvE=;
        b=cxR3UDe5m3nn+OcVJhavZYI+L+HoUr2zGztpw4i85JylY2EuTk1ema80qfBEW7dOVw
         6iUZDFwqJf6DJ4Uvm+NPETwR82j5sOau/3hwuo/3Z520u6UzHgtyUmCyFGjmNnj0jgkA
         jDZLK7S8DW05TQABAFiAoP8+JWWOr/HCN0yu4SRUWa4WqF88Cori8XOJ93Vs1d6hyfGF
         9ok7LieYwrtsTqJSQCaDYdbxfQH2t2NR41oiCGgEw6imWaEVB2NgcR34QNzCFszKYAyQ
         KNM0mfeDjKvILEiQQmpX6axVmn7DJWuwsw1pEOozpx2IbyqDVlMBOs1keANOzxVFF3Cs
         JdeQ==
X-Received: by 10.180.96.37 with SMTP id dp5mr16766536wib.64.1425132839373;
        Sat, 28 Feb 2015 06:13:59 -0800 (PST)
Return-Path: <dilekuzulmez@gmail.com>
Received: from localhost.localdomain ([78.178.131.202])
        by mx.google.com with ESMTPSA id s5sm7803985wia.1.2015.02.28.06.13.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 28 Feb 2015 06:13:58 -0800 (PST)
From: Dilek Uzulmez <dilekuzulmez@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Dilek Uzulmez <dilekuzulmez@gmail.com>
Subject: [PATCH] Staging: lustre: Remove space after the name of that function
Date: Sat, 28 Feb 2015 16:13:52 +0200
Message-Id: <1425132832-4664-1-git-send-email-dilekuzulmez@gmail.com>
X-Mailer: git-send-email 1.9.1

Fix checkpatch.pl issues with "space prohibited between function name
and open parenthesis" in lporc_echo.c

Signed-off-by: Dilek Uzulmez <dilekuzulmez@gmail.com>
---
 drivers/staging/lustre/lustre/obdecho/lproc_echo.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/obdecho/lproc_echo.c b/drivers/staging/lustre/lustre/obdecho/lproc_echo.c
index 1d3bf6c..0beb97d 100644
--- a/drivers/staging/lustre/lustre/obdecho/lproc_echo.c
+++ b/drivers/staging/lustre/lustre/obdecho/lproc_echo.c
@@ -36,7 +36,7 @@
 #include "../include/lprocfs_status.h"
 #include "../include/obd_class.h"
 
-#if defined (CONFIG_PROC_FS)
+#if defined(CONFIG_PROC_FS)
 LPROC_SEQ_FOPS_RO_TYPE(echo, uuid);
 static struct lprocfs_vars lprocfs_echo_obd_vars[] = {
 	{ "uuid",	 &echo_uuid_fops,	NULL, 0 },
-- 
1.9.1


