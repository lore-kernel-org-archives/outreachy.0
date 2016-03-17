X-GM-THRID: 6261572642217656320
X-Received: by 10.129.117.11 with SMTP id q11mr6634549ywc.3.1458218332779;
        Thu, 17 Mar 2016 05:38:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.25.200 with SMTP id 191ls831249ioz.19.gmail; Thu, 17 Mar
 2016 05:38:52 -0700 (PDT)
X-Received: by 10.107.6.149 with SMTP id f21mr6650359ioi.25.1458218332290;
        Thu, 17 Mar 2016 05:38:52 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from mail-pf0-x233.google.com (mail-pf0-x233.google.com. [2607:f8b0:400e:c00::233])
        by gmr-mx.google.com with ESMTPS id sf5si1286109pac.1.2016.03.17.05.38.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 17 Mar 2016 05:38:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) client-ip=2607:f8b0:400e:c00::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of eraretuya@gmail.com designates 2607:f8b0:400e:c00::233 as permitted sender) smtp.mailfrom=eraretuya@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x233.google.com with SMTP id u190so119337401pfb.3
        for <outreachy-kernel@googlegroups.com>; Thu, 17 Mar 2016 05:38:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=YFyhj/J/e68lAECWMgnImARZGAfuFRdrZZV+TQ+mKeM=;
        b=aXn0wcZ1sFy6dCU5sIoD9EJT5kN42b/lqVpXPZTAddii75rXx/RFln2t6nRv89Uxvs
         AqfjGJXEINCriqnnwi4HPzmmt2+fzXiWAZT5dklDcVLj9Ax1OTTCs3IGIjgOmDH0yM1e
         AhpGeOmov3WR7Es7MhEPzeHP1oaFURlP/H4HHVTXiQkX9KRWTImUgCy35y3Oqx3yTSnH
         acGgR2VPAKnVBKvv6Nq/ro5WCIq3QDV2hd8Y/LIVX4LDAJzktxybk+cKgzPe6/bLwnbg
         q2xQZ37SO/S6FTGvJ7xI1duN/HkRJ+cvfbxd3XnRM0/vNwSi9ec0tg7qKBweuKzrrIYO
         ycUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=YFyhj/J/e68lAECWMgnImARZGAfuFRdrZZV+TQ+mKeM=;
        b=kFhBAvBRTENRd8JHUkwl6Dqhg+isa1XSyk7FgWc3eIZCRFM1y6eOhmRdPI00hTUX8g
         g+LxzaX/vuO5lAsutbdEYRKv4jejqn3heT2yA22BO/I0O08duBq+Hx/9s8lc/QyEeZDE
         GJO55RgINJG1qAS1OHpxa1NxUTM18GiqAo3PRSJcf16WEIAusO9fYhpHxjVMXKH+ZY04
         lZRRmdLZlR3pBAKiov0dwCDGfyv6aUtemJ2JTsj/5jKi8ofcQNJpzvqt57AnLaUVZIQE
         NwGCMs3TEqs+YsY266aaPdlPdJpyRZVyFNhjIf0pBBRsDIL5hLP4ZT0FF4BjSht0fOfS
         Muog==
X-Gm-Message-State: AD7BkJKKFBP/QuIlzgaWJE+mqU1M0nwbqGw0nMlEhwKPB7xz89t1bqVsHWtCMTg/fjHb2w==
X-Received: by 10.98.16.18 with SMTP id y18mr1063586pfi.113.1458218332102;
        Thu, 17 Mar 2016 05:38:52 -0700 (PDT)
Return-Path: <eraretuya@gmail.com>
Received: from Socrates-Mint ([203.215.121.126])
        by smtp.gmail.com with ESMTPSA id wb7sm13258601pab.3.2016.03.17.05.38.50
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 17 Mar 2016 05:38:51 -0700 (PDT)
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
Subject: [PATCH] iwlwifi: dvm: convert create_singlethread_workqueue() to alloc_workqueue()
Date: Thu, 17 Mar 2016 20:37:26 +0800
Message-Id: <1458218246-18807-1-git-send-email-eraretuya@gmail.com>
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
To the maintainers:
Just to confirm, are work items depended upon during memory reclaim? If not, the WQ_MEM_RECLAIM flag will be dropped. I added it just in case since create_singlethread_workqueue() also sets this flag.

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


