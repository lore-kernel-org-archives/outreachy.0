X-GM-THRID: 6263057020003287040
X-Received: by 10.31.169.130 with SMTP id s124mr7738212vke.1.1458231597554;
        Thu, 17 Mar 2016 09:19:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.40.105 with SMTP id w96ls284054qgw.66.gmail; Thu, 17 Mar
 2016 09:19:56 -0700 (PDT)
X-Received: by 10.140.174.65 with SMTP id u62mr7849880qhu.15.1458231596712;
        Thu, 17 Mar 2016 09:19:56 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ui7si1459246pab.0.2016.03.17.09.19.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 09:19:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id q129so12001469pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 09:19:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=UwaS1hjL4oFaDObw/blB/2vGhUIO32qxbcHHOwk8wTM=;
        b=G+7azLR8D1N6W6Wb9uLlPY1CX+eUS7ZZharJuV/h1nte6tfLlu0IGWFq0IRxGjIPwp
         oqjqfIBZ60JKZfz6oV8O6W4iuEeomlL6ngIT9v+Iam7kkKlY6WhrCCNZHvzjT6W9m5xv
         etDJEAkDxLJSVT6FBp4zEBcR4X/6OFafPHCZ1oN9aZhw/GDqY95QrPVlQBlu6mYdi3xJ
         NPiwDa5lPtR1+YzgxJr/uwHzwXP1f0RRdohhzthEv2eQjL3u+19EqZi4yuAHWYEXS6Fp
         JClWiaw9TzWEmUHP0yQs8uk2ozg8c3zqf5IiSWM2TrIJjJamOuYpPKK/bOtFt1f+dO5i
         mtvw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=UwaS1hjL4oFaDObw/blB/2vGhUIO32qxbcHHOwk8wTM=;
        b=SBbnrs5G7s1MWIHAUiP4B4LJwPL0Xqr8cBqs6bH3YSB6Alsd87gFCCLGyiDSfBqtHt
         JbOUVsLWviwz2up9aJFY0vziWuDZJWHiCySH9df5GMYla2byZ0GR+2uYzkM85j8co33n
         DajLb3wDeTMiK+oeODHIISQ0/tqmpFRH2i25BnnqP6NbM94vZ7r2Xkd/ZsuQjlgOhQVr
         QLjK5dKG1wm6+JEC6mgH12WoHidIkFnxB1cSSBN8Pg4HfYlgZ//Lwf3saBg/Z+bjhz3r
         ZEA7dcvC39/J5PMLjyOmgkbBa+OBTmGYXr1AtdIQMDgY2Jbv6BYXi+eNdc1DGnz8G4hU
         fcfg==
X-Gm-Message-State: AD7BkJJdD3bxyuCOPcmnjWjFkU94L1eGlemxJTf0aA/M3XzetACj+Ig9DJ7494P+N2DsBQ==
X-Received: by 10.66.120.202 with SMTP id le10mr16053861pab.155.1458231596456;
        Thu, 17 Mar 2016 09:19:56 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.126])
        by smtp.gmail.com with ESMTPSA id k88sm14507981pfj.0.2016.03.17.09.19.55
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 09:19:55 -0700 (PDT)
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
Subject: [PATCH v2] iwlwifi: dvm: use alloc_ordered_workqueue()
Date: Fri, 18 Mar 2016 00:19:21 +0800
Message-Id: <1458231561-13184-1-git-send-email-eraretuya@gmail.com>
X-Mailer: git-send-email 1.9.1

Use alloc_ordered_workqueue() to allocate the workqueue instead of
create_singlethread_workqueue() since the latter is deprecated and is scheduled
for removal.

There are work items doing related operations that shouldn't be swapped when
queued in a certain order hence preserve the strict execution ordering of a
single threaded (ST) workqueue by switching to alloc_ordered_workqueue().

WQ_MEM_RECLAIM flag is not needed since the worker is not supposed to free
memory.

Signed-off-by: Eva Rachel Retuya <eraretuya@gmail.com>
---
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


