Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr [192.134.164.83])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FB48211A
	for <outreachy@lists.linux.dev>; Thu, 16 Mar 2023 08:48:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
  d=inria.fr; s=dc;
  h=date:from:to:subject:message-id:mime-version;
  bh=YztLOtFQKnpjNEc1vfP9gOsWU9yD/wtKhK/cE2mVBto=;
  b=LhArnlHr0ljgeNw/3AwNHwAvi5hvY+uM3vrSWVlPLLhNeTUOCITMZ2ec
   Z2ADI1SlgTbBuMI8a157jN5wYgIe6JnAMe9N00TSbgL6bqPBQFEcy5gy6
   3gMTWxiKmQWbKXzx313mu9oB1Omej82QbIZVrBMLqghNns5tYXa+2iS2K
   Y=;
Authentication-Results: mail2-relais-roc.national.inria.fr; dkim=none (message not signed) header.i=none; spf=SoftFail smtp.mailfrom=julia.lawall@inria.fr; dmarc=fail (p=none dis=none) d=inria.fr
X-IronPort-AV: E=Sophos;i="5.98,265,1673910000"; 
   d="scan'208";a="97495548"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/ECDHE-RSA-AES256-GCM-SHA384; 16 Mar 2023 09:48:02 +0100
Date: Thu, 16 Mar 2023 09:48:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: [PATCH] xen: remove unnecessary (void*) conversions (fwd)
Message-ID: <df1c16ee-b613-c31b-44c0-27fad68eaf9b@inria.fr>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

There may be some opportunities for this kind of change in staging.

julia

---------- Forwarded message ----------
Date: Thu, 16 Mar 2023 16:39:54 +0800
From: Yu Zhe <yuzhe@nfschina.com>
To: jgross@suse.com, sstabellini@kernel.org, oleksandr_tyshchenko@epam.com
Cc: xen-devel@lists.xenproject.org, linux-kernel@vger.kernel.org,
    kernel-janitors@vger.kernel.org, liqiong@nfschina.com,
    Yu Zhe <yuzhe@nfschina.com>
Subject: [PATCH] xen: remove unnecessary (void*) conversions

Pointer variables of void * type do not require type cast.

Signed-off-by: Yu Zhe <yuzhe@nfschina.com>
---
 drivers/xen/xenfs/xensyms.c | 10 +++++-----
 1 file changed, 5 insertions(+), 5 deletions(-)

diff --git a/drivers/xen/xenfs/xensyms.c b/drivers/xen/xenfs/xensyms.c
index c6c73a33c44d..b799bc759c15 100644
--- a/drivers/xen/xenfs/xensyms.c
+++ b/drivers/xen/xenfs/xensyms.c
@@ -64,7 +64,7 @@ static int xensyms_next_sym(struct xensyms *xs)

 static void *xensyms_start(struct seq_file *m, loff_t *pos)
 {
-	struct xensyms *xs = (struct xensyms *)m->private;
+	struct xensyms *xs = m->private;

 	xs->op.u.symdata.symnum = *pos;

@@ -76,7 +76,7 @@ static void *xensyms_start(struct seq_file *m, loff_t *pos)

 static void *xensyms_next(struct seq_file *m, void *p, loff_t *pos)
 {
-	struct xensyms *xs = (struct xensyms *)m->private;
+	struct xensyms *xs = m->private;

 	xs->op.u.symdata.symnum = ++(*pos);

@@ -88,7 +88,7 @@ static void *xensyms_next(struct seq_file *m, void *p, loff_t *pos)

 static int xensyms_show(struct seq_file *m, void *p)
 {
-	struct xensyms *xs = (struct xensyms *)m->private;
+	struct xensyms *xs = m->private;
 	struct xenpf_symdata *symdata = &xs->op.u.symdata;

 	seq_printf(m, "%016llx %c %s\n", symdata->address,
@@ -120,7 +120,7 @@ static int xensyms_open(struct inode *inode, struct file *file)
 		return ret;

 	m = file->private_data;
-	xs = (struct xensyms *)m->private;
+	xs = m->private;

 	xs->namelen = XEN_KSYM_NAME_LEN + 1;
 	xs->name = kzalloc(xs->namelen, GFP_KERNEL);
@@ -138,7 +138,7 @@ static int xensyms_open(struct inode *inode, struct file *file)
 static int xensyms_release(struct inode *inode, struct file *file)
 {
 	struct seq_file *m = file->private_data;
-	struct xensyms *xs = (struct xensyms *)m->private;
+	struct xensyms *xs = m->private;

 	kfree(xs->name);
 	return seq_release_private(inode, file);
-- 
2.11.0

