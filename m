X-GM-THRID: 6205040264708358144
X-Received: by 10.66.158.229 with SMTP id wx5mr29413080pab.3.1444742424101;
        Tue, 13 Oct 2015 06:20:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.106 with SMTP id k97ls3023434qgd.83.gmail; Tue, 13 Oct
 2015 06:20:23 -0700 (PDT)
X-Received: by 10.129.74.198 with SMTP id x189mr29813982ywa.53.1444742423628;
        Tue, 13 Oct 2015 06:20:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id pe1si262963pac.2.2015.10.13.06.20.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Oct 2015 06:20:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id rc13so21617727pab.0
        for <outreachy-kernel@googlegroups.com>; Tue, 13 Oct 2015 06:20:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=//7XGOo3tO2Vvap8reSv3McsKPv/hgEDwFRhpBKQttw=;
        b=yxCMrNzLz52NMYnNkJLujksiW1cfgKyAcItrtspI4+FSqnc/o29KZfyXW/8ldu9DZx
         K+n083WkNMLwMrRJQnr2fVOhJ6KP/L4IX67k3Qn4oIxfdFhCHS7CPdmrYHV6+Vck0ri9
         NF478JUwBy1UF7+WBuQc6cPat5+tzDjfo7g5Fcry+bUESeVEXvm21S3yQx/wrRDqi9VJ
         rHVhcKo7YH5HAiMppRRcOSNkCYwcPkUYmv19WE4qTGZ2m6Mqcd4bNvG9QRc67ofFZlCh
         84mQw4A8Ig3EYPke+dnXuZvG/9BQqTFFRZgJxdj5KzPC1kB6vVuMpXv1aFC0aAoiDba2
         Yvnw==
X-Received: by 10.66.138.11 with SMTP id qm11mr40529816pab.126.1444742423456;
        Tue, 13 Oct 2015 06:20:23 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from localhost ([182.64.164.27])
        by smtp.gmail.com with ESMTPSA id aw5sm3984936pbc.13.2015.10.13.06.20.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Tue, 13 Oct 2015 06:20:22 -0700 (PDT)
Date: Tue, 13 Oct 2015 18:50:18 +0530
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: [PATCH 1/2] staging: lustre: llite: Remove useless cast on void
 pointer
Message-ID: <9d30555abbf8b39cec6b245999adeca7a58a7f7b.1444742061.git.amitoj1606@gmail.com>
References: <cover.1444742060.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1444742060.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

The semantic patch used to find this is:

@r@
expression x;
void* e;
type T;
identifier f;
@@

(
  *((T *)e)
|
  ((T *)x)[...]
|
  ((T *)x)->f
|
- (T *)
  e
)

Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
---
 drivers/staging/lustre/lustre/llite/llite_nfs.c | 3 +--
 1 file changed, 1 insertion(+), 2 deletions(-)

diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/staging/lustre/lustre/llite/llite_nfs.c
index 400acacc..f992eda1 100644
--- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
+++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
@@ -78,8 +78,7 @@ void get_uuid2fsid(const char *name, int len, __kernel_fsid_t *fsid)
 
 static int ll_nfs_test_inode(struct inode *inode, void *opaque)
 {
-	return lu_fid_eq(&ll_i2info(inode)->lli_fid,
-			 (struct lu_fid *)opaque);
+	return lu_fid_eq(&ll_i2info(inode)->lli_fid, opaque);
 }
 
 struct inode *search_inode_for_lustre(struct super_block *sb,
-- 
1.9.1


