X-GM-THRID: 6250348913456316416
X-Received: by 10.182.254.35 with SMTP id af3mr571647obd.37.1455272760445;
        Fri, 12 Feb 2016 02:26:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.46.73 with SMTP id j67ls1270835qga.13.gmail; Fri, 12 Feb
 2016 02:25:59 -0800 (PST)
X-Received: by 10.129.109.197 with SMTP id i188mr606058ywc.8.1455272759514;
        Fri, 12 Feb 2016 02:25:59 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id u66si1524442pfa.2.2016.02.12.02.25.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 02:25:59 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id yy13so44773157pab.3
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 02:25:59 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id;
        bh=TgcpEITp6ggCPcVXlg6gShQIjHJrzjtZgAq6JjgdJfE=;
        b=YjuTI5E/8ZNX5ev2ZwwZb+iXsBOoDmqFZxcueyYn3FqJwjTUewlwfq5g+MbkZTb8QW
         XG5GaWY1QCEMumh6i06VDp6T79zeJ7mBbqL3W3kSI1HLTZJXSeYwrJv9l4x4Pd8H1AYI
         KjzVOu/pm23jOyOGHpUtzPabkxdVVWtkYbsxR8UFIrfAtPF7N0lsvVGpmtet955TcHaU
         ktOeLcbB33dOFSagP/Mw8sNyEv7uMh9KORSlr2f9Af3Vv0bh4FDdRbvuhfxOnUVluwll
         McgZsaV9GoA2GNUpZv8iMxmvN1vLFzZMAq+pl6USkMJqWieNJ/yt0hPC4w9oOAJSIKW4
         Zcqw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=TgcpEITp6ggCPcVXlg6gShQIjHJrzjtZgAq6JjgdJfE=;
        b=d7a29I4oFnwa/S390kPfp5BDsNGe5563fB52CL9UEWgcAs9C9oblj20yYhck0vk58f
         mYyd+eidCFTVdGShWogbS7NUsRkwaIjodMKFG//VuF2XovP8LxFoIkasG+9q1AXHx7q5
         8sMvOiXADiQF93Q8No0460bpF3Or6Rwql8ldi8HRjEvXcJ3kmrDuM1yGicVoLcmhewMv
         D+ED+oPWKYbc8yWx1uDWV4+YleFbhVDMoHZxHLqp3MZEHyKqgMOHPKEjlpELKzBbEA5/
         CJcTw3gbMvE6h2Z97BpaV2+jJr8lXFwLFjAeYAwNyQ6RLHGTWWgP8lG4sT/Bexv8DPxP
         h5Og==
X-Gm-Message-State: AG10YORa/XcDvvgy/BcSkkRW1EejLbWjadfGalpf8sGiAIBXjK9H23Zp6Ff9b37T2DMABA==
X-Received: by 10.66.190.131 with SMTP id gq3mr990189pac.42.1455272759376;
        Fri, 12 Feb 2016 02:25:59 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.159.20])
        by smtp.gmail.com with ESMTPSA id x12sm18318334pfi.88.2016.02.12.02.25.55
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 02:25:58 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 15:55:49 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH] Staging: lustre: llite: Remove NULL check before kfree
Date: Fri, 12 Feb 2016 15:55:48 +0530
Message-Id: <1455272748-14400-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1

NULL check before kfree is unnecessary so remove it.
Semantic patch used:
// <smpl>
@@ expression E; @@
- if (E != NULL) { kfree(E); }
+ kfree(E);
@@ expression E; @@
- if (E != NULL) { kfree(E); E = NULL; }
+ kfree(E);
+ E = NULL;
// </smpl>

Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
---
 drivers/staging/lustre/lustre/llite/xattr.c | 6 +-----
 1 file changed, 1 insertion(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
index 8eb43f1..310e381 100644
--- a/drivers/staging/lustre/lustre/llite/xattr.c
+++ b/drivers/staging/lustre/lustre/llite/xattr.c
@@ -192,11 +192,7 @@ int ll_setxattr_common(struct inode *inode, const char *name,
 			 valid, name, pv, size, 0, flags,
 			 ll_i2suppgid(inode), &req);
 #ifdef CONFIG_FS_POSIX_ACL
-	if (new_value != NULL)
-		/*
-		 * Release the posix ACL space.
-		 */
-		kfree(new_value);
+	kfree(new_value);
 	if (acl != NULL)
 		lustre_ext_acl_xattr_free(acl);
 #endif
-- 
1.9.1


