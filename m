X-GM-THRID: 6261572642217656320
X-Received: by 10.182.65.106 with SMTP id w10mr14767041obs.6.1457885988991;
        Sun, 13 Mar 2016 09:19:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.106 with SMTP id k97ls3877849qgd.21.gmail; Sun, 13 Mar
 2016 09:19:48 -0700 (PDT)
X-Received: by 10.129.39.146 with SMTP id n140mr14434576ywn.22.1457885988293;
        Sun, 13 Mar 2016 09:19:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x236.google.com (mail-pf0-x236.google.com. [2607:f8b0:400e:c00::236])
        by gmr-mx.google.com with ESMTPS id y20si2519482pfa.2.2016.03.13.09.19.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 13 Mar 2016 09:19:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) client-ip=2607:f8b0:400e:c00::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::236 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x236.google.com with SMTP id u190so88356563pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 13 Mar 2016 09:19:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=dk+DftKCyTXQ0C0PETSpXt2+7uB6MTT3N34pCiUyY7s=;
        b=xGvq+y/yLFwgEwdW0AEUugkGk7I6B1gyq+7tmBjxpeC7dQWpbb9EuznNV0H81mUrtX
         UcsnSfmxS/i/7CDM6T8SSHLE32Bhy738UTcRt8Cp7eP7PwTjQ1fnfiRqTvS6bNKqlNi/
         TaMCkmxz9nSUyviqSdNAuvvLup8ToV8OrOaBcOowddvFniCL3ljfE9yujgGeNUP5avAv
         8eourAMfeMdY6MSVsIg7rW7JcIQTx73Y/A+Ph1q7IJBRSjYBTg/FiJqGfki5KCZ3mNYA
         cM8fdIKyLbBbbfdv2Pu+xYTmmy1oqvr59MDFUrwpVIO6EPqHmuj6OVw9K5IuoKMz5/cb
         E4pQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=dk+DftKCyTXQ0C0PETSpXt2+7uB6MTT3N34pCiUyY7s=;
        b=G4Oy/mVdF+ia53BpzJdK1zrhQafMT6ZZLQ1nGbuyUU3jWPuun06tsIBX0ReAZGz7/3
         IoSNkSvBlvTcEQ35GfCw87MIVaSxNUawXhRHSjZAVnEIv1+rIt5uw6o7+P2/CSzxnvv2
         kSbnCdytm7NaqUZkOT43asIfxDMKQRPWhEFKKEGbsHq3jRDq+inCwfONva/LbMk6hSg1
         R7XsyRsi23jBXyHANLvJl1OATiGinuq3u6wyJ0Ha8zvq6yvN6cib2rEEJbA3KIJ7FHf1
         OItknuDRWtsPQELR+yIIcla9Ch2q8KxFpgpGP4hF1yu57IRW/iWsnse7uRvOpRKYacDA
         oiYQ==
X-Gm-Message-State: AD7BkJLa3u90ehQcHGoe/QR7KKiEv96rtMwEvdtpSrnDb+xfduFx9JE/yIy3Ogx/RXv8ug==
X-Received: by 10.98.74.6 with SMTP id x6mr23265910pfa.80.1457885988107;
        Sun, 13 Mar 2016 09:19:48 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.120.238])
        by smtp.gmail.com with ESMTPSA id p79sm26062307pfi.61.2016.03.13.09.19.46
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 13 Mar 2016 09:19:47 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com,
	tj@kernel.org
Cc: Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH] iwlwifi: dvm: convert create_singlethread_workqueue() to alloc_workqueue()
Date: Mon, 14 Mar 2016 00:19:10 +0800
Message-Id: <1457885950-14344-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Use alloc_workqueue() to allocate the workqueue instead of
create_singlethread_workqueue() since the latter is deprecated and is scheduled
for removal.

There are work items doing related operations that shouldn't be swapped when
queued in a certain order hence preserve the strict execution ordering of a
single threaded (ST) workqueue by setting max_active to 1 and adding the
WQ_UNBOUND flag.

In addition, there are work items dealing with temperature throttling (tt_work,
ct_enter, ct_exit). Adding the WQ_HIGHPRI flag would place the work items in a
high priority workqueue.

Lastly, guarantee forward progress for work items depended upon during memory
reclaim by the addition of the WQ_MEM_RECLAIM flag.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
 drivers/net/wireless/intel/iwlwifi/dvm/main.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/dvm/main.c b/drivers/net/wireless/intel/iwlwifi/dvm/main.c
index f62c2d7..37fa11c 100644
--- a/drivers/net/wireless/intel/iwlwifi/dvm/main.c
+++ b/drivers/net/wireless/intel/iwlwifi/dvm/main.c
@@ -1071,7 +1071,8 @@ static void iwl_bg_restart(struct work_struct *data)
 
 static void iwl_setup_deferred_work(struct iwl_priv *priv)
 {
-	priv->workqueue = create_singlethread_workqueue(DRV_NAME);
+	priv->workqueue = alloc_workqueue(DRV_NAME, WQ_HIGHPRI | WQ_UNBOUND |
+					  WQ_MEM_RECLAIM, 1);
 
 	INIT_WORK(&priv->restart, iwl_bg_restart);
 	INIT_WORK(&priv->beacon_update, iwl_bg_beacon_update);
-- 
1.9.1


