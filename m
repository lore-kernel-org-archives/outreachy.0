X-GM-THRID: 2505387802624
X-Received: by 10.194.142.174 with SMTP id rx14mr779038wjb.4.1424622180461;
        Sun, 22 Feb 2015 08:23:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.26.74 with SMTP id j10ls468978lag.7.gmail; Sun, 22 Feb
 2015 08:23:00 -0800 (PST)
X-Received: by 10.112.146.65 with SMTP id ta1mr765381lbb.19.1424622180014;
        Sun, 22 Feb 2015 08:23:00 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o3si503243wib.2.2015.02.22.08.22.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 08:22:59 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f175.google.com with SMTP id r20so12151788wiv.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 08:22:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=qk8GIg12TpuejY2HgWxnsMRgWosF1+I9TTTVcKRn5Zk=;
        b=JncHg9JshKug5XK+1D7gz6D+pYgb5hE2nZJj/zLfC4+dRWXKh8DEThoLy1L/G55dlf
         XxevZnbHT8LpMTywyZcsoDpich/L/rvZeemQcw6zXSLywVrZjezCFzKDDuoX3lTp75x1
         nGdjgRPc9HtCBJfgFVDc7GqDxvxtYEjfzPckQr6GXtbq3U5X7J6H1VPPUf+zxfuvup4U
         XRi2sRoTlpU1/vUh1e7LSHygaX+0f1QgiSlz6zDa/7+dgCEGrmLPU0qxegUG9bJQUZ+V
         Rr5Molw4zcvyxlcwi+E9EXigRXt+4Qy7X66U+Um4WyBFoWiqbSczHc6NEp71gPflGA5T
         obRg==
X-Received: by 10.194.95.66 with SMTP id di2mr14135628wjb.57.1424622179916;
        Sun, 22 Feb 2015 08:22:59 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from localhost.localdomain (77-46-215-254.static.isp.telekom.rs. [77.46.215.254])
        by mx.google.com with ESMTPSA id d10sm51718115wjn.45.2015.02.22.08.22.58
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 22 Feb 2015 08:22:59 -0800 (PST)
From: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: [PATCH] Staging: rtl8192u:  Remove trailing whitespace.
Date: Sun, 22 Feb 2015 17:22:51 +0100
Message-Id: <1424622171-19110-1-git-send-email-ksenija.stanojevic@gmail.com>
X-Mailer: git-send-email 1.9.1

This patch removes whitespace at the end of the line.
Issue found by checkpatch.pl.

Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
---
 drivers/staging/rtl8192u/ieee80211/ieee80211_module.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
index 0a76f81..03ebd5b 100644
--- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
+++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
@@ -284,7 +284,7 @@ int __init ieee80211_debug_init(void)
 				" proc directory\n");
 		return -EIO;
 	}
-	e = proc_create("debug_level", S_IRUGO | S_IWUSR, 
+	e = proc_create("debug_level", S_IRUGO | S_IWUSR,
 			      ieee80211_proc, &fops);
 	if (!e) {
 		remove_proc_entry(DRV_NAME, init_net.proc_net);
-- 
1.9.1


