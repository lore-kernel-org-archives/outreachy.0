X-GM-THRID: 1526974119936
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,7ff0cbb979278efc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.91.76 with SMTP id cc12mr22816wib.7.1424462696677;
        Fri, 20 Feb 2015 12:04:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.178 with SMTP id p18ls270133lal.97.gmail; Fri, 20 Feb
 2015 12:04:56 -0800 (PST)
X-Received: by 10.152.88.40 with SMTP id bd8mr1528723lab.0.1424462696140;
        Fri, 20 Feb 2015 12:04:56 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x22e.google.com (mail-we0-x22e.google.com. [2a00:1450:400c:c03::22e])
        by gmr-mx.google.com with ESMTPS id l8si380214wia.0.2015.02.20.12.04.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 12:04:56 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) client-ip=2a00:1450:400c:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22e as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so7536381wes.10
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 12:04:56 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=vM5n64HroIPXcL2C7xxmQEOxvOaGt9UZCoQoRPra+Uk=;
        b=g2wvGLsPjb4I1Ih7zg0r+IntMoSE1x2TocxTJjaAZqq9ir+TajBkOD5ozA8bKnktcu
         yLIGMjccmfivOdLgQdMDH9EOT/FSPbPgrHkdRREp0qCtxfiUeA07wpqu96PdKFAvf45M
         NMckw9mI3GtqevbNdrPdX/TdBxAjj6sd1eHXSstvqojbCR6iJzZU6vCEStxL8RVe62id
         GvvQpH+x6vErJZ7lknmEwmqLG81urpj2OBcwoagMo+M5cFyp9eGs2sckWv21KzMbh/Sp
         WJgrRqJt8oew4MHvtU3YhtlION7x6DmfBX2VN0PesLyl5xj2XOs69/f5L7klwis/ZJQM
         ae9w==
X-Received: by 10.180.89.173 with SMTP id bp13mr256966wib.88.1424462696049;
        Fri, 20 Feb 2015 12:04:56 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id p1sm3809165wib.23.2015.02.20.12.04.54
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 12:04:55 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH v2 4/4] Staging: lustre: Add blank line after declarations
Date: Fri, 20 Feb 2015 22:04:07 +0200
Message-Id: <1424462647-4861-4-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424462647-4861-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: "Missing a blank line after declarations"
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---

v2:changed the subject line and description

 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index 4e66f2b..49b1b51 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -2445,6 +2445,7 @@ ksocknal_base_startup(void)
 
 	for (i = 0; i < *ksocknal_tunables.ksnd_nconnds; i++) {
 		char name[16];
+
 		spin_lock_bh(&ksocknal_data.ksnd_connd_lock);
 		ksocknal_data.ksnd_connd_starting++;
 		spin_unlock_bh(&ksocknal_data.ksnd_connd_lock);
@@ -2709,6 +2710,7 @@ ksocknal_start_schedulers(struct ksock_sched_info *info)
 		long		id;
 		char		name[20];
 		ksock_sched_t	*sched;
+
 		id = KSOCK_THREAD_ID(info->ksi_cpt, info->ksi_nthreads + i);
 		sched = &info->ksi_scheds[KSOCK_THREAD_SID(id)];
 		snprintf(name, sizeof(name), "socknal_sd%02d_%02d",
-- 
1.8.3.2


