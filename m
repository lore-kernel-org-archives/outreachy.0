X-GM-THRID: 9403654733824
X-Received: by 10.112.142.1 with SMTP id rs1mr12029403lbb.19.1426954474701;
        Sat, 21 Mar 2015 09:14:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.69 with SMTP id kw5ls493087lac.86.gmail; Sat, 21 Mar
 2015 09:14:34 -0700 (PDT)
X-Received: by 10.112.13.228 with SMTP id k4mr13841663lbc.8.1426954474004;
        Sat, 21 Mar 2015 09:14:34 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from mail-we0-x236.google.com (mail-we0-x236.google.com. [2a00:1450:400c:c03::236])
        by gmr-mx.google.com with ESMTPS id na10si121051wic.0.2015.03.21.09.14.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:14:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) client-ip=2a00:1450:400c:c03::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hamohammed.sa@gmail.com designates 2a00:1450:400c:c03::236 as permitted sender) smtp.mail=hamohammed.sa@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x236.google.com with SMTP id cq43so104342115web.2
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Mar 2015 09:14:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=5TF+vbV1ab7mUi2JY0W+7AottLPOCNA/TMjE4a6r5iY=;
        b=BOsbQ55lDRNiLqyShLVOE64NbAjojX1HEZzpp1hw2XECdQUwALm1wKYNu83NWSVqHR
         1ZsiFZFrSikxiR6KKpMlcpmZWo7u2erxI3F0NurY6C58SmFo2dJeVv1mrO8L3aJfgKvq
         hLXhoEWXTUe2O49igGQKTK2rsMIVAYwaU/wMMPD5XX2OHtGnGa+azYqYGjxZM+Ogp3W6
         3XVPqMWcP2vpNUVZwZ7y1WwOi2gM1LngrG42Idp/t//2y74bsx1SFA0khEu30iVPyj2q
         WAMOZ13u/EMgVy6nihkirZYhV3JFU17oajq6knEugRCc8p/Fcf94ilbsPluanBBwmyqJ
         Ydag==
X-Received: by 10.180.91.79 with SMTP id cc15mr5164506wib.37.1426954473930;
        Sat, 21 Mar 2015 09:14:33 -0700 (PDT)
Return-Path: <hamohammed.sa@gmail.com>
Received: from haneen-vb ([79.170.54.138])
        by mx.google.com with ESMTPSA id l4sm2927071wiw.6.2015.03.21.09.14.32
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2015 09:14:32 -0700 (PDT)
Received: by haneen-vb (Postfix, from userid 1000)
	id 47588C1FE4; Sat, 21 Mar 2015 10:47:57 +0300 (AST)
From: Haneen Mohammed <hamohammed.sa@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Haneen Mohammed <hamohammed.sa@gmail.com>
Subject: [PATCH 1/3] Staging: lustre: Fix externs should be avoided in .c
Date: Sat, 21 Mar 2015 10:47:56 +0300
Message-Id: <1426924076-24292-1-git-send-email-hamohammed.sa@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>
References: <1426923942-24228-1-git-send-email-hamohammed.sa@gmail.com>

Thi patch moves extern declaration to "obd_class.h".
Remove prototype from "class_obd.c".
Issue addressed by checkpatch.pl.

Signed-off-by: Haneen Mohammed <hamohammed.sa@gmail.com>
---
 drivers/staging/lustre/lustre/include/obd_class.h  | 2 ++
 drivers/staging/lustre/lustre/obdclass/class_obd.c | 3 ---
 2 files changed, 2 insertions(+), 3 deletions(-)

diff --git a/drivers/staging/lustre/lustre/include/obd_class.h b/drivers/staging/lustre/lustre/include/obd_class.h
index 4a29261..0b6178e 100644
--- a/drivers/staging/lustre/lustre/include/obd_class.h
+++ b/drivers/staging/lustre/lustre/include/obd_class.h
@@ -1895,6 +1895,8 @@ void class_exit_uuidlist(void);
 
 /* class_obd.c */
 extern char obd_jobid_node[];
+extern struct miscdevice obd_psdev;
+extern spinlock_t obd_types_lock;
 
 /* prng.c */
 #define ll_generate_random_uuid(uuid_out) cfs_get_random_bytes(uuid_out, sizeof(class_uuid_t))
diff --git a/drivers/staging/lustre/lustre/obdclass/class_obd.c b/drivers/staging/lustre/lustre/obdclass/class_obd.c
index 29456e1..d4b74b6 100644
--- a/drivers/staging/lustre/lustre/obdclass/class_obd.c
+++ b/drivers/staging/lustre/lustre/obdclass/class_obd.c
@@ -437,8 +437,6 @@ int class_handle_ioctl(unsigned int cmd, unsigned long arg)
 	return err;
 } /* class_handle_ioctl */
 
-extern struct miscdevice obd_psdev;
-
 #define OBD_INIT_CHECK
 int obd_init_checks(void)
 {
@@ -508,7 +506,6 @@ int obd_init_checks(void)
 	return ret;
 }
 
-extern spinlock_t obd_types_lock;
 #if defined (CONFIG_PROC_FS)
 extern int class_procfs_init(void);
 extern int class_procfs_clean(void);
-- 
1.9.1


