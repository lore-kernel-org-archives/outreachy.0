X-GM-THRID: 6473410411176656896
X-Received: by 10.98.138.206 with SMTP id o75mr549861pfk.2.1508280854204;
        Tue, 17 Oct 2017 15:54:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.159.252.10 with SMTP id n10ls38374pls.6.gmail; Tue, 17 Oct
 2017 15:54:13 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBFCGod1piJmTGgFwvlzUd9ZOl+Sk2J7csqwLJjIWAx1IpDmPkIOMlb9aUZmpkxJP0RaXQ6
X-Received: by 10.101.77.15 with SMTP id i15mr3382907pgt.29.1508280853205;
        Tue, 17 Oct 2017 15:54:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508280853; cv=none;
        d=google.com; s=arc-20160816;
        b=RfNcC3rxo4ZhVK0jhhOF9WAc1zUpFL75ifw7YtZ8BOS0WTxEy1cQyNux2tUcVl8Scp
         bjm0PUo95lmfzial2fu9H4merR5rK/USyh7faNkmCjiuRDz2UbTk/Lu8I35gviwuDwVL
         A+Ox0z6oHlM/hkAqvG7KefdJXDOShOe+0G+/pL1r24SHZPXoRUA/K6cmaXmmO+xFyGLO
         yINfUjjwTVmE4BC4y5M12yuRI/bdZT5C6H/FkpVDOFX0LyEfkxFayUkIwyCPHEc2QXr2
         XcxqWmBNvo8o4Dg8c78t2Yex/fblCkKjOxv2r7/byfeVOm54soYWzO4HkulrY9vjxjDe
         NQ0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:content-transfer-encoding:content-id:content-language
         :accept-language:in-reply-to:references:message-id:date:thread-index
         :thread-topic:subject:cc:to:from:arc-authentication-results;
        bh=Q9JNFXYr8AeA7YnrxuaKjmuhamqXPpSFPE3vxtOMwoQ=;
        b=s0Jjx7tySYiLwAE2vsu0w5dXHWVJ0PEnQj33p3uOUXv/wo/taOQvjYRZlXWDZ5b8IN
         5yhFgoD8NowwTlcTdg0QT3IzayYOxt2cQUoo0hljzzzdhsGSfyU9YGWr9jxECNs3bwFo
         OVRTPTITa5/4YJWQ5z7xTdPM/krv2o8Ih+3TOVqV+vtP6xo9k0bumPoDKDfbLDpdPSaZ
         l7Yrn1eS22LKGEBxqJSVszSaGJdCsYfI0KBMOHaCnV2ReDfF6r21cI5ikfyDL4TenjOR
         WBHqkPbkdRapRP+Oq/N+VmtFxAJEnzHqUGWyZ3d/+tNLByGR8rES1tPlZoOIlXAyRN+S
         Kt8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Return-Path: <andreas.dilger@intel.com>
Received: from mga06.intel.com (mga06.intel.com. [134.134.136.31])
        by gmr-mx.google.com with ESMTPS id be11si591865plb.3.2017.10.17.15.54.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 15:54:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) client-ip=134.134.136.31;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of andreas.dilger@intel.com designates 134.134.136.31 as permitted sender) smtp.mailfrom=andreas.dilger@intel.com
Received: from fmsmga005.fm.intel.com ([10.253.24.32])
  by orsmga104.jf.intel.com with ESMTP; 17 Oct 2017 15:54:12 -0700
X-ExtLoop1: 1
X-IronPort-AV: E=Sophos;i="5.43,392,1503385200"; 
   d="scan'208";a="163793059"
Received: from fmsmsx107.amr.corp.intel.com ([10.18.124.205])
  by fmsmga005.fm.intel.com with ESMTP; 17 Oct 2017 15:54:12 -0700
Received: from fmsmsx117.amr.corp.intel.com (10.18.116.17) by
 fmsmsx107.amr.corp.intel.com (10.18.124.205) with Microsoft SMTP Server (TLS)
 id 14.3.319.2; Tue, 17 Oct 2017 15:54:12 -0700
Received: from FMSMSX109.amr.corp.intel.com ([169.254.15.12]) by
 fmsmsx117.amr.corp.intel.com ([169.254.3.51]) with mapi id 14.03.0319.002;
 Tue, 17 Oct 2017 15:54:11 -0700
From: "Dilger, Andreas" <andreas.dilger@intel.com>
To: Aastha Gupta <aastha.gupta4104@gmail.com>
CC: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>,
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons
	<jsimmons@infradead.org>, Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2 08/10] staging: lustre: llite: fix lines over 80
 characters in llite files
Thread-Topic: [PATCH v2 08/10] staging: lustre: llite: fix lines over 80
 characters in llite files
Thread-Index: AQHTQxMZE5B/CsUmTEaO6WWW+KJk96LpJOIA
Date: Tue, 17 Oct 2017 22:54:11 +0000
Message-ID: <48B2BFDB-7E2B-476C-AD75-B78F4DF21A51@intel.com>
References: <1507782683-12754-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507782683-12754-9-git-send-email-aastha.gupta4104@gmail.com>
In-Reply-To: <1507782683-12754-9-git-send-email-aastha.gupta4104@gmail.com>
Accept-Language: en-US
Content-Language: en-US
X-MS-Has-Attach:
X-MS-TNEF-Correlator:
x-originating-ip: [10.252.142.85]
Content-Type: text/plain; charset="us-ascii"
Content-ID: <8A6DD564595B084F86031EF2E79D707A@intel.com>
Content-Transfer-Encoding: quoted-printable
MIME-Version: 1.0
Return-Path: andreas.dilger@intel.com

On Oct 11, 2017, at 22:31, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>=20
> This fixes checkpatch.pl warning:
> WARNING: line over 80 characters
>=20
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>

Reviewed-by: Andreas Dilger <andreas.dilger@intel.com>

> ---
> drivers/staging/lustre/lustre/llite/dcache.c       |  9 ++++---
> drivers/staging/lustre/lustre/llite/dir.c          |  9 ++++---
> drivers/staging/lustre/lustre/llite/file.c         |  9 ++++---
> .../staging/lustre/lustre/llite/llite_internal.h   | 13 ++++++----
> drivers/staging/lustre/lustre/llite/llite_lib.c    | 29 ++++++++++++++---=
-----
> drivers/staging/lustre/lustre/llite/llite_mmap.c   |  3 ++-
> drivers/staging/lustre/lustre/llite/llite_nfs.c    |  3 ++-
> drivers/staging/lustre/lustre/llite/namei.c        | 15 +++++++----
> drivers/staging/lustre/lustre/llite/rw.c           | 14 +++++++----
> drivers/staging/lustre/lustre/llite/statahead.c    |  3 ++-
> drivers/staging/lustre/lustre/llite/super25.c      |  3 ++-
> drivers/staging/lustre/lustre/llite/xattr_cache.c  |  3 ++-
> 12 files changed, 74 insertions(+), 39 deletions(-)
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/dcache.c b/drivers/stagi=
ng/lustre/lustre/llite/dcache.c
> index 3670fca..ed7dbbd 100644
> --- a/drivers/staging/lustre/lustre/llite/dcache.c
> +++ b/drivers/staging/lustre/lustre/llite/dcache.c
> @@ -141,7 +141,8 @@ void ll_intent_drop_lock(struct lookup_intent *it)
>=20
> 		handle.cookie =3D it->it_lock_handle;
>=20
> -		CDEBUG(D_DLMTRACE, "releasing lock with cookie %#llx from it %p\n",
> +		CDEBUG(D_DLMTRACE,
> +		       "releasing lock with cookie %#llx from it %p\n",
> 		       handle.cookie, it);
> 		ldlm_lock_decref(&handle, it->it_lock_mode);
>=20
> @@ -152,7 +153,8 @@ void ll_intent_drop_lock(struct lookup_intent *it)
> 		if (it->it_remote_lock_mode !=3D 0) {
> 			handle.cookie =3D it->it_remote_lock_handle;
>=20
> -			CDEBUG(D_DLMTRACE, "releasing remote lock with cookie%#llx from it %p=
\n",
> +			CDEBUG(D_DLMTRACE,
> +			       "releasing remote lock with cookie%#llx from it %p\n",
> 			       handle.cookie, it);
> 			ldlm_lock_decref(&handle,
> 					 it->it_remote_lock_mode);
> @@ -185,7 +187,8 @@ void ll_invalidate_aliases(struct inode *inode)
>=20
> 	spin_lock(&inode->i_lock);
> 	hlist_for_each_entry(dentry, &inode->i_dentry, d_u.d_alias) {
> -		CDEBUG(D_DENTRY, "dentry in drop %pd (%p) parent %p inode %p flags %d\=
n",
> +		CDEBUG(D_DENTRY,
> +		       "dentry in drop %pd (%p) parent %p inode %p flags %d\n",
> 		       dentry, dentry, dentry->d_parent,
> 		       d_inode(dentry), dentry->d_flags);
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/=
lustre/lustre/llite/dir.c
> index 1db3e7f..58d832d 100644
> --- a/drivers/staging/lustre/lustre/llite/dir.c
> +++ b/drivers/staging/lustre/lustre/llite/dir.c
> @@ -303,7 +303,8 @@ static int ll_readdir(struct file *filp, struct dir_c=
ontext *ctx)
> 	struct md_op_data *op_data;
> 	int			rc;
>=20
> -	CDEBUG(D_VFSTRACE, "VFS Op:inode=3D" DFID "(%p) pos/size %lu/%llu 32bit=
_api %d\n",
> +	CDEBUG(D_VFSTRACE,
> +	       "VFS Op:inode=3D" DFID "(%p) pos/size %lu/%llu 32bit_api %d\n",
> 	       PFID(ll_inode2fid(inode)), inode, (unsigned long)pos,
> 	       i_size_read(inode), api32);
>=20
> @@ -502,7 +503,8 @@ int ll_dir_setstripe(struct inode *inode, struct lov_=
user_md *lump,
> 			break;
> 		}
> 		default: {
> -			CDEBUG(D_IOCTL, "bad userland LOV MAGIC: %#08x !=3D %#08x nor %#08x\n=
",
> +			CDEBUG(D_IOCTL,
> +			       "bad userland LOV MAGIC: %#08x !=3D %#08x nor %#08x\n",
> 			       lump->lmm_magic, LOV_USER_MAGIC_V1,
> 			       LOV_USER_MAGIC_V3);
> 			return -EINVAL;
> @@ -816,7 +818,8 @@ static int ll_ioc_copy_end(struct super_block *sb, st=
ruct hsm_copy *copy)
> 		rc =3D ll_data_version(inode, &data_version, LL_DV_RD_FLUSH);
> 		iput(inode);
> 		if (rc) {
> -			CDEBUG(D_HSM, "Could not read file data version. Request could not be=
 confirmed.\n");
> +			CDEBUG(D_HSM,
> +			       "Could not read file data version. Request could not be confir=
med.\n");
> 			if (hpk.hpk_errval =3D=3D 0)
> 				hpk.hpk_errval =3D -rc;
> 			goto progress;
> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging=
/lustre/lustre/llite/file.c
> index be66545..eee9bed 100644
> --- a/drivers/staging/lustre/lustre/llite/file.c
> +++ b/drivers/staging/lustre/lustre/llite/file.c
> @@ -605,7 +605,8 @@ int ll_file_open(struct inode *inode, struct file *fi=
le)
> 			 * to get file with different fid.
> 			 */
> 			it->it_flags |=3D MDS_OPEN_LOCK | MDS_OPEN_BY_FID;
> -			rc =3D ll_intent_file_open(file->f_path.dentry, NULL, 0, it);
> +			rc =3D ll_intent_file_open(file->f_path.dentry,
> +						 NULL, 0, it);
> 			if (rc)
> 				goto out_openerr;
>=20
> @@ -1119,7 +1120,8 @@ ll_file_io_generic(const struct lu_env *env, struct=
 vvp_io_args *args,
> 	cl_io_fini(env, io);
>=20
> 	if ((!rc || rc =3D=3D -ENODATA) && count > 0 && io->ci_need_restart) {
> -		CDEBUG(D_VFSTRACE, "%s: restart %s from %lld, count:%zu, result: %zd\n=
",
> +		CDEBUG(D_VFSTRACE,
> +		       "%s: restart %s from %lld, count:%zu, result: %zd\n",
> 		       file_dentry(file)->d_name.name,
> 		       iot =3D=3D CIT_READ ? "read" : "write",
> 		       *ppos, count, result);
> @@ -3455,7 +3457,8 @@ static int ll_layout_lock_set(struct lustre_handle =
*lockh, enum ldlm_mode mode,
> 		if (rc =3D=3D 0)
> 			rc =3D -EAGAIN;
>=20
> -		CDEBUG(D_INODE, "%s: file=3D" DFID " waiting layout return: %d.\n",
> +		CDEBUG(D_INODE,
> +		       "%s: file=3D" DFID " waiting layout return: %d.\n",
> 		       ll_get_fsname(inode->i_sb, NULL, 0),
> 		       PFID(&lli->lli_fid), rc);
> 	}
> diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drive=
rs/staging/lustre/lustre/llite/llite_internal.h
> index 0287c75..fc1d3f5 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_internal.h
> +++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
> @@ -84,7 +84,7 @@ struct ll_dentry_data {
>=20
> struct ll_getname_data {
> 	struct dir_context ctx;
> -	char	    *lgd_name;      /* points to a buffer with NAME_MAX+1 size */
> +	char	    *lgd_name;      /* points to buffer with NAME_MAX+1 size */
> 	struct lu_fid    lgd_fid;       /* target fid we are looking for */
> 	int	      lgd_found;     /* inode matched? */
> };
> @@ -637,7 +637,8 @@ static inline int ll_need_32bit_api(struct ll_sb_info=
 *sbi)
> #if BITS_PER_LONG =3D=3D 32
> 	return 1;
> #elif defined(CONFIG_COMPAT)
> -	return unlikely(in_compat_syscall() || (sbi->ll_flags & LL_SBI_32BIT_AP=
I));
> +	return unlikely(in_compat_syscall() ||
> +			(sbi->ll_flags & LL_SBI_32BIT_API));
> #else
> 	return unlikely(sbi->ll_flags & LL_SBI_32BIT_API);
> #endif
> @@ -1065,7 +1066,7 @@ struct ll_statahead_info {
> 					     * hidden entries
> 					     */
> 				sai_agl_valid:1,/* AGL is valid for the dir */
> -				sai_in_readpage:1;/* statahead is in readdir() */
> +				sai_in_readpage:1;/* statahead in readdir() */
> 	wait_queue_head_t	sai_waitq;      /* stat-ahead wait queue */
> 	struct ptlrpc_thread    sai_thread;     /* stat-ahead thread */
> 	struct ptlrpc_thread    sai_agl_thread; /* AGL thread */
> @@ -1261,7 +1262,8 @@ static inline void ll_set_lock_data(struct obd_expo=
rt *exp, struct inode *inode,
>=20
> 		handle.cookie =3D it->it_lock_handle;
>=20
> -		CDEBUG(D_DLMTRACE, "setting l_data to inode " DFID "%p for lock %#llx\=
n",
> +		CDEBUG(D_DLMTRACE,
> +		       "setting l_data to inode " DFID "%p for lock %#llx\n",
> 		       PFID(ll_inode2fid(inode)), inode, handle.cookie);
>=20
> 		md_set_lock_data(exp, &handle, inode, &it->it_lock_bits);
> @@ -1284,7 +1286,8 @@ static inline int d_lustre_invalid(const struct den=
try *dentry)
>  */
> static inline void d_lustre_invalidate(struct dentry *dentry, int nested)
> {
> -	CDEBUG(D_DENTRY, "invalidate dentry %pd (%p) parent %p inode %p refc %d=
\n",
> +	CDEBUG(D_DENTRY,
> +	       "invalidate dentry %pd (%p) parent %p inode %p refc %d\n",
> 	       dentry, dentry,
> 	       dentry->d_parent, d_inode(dentry), d_count(dentry));
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/st=
aging/lustre/lustre/llite/llite_lib.c
> index 25393e3..4ddf3230 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
> @@ -231,7 +231,8 @@ static int client_common_fill_super(struct super_bloc=
k *sb, char *md, char *dt,
> 	err =3D obd_connect(NULL, &sbi->ll_md_exp, obd, &sbi->ll_sb_uuid,
> 			  data, NULL);
> 	if (err =3D=3D -EBUSY) {
> -		LCONSOLE_ERROR_MSG(0x14f, "An MDT (md %s) is performing recovery, of w=
hich this client is not a part. Please wait for recovery to complete, abort=
, or time out.\n",
> +		LCONSOLE_ERROR_MSG(0x14f,
> +				   "An MDT (md %s) is performing recovery, of which this client is n=
ot a part. Please wait for recovery to complete, abort, or time out.\n",
> 				   md);
> 		goto out;
> 	} else if (err) {
> @@ -279,7 +280,8 @@ static int client_common_fill_super(struct super_bloc=
k *sb, char *md, char *dt,
> 		}
> 		obd_connect_flags2str(buf, PAGE_SIZE,
> 				      valid ^ CLIENT_CONNECT_MDT_REQD, ",");
> -		LCONSOLE_ERROR_MSG(0x170, "Server %s does not support feature(s) neede=
d for correct operation of this client (%s). Please upgrade server or downg=
rade client.\n",
> +		LCONSOLE_ERROR_MSG(0x170,
> +				   "Server %s does not support feature(s) needed for correct operati=
on of this client (%s). Please upgrade server or downgrade client.\n",
> 				   sbi->ll_md_exp->exp_obd->obd_name, buf);
> 		kfree(buf);
> 		err =3D -EPROTO;
> @@ -380,7 +382,8 @@ static int client_common_fill_super(struct super_bloc=
k *sb, char *md, char *dt,
> 	if (sbi->ll_flags & LL_SBI_ALWAYS_PING)
> 		data->ocd_connect_flags &=3D ~OBD_CONNECT_PINGLESS;
>=20
> -	CDEBUG(D_RPCTRACE, "ocd_connect_flags: %#llx ocd_version: %d ocd_grant:=
 %d\n",
> +	CDEBUG(D_RPCTRACE,
> +	       "ocd_connect_flags: %#llx ocd_version: %d ocd_grant: %d\n",
> 	       data->ocd_connect_flags,
> 	       data->ocd_version, data->ocd_grant);
>=20
> @@ -392,7 +395,8 @@ static int client_common_fill_super(struct super_bloc=
k *sb, char *md, char *dt,
> 	err =3D obd_connect(NULL, &sbi->ll_dt_exp, obd, &sbi->ll_sb_uuid, data,
> 			  NULL);
> 	if (err =3D=3D -EBUSY) {
> -		LCONSOLE_ERROR_MSG(0x150, "An OST (dt %s) is performing recovery, of w=
hich this client is not a part.  Please wait for recovery to complete, abor=
t, or time out.\n",
> +		LCONSOLE_ERROR_MSG(0x150,
> +				   "An OST (dt %s) is performing recovery, of which this client is n=
ot a part.  Please wait for recovery to complete, abort, or time out.\n",
> 				   dt);
> 		goto out_md;
> 	} else if (err) {
> @@ -915,7 +919,8 @@ int ll_fill_super(struct super_block *sb, struct vfsm=
ount *mnt)
> 	/* Profile set with LCFG_MOUNTOPT so we can find our mdc and osc obds */
> 	lprof =3D class_get_profile(profilenm);
> 	if (!lprof) {
> -		LCONSOLE_ERROR_MSG(0x156, "The client profile '%s' could not be read f=
rom the MGS.  Does that filesystem exist?\n",
> +		LCONSOLE_ERROR_MSG(0x156,
> +				   "The client profile '%s' could not be read from the MGS.  Does th=
at filesystem exist?\n",
> 				   profilenm);
> 		err =3D -EINVAL;
> 		goto out_free;
> @@ -1042,7 +1047,8 @@ struct inode *ll_inode_from_resource_lock(struct ld=
lm_lock *lock)
> 		} else {
> 			inode =3D lock->l_resource->lr_lvb_inode;
> 			LDLM_DEBUG_LIMIT(inode->i_state & I_FREEING ?  D_INFO :
> -					 D_WARNING, lock, "lr_lvb_inode %p is bogus: magic %08x",
> +					 D_WARNING, lock,
> +					 "lr_lvb_inode %p is bogus: magic %08x",
> 					 lock->l_resource->lr_lvb_inode,
> 					 lli->lli_inode_magic);
> 			inode =3D NULL;
> @@ -1744,7 +1750,8 @@ int ll_update_inode(struct inode *inode, struct lus=
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
> @@ -2254,7 +2261,8 @@ int ll_process_config(struct lustre_cfg *lcfg)
> 		return -EINVAL;
> 	sb =3D (void *)x;
> 	/* This better be a real Lustre superblock! */
> -	LASSERT(s2lsi((struct super_block *)sb)->lsi_lmd->lmd_magic =3D=3D LMD_=
MAGIC);
> +	LASSERT(s2lsi((struct super_block *)sb)->lsi_lmd->lmd_magic =3D=3D
> +		LMD_MAGIC);
>=20
> 	/* Note we have not called client_common_fill_super yet, so
> 	 * proc fns must be able to handle that!
> @@ -2571,8 +2579,9 @@ static int ll_linkea_decode(struct linkea_data *lda=
ta, unsigned int linkno,
>  *
>  * \param[in]	  file	- File descriptor against which to perform the opera=
tion
>  * \param[in,out] arg	- User-filled structure containing the linkno to op=
erate
> - *			  on and the available size. It is eventually filled with
> - *			  the requested information or left untouched on error
> + *			  on and the available size. It is eventually filled
> + *			  with the requested information or left untouched on
> + *			  error
>  *
>  * \retval - 0 on success
>  * \retval - Appropriate negative error code on failure
> diff --git a/drivers/staging/lustre/lustre/llite/llite_mmap.c b/drivers/s=
taging/lustre/lustre/llite/llite_mmap.c
> index ccc7ae1..61a4bed 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_mmap.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_mmap.c
> @@ -208,7 +208,8 @@ static int ll_page_mkwrite0(struct vm_area_struct *vm=
a, struct page *vmpage,
> 			 */
> 			unlock_page(vmpage);
>=20
> -			CDEBUG(D_MMAP, "Race on page_mkwrite %p/%lu, page has been written ou=
t, retry.\n",
> +			CDEBUG(D_MMAP,
> +			       "Race on page_mkwrite %p/%lu, page has been written out, retry=
.\n",
> 			       vmpage, vmpage->index);
>=20
> 			*retry =3D true;
> diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/st=
aging/lustre/lustre/llite/llite_nfs.c
> index e50c637..b04d456 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
> @@ -127,7 +127,8 @@ struct lustre_nfs_fid {
> };
>=20
> static struct dentry *
> -ll_iget_for_nfs(struct super_block *sb, struct lu_fid *fid, struct lu_fi=
d *parent)
> +ll_iget_for_nfs(struct super_block *sb,
> +		struct lu_fid *fid, struct lu_fid *parent)
> {
> 	struct inode  *inode;
> 	struct dentry *result;
> diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/stagin=
g/lustre/lustre/llite/namei.c
> index 5cc2b32..b3b5df7 100644
> --- a/drivers/staging/lustre/lustre/llite/namei.c
> +++ b/drivers/staging/lustre/lustre/llite/namei.c
> @@ -204,7 +204,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct=
 ldlm_lock_desc *desc,
>=20
> 		if (!fid_res_name_eq(ll_inode2fid(inode),
> 				     &lock->l_resource->lr_name)) {
> -			LDLM_ERROR(lock, "data mismatch with object " DFID "(%p)",
> +			LDLM_ERROR(lock,
> +				   "data mismatch with object " DFID "(%p)",
> 				   PFID(ll_inode2fid(inode)), inode);
> 			LBUG();
> 		}
> @@ -289,7 +290,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct=
 ldlm_lock_desc *desc,
> 				 * we have to invalidate the negative children
> 				 * on master inode
> 				 */
> -				CDEBUG(D_INODE, "Invalidate s" DFID " m" DFID "\n",
> +				CDEBUG(D_INODE,
> +				       "Invalidate s" DFID " m" DFID "\n",
> 				       PFID(ll_inode2fid(inode)),
> 				       PFID(&lli->lli_pfid));
>=20
> @@ -736,7 +738,8 @@ static int ll_atomic_open(struct inode *dir, struct d=
entry *dentry,
>=20
> 			*opened |=3D FILE_CREATED;
> 		}
> -		if (d_really_is_positive(dentry) && it_disposition(it, DISP_OPEN_OPEN)=
) {
> +		if (d_really_is_positive(dentry) &&
> +		    it_disposition(it, DISP_OPEN_OPEN)) {
> 			/* Open dentry. */
> 			if (S_ISFIFO(d_inode(dentry)->i_mode)) {
> 				/* We cannot call open here as it might
> @@ -980,7 +983,8 @@ static int ll_create_nd(struct inode *dir, struct den=
try *dentry,
> {
> 	int rc;
>=20
> -	CDEBUG(D_VFSTRACE, "VFS Op:name=3D%pd, dir=3D" DFID "(%p), flags=3D%u, =
excl=3D%d\n",
> +	CDEBUG(D_VFSTRACE,
> +	       "VFS Op:name=3D%pd, dir=3D" DFID "(%p), flags=3D%u, excl=3D%d\n"=
,
> 	       dentry, PFID(ll_inode2fid(dir)), dir, mode, want_excl);
>=20
> 	rc =3D ll_mknod(dir, dentry, mode, 0);
> @@ -1101,7 +1105,8 @@ static int ll_link(struct dentry *old_dentry, struc=
t inode *dir,
> 	struct md_op_data *op_data;
> 	int err;
>=20
> -	CDEBUG(D_VFSTRACE, "VFS Op: inode=3D" DFID "(%p), dir=3D" DFID "(%p), t=
arget=3D%pd\n",
> +	CDEBUG(D_VFSTRACE,
> +	       "VFS Op: inode=3D" DFID "(%p), dir=3D" DFID "(%p), target=3D%pd\=
n",
> 	       PFID(ll_inode2fid(src)), src, PFID(ll_inode2fid(dir)), dir,
> 	       new_dentry);
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/rw.c b/drivers/staging/l=
ustre/lustre/llite/rw.c
> index e720905..b6371c4 100644
> --- a/drivers/staging/lustre/lustre/llite/rw.c
> +++ b/drivers/staging/lustre/lustre/llite/rw.c
> @@ -297,7 +297,8 @@ stride_pg_count(pgoff_t st_off, unsigned long st_len,=
 unsigned long st_pgs,
> 	else
> 		pg_count =3D start_left + st_pgs * (end - start - 1) + end_left;
>=20
> -	CDEBUG(D_READA, "st_off %lu, st_len %lu st_pgs %lu off %lu length %lu p=
gcount %lu\n",
> +	CDEBUG(D_READA,
> +	       "st_off %lu, st_len %lu st_pgs %lu off %lu length %lu pgcount %l=
u\n",
> 	       st_off, st_len, st_pgs, off, length, pg_count);
>=20
> 	return pg_count;
> @@ -404,7 +405,8 @@ ll_read_ahead_pages(const struct lu_env *env, struct =
cl_io *io,
> 			 * forward read-ahead, it will be fixed when backward
> 			 * read-ahead is implemented
> 			 */
> -			LASSERTF(page_idx >=3D ria->ria_stoff, "Invalid page_idx %lu rs %lu r=
e %lu ro %lu rl %lu rp %lu\n",
> +			LASSERTF(page_idx >=3D ria->ria_stoff,
> +				 "Invalid page_idx %lu rs %lu re %lu ro %lu rl %lu rp %lu\n",
> 				 page_idx,
> 				 ria->ria_start, ria->ria_end, ria->ria_stoff,
> 				 ria->ria_length, ria->ria_pages);
> @@ -669,8 +671,9 @@ static void ras_stride_increase_window(struct ll_read=
ahead_state *ras,
> 	unsigned long stride_len;
>=20
> 	LASSERT(ras->ras_stride_length > 0);
> -	LASSERTF(ras->ras_window_start + ras->ras_window_len
> -		 >=3D ras->ras_stride_offset, "window_start %lu, window_len %lu stride=
_offset %lu\n",
> +	LASSERTF(ras->ras_window_start + ras->ras_window_len >=3D
> +		 ras->ras_stride_offset,
> +		 "window_start %lu, window_len %lu stride_offset %lu\n",
> 		 ras->ras_window_start,
> 		 ras->ras_window_len, ras->ras_stride_offset);
>=20
> @@ -766,7 +769,8 @@ static void ras_update(struct ll_sb_info *sbi, struct=
 inode *inode,
> 			    PAGE_SHIFT;
>=20
> 		CDEBUG(D_READA, "kmsp %llu mwp %lu mp %lu\n", kms_pages,
> -		       ra->ra_max_read_ahead_whole_pages, ra->ra_max_pages_per_file);
> +		       ra->ra_max_read_ahead_whole_pages,
> +		       ra->ra_max_pages_per_file);
>=20
> 		if (kms_pages &&
> 		    kms_pages <=3D ra->ra_max_read_ahead_whole_pages) {
> diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/st=
aging/lustre/lustre/llite/statahead.c
> index ea9d59f..99cc1cb 100644
> --- a/drivers/staging/lustre/lustre/llite/statahead.c
> +++ b/drivers/staging/lustre/lustre/llite/statahead.c
> @@ -1082,7 +1082,8 @@ static int ll_statahead_thread(void *arg)
> 					struct ll_inode_info *clli;
>=20
> 					clli =3D list_entry(sai->sai_agls.next,
> -							  struct ll_inode_info, lli_agl_list);
> +							  struct ll_inode_info,
> +							  lli_agl_list);
> 					list_del_init(&clli->lli_agl_list);
> 					spin_unlock(&lli->lli_agl_lock);
>=20
> diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/stag=
ing/lustre/lustre/llite/super25.c
> index 0da4af8..8938713 100644
> --- a/drivers/staging/lustre/lustre/llite/super25.c
> +++ b/drivers/staging/lustre/lustre/llite/super25.c
> @@ -88,7 +88,8 @@ static int __init lustre_init(void)
> 	struct timespec64 ts;
> 	int i, rc, seed[2];
>=20
> -	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=3D LUSTRE_VOLATILE_HDR_LEN +=
 1);
> +	BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=3D
> +		     LUSTRE_VOLATILE_HDR_LEN + 1);
>=20
> 	/* print an address of _any_ initialized kernel symbol from this
> 	 * module, to allow debugging with gdb that doesn't support data
> diff --git a/drivers/staging/lustre/lustre/llite/xattr_cache.c b/drivers/=
staging/lustre/lustre/llite/xattr_cache.c
> index 80ee392..dbf9be2 100644
> --- a/drivers/staging/lustre/lustre/llite/xattr_cache.c
> +++ b/drivers/staging/lustre/lustre/llite/xattr_cache.c
> @@ -364,7 +364,8 @@ static int ll_xattr_cache_refill(struct inode *inode,=
 struct lookup_intent *oit)
> 	}
>=20
> 	if (oit->it_status < 0) {
> -		CDEBUG(D_CACHE, "getxattr intent returned %d for fid " DFID "\n",
> +		CDEBUG(D_CACHE,
> +		       "getxattr intent returned %d for fid " DFID "\n",
> 		       oit->it_status, PFID(ll_inode2fid(inode)));
> 		rc =3D oit->it_status;
> 		/* xattr data is so large that we don't want to cache it */
> --=20
> 2.7.4
>=20

Cheers, Andreas
--
Andreas Dilger
Lustre Principal Architect
Intel Corporation








