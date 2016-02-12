X-GM-THRID: 6250348913456316416
X-Received: by 10.66.231.4 with SMTP id tc4mr1736376pac.14.1455287903795;
        Fri, 12 Feb 2016 06:38:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.91.137 with SMTP id z9ls1828434qgd.75.gmail; Fri, 12 Feb
 2016 06:38:23 -0800 (PST)
X-Received: by 10.129.4.201 with SMTP id 192mr1612358ywe.15.1455287903110;
        Fri, 12 Feb 2016 06:38:23 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id ff2si1465397pad.2.2016.02.12.06.38.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 12 Feb 2016 06:38:23 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id w128so3477912pfb.2
        for <outreachy-kernel@googlegroups.com>; Fri, 12 Feb 2016 06:38:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:to:cc:subject:date:message-id:in-reply-to:references;
        bh=eBCk/PRDNjH1RKd2yhs4gxbZ+Fs0uQzYrlQ15B2Fhrw=;
        b=R/pv1VQG5IajGpiGyUxXyFR995rxG8m1v9kYMZ1vUrxmfx5M6trqQFsF2X00BNIHAl
         Zl/LO8eE3yGaNuNqHhYdRzeCewM19eaXjqhwHc2L7OZEGwVzEve2zse/GlBZZ6owJvHp
         mz3tmc8+I1KSjcMk0KyDWp/HtSx1NJxAa3EgdpbhqNL8JsXv0RVDPREHv5x8Lyj+Jd/t
         iV+SryKMJLQM35badYrn+1OUS91dynsjfH+CpyJIEYLyUKZE491mPjgzRyOf/NnHu4Xs
         my31ORGDJgBMLZzEeGi0fftymMRYuSu+cFRBGILPwGrtLHYh48AxRNveVqsKrTaQlncz
         Q5pw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references;
        bh=eBCk/PRDNjH1RKd2yhs4gxbZ+Fs0uQzYrlQ15B2Fhrw=;
        b=JFSweb1LcmsAgGs9WnXPMnrvNj6v4kGlIIl0zWS112Up5ZU7yu2EIQr3Trxae0Ua+r
         KO+5f88QDH3TaFQYDpNBSJqLQvWqszs3MeP4hsMv3udyccBVp9pyMT9WBUzucHREbjpc
         J2VcJRSnknZfWCdyisyfwJC8LhmdeKmXqDT7uuqme0M5/QKzriTW6/p1e7+/47n3PnJP
         adkxcfLbM8e0kKDDcqITud5uwmpHGLgeTV8CVMl7qSH6DbMFeE936uQfCzSPFQ3vkd9o
         jELyiPau2uUd2wDQmtJtW7De2H9yc4SUS4dSMxNfr8LOdGWnZK5m/tkTCHz+xjsf8IDY
         ZkfQ==
X-Gm-Message-State: AG10YORauTozIB2dSzrhanZusFG15F0Ex3V2jj2EDQFGXoKAOpf/PkrMA+HAcXMeqfgcpg==
X-Received: by 10.98.16.202 with SMTP id 71mr2641180pfq.138.1455287902924;
        Fri, 12 Feb 2016 06:38:22 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from bhumirks@gmail.com ([106.215.170.230])
        by smtp.gmail.com with ESMTPSA id xg9sm3806452pac.9.2016.02.12.06.38.19
        (version=TLS1 cipher=AES128-SHA bits=128/128);
        Fri, 12 Feb 2016 06:38:22 -0800 (PST)
Received: by bhumirks@gmail.com (sSMTP sendmail emulation); Fri, 12 Feb 2016 20:08:13 +0530
From: Bhumika Goyal <bhumirks@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Bhumika Goyal <bhumirks@gmail.com>
Subject: [PATCH v2] Staging: lustre: llite: Remove NULL check before kfree
Date: Fri, 12 Feb 2016 20:07:54 +0530
Message-Id: <1455287874-18123-1-git-send-email-bhumirks@gmail.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1455272748-14400-1-git-send-email-bhumirks@gmail.com>
References: <1455272748-14400-1-git-send-email-bhumirks@gmail.com>

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
Changes since v1:
*Add the comment before kfree back.
---
 drivers/staging/lustre/lustre/llite/xattr.c | 9 ++++-----
 1 file changed, 4 insertions(+), 5 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/xattr.c b/drivers/staging/lustre/lustre/llite/xattr.c
index 8eb43f1..fa477e7 100644
--- a/drivers/staging/lustre/lustre/llite/xattr.c
+++ b/drivers/staging/lustre/lustre/llite/xattr.c
@@ -192,11 +192,10 @@ int ll_setxattr_common(struct inode *inode, const char *name,
 			 valid, name, pv, size, 0, flags,
 			 ll_i2suppgid(inode), &req);
 #ifdef CONFIG_FS_POSIX_ACL
-	if (new_value != NULL)
-		/*
-		 * Release the posix ACL space.
-		 */
-		kfree(new_value);
+	/*
+	 * Release the posix ACL space.
+	 */
+	kfree(new_value);
 	if (acl != NULL)
 		lustre_ext_acl_xattr_free(acl);
 #endif
-- 
1.9.1


