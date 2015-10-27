X-GM-THRID: 6210359704363728896
X-Received: by 10.66.182.135 with SMTP id ee7mr21656726pac.32.1445962252766;
        Tue, 27 Oct 2015 09:10:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.114.102 with SMTP id jf6ls993409igb.5.gmail; Tue, 27 Oct
 2015 09:10:52 -0700 (PDT)
X-Received: by 10.66.255.3 with SMTP id am3mr21380715pad.30.1445962252472;
        Tue, 27 Oct 2015 09:10:52 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id zg1si4369530pbb.2.2015.10.27.09.10.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 09:10:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pabla5 with SMTP id la5so33615751pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 09:10:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=oW17B3l7wtTAHcx7LPswXV+2wLIk5fOH8A7/no9U5n4=;
        b=tWXllXn8ORWxW7fmSr1hkm1dtJr/1RHzF4hMRoEnSFd1pXmAvFEubx1ACA168ziuKs
         8ss/VlBhtiprLmFTBrahb2znNThHmfUUpOY8GcGVHAzvp3aHUXRVRDVazcVCAYdKocj+
         rOao9TvlPWZ48MmP6FPcDTmbUQSZfS0S6m3KtMc6ozCT6e/FHnGSx7JZ7czA6OlhroAN
         NPTvRgw+PnJb9duoPwWSkiT/gx5zPRFSIzWOkA/1Czxy7JOwFgQLJgKSAdeWz42ZPaW5
         303zxr0FGMRPOpetAHykQUq1rBbQ1Wku+gHRTMHTd2YqPiDYlXiA+ZlKCxR+DffEUfiM
         k5xw==
X-Received: by 10.66.221.6 with SMTP id qa6mr29017713pac.9.1445962252382;
        Tue, 27 Oct 2015 09:10:52 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (ip68-108-246-21.sb.sd.cox.net. [68.108.246.21])
        by smtp.gmail.com with ESMTPSA id ci2sm40454365pbc.66.2015.10.27.09.10.51
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Oct 2015 09:10:51 -0700 (PDT)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: y2038@lists.linaro.org,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH 3/5] fs: nfsd: Replace time_t with u32 in nfsd4_grace
Date: Tue, 27 Oct 2015 09:10:45 -0700
Message-Id: <450ff5ca919b9c63b57d00d29f41024624c4cbed.1445960986.git.ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <cover.1445960986.git.ksenija.stanojevic@gmail.com>
References: <cover.1445960986.git.ksenija.stanojevic@gmail.com>

Replace time_t type and get_seconds function which are not y2038 safe on
32-bit systems. Function ktime_get_seconds use monotonic instead of real
time and therefore will not cause overflow.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 fs/nfsd/netns.h     | 2 +-
 fs/nfsd/nfs4state.c | 2 +-
 fs/nfsd/nfsctl.c    | 2 +-
 3 files changed, 3 insertions(+), 3 deletions(-)

diff --git a/fs/nfsd/netns.h b/fs/nfsd/netns.h
index 85b114f..aeaf896 100644
--- a/fs/nfsd/netns.h
+++ b/fs/nfsd/netns.h
@@ -95,7 +95,7 @@ struct nfsd_net {
 	struct nfsd4_client_tracking_ops *client_tracking_ops;
 
 	u32 nfsd4_lease;
-	time_t nfsd4_grace;
+	u32 nfsd4_grace;
 
 	bool nfsd_net_up;
 	bool lockd_up;
diff --git a/fs/nfsd/nfs4state.c b/fs/nfsd/nfs4state.c
index 4bceb878..4b3c87d 100644
--- a/fs/nfsd/nfs4state.c
+++ b/fs/nfsd/nfs4state.c
@@ -6608,7 +6608,7 @@ nfs4_state_start_net(struct net *net)
 	nn->nfsd4_manager.block_opens = true;
 	locks_start_grace(net, &nn->nfsd4_manager);
 	nfsd4_client_tracking_init(net);
-	printk(KERN_INFO "NFSD: starting %ld-second grace period (net %p)\n",
+	printk(KERN_INFO "NFSD: starting %x-second grace period (net %p)\n",
 	       nn->nfsd4_grace, net);
 	queue_delayed_work(laundry_wq, &nn->laundromat_work, nn->nfsd4_grace * HZ);
 	return 0;
diff --git a/fs/nfsd/nfsctl.c b/fs/nfsd/nfsctl.c
index 6e0cfd6..e1709ce 100644
--- a/fs/nfsd/nfsctl.c
+++ b/fs/nfsd/nfsctl.c
@@ -960,7 +960,7 @@ static ssize_t __nfsd4_write_time(struct file *file, char *buf, size_t size,
 		*time = i;
 	}
 
-	return scnprintf(buf, SIMPLE_TRANSACTION_LIMIT, "%ld\n", *time);
+	return scnprintf(buf, (u32)SIMPLE_TRANSACTION_LIMIT, "%x\n", *time);
 }
 
 static ssize_t nfsd4_write_time(struct file *file, char *buf, size_t size,
-- 
1.9.1


