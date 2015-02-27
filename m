X-GM-THRID: 4799843008512
X-Received: by 10.180.87.166 with SMTP id az6mr827910wib.1.1425069812152;
        Fri, 27 Feb 2015 12:43:32 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.108.3 with SMTP id hg3ls197060wib.37.gmail; Fri, 27 Feb
 2015 12:43:30 -0800 (PST)
X-Received: by 10.180.89.194 with SMTP id bq2mr749101wib.4.1425069810896;
        Fri, 27 Feb 2015 12:43:30 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id ev8si182002wib.3.2015.02.27.12.43.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 12:43:30 -0800 (PST)
Received-SPF: pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of aysemelikeyurtoglu@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=aysemelikeyurtoglu@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x22b.google.com with SMTP id k48so22643192wev.0
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 12:43:30 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=lAw+LonQFp4hDQvFXrbg8GJwOwx5syw4bMUnlM3B6SE=;
        b=T1Dq81HekcpNkak7rcyATr7J7YmKF3ThxdBCRSqup8J0eiYybcwIQb3bp2juj5Aqed
         xCVC6vUvzYBR2lK8EoLAkVCiboaS46QlNqBandECBSxxTc/kFz3OfU/o0AKdzze3bqDD
         e0EzeyvXfgwmBGWWWRjnHIgSMyjfpGKYyKnZLgdxnqh+21c3SWGW/vluLHObQTRVlPba
         +5W5JUWzVm9sVQH32QI1WYwm407Ho2A/oz0OX1HkNGWr6t1oZqwDVBLs9lKiHLEgfjMh
         xf4rAxsldYAqOfgcGITO2CdupacCX9rkDDHNhzFlMWAXOn2bqICO/gASLzk1vg+rFysi
         dGmA==
X-Received: by 10.180.82.129 with SMTP id i1mr10013404wiy.77.1425069810846;
        Fri, 27 Feb 2015 12:43:30 -0800 (PST)
Return-Path: <aysemelikeyurtoglu@gmail.com>
Received: from localhost.localdomain ([151.250.87.133])
        by mx.google.com with ESMTPSA id fo15sm4330473wic.19.2015.02.27.12.43.29
        (version=TLSv1.1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 12:43:30 -0800 (PST)
From: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
Subject: [PATCH 3/3] Staging: lustre: Deleted space prohibited between function name and open parenthesis
Date: Fri, 27 Feb 2015 22:42:11 +0200
Message-Id: <1425069731-30165-4-git-send-email-aysemelikeyurtoglu@gmail.com>
X-Mailer: git-send-email 1.8.3.2
In-Reply-To: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>
References: <1425069731-30165-1-git-send-email-aysemelikeyurtoglu@gmail.com>

WARNING: space prohibited between function name and open parenthesis '('
Remove unnecessary space between function name and opening parenthesis.
That was found by running checkpatch

Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
---
 drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
index 34372cd..251915f 100644
--- a/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
+++ b/drivers/staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c
@@ -181,7 +181,7 @@ static const char *ll_eopcode2str(__u32 opcode)
 	return ll_eopcode_table[opcode].opname;
 }
 
-#if defined (CONFIG_PROC_FS)
+#if defined(CONFIG_PROC_FS)
 static void ptlrpc_lprocfs_register(struct proc_dir_entry *root, char *dir,
 				    char *name,
 				    struct proc_dir_entry **procroot_ret,
-- 
1.8.3.2


