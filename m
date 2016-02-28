X-GM-THRID: 6256396302413725696
X-Received: by 10.13.236.84 with SMTP id v81mr9689048ywe.2.1456680778980;
        Sun, 28 Feb 2016 09:32:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.16.164 with SMTP id 33ls2513262qgb.61.gmail; Sun, 28 Feb
 2016 09:32:58 -0800 (PST)
X-Received: by 10.129.116.214 with SMTP id p205mr10108711ywc.55.1456680778583;
        Sun, 28 Feb 2016 09:32:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x22c.google.com (mail-pf0-x22c.google.com. [2607:f8b0:400e:c00::22c])
        by gmr-mx.google.com with ESMTPS id y20si1052812pfa.2.2016.02.28.09.32.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 09:32:58 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) client-ip=2607:f8b0:400e:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::22c as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22c.google.com with SMTP id t66so12485340pfb.3
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 09:32:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=b8Vkh5r3cDfMPUWme1GTmy3Gfa/hAc9AxI9LdGMgkWI=;
        b=EyiwUMAxv24FAPtaOuYoTxLJeN2wCp6H0TbNNzw/Ar3hhf2E63OPtCKFk/jMca7aCQ
         NERMXz/bIsgGG/CkKkXGol1jKIx9u09biFtrOVi1U8cjZSh98wgws8RCeuyrDzQvCM4y
         02WjcRiI9mtwTjoA/Rp3u8H/FezMk9SZm1tuGOxDWrfdFGT6aYIptuTa5T7450N7gLHg
         qi1/GxkyLxjLfF9QHNLyvXvcjM92Eed7AP6siPlY20suHq75Vt1jlIlfP0qeoLhtcvV9
         LgbgDtOa7C6dh0odU2icfB4Tr7OhLUWeykYMoavj6TrRT2atVDLG0h4zT0PF3GqML1L5
         VZRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=b8Vkh5r3cDfMPUWme1GTmy3Gfa/hAc9AxI9LdGMgkWI=;
        b=N+SgT30CZk2NuY4Muca4EbszmWcob2BabExqpBCdoRcEs8jh0G0qKG8C0KlzY4WNx5
         /iMAo3hOSY8npdKJd1tIIgq1OessqdCxhURNlEYA+9L5R4Hq1PIn4E1A6SLKgNVP5uzC
         8IXfGQgWmfFvGYv/OGEQpTCSLN0uIfutf0IZ2EpMnWEZYCwKrqoBPv7+eGqS8uWyFpoG
         dPZ5Nxq81iTji6CUfk89aoMG5H6TvPVrS+YkaGCpfvP4HvNS//9BNxc3rW9uAIToiYKp
         u7pzxooc2kxEmxWpCivVziWeembD22ANdQWp+NQGFIjDv0+0lhp6/54Ctp1PHZEpg/Fl
         veAQ==
X-Gm-Message-State: AD7BkJKTtJaCWNTxihCIfolieiOHtO9Uei1MDgD0Yiv7sWziqTQKK7ngsL3xueGXuwCxXQ==
X-Received: by 10.98.33.28 with SMTP id h28mr13266303pfh.54.1456680778396;
        Sun, 28 Feb 2016 09:32:58 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.134.212])
        by smtp.gmail.com with ESMTPSA id b2sm32423720pfd.24.2016.02.28.09.32.54
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Sun, 28 Feb 2016 09:32:58 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Sun, 28 Feb 2016 23:02:48 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: gdm724x: Remove print statement on failure
Date: Sun, 28 Feb 2016 23:02:47 +0530
Message-Id: <1456680767-435-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

The  memory allocation functions generates a call stack containing
all the context information on failure, so print statements can be
removed on failure of these functions.
Done using coccinelle:

@@
expression e;
@@

e=\(kmalloc\|kmalloc\|kmalloc_array\|alloc_netdev\|kzalloc\|
   devm_kzalloc\|devm_ioremap\)(...);
...
if(!e){
- \(DBG_8723A\|printk\|pr_err\|CERROR\|DBG_88E\)(...);
...when any
}

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/gdm724x/gdm_lte.c | 1 -
 1 file changed, 1 deletion(-)

diff --git a/drivers/staging/gdm724x/gdm_lte.c b/drivers/staging/gdm724x/gdm_lte.c
index 98570c6..44163e4 100644
--- a/drivers/staging/gdm724x/gdm_lte.c
+++ b/drivers/staging/gdm724x/gdm_lte.c
@@ -890,7 +890,6 @@ int register_lte_device(struct phy_dev *phy_dev,
 		net = alloc_netdev(sizeof(struct nic), pdn_dev_name,
 				   NET_NAME_UNKNOWN, ether_setup);
 		if (!net) {
-			pr_err("alloc_netdev failed\n");
 			ret = -ENOMEM;
 			goto err;
 		}
-- 
1.9.1


