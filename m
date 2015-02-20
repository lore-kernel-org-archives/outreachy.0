X-GM-THRID: 1328454565888
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,6f1dd75346e94f50
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.36.132 with SMTP id q4mr150087laj.6.1424446128013;
        Fri, 20 Feb 2015 07:28:48 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.167 with SMTP id s7ls294184laa.80.gmail; Fri, 20 Feb
 2015 07:28:47 -0800 (PST)
X-Received: by 10.112.159.227 with SMTP id xf3mr1006220lbb.11.1424446127626;
        Fri, 20 Feb 2015 07:28:47 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-wg0-x232.google.com (mail-wg0-x232.google.com. [2a00:1450:400c:c00::232])
        by gmr-mx.google.com with ESMTPS id r6si134780wix.0.2015.02.20.07.28.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 07:28:47 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) client-ip=2a00:1450:400c:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c00::232 as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x232.google.com with SMTP id l2so13718794wgh.9
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:28:47 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=gH9PBnA0DaeyTHAeeAZQGnJKzHCLydMu0rcLE27/39c=;
        b=jYCEu4rrZFr9aFQ7GrakujO7RneM2m4W7mj8D+xDOsVPFcBJSm6350oxxYJBr55IXr
         qCRSeBGJQLmvwp3zsSXBHPbPlHfs0XzVj16n6FxoFzdEqnEXXpjfLuUn7LjaKbpVU66Z
         lBf41lqM29qn+u8ktvKpDxeeJayzOnJtEPbknJ+NyVtmxrWt76DLlMIEQRxVeIlNtfJb
         QAEs27jvlp1SGdV+LaAbEwZ+CzAhNbD1w45Wlt+RR+Omql0D/F7IhD/+4gkxxTJc4xi8
         AzxokfsqWRKot/uoiLiFLJzBW1ueKvKvnlMV2HuETms/ivG2ewggZlPPz7Z1ofGZBqkq
         2cQQ==
X-Received: by 10.180.36.212 with SMTP id s20mr1550096wij.58.1424446126935;
        Fri, 20 Feb 2015 07:28:46 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([81.214.238.226])
        by mx.google.com with ESMTPSA id dx11sm39614476wjb.23.2015.02.20.07.28.45
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 20 Feb 2015 07:28:46 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 4/4] Staging: lustre: lnet: klnds: socklnd: Add blank line after declarations
Date: Fri, 20 Feb 2015 17:27:50 +0200
Message-Id: <1424446070-14232-4-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1424446070-14232-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: "Missing a blank line after declarations"
checkpatch.pl warning in o2iblnd_modparams.c

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
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


