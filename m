X-GM-THRID: 6473410411176656896
X-Received: by 10.101.75.135 with SMTP id t7mr1127231pgq.48.1507622963874;
        Tue, 10 Oct 2017 01:09:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.99.117.77 with SMTP id f13ls1664386pgn.17.gmail; Tue, 10 Oct
 2017 01:09:22 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCyksddlNAeDIhl+MY/H3lDSxNCboKGOPHFdvb79FEpMgSVBcPmJ+jZ4iRAHXIslDlyteoP
X-Received: by 10.101.82.6 with SMTP id o6mr1034720pgp.158.1507622962780;
        Tue, 10 Oct 2017 01:09:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507622962; cv=none;
        d=google.com; s=arc-20160816;
        b=uuBr7uDlaqahwLLywcxwFMTYvvl9I43SYKnUVi3UA7mH4Yz18zCaqcx6gP2wQUHA8S
         2TyZ7oBGt7AHp7sHQ73t+z3wR0/p0fvjJFYoIW9c7GioCH0xIWxBpFAt7dM0seoGN5Gf
         T2l1XZnKFQTQ3buGC+iwKSzPkGTfsJUfXw+ZzErFk9jt14TEejzRr/gpV9rqeSH+eOnA
         8yeTnXgR0zRo0ptEbeLt2t/eeJsL7wr3n1peOXi3RsNWK4hRxPDminp8OWtafu/oGIeU
         z1z9jBsS+WRu1TH4LnAgbLU8dXt/IqJw8IQBBlUErbwISt/iiRN6qB+U4E6LcB5IxI0r
         EHfg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=D3jrKIMiHB+oaq1Bf2TZ4Co6TV53dPhwkU9JdVU5ZBI=;
        b=UIq6uxwKDNaBUl4gN3/3u97PCocBFs3IgWO67IhL8vPWq1WaJz9OPkWs26bupy7gfj
         NlyMaNIlyQatkVcK1XFrLWKa1zxMo/7lxjruSZXZZkIchwsQZgqF54R5M9/BHHmApQRd
         26bibO4+OtqOEHoEhcWdvKvWmzmZ6MMKeTvlM+NXmnQphPx3gGkR3zs1ndY4jSU5Gx6i
         oVjDgmlHPiqAcmN5AXwELNHNqOVn9E0pFbgp2/Lo5v2onlPJB35JB3iGh3vjn94WJSzw
         lgN3qB94kki0++UqNJQIAKvShfQnRcsX0Bc9S/CoLFHbB6eSdWBwVmeNBHcxnjR5cHbY
         hsFA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga03.intel.com (mga03.intel.com. [134.134.136.65])
        by gmr-mx.google.com with ESMTPS id y12si1328468pfe.23.2017.10.10.01.09.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Oct 2017 01:09:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) client-ip=134.134.136.65;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.65 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga103.jf.intel.com with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2017 01:09:22 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.42,503,1500966000"; 
   d="scan'208";a="160891407"
Received: from fmsmsx108.amr.corp.intel.com ([10.18.124.206])
  by fmsmga005.fm.intel.com with ESMTP; 10 Oct 2017 01:09:21 -0700
Received: from fmsmsx155.amr.corp.intel.com (10.18.116.71) by
 FMSMSX108.amr.corp.intel.com (10.18.124.206) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 10 Oct 2017 01:09:21 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 FMSMSX155.amr.corp.intel.com ([169.254.5.163]) with mapi id 14.03.0319.002;
 Tue, 10 Oct 2017 01:09:21 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH 09/11] staging: lustre: llite: fix lines over 80
 characters in llite files
Thread-Topic: [PATCH 09/11] staging: lustre: llite: fix lines over 80
 characters in llite files
Thread-Index: AQHTPdnD2/NN33mYc02TSC64gL15hqLdN8kA
Date: Tue, 10 Oct 2017 08:09:20 +0000
Message-ID: <80A8EBBD-9E13-4DD1-B416-3C70D746905E@intel.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208303-17615-10-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507208303-17615-10-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.255.230.93]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <5DC4B2EC9211B245AA369FFB343E1EC0@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 5, 2017, at 06:58, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This fixes checkpatch.pl warning:
> WARNING: line over 80 characters
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/=
lustre/lustre/llite/dir.c
> index 1db3e7f..b81aab4 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -419,7 +420,8 @@ static int ll_dir_setdirstripe(struct inode *parent, =
struct lmv_user_md *lump,
> 	if (unlikely(lump->lum_magic !=3D LMV_USER_MAGIC))
> 		return -EINVAL;
>=20
> -	CDEBUG(D_VFSTRACE, "VFS Op:inode=3D" DFID "(%p) name %s stripe_offset %=
d, stripe_count: %u\n",
> +	CDEBUG(D_VFSTRACE, "VFS Op:inode=3D" DFID
> +	       "(%p) name %s stripe_offset %d, stripe_count: %u\n",
> 	       PFID(ll_inode2fid(parent)), parent, dirname,
> 	       (int)lump->lum_stripe_offset, lump->lum_stripe_count);

I believe that new kernel style is to allow error strings to be longer
than 80 columns, so that they can be found more easily?

> @@ -832,7 +837,8 @@ static int ll_ioc_copy_end(struct super_block *sb, st=
ruct hsm_copy *copy)
> 		 */
> 		if ((copy->hc_hai.hai_action =3D=3D HSMA_ARCHIVE) &&
> 		    (copy->hc_data_version !=3D data_version)) {
> -			CDEBUG(D_HSM, "File data version mismatched. File content was changed=
 during archiving. "
> +			CDEBUG(D_HSM,
> +			       "File data version mismatched. File content was changed during=
 archiving. "
> 			       DFID ", start:%#llx current:%#llx\n",
> 			       PFID(&copy->hc_hai.hai_fid),
> 			       copy->hc_data_version, data_version);

I don't think these are really an improvement over the current code, since
they still exceed 80 columns, unless it actually quiets the warning?  In
that case, the "DFID" part should be added to the same line as the rest of
the message, to match current coding style.

> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging=
/lustre/lustre/llite/file.c
> index be66545..bd17b38 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -605,7 +605,8 @@ int ll_file_open(struct inode *inode, struct file *fi=
le)
> 			 * to get file with different fid.
> 			 */
> 			it->it_flags |=3D MDS_OPEN_LOCK | MDS_OPEN_BY_FID;
> -			rc =3D ll_intent_file_open(file->f_path.dentry, NULL, 0, it);
> +			rc =3D ll_intent_file_open(file->f_path.dentry,
> +				NULL, 0, it);

Align continued lines after '(' on the previous line.

> 			if (rc)
> 				goto out_openerr;
>=20
> @@ -2507,7 +2509,8 @@ ll_file_flock(struct file *file, int cmd, struct fi=
le_lock *file_lock)
> 	if (IS_ERR(op_data))
> 		return PTR_ERR(op_data);
>=20
> -	CDEBUG(D_DLMTRACE, "inode=3D" DFID ", pid=3D%u, flags=3D%#llx, mode=3D%=
u, start=3D%llu, end=3D%llu\n",
> +	CDEBUG(D_DLMTRACE, "inode=3D" DFID
> +	       ", pid=3D%u, flags=3D%#llx, mode=3D%u, start=3D%llu, end=3D%llu\=
n",
> 	       PFID(ll_inode2fid(inode)), flock.l_flock.pid, flags,
> 	       einfo.ei_mode, flock.l_flock.start, flock.l_flock.end);

Similarly, this should be kept as a single line.

> diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drive=
rs/staging/lustre/lustre/llite/llite_internal.h
> index 0287c75..c31d98d 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_internal.h
> +++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
> @@ -84,7 +84,9 @@ struct ll_dentry_data {
>=20
> struct ll_getname_data {
> 	struct dir_context ctx;
> -	char	    *lgd_name;      /* points to a buffer with NAME_MAX+1 size */
> +	char	    *lgd_name;      /* points to a buffer with
> +				     * NAME_MAX+1 size
> +				     */

Just drop "a " from the comment to keep it under 80 characters.

> 	struct lu_fid    lgd_fid;       /* target fid we are looking for */
> 	int	      lgd_found;     /* inode matched? */
> };
> @@ -637,7 +639,8 @@ static inline int ll_need_32bit_api(struct ll_sb_info=
 *sbi)
> #if BITS_PER_LONG =3D=3D 32
> 	return 1;
> #elif defined(CONFIG_COMPAT)
> -	return unlikely(in_compat_syscall() || (sbi->ll_flags & LL_SBI_32BIT_AP=
I));
> +	return unlikely(in_compat_syscall() ||
> +		(sbi->ll_flags & LL_SBI_32BIT_API));

Align continued lines after '(' on previous line.

> #else
> 	return unlikely(sbi->ll_flags & LL_SBI_32BIT_API);
> #endif
> @@ -1065,7 +1068,9 @@ struct ll_statahead_info {
> 					     * hidden entries
> 					     */
> 				sai_agl_valid:1,/* AGL is valid for the dir */
> -				sai_in_readpage:1;/* statahead is in readdir() */
> +				sai_in_readpage:1;/* statahead is in
> +						   * readdir()
> +						   */

Just drop "is " to keep it under 80 columns.

> 	wait_queue_head_t	sai_waitq;      /* stat-ahead wait queue */
> 	struct ptlrpc_thread    sai_thread;     /* stat-ahead thread */
> 	struct ptlrpc_thread    sai_agl_thread; /* AGL thread */
> @@ -1253,7 +1258,8 @@ static inline void ll_set_lock_data(struct obd_expo=
rt *exp, struct inode *inode,
> 		 */
> 		if (it->it_remote_lock_mode) {
> 			handle.cookie =3D it->it_remote_lock_handle;
> -			CDEBUG(D_DLMTRACE, "setting l_data to inode " DFID "%p for remote loc=
k %#llx\n",
> +			CDEBUG(D_DLMTRACE, "setting l_data to inode "
> +			       DFID "%p for remote lock %#llx\n",

Should not be split.

> 			       PFID(ll_inode2fid(inode)), inode,
> 			       handle.cookie);
> 			md_set_lock_data(exp, &handle, inode, NULL);
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/st=
aging/lustre/lustre/llite/llite_lib.c
> index 25393e3..51919bb 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -540,7 +544,8 @@ static int client_common_fill_super(struct super_bloc=
k *sb, char *md, char *dt,
> 		err =3D ldebugfs_register_mountpoint(llite_root, sb, dt, md);
> 		if (err < 0) {
> 			CERROR("%s: could not register mount in debugfs: "
> -			       "rc =3D %d\n", ll_get_fsname(sb, NULL, 0), err);
> +			       "rc =3D %d\n", ll_get_fsname(sb, NULL, 0),
> +			       err);

It isn't clear why this was changed, since the original was still within
80 columns?

> 			err =3D 0;
> 		}
> 	}
>=20
> @@ -1419,7 +1426,8 @@ int ll_setattr_raw(struct dentry *dentry, struct ia=
ttr *attr, bool hsm_import)
> 	struct md_op_data *op_data =3D NULL;
> 	int rc =3D 0;
>=20
> -	CDEBUG(D_VFSTRACE, "%s: setattr inode " DFID "(%p) from %llu to %llu, v=
alid %x, hsm_import %d\n",
> +	CDEBUG(D_VFSTRACE, "%s: setattr inode " DFID
> +	       "(%p) from %llu to %llu, valid %x, hsm_import %d\n",

The error message should be kept on a single line.

> 	       ll_get_fsname(inode->i_sb, NULL, 0), PFID(&lli->lli_fid), inode,
> 	       i_size_read(inode), attr->ia_size, attr->ia_valid, hsm_import);
>=20
> @@ -1744,7 +1752,8 @@ int ll_update_inode(struct inode *inode, struct lus=
tre_md *md)
> 	}
> 	if (body->mbo_valid & OBD_MD_FLMTIME) {
> 		if (body->mbo_mtime > LTIME_S(inode->i_mtime)) {
> -			CDEBUG(D_INODE, "setting ino %lu mtime from %lu to %llu\n",
> +			CDEBUG(D_INODE,
> +			       "setting ino %lu mtime from %lu to %llu\n",
> 			       inode->i_ino, LTIME_S(inode->i_mtime),
> 			       body->mbo_mtime);
> 			LTIME_S(inode->i_mtime) =3D body->mbo_mtime;
> @@ -1783,7 +1792,8 @@ int ll_update_inode(struct inode *inode, struct lus=
tre_md *md)
> 		/* FID shouldn't be changed! */
> 		if (fid_is_sane(&lli->lli_fid)) {
> 			LASSERTF(lu_fid_eq(&lli->lli_fid, &body->mbo_fid1),
> -				 "Trying to change FID " DFID " to the " DFID ", inode " DFID "(%p)\=
n",
> +				 "Trying to change FID " DFID " to the " DFID
> +				 ", inode " DFID "(%p)\n",

Error message should be kept on a single line.

> 				 PFID(&lli->lli_fid), PFID(&body->mbo_fid1),
> 				 PFID(ll_inode2fid(inode)), inode);
> 		} else {
> @@ -1870,8 +1880,8 @@ void ll_delete_inode(struct inode *inode)
>=20
> 	truncate_inode_pages_final(&inode->i_data);
>=20
> -	LASSERTF(!inode->i_data.nrpages,
> -		 "inode=3D" DFID "(%p) nrpages=3D%lu, see http://jira.whamcloud.com/br=
owse/LU-118\n",
> +	LASSERTF(!inode->i_data.nrpages, "inode=3D" DFID
> +		 "(%p) nrpages=3D%lu, see http://jira.whamcloud.com/browse/LU-118\n",

...

> 		 PFID(ll_inode2fid(inode)), inode, inode->i_data.nrpages);
>=20
> 	ll_clear_inode(inode);
> @@ -2441,7 +2452,8 @@ void ll_dirty_page_discard_warn(struct page *page, =
int ioret)
> 	}
>=20
> 	CDEBUG(D_WARNING,
> -	       "%s: dirty page discard: %s/fid: " DFID "/%s may get corrupted (=
rc %d)\n",
> +	       "%s: dirty page discard: %s/fid: " DFID
> +	       "/%s may get corrupted (rc %d)\n",

...

> 	       ll_get_fsname(page->mapping->host->i_sb, NULL, 0),
> 	       s2lsi(page->mapping->host->i_sb)->lsi_lmd->lmd_dev,
> 	       PFID(&obj->vob_header.coh_lu.loh_fid),
> diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/stagin=
g/lustre/lustre/llite/namei.c
> index 5cc2b32..0b3649b 100644
> --- a/drivers/staging/lustre/lustre/llite/namei.c
> +++ b/drivers/staging/lustre/lustre/llite/namei.c
> @@ -273,7 +274,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct=
 ldlm_lock_desc *desc,
> 		if ((bits & MDS_INODELOCK_UPDATE) && S_ISDIR(inode->i_mode)) {
> 			struct ll_inode_info *lli =3D ll_i2info(inode);
>=20
> -			CDEBUG(D_INODE, "invalidating inode " DFID " lli =3D %p, pfid  =3D " =
DFID "\n",
> +			CDEBUG(D_INODE, "invalidating inode " DFID
> +			       " lli =3D %p, pfid  =3D " DFID "\n",

Should be kept on a single line, like:

			CDEBUG(D_INODE,
			       "invalidating inode "DFID" lli =3D %p, pfid  =3D "DFID"\n",

> 			       PFID(ll_inode2fid(inode)), lli,
> 			       PFID(&lli->lli_pfid));
>=20
> @@ -683,7 +686,8 @@ static int ll_atomic_open(struct inode *dir, struct d=
entry *dentry,
> 	struct dentry *de;
> 	int rc =3D 0;
>=20
> -	CDEBUG(D_VFSTRACE, "VFS Op:name=3D%pd, dir=3D" DFID "(%p),file %p,open_=
flags %x,mode %x opened %d\n",
> +	CDEBUG(D_VFSTRACE, "VFS Op:name=3D%pd, dir=3D" DFID
> +	       "(%p),file %p,open_flags %x,mode %x opened %d\n",

Should be kept on a single line.

> 	       dentry, PFID(ll_inode2fid(dir)), dir, file, open_flags, mode,
> 	       *opened);
>=20
> @@ -736,7 +740,8 @@ static int ll_atomic_open(struct inode *dir, struct d=
entry *dentry,
>=20
> 			*opened |=3D FILE_CREATED;
> 		}
> -		if (d_really_is_positive(dentry) && it_disposition(it, DISP_OPEN_OPEN)=
) {
> +		if (d_really_is_positive(dentry) &&
> +			it_disposition(it, DISP_OPEN_OPEN)) {

Align continued line after first '(' on previous line.

> 			/* Open dentry. */
> 			if (S_ISFIFO(d_inode(dentry)->i_mode)) {
> 				/* We cannot call open here as it might
> @@ -1136,7 +1143,8 @@ static int ll_rename(struct inode *src, struct dent=
ry *src_dchild,
> 		return -EINVAL;
>=20
> 	CDEBUG(D_VFSTRACE,
> -	       "VFS Op:oldname=3D%pd, src_dir=3D" DFID "(%p), newname=3D%pd, tg=
t_dir=3D" DFID "(%p)\n",
> +	       "VFS Op:oldname=3D%pd, src_dir=3D" DFID
> +	       "(%p), newname=3D%pd, tgt_dir=3D" DFID "(%p)\n",

Should be kept on a single line.

> 	       src_dchild, PFID(ll_inode2fid(src)), src,
> 	       tgt_dchild, PFID(ll_inode2fid(tgt)), tgt);
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging=
/lustre/lustre/llite/rw26.c
> index 3619cd8..d1a1899 100644
> --- a/drivers/staging/lustre/lustre/llite/rw26.c
> +++ b/drivers/staging/lustre/lustre/llite/rw26.c
> @@ -327,7 +327,8 @@ static ssize_t ll_direct_IO_26(struct kiocb *iocb, st=
ruct iov_iter *iter)
> 	if ((file_offset & ~PAGE_MASK) || (count & ~PAGE_MASK))
> 		return -EINVAL;
>=20
> -	CDEBUG(D_VFSTRACE, "VFS Op:inode=3D" DFID "(%p), size=3D%zd (max %lu), =
offset=3D%lld=3D%llx, pages %zd (max %lu)\n",
> +	CDEBUG(D_VFSTRACE, "VFS Op:inode=3D" DFID
> +	       "(%p), size=3D%zd (max %lu), offset=3D%lld=3D%llx, pages %zd (ma=
x %lu)\n",

Should be kept on a single line.

> 	       PFID(ll_inode2fid(inode)), inode, count, MAX_DIO_SIZE,
> 	       file_offset, file_offset, count >> PAGE_SHIFT,
> 	       MAX_DIO_SIZE >> PAGE_SHIFT);
> diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/st=
aging/lustre/lustre/llite/statahead.c
> index ea9d59f..3969c9c3 100644
> --- a/drivers/staging/lustre/lustre/llite/statahead.c
> +++ b/drivers/staging/lustre/lustre/llite/statahead.c
> @@ -1008,7 +1008,8 @@ static int ll_statahead_thread(void *arg)
> 		sai->sai_in_readpage =3D 0;
> 		if (IS_ERR(page)) {
> 			rc =3D PTR_ERR(page);
> -			CDEBUG(D_READA, "error reading dir " DFID " at %llu/%llu: opendir_pid=
 =3D %u: rc =3D %d\n",
> +			CDEBUG(D_READA, "error reading dir " DFID
> +			       " at %llu/%llu: opendir_pid =3D %u: rc =3D %d\n",

...

> 			       PFID(ll_inode2fid(dir)), pos, sai->sai_index,
> 			       lli->lli_opendir_pid, rc);
> 			break;
> @@ -1105,7 +1107,8 @@ static int ll_statahead_thread(void *arg)
> 		if (sa_low_hit(sai)) {
> 			rc =3D -EFAULT;
> 			atomic_inc(&sbi->ll_sa_wrong);
> -			CDEBUG(D_READA, "Statahead for dir " DFID " hit ratio too low: hit/mi=
ss %llu/%llu, sent/replied %llu/%llu, stopping statahead thread: pid %d\n",
> +			CDEBUG(D_READA, "Statahead for dir " DFID
> +			       " hit ratio too low: hit/miss %llu/%llu, sent/replied %llu/%ll=
u, stopping statahead thread: pid %d\n",

...

> 			       PFID(&lli->lli_fid), sai->sai_hit,
> 			       sai->sai_miss, sai->sai_sent,
> 			       sai->sai_replied, current_pid());
> @@ -1274,7 +1277,8 @@ static int is_first_dirent(struct inode *dir, struc=
t dentry *dentry)
> 			struct ll_inode_info *lli =3D ll_i2info(dir);
>=20
> 			rc =3D PTR_ERR(page);
> -			CERROR("%s: error reading dir " DFID " at %llu: opendir_pid =3D %u : =
rc =3D %d\n",
> +			CERROR("%s: error reading dir " DFID
> +			       " at %llu: opendir_pid =3D %u : rc =3D %d\n",

...

> 			       ll_get_fsname(dir->i_sb, NULL, 0),
> 			       PFID(ll_inode2fid(dir)), pos,
> 			       lli->lli_opendir_pid, rc);
> @@ -1470,8 +1474,8 @@ static int revalidate_statahead_dentry(struct inode=
 *dir,

> 				entry->se_inode =3D NULL;
> 			} else if ((*dentryp)->d_inode !=3D inode) {
> 				/* revalidate, but inode is recreated */
> -				CDEBUG(D_READA,
> -				       "%s: stale dentry %pd inode " DFID ", statahead inode " DFID =
"\n",
> +				CDEBUG(D_READA, "%s: stale dentry %pd inode "
> +				       DFID ", statahead inode " DFID "\n",

I think the original was correct.

> 				       ll_get_fsname((*dentryp)->d_inode->i_sb,
> 						     NULL, 0),
> 				       *dentryp,
> diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/stag=
ing/lustre/lustre/llite/super25.c
> index 0da4af8..5a52595 100644
> --- a/drivers/staging/lustre/lustre/llite/super25.c
> +++ b/drivers/staging/lustre/lustre/llite/super25.c
> @@ -88,7 +88,8 @@ static int __init lustre_init(void)
> 	struct timespec64 ts;
> 	int i, rc, seed[2];
>=20
> -	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=3D LUSTRE_VOLATILE_HDR_LEN +=
 1);
> +	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=3D
> +		LUSTRE_VOLATILE_HDR_LEN + 1);

Align after first '(' on previous line.

>=20
> 	/* print an address of _any_ initialized kernel symbol from this
> 	 * module, to allow debugging with gdb that doesn't support data

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








