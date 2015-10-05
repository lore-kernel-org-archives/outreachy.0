X-GM-THRID: 6202220318097932288
X-Received: by 10.181.29.103 with SMTP id jv7mr2445806wid.0.1444066948160;
        Mon, 05 Oct 2015 10:42:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.109.167 with SMTP id ht7ls28925wib.7.canary; Mon, 05 Oct
 2015 10:42:27 -0700 (PDT)
X-Received: by 10.194.6.170 with SMTP id c10mr5541070wja.7.1444066947687;
        Mon, 05 Oct 2015 10:42:27 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id bj4si418329wib.1.2015.10.05.10.42.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 05 Oct 2015 10:42:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of haticeerturk27@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=haticeerturk27@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id lk2so125238055wic.1
        for <outreachy-kernel@googlegroups.com>; Mon, 05 Oct 2015 10:42:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:subject:date:message-id:mime-version:content-type
         :content-transfer-encoding;
        bh=zz0nTm6lHi3/jTLhYFktgtEwA6+ZdjsQFAequKi5LI4=;
        b=zCtF8qysvviHLTFJoREm+Do0h8D1fcU+T06Hu7de3O9/vEU/UgtnJksH5NyfAzc99/
         v+vU99f58i4N2tm7btyJ1BUplvTapeIJQ0rlNRNMA3GHrqTR1F0sZVA0Q95z1Hw9GWaN
         nwSjroB9SGgxbxmM6De73Im7LEZNFy757dvwn7Ufadq8aU6CWMwIL2gTZUfDA4Chseen
         +K+khpDWHYRgJovVBhBmhKXruVGlcD5n6pvpXLDuL6nMDnvyV4tyJDGLt95wkH3+XoQO
         wcNh4/o3Q4zwd3RdQxrGTB/JItpYfb2bWY3aJ4EzmDpgwESMVwci/37SKPS0Dw2KVl+U
         HWZA==
X-Received: by 10.180.106.70 with SMTP id gs6mr13182629wib.19.1444066947586;
        Mon, 05 Oct 2015 10:42:27 -0700 (PDT)
Return-Path: <haticeerturk27@gmail.com>
Received: from localhost.localdomain ([88.242.105.163])
        by smtp.googlemail.com with ESMTPSA id c2sm15752731wiy.11.2015.10.05.10.42.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 05 Oct 2015 10:42:26 -0700 (PDT)
From: =?UTF-8?q?Hatice=20ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] Staging: lustre: lnet: klnds: socklnd: Missing a blank line after declarations
Date: Mon,  5 Oct 2015 20:42:20 +0300
Message-Id: <1444066940-6921-1-git-send-email-haticeerturk27@gmail.com>
X-Mailer: git-send-email 1.9.1
MIME-Version: 1.0
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8bit

This patch fixes these warning messages found by checkpatch.pl:
WARNING : Missing a blank line after declarations.

Signed-off-by: Hatice ERTÜRK <haticeerturk27@gmail.com>
---
 drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
index 904d158..1b472f4 100644
--- a/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
+++ b/drivers/staging/lustre/lnet/klnds/socklnd/socklnd.c
@@ -2440,6 +2440,7 @@ ksocknal_base_startup(void)
 
 	for (i = 0; i < *ksocknal_tunables.ksnd_nconnds; i++) {
 		char name[16];
+
 		spin_lock_bh(&ksocknal_data.ksnd_connd_lock);
 		ksocknal_data.ksnd_connd_starting++;
 		spin_unlock_bh(&ksocknal_data.ksnd_connd_lock);
@@ -2705,6 +2706,7 @@ ksocknal_start_schedulers(struct ksock_sched_info *info)
 		long id;
 		char name[20];
 		ksock_sched_t *sched;
+
 		id = KSOCK_THREAD_ID(info->ksi_cpt, info->ksi_nthreads + i);
 		sched = &info->ksi_scheds[KSOCK_THREAD_SID(id)];
 		snprintf(name, sizeof(name), "socknal_sd%02d_%02d",
-- 
1.9.1


