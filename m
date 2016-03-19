X-GM-THRID: 6263057020003287040
X-Received: by 10.107.165.213 with SMTP id o204mr14477818ioe.10.1458364555179;
        Fri, 18 Mar 2016 22:15:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.165.161 with SMTP id yz1ls1071445obb.49.gmail; Fri, 18 Mar
 2016 22:15:54 -0700 (PDT)
X-Received: by 10.182.65.135 with SMTP id x7mr14923387obs.13.1458364554525;
        Fri, 18 Mar 2016 22:15:54 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id sf5si2607345pac.1.2016.03.18.22.15.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 18 Mar 2016 22:15:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so20417149pfb.3
        for <outreachy-kernel@googlegroups.com>; Fri, 18 Mar 2016 22:15:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=6GXS2UUYPljqQClqakU4VSVKud9Vbufp+3EYbVZdM+M=;
        b=m8tD6BQP5RXycu2Zsw0qNmzYTxcFoSgOXlJ/1sTiG4rYYXJSh29KG/3CFh8T/MvOQS
         3uwyxYwnTXCD3fVsyQEHpHKc6L31DQeJsFP9e/eiewqYq+sGmsJBwIAlckxiVkWCIxjP
         CAP2cAoonnVA2N3KxshgDxVIUHb7hKSrj6nEufUoUFxub6WZIdEvn89kgyW86EWzRFuc
         WmpKNcXARAqrO8sr/UdXTA4U90laVBAXvhNjcQAwXmGGNSZyKmUPJg25dYLRIxyMZRIw
         nz5TqWifvhDWUz4U4sKdchpHiHvPFjOggaQGAOmc4DEwV40qxRDMZJPo3k3a/ulVbHRi
         NKew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=6GXS2UUYPljqQClqakU4VSVKud9Vbufp+3EYbVZdM+M=;
        b=VONayUIWwPYw92OeS46TNVsgZOKBdljPU5+Hl5/qnmV7fLWtm/A9Ndjgo/LlWy6ykf
         3yYe1a1Z7UQLFDS8Jz64ycFXofoXzvw2CzWQcCxYekOwFamzfjS3bvBN4Ro8pGaYml8x
         4q6u4QMaP6J86QxDu4ufOWYiXMGT3LMv4RwIoHCRatwPH+FyJamfLw9SUcBuvzo/xpsP
         IksLGpqVeILx4P7XFXQK/XfgeqV7ppxDNyYbLttnLBF7sg9pYWAwjUcvm2m+j1BvkHVu
         kez+FHfV52WoPTRY7eYKcsR3MylWcc8tnJmnYxOH2hn7lZQFgREGJvcovG6SFdEbJmRR
         UWjQ==
X-Gm-Message-State: AD7BkJLxEArUI/7x+z9QXbNfo8TvHmoZzbzUPuPuTiJYZqGUOKfg1Yh9vHLvMEcw4hE0oA==
X-Received: by 10.66.100.196 with SMTP id fa4mr29072066pab.37.1458364554353;
        Fri, 18 Mar 2016 22:15:54 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([103.14.62.124])
        by smtp.gmail.com with ESMTPSA id ux2sm24702115pac.46.2016.03.18.22.15.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 18 Mar 2016 22:15:53 -0700 (PDT)
From: Eva Rachel Retuya <eraretuya@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: johannes.berg@intel.com,
	emmanuel.grumbach@intel.com,
	linuxwifi@intel.com,
	kvalo@codeaurora.org,
	linux-wireless@vger.kernel.org,
	netdev@vger.kernel.org,
	linux-kernel@vger.kernel.org,
	tj@kernel.org,
	Eva Rachel Retuya <eraretuya@gmail.com>
Subject: [PATCH v3] iwlwifi: dvm: use alloc_ordered_workqueue()
Date: Sat, 19 Mar 2016 13:15:47 +0800
Message-Id: <1458364547-11621-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Use alloc_ordered_workqueue() to allocate the workqueue instead of
create_singlethread_workqueue() since the latter is deprecated and is scheduled
for removal.

There are work items doing related operations that shouldn't be swapped when
queued in a certain order hence preserve the strict execution ordering of a
single threaded (ST) workqueue by switching to alloc_ordered_workqueue().

WQ_MEM_RECLAIM flag is not needed since the worker is not depended
during memory reclaim.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
Acked-by: Tejun Heo <tj@kernel.org>
---
Changes in v3:
* revise commit message about WQ_MEM_RECLAIM
* add 'Acked-by:' from previous feedback
Changes in v2:
* switch from alloc_workqueue() to alloc_ordered_workqueue()
* remove unneeded flags: WQ_MEM_RECLAIM and WQ_HIGHPRI
* update commit message to reflect change

 drivers/net/wireless/intel/iwlwifi/dvm/main.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/net/wireless/intel/iwlwifi/dvm/main.c b/drivers/net/wireless/intel/iwlwifi/dvm/main.c
index f62c2d7..14396d8 100644
--- a/drivers/net/wireless/intel/iwlwifi/dvm/main.c
+++ b/drivers/net/wireless/intel/iwlwifi/dvm/main.c
@@ -1071,7 +1071,7 @@ static void iwl_bg_restart(struct work_struct *data)
 
 static void iwl_setup_deferred_work(struct iwl_priv *priv)
 {
-	priv->workqueue = create_singlethread_workqueue(DRV_NAME);
+	priv->workqueue = alloc_ordered_workqueue(DRV_NAME, 0);
 
 	INIT_WORK(&priv->restart, iwl_bg_restart);
 	INIT_WORK(&priv->beacon_update, iwl_bg_beacon_update);
-- 
1.9.1


