Received: from msg-2.mailo.com (msg-2.mailo.com [213.182.54.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 906DB17CE
	for <outreachy@lists.linux.dev>; Thu, 23 Mar 2023 04:23:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=simple/simple; d=mailo.com; s=mailo;
	t=1679545382; bh=6fbHHsBeBc2DQibIRb94fW/s3x2w8vf/h/zav2omqis=;
	h=X-EA-Auth:Date:From:To:Subject:Message-ID:MIME-Version:
	 Content-Type;
	b=gcpW6xDy9Cfjz/fjCDW5iceoRx3Wf14j8NpMxq9TPcjZyrilBPK8+/lmLq2nZmwde
	 VItPasU+sEddQC4diCXgfxKuwnWjiJbkqKnCUS9jgxsWT6a5bckJLiUuGPJ9mUtvXs
	 vL0bCgzBUShVNCEwil4V14+NEU9KPhXyU1XX49kk=
Received: by b221-5.in.mailobj.net [192.168.90.25] with ESMTP
	via ip-20.mailobj.net [213.182.54.20]
	Thu, 23 Mar 2023 05:23:02 +0100 (CET)
X-EA-Auth: WeroWiXPuX5J2zC1rCrSv8jKCUeeraywSBdGz3wOSySEa9cniMbzda2l80GL6K1krxvBxoNEa73MYHvEU5OVjV5PX4lkcvhl
Date: Thu, 23 Mar 2023 09:52:43 +0530
From: Deepak R Varma <drv@mailo.com>
To: outreachy@lists.linux.dev
Subject: [julia.lawall@inria.fr: [PATCH] xen: remove unnecessary (void*)
 conversions (fwd)]
Message-ID: <ZBvUE/js1l0c0gSu@ubun2204.myguest.virtualbox.org>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline

Hi All,
Just wanted to re-run this useful advise from Julia earlier on some useful
improvement opportunities.

Thank you Julia for the initial recommendation.

Deepak.

----- Forwarded message from Julia Lawall <julia.lawall@inria.fr> -----

Date: Thu, 16 Mar 2023 09:48:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
To: outreachy@lists.linux.dev
Subject: [PATCH] xen: remove unnecessary (void*) conversions (fwd)

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



----- End forwarded message -----


