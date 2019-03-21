X-GM-THRID: 6670775927443554304
X-Received: by 2002:aca:c0c2:: with SMTP id q185mr2393899oif.118.1553181625991;
        Thu, 21 Mar 2019 08:20:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:4143:: with SMTP id o64ls150969oia.8.gmail; Thu, 21 Mar
 2019 08:20:25 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxaiH8EjyTgKpgCdTFmphyUqTdBOeFewrOcReptGbQCqRRlj3ozGGB7NAVPfkGr1rtkwTse
X-Received: by 2002:aca:f2c4:: with SMTP id q187mr2512553oih.168.1553181625019;
        Thu, 21 Mar 2019 08:20:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553181625; cv=none;
        d=google.com; s=arc-20160816;
        b=uK29lUwaC/S+kgurtKEFdRwbJMgygnORlo3pcqWZRGEIcqIRPc5CTyorErZgjjcHAt
         0KagVxmqeDVUO9R9XuxdleuJOhnrVzAMjLZT35U8I5OhsoFBM3//duOV1isRjottiheg
         uRk+brDvV1o2yKD5z1c+fCF/lUuwLDgaqvNi9Z1FI7lkQG3uVP2UQezdGzpHNu4U55wf
         M1DBFnd8Yhzg7IW42Y1to1qjwcmymj6a0xKM4ANugx3HRCz6bJrv4ZJVlw7v0U5OZaIe
         WO3vN2wpJk0BrAsH0BweGN+AWaJI5C8Q8nyfiYq774fpeTBTfxJ2wFLkn8PAK+ycfEUR
         iKRw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:date:subject:cc:to:from:dkim-signature;
        bh=Pvd/GYzb4pJ4NKoacEe7EUxZGavVt54omgXP6mogyKw=;
        b=QmziT1gQM3S83CLCOZ2plpAt+7BL0FII3j9bHkPAhPlCC46mCiUgczz0ZMvv0uMZBN
         +xPMESJ0R4CxWMtdcAaaqUvBkUZQjOcNTdws24PwNZo5bYj9ASGn4S0Fy7Yx538yv7L6
         sfGkoLphHJbzISZtWoQUtI38Emx0l5izKxD5Cc0DdRPbeyHef8IiaxbY+9I79j4Lsf7A
         N+aWSSGIR9Ba+lnA7o5T+mxnThg4natl5THZUVinFQ5fFdsdh9wL8gqKMV42hamG57hG
         l+dWEZPRIzCo6gmsmkBUL7O9oFqN2vKbxkzDSEd8GZqIpqUAoaoTcUV9HOErYEHqKvXj
         vz0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5X4mVvP;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <bhanusreemahesh@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id z22si105335otp.5.2019.03.21.08.20.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:20:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=f5X4mVvP;
       spf=pass (google.com: domain of bhanusreemahesh@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=bhanusreemahesh@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id p10so4516779pff.3
        for <outreachy-kernel@googlegroups.com>; Thu, 21 Mar 2019 08:20:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id;
        bh=Pvd/GYzb4pJ4NKoacEe7EUxZGavVt54omgXP6mogyKw=;
        b=f5X4mVvP6oD1KWuqARTYbqFdAn7WA60URUY/1c2vFOVLpbtyw237NHhkOCTcNlMDyE
         1/e05GNj3jd3bxdcwDCcompYc2TkbPxT9RtR3EtJNTQi9Nt6vWcRVxiTdOLgbeZGMrKV
         N/Lk3netJrYCKaB58GkKdrxTfrxd71F41X+8KaqToByGZGPEwn4fGhWL/Qrs/dG/xARq
         rCBVZQ8Hc6JTJaCqtv4Qanw6sE5iwQcSonpCSHEg28XYYjMOotdA2oT28o4clbcjNLDi
         zcrOm1mPtWr74fI8+UEfaGl8QxEBNEEGmvBba1IS/gnlvWVK2BveWRjyHzVfkrk6FnIG
         14JQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id;
        bh=Pvd/GYzb4pJ4NKoacEe7EUxZGavVt54omgXP6mogyKw=;
        b=DA4IjMtocC3GGk7f+JHALakEy/afAoNVN5nXcchakrz2BXSUiSUs8aukLatxHOuCyV
         bcIJfaabkSRA4mv2x8ESt80AqaXlGo88mhrN6GtHIbOufSkuWzYWuxNOXVLT7LYOy5+W
         VI02moCoqLrIT15uRBLQovf4+j5rqFacRbvVHycFBp7Kgh1eQcL0gKo2PFYiFG0iBRYa
         xDL2VKrc85dVGXk+53btRKiK0y1gNTOr733ly5s0QaAiaS9bUhDB6U43zMJND/1qnx0N
         0On026EYZoD69JIjX9aTgdCUnJL0jBiKu53KMbhDPuXXOx5zOhaNLPLKKn04QhoomzwM
         rREw==
X-Gm-Message-State: APjAAAXkvftogMkiTXd3mvvotarviinwYmApJ1M1a/DSjkI5dhqNvwnA
	9e8ZDPfM6MbkSGgjCCRrMNbpiRolyDQ=
X-Received: by 2002:aa7:8157:: with SMTP id d23mr3838000pfn.67.1553181623546;
        Thu, 21 Mar 2019 08:20:23 -0700 (PDT)
Return-Path: <bhanusreemahesh@gmail.com>
Received: from localhost.localdomain ([183.83.84.116])
        by smtp.googlemail.com with ESMTPSA id b15sm15229957pfj.167.2019.03.21.08.20.21
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 08:20:22 -0700 (PDT)
From: Bhanusree Pola <bhanusreemahesh@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Gao Xiang <gaoxiang25@huawei.com>,
	Chao Yu <yuchao0@huawei.com>
Subject: [PATCH v2] Staging: erofs: Use !x in place of NULL comparision
Date: Thu, 21 Mar 2019 20:50:07 +0530
Message-Id: <20190321152007.5726-1-bhanusreemahesh@gmail.com>
X-Mailer: git-send-email 2.17.1

Test for NULL as !x instead of NULL comparisions.
Issue found using coccinelle
Semantic patch used to solve the problem is as follows

// <smpl>
@@
expression x;
statement S;
@@

x = (\(kmalloc\|devm_kzalloc\|kmalloc_array\|devm_ioremap\|
usb_alloc_urb\|alloc_netdev\|dev_alloc_skb\)(...));

-if(x==NULL)
+if(!x)
S

@@
expression e;
@@

-e == NULL
+!e
// </smpl>

Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
---

v2:
 -modified commit log.
 -All NULL comparisions in erofs are modified.

 drivers/staging/erofs/inode.c         |  4 ++--
 drivers/staging/erofs/internal.h      |  4 ++--
 drivers/staging/erofs/super.c         | 14 +++++++-------
 drivers/staging/erofs/unzip_pagevec.h |  4 ++--
 drivers/staging/erofs/xattr.c         | 12 ++++++------
 5 files changed, 19 insertions(+), 19 deletions(-)

diff --git a/drivers/staging/erofs/inode.c b/drivers/staging/erofs/inode.c
index 1cf1afe2d73a..ff83dbd8f27c 100644
--- a/drivers/staging/erofs/inode.c
+++ b/drivers/staging/erofs/inode.c
@@ -129,7 +129,7 @@ static int fill_inline_data(struct inode *inode, void *data,
 	if (S_ISLNK(inode->i_mode) && inode->i_size < PAGE_SIZE) {
 		char *lnk = erofs_kmalloc(sbi, inode->i_size + 1, GFP_KERNEL);
 
-		if (unlikely(lnk == NULL))
+		if (unlikely(!lnk))
 			return -ENOMEM;
 
 		m_pofs += vi->inode_isize + vi->xattr_isize;
@@ -264,7 +264,7 @@ struct inode *erofs_iget(struct super_block *sb,
 {
 	struct inode *inode = erofs_iget_locked(sb, nid);
 
-	if (unlikely(inode == NULL))
+	if (unlikely(!inode))
 		return ERR_PTR(-ENOMEM);
 
 	if (inode->i_state & I_NEW) {
diff --git a/drivers/staging/erofs/internal.h b/drivers/staging/erofs/internal.h
index e3bfde00c7d2..828aa03a674f 100644
--- a/drivers/staging/erofs/internal.h
+++ b/drivers/staging/erofs/internal.h
@@ -469,7 +469,7 @@ erofs_grab_bio(struct super_block *sb,
 	do {
 		if (nr_pages == 1) {
 			bio = bio_alloc(gfp | (nofail ? __GFP_NOFAIL : 0), 1);
-			if (unlikely(bio == NULL)) {
+			if (unlikely(!bio)) {
 				DBG_BUGON(nofail);
 				return ERR_PTR(-ENOMEM);
 			}
@@ -477,7 +477,7 @@ erofs_grab_bio(struct super_block *sb,
 		}
 		bio = bio_alloc(gfp, nr_pages);
 		nr_pages /= 2;
-	} while (unlikely(bio == NULL));
+	} while (unlikely(!bio));
 
 	bio->bi_end_io = endio;
 	bio_set_dev(bio, sb->s_bdev);
diff --git a/drivers/staging/erofs/super.c b/drivers/staging/erofs/super.c
index 15c784fba879..a3aeb720e9ed 100644
--- a/drivers/staging/erofs/super.c
+++ b/drivers/staging/erofs/super.c
@@ -49,7 +49,7 @@ static struct inode *alloc_inode(struct super_block *sb)
 	struct erofs_vnode *vi =
 		kmem_cache_alloc(erofs_inode_cachep, GFP_KERNEL);
 
-	if (vi == NULL)
+	if (!vi)
 		return NULL;
 
 	/* zero out everything except vfs_inode */
@@ -86,7 +86,7 @@ static int superblock_read(struct super_block *sb)
 
 	bh = sb_bread(sb, 0);
 
-	if (bh == NULL) {
+	if (!bh) {
 		errln("cannot read erofs superblock");
 		return -EIO;
 	}
@@ -336,7 +336,7 @@ static struct inode *erofs_init_managed_cache(struct super_block *sb)
 {
 	struct inode *inode = new_inode(sb);
 
-	if (unlikely(inode == NULL))
+	if (unlikely(!inode))
 		return ERR_PTR(-ENOMEM);
 
 	set_nlink(inode, 1);
@@ -367,7 +367,7 @@ static int erofs_read_super(struct super_block *sb,
 	}
 
 	sbi = kzalloc(sizeof(struct erofs_sb_info), GFP_KERNEL);
-	if (unlikely(sbi == NULL)) {
+	if (unlikely(!sbi)) {
 		err = -ENOMEM;
 		goto err;
 	}
@@ -431,14 +431,14 @@ static int erofs_read_super(struct super_block *sb,
 	}
 
 	sb->s_root = d_make_root(inode);
-	if (sb->s_root == NULL) {
+	if (!sb->s_root) {
 		err = -ENOMEM;
 		goto err_iget;
 	}
 
 	/* save the device name to sbi */
 	sbi->dev_name = __getname();
-	if (sbi->dev_name == NULL) {
+	if (!sbi->dev_name) {
 		err = -ENOMEM;
 		goto err_devname;
 	}
@@ -481,7 +481,7 @@ static void erofs_put_super(struct super_block *sb)
 	struct erofs_sb_info *sbi = EROFS_SB(sb);
 
 	/* for cases which are failed in "read_super" */
-	if (sbi == NULL)
+	if (!sbi)
 		return;
 
 	WARN_ON(sb->s_magic != EROFS_SUPER_MAGIC);
diff --git a/drivers/staging/erofs/unzip_pagevec.h b/drivers/staging/erofs/unzip_pagevec.h
index 23856ba2742d..42b3bc21c0b4 100644
--- a/drivers/staging/erofs/unzip_pagevec.h
+++ b/drivers/staging/erofs/unzip_pagevec.h
@@ -43,7 +43,7 @@ struct z_erofs_pagevec_ctor {
 static inline void z_erofs_pagevec_ctor_exit(struct z_erofs_pagevec_ctor *ctor,
 					     bool atomic)
 {
-	if (ctor->curr == NULL)
+	if (!ctor->curr)
 		return;
 
 	if (atomic)
@@ -121,7 +121,7 @@ z_erofs_pagevec_ctor_enqueue(struct z_erofs_pagevec_ctor *ctor,
 			     bool *occupied)
 {
 	*occupied = false;
-	if (unlikely(ctor->next == NULL && type))
+	if (unlikely(!ctor->next && type))
 		if (ctor->index + 1 == ctor->nr)
 			return false;
 
diff --git a/drivers/staging/erofs/xattr.c b/drivers/staging/erofs/xattr.c
index f716ab0446e5..c7b6bcaff53f 100644
--- a/drivers/staging/erofs/xattr.c
+++ b/drivers/staging/erofs/xattr.c
@@ -36,7 +36,7 @@ static inline void xattr_iter_end(struct xattr_iter *it, bool atomic)
 
 static inline void xattr_iter_end_final(struct xattr_iter *it)
 {
-	if (it->page == NULL)
+	if (!it->page)
 		return;
 
 	xattr_iter_end(it, true);
@@ -107,7 +107,7 @@ static int init_inode_xattrs(struct inode *inode)
 	vi->xattr_shared_count = ih->h_shared_count;
 	vi->xattr_shared_xattrs = kmalloc_array(vi->xattr_shared_count,
 						sizeof(uint), GFP_KERNEL);
-	if (vi->xattr_shared_xattrs == NULL) {
+	if (!vi->xattr_shared_xattrs) {
 		xattr_iter_end(&it, atomic_map);
 		ret = -ENOMEM;
 		goto out_unlock;
@@ -344,7 +344,7 @@ static int xattr_checkbuffer(struct xattr_iter *_it,
 	int err = it->buffer_size < value_sz ? -ERANGE : 0;
 
 	it->buffer_size = value_sz;
-	return it->buffer == NULL ? 1 : err;
+	return !it->buffer ? 1 : err;
 }
 
 static void xattr_copyvalue(struct xattr_iter *_it,
@@ -435,7 +435,7 @@ int erofs_getxattr(struct inode *inode, int index,
 	int ret;
 	struct getxattr_iter it;
 
-	if (unlikely(name == NULL))
+	if (unlikely(!name))
 		return -EINVAL;
 
 	ret = init_inode_xattrs(inode);
@@ -537,13 +537,13 @@ static int xattr_entrylist(struct xattr_iter *_it,
 	const struct xattr_handler *h =
 		erofs_xattr_handler(entry->e_name_index);
 
-	if (h == NULL || (h->list != NULL && !h->list(it->dentry)))
+	if (!h || (h->list != NULL && !h->list(it->dentry)))
 		return 1;
 
 	prefix = xattr_prefix(h);
 	prefix_len = strlen(prefix);
 
-	if (it->buffer == NULL) {
+	if (!it->buffer) {
 		it->buffer_ofs += prefix_len + entry->e_name_len + 1;
 		return 1;
 	}
-- 
2.17.1


