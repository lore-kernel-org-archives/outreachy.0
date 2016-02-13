X-GM-THRID: 6250792352904904704
X-Received: by 10.107.134.68 with SMTP id i65mr7796689iod.33.1455376006238;
        Sat, 13 Feb 2016 07:06:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.39.102 with SMTP id u93ls1759919qgu.45.gmail; Sat, 13 Feb
 2016 07:06:45 -0800 (PST)
X-Received: by 10.129.108.3 with SMTP id h3mr7122146ywc.31.1455376005575;
        Sat, 13 Feb 2016 07:06:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x229.google.com (mail-pa0-x229.google.com. [2607:f8b0:400e:c03::229])
        by gmr-mx.google.com with ESMTPS id 79si2407676pft.0.2016.02.13.07.06.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 07:06:45 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) client-ip=2607:f8b0:400e:c03::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::229 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x229.google.com with SMTP id fl4so49945660pad.0
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 07:06:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:mime-version:content-type
         :content-disposition:user-agent;
        bh=yFvv+fLBg5fQH0mU6hje5juVDvDNDc9UulRQGPzzLgE=;
        b=fGhK1qVTeEStBu/ZXe9DTJ0W5WBjxziElz0tJGDhYo4HC6/02W4/U25Y43vL5w0jLZ
         onfuqQWxh8Sc0eO+yTyel7vJLxYBQNxcej2ysYxNz1c8sGBzK9T5261nRFZeA9ckFbtZ
         Zhk7zuPa9XXcVrlqtUJKJ7PCCoxv47Y0QJYHNKGqcEKVx4DvQ2NR6Fol1VrfaQta1CX2
         p8XLi0+9u2gqTT9ICKJgMsJ/2+PaRLB8Wam9JiAkPp2lzYYOUZiuu07CvYTvD7ToLTPl
         DN7/a8n6MAn8jNmBNCWc2r/ummQrN2kK6rNizft7Z1lQZU4ltbMTcQTWxvRYkme0nq1O
         MTQg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:mime-version
         :content-type:content-disposition:user-agent;
        bh=yFvv+fLBg5fQH0mU6hje5juVDvDNDc9UulRQGPzzLgE=;
        b=YfveeZYEuhgcRIuCb+OiSdcDnZbwqjk+KjwONm/UFnCSe6jpcEBxaNe52ngWO4KQuO
         SrWSCE96Z/NZqEuvXYvFOqhFgtwsVc9bHbjgfWYR4MJ3u3SzFFpmljvjv91YW1z4N0/g
         lmLSZXqjFwDLKbKVs3Zpv5TAVyjQqdksJgG4Iag3XcOV4i1k/Ff7RRrODaSSgetdhhwL
         rNOwYB2I5dfXynHGjGy/affN/BFhYmR9/hnqNnJnPM9ZkU972fFgaDNZvyPk7LILHknP
         1BFS2rpXmXLEkWKTvA/ANyOp7HGH9VYcjXEXYr3fQAxV/rrIblLnY9ncESgKo03zw7T9
         Izdw==
X-Gm-Message-State: AG10YOQT5cikKAozkJ38yxUNrMxYZwf/KIT6aA7VG9vT/7iDZ52pFgQboOEKFM/uGmJbqQ==
X-Received: by 10.66.122.3 with SMTP id lo3mr10233197pab.25.1455376005388;
        Sat, 13 Feb 2016 07:06:45 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.69.135.170])
        by smtp.gmail.com with ESMTPSA id g81sm26870349pfj.1.2016.02.13.07.06.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Sat, 13 Feb 2016 07:06:44 -0800 (PST)
Date: Sat, 13 Feb 2016 20:36:41 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH] staging: lustre: llite: Use IS_ERR_OR_NULL
Message-ID: <20160213150641.GA26097@amitoj-Inspiron-3542>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
User-Agent: Mutt/1.5.21 (2010-09-15)

Use macro IS_ERR_OR_NULL in place of tests for NULL and IS_ERR.

The Coccinelle semantic patch used to make the change is as follows:

//<smpl>
@@
expression e;
@@

- e == NULL || IS_ERR(e)
+ IS_ERR_OR_NULL(e)
//</smpl>

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_lib.c | 4 ++--
 1 file changed, 2 insertions(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
index 446e4b8..5a32f9f 100644
--- a/drivers/staging/lustre/lustre/llite/llite_lib.c
+++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
@@ -493,7 +493,7 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
 	md_free_lustre_md(sbi->ll_md_exp, &lmd);
 	ptlrpc_req_finished(request);
 
-	if (root == NULL || IS_ERR(root)) {
+	if (IS_ERR_OR_NULL(root)) {
 		if (lmd.lsm)
 			obd_free_memmd(sbi->ll_dt_exp, &lmd.lsm);
 #ifdef CONFIG_FS_POSIX_ACL
@@ -1965,7 +1965,7 @@ int ll_prep_inode(struct inode **inode, struct ptlrpc_request *req,
 		*inode = ll_iget(sb, cl_fid_build_ino(&md.body->fid1,
 					     sbi->ll_flags & LL_SBI_32BIT_API),
 				 &md);
-		if (*inode == NULL || IS_ERR(*inode)) {
+		if (IS_ERR_OR_NULL(*inode)) {
 #ifdef CONFIG_FS_POSIX_ACL
 			if (md.posix_acl) {
 				posix_acl_release(md.posix_acl);
-- 
1.9.1


