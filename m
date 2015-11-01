X-GM-THRID: 6212186880400687104
X-Received: by 10.140.232.148 with SMTP id d142mr14666147qhc.4.1446387469503;
        Sun, 01 Nov 2015 06:17:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.39 with SMTP id q7ls610366igg.26.gmail; Sun, 01 Nov 2015
 06:17:49 -0800 (PST)
X-Received: by 10.66.255.70 with SMTP id ao6mr15132761pad.3.1446387469077;
        Sun, 01 Nov 2015 06:17:49 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id sm2si1428849pab.0.2015.11.01.06.17.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Nov 2015 06:17:49 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id fv9so125748940pac.3
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Nov 2015 06:17:49 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=FvHQEjJkwjkZlyAS/S4Ft+wmYb10pY9sDN6gQLGOWCg=;
        b=sD4M5E+wTleN6y2QkfDeS5CBL6CnyXGa26oWdp9PPF30NFMiGete9pNhf4Z59nRJA3
         jwVEWBc8K7lTjrAQZ4ZFuxseKeJ1KTk12z2lcrykenG8NUjv3lHIXnTCjJF+AhSho5EU
         xY82p28gICa2hWeyd7KC8fY/zy8YDEf/BCEgzGFpL4fdBwO8g+mHnE0zSwmzdkPsVp4U
         Bwr76+stIOKz8q6bgtTP5nUWAtJfbtySj4X3yJ/tCvHyghpep2Ve08KDW8qCvVo+tfq1
         yIsEeuKLm5sHwS92Rtrectzp1gttR6n0Gc1JSWzvyf1cYAb28okYTYMPQOCpRdyFm3TY
         nPUg==
X-Received: by 10.66.190.104 with SMTP id gp8mr21313187pac.154.1446387468909;
        Sun, 01 Nov 2015 06:17:48 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.68.108.132])
        by smtp.gmail.com with ESMTPSA id ro3sm18734863pbc.69.2015.11.01.06.17.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 01 Nov 2015 06:17:48 -0800 (PST)
Date: Sun, 1 Nov 2015 19:47:44 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: lnet: selftest: Remove extern specifier
Message-ID: <20151101141744.GA19046@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Functions have the extern specifier by default, so extern keyword can be
removed.

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lnet/selftest/console.c   | 2 +-
 drivers/staging/lustre/lnet/selftest/framework.c | 8 ++++----
 drivers/staging/lustre/lnet/selftest/module.c    | 4 ++--
 3 files changed, 7 insertions(+), 7 deletions(-)

diff --git a/drivers/staging/lustre/lnet/selftest/console.c b/drivers/staging/lustre/lnet/selftest/console.c
index 024aaee..2b139c8 100644
--- a/drivers/staging/lustre/lnet/selftest/console.c
+++ b/drivers/staging/lustre/lnet/selftest/console.c
@@ -1984,7 +1984,7 @@ static void lstcon_init_acceptor_service(void)
 	lstcon_acceptor_service.sv_wi_total = SFW_FRWK_WI_MAX;
 }
 
-extern int lstcon_ioctl_entry(unsigned int cmd, struct libcfs_ioctl_data *data);
+int lstcon_ioctl_entry(unsigned int cmd, struct libcfs_ioctl_data *data);
 
 static DECLARE_IOCTL_HANDLER(lstcon_ioctl_handler, lstcon_ioctl_entry);
 
diff --git a/drivers/staging/lustre/lnet/selftest/framework.c b/drivers/staging/lustre/lnet/selftest/framework.c
index 177beaf..d4123f5 100644
--- a/drivers/staging/lustre/lnet/selftest/framework.c
+++ b/drivers/staging/lustre/lnet/selftest/framework.c
@@ -1625,13 +1625,13 @@ static srpc_service_t sfw_services[] = {
 
 extern sfw_test_client_ops_t ping_test_client;
 extern srpc_service_t	ping_test_service;
-extern void ping_init_test_client(void);
-extern void ping_init_test_service(void);
+void ping_init_test_client(void);
+void ping_init_test_service(void);
 
 extern sfw_test_client_ops_t brw_test_client;
 extern srpc_service_t	brw_test_service;
-extern void brw_init_test_client(void);
-extern void brw_init_test_service(void);
+void brw_init_test_client(void);
+void brw_init_test_service(void);
 
 
 int
diff --git a/drivers/staging/lustre/lnet/selftest/module.c b/drivers/staging/lustre/lnet/selftest/module.c
index 09b8f46..ecaf1ad 100644
--- a/drivers/staging/lustre/lnet/selftest/module.c
+++ b/drivers/staging/lustre/lnet/selftest/module.c
@@ -47,8 +47,8 @@ enum {
 	LST_INIT_CONSOLE
 };
 
-extern int lstcon_console_init(void);
-extern int lstcon_console_fini(void);
+int lstcon_console_init(void);
+int lstcon_console_fini(void);
 
 static int lst_init_step = LST_INIT_NONE;
 
-- 
1.9.1


