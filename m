X-GM-THRID: 6473410411176656896
X-Received: by 10.31.147.196 with SMTP id v187mr5599911vkd.56.1507778344869;
        Wed, 11 Oct 2017 20:19:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.31.158.82 with SMTP id h79ls824149vke.3.gmail; Wed, 11 Oct
 2017 20:19:03 -0700 (PDT)
X-Received: by 10.159.55.39 with SMTP id z36mr583636uad.35.1507778343832;
        Wed, 11 Oct 2017 20:19:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507778343; cv=none;
        d=google.com; s=arc-20160816;
        b=aOxjtJ0LA9KSf3JT0sxodixBE6slw6vjSpo9oPzS1U823pJf2dPwik9e6tF0fTQZ89
         h+uelV+4HHwnnSAbLxURa7PN3vyhPj7PEjSZvcWtD42iPRimlgCN5Vqv1hFXc4Ow6PcI
         MgFOiWWz+urV/L6mwcltot6SPZLAudeSz+5jw9jM9KJDxFedchIwkplN8Bi9/l5fp7uA
         +amlcsZBEWH13SLJxrhZeddaVyiZBLBONgCvHAYOoK8VwUUZ4q59uvgIDDlC/TjSGXRC
         DOHALdbPDGGIzA8qhUDjqD/QI6ZfhZ/1kSZgJocyFkXDvSckl3khM8HHVB8CnjViqw9p
         AxXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=8zX2c8QqQQTq6CIlKYNjL3Rh4xQbjTMsVThvY4XVJ7I=;
        b=BDbHTEEo4ee+P7Wur7VBx77q4IC02h2AxyxMCQsHEzouFjSEChNEThHbUENnaBsEVt
         M61fQfjThU6hRKR9SdJpG1ExBilpL6ZdhRC6yr2WTc023aOE4gxa8NP1A/R5IyXAYKTf
         z7lwSi9Zyp7GWleE+kDFdm4EgsiPwuqryOCMQ2cUaVVB1YtgNDFBrDI+r2JmGe66I7qa
         /kDhd2Oqv6yEmEBa4FSW/fPfZYDBB7xJSXPKqhDiTJpee02iO8ITJLBFYwnFOxujYPbN
         jD4+Aql+OfgPmT9jUlO3mJP7fA9hjmpgKUFWE4e9q59GHXK+28t+vXpv8dQT1+DS5uR1
         OxdA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=adcSW5Vn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-ua0-x243.google.com (mail-ua0-x243.google.com. [2607:f8b0:400c:c08::243])
        by gmr-mx.google.com with ESMTPS id l14si475263vki.1.2017.10.11.20.19.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Oct 2017 20:19:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) client-ip=2607:f8b0:400c:c08::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=adcSW5Vn;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c08::243 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ua0-x243.google.com with SMTP id d45so1194001uag.1
        for <outreachy-kernel@googlegroups.com>; Wed, 11 Oct 2017 20:19:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=8zX2c8QqQQTq6CIlKYNjL3Rh4xQbjTMsVThvY4XVJ7I=;
        b=adcSW5VnKEIVJvrEUpaK18OUhp6Oxc2XpdE617WWAYsnpvgYAS8nfBXFrPmepOzYzh
         h/3jQwZsc+e8ditH4J6lZy7iZVpZ9+sW9cNT7JqGod2a6N/vdsQSEIB+XYT5edvXzTuS
         uvT99MccnJX3zdLVO32hQN4VoCe9Oa4tm7xkyOg1CD8RYQnjPijh0/zyoO4m172pG7a1
         XpwQ7tsF9BPqCB4Obb1bgl2zUCQO/1OEK1bKgeHUXpDPhaDnMGU/uq6zhW9r3X65BJ8E
         cLGCnjkLCgMmXlRicEyUOLgJXy1diCtW8EmJiNTV56EBJh4vd9jKfXWeJs65b9LPKHob
         65xw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=8zX2c8QqQQTq6CIlKYNjL3Rh4xQbjTMsVThvY4XVJ7I=;
        b=pg8b02FhIuIju2bTf6ch6XjyMixaiPb4YCQW8iln+1qiueGhAX9TOsotBU8TLgFhMS
         ALvHmvCNYDSIlkl+XUSe/P/38UlNitXj0xZwe7CNtX3wmMsnq6O5rVSTHVIhLIf0A0tU
         4rqwIXqrAuH1CgAteqbs6oGuDhj+V6LNQNHfP2FqTHNb0Kvz/ZEi27AtMpM0dsiUVemU
         d4JinzkwgfJe1vhO2HaupWBg8p1s7c3I+W+fD/kOpVwYonuMrfeZvTraXdB0bb3EPbVW
         rgIIHYZqleHEBAuQShYtCl3cnjoVRxXBNFCpyBP3kZhqDTJ7EkPtfQ8e6pTAv59XJdSM
         89qA==
X-Gm-Message-State: AMCzsaVtfgiFdWQ2EUSYUXVug9b0SH5c7xBmkUIiSnjRhFtsuW2SjuDw
	7q8Zl/SffD1Y7RddRzv7e0Sehj+5ial2Uumy2S4=
X-Google-Smtp-Source: AOwi7QAbppWqGTYix1hjmdXTbB6KUAzQtpoBjcGImhFkk7x5PSdYYLUFCowYjJ7ZRLxNeJrR/qCDTfnfHRQ2svfKcaE=
X-Received: by 10.159.54.107 with SMTP id s40mr883488uad.95.1507778343067;
 Wed, 11 Oct 2017 20:19:03 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.159.63.140 with HTTP; Wed, 11 Oct 2017 20:19:02 -0700 (PDT)
In-Reply-To: <80A8EBBD-9E13-4DD1-B416-3C70D746905E@intel.com>
References: <1507208303-17615-1-git-send-email-aastha.gupta4104@gmail.com>
 <1507208303-17615-10-git-send-email-aastha.gupta4104@gmail.com> <80A8EBBD-9E13-4DD1-B416-3C70D746905E@intel.com>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Thu, 12 Oct 2017 08:49:02 +0530
Message-ID: <CAHXiS5_F8p0QxYunyKwzGALAZD5+rw_9Lpa=SoSX81qjMvDTYg@mail.gmail.com>
Subject: Re: [PATCH 09/11] staging: lustre: llite: fix lines over 80
 characters in llite files
To: "Dilger, Andreas" <andreas.dilger@intel.com>
Cc: "outreachy-kernel@googlegroups.com" <outreachy-kernel@googlegroups.com>, 
	"Drokin, Oleg" <oleg.drokin@intel.com>, James Simmons <jsimmons@infradead.org>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Thank you for the suggestions. I will make these changes and send you
the patch again.

On Tue, Oct 10, 2017 at 1:39 PM, Dilger, Andreas
<andreas.dilger@intel.com> wrote:
> On Oct 5, 2017, at 06:58, Aastha Gupta <aastha.gupta4104@gmail.com> wrote:
>>
>> This fixes checkpatch.pl warning:
>> WARNING: line over 80 characters
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
>> index 1db3e7f..b81aab4 100644
>> --- a/drivers/staging/lustre/lustre/llite/dir.c
>> +++ b/drivers/staging/lustre/lustre/llite/dir.c
>> @@ -419,7 +420,8 @@ static int ll_dir_setdirstripe(struct inode *parent, struct lmv_user_md *lump,
>>       if (unlikely(lump->lum_magic != LMV_USER_MAGIC))
>>               return -EINVAL;
>>
>> -     CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID "(%p) name %s stripe_offset %d, stripe_count: %u\n",
>> +     CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID
>> +            "(%p) name %s stripe_offset %d, stripe_count: %u\n",
>>              PFID(ll_inode2fid(parent)), parent, dirname,
>>              (int)lump->lum_stripe_offset, lump->lum_stripe_count);
>
> I believe that new kernel style is to allow error strings to be longer
> than 80 columns, so that they can be found more easily?
>
>> @@ -832,7 +837,8 @@ static int ll_ioc_copy_end(struct super_block *sb, struct hsm_copy *copy)
>>                */
>>               if ((copy->hc_hai.hai_action == HSMA_ARCHIVE) &&
>>                   (copy->hc_data_version != data_version)) {
>> -                     CDEBUG(D_HSM, "File data version mismatched. File content was changed during archiving. "
>> +                     CDEBUG(D_HSM,
>> +                            "File data version mismatched. File content was changed during archiving. "
>>                              DFID ", start:%#llx current:%#llx\n",
>>                              PFID(&copy->hc_hai.hai_fid),
>>                              copy->hc_data_version, data_version);
>
> I don't think these are really an improvement over the current code, since
> they still exceed 80 columns, unless it actually quiets the warning?  In
> that case, the "DFID" part should be added to the same line as the rest of
> the message, to match current coding style.
>
>> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
>> index be66545..bd17b38 100644
>> --- a/drivers/staging/lustre/lustre/llite/file.c
>> +++ b/drivers/staging/lustre/lustre/llite/file.c
>> @@ -605,7 +605,8 @@ int ll_file_open(struct inode *inode, struct file *file)
>>                        * to get file with different fid.
>>                        */
>>                       it->it_flags |= MDS_OPEN_LOCK | MDS_OPEN_BY_FID;
>> -                     rc = ll_intent_file_open(file->f_path.dentry, NULL, 0, it);
>> +                     rc = ll_intent_file_open(file->f_path.dentry,
>> +                             NULL, 0, it);
>
> Align continued lines after '(' on the previous line.
>
>>                       if (rc)
>>                               goto out_openerr;
>>
>> @@ -2507,7 +2509,8 @@ ll_file_flock(struct file *file, int cmd, struct file_lock *file_lock)
>>       if (IS_ERR(op_data))
>>               return PTR_ERR(op_data);
>>
>> -     CDEBUG(D_DLMTRACE, "inode=" DFID ", pid=%u, flags=%#llx, mode=%u, start=%llu, end=%llu\n",
>> +     CDEBUG(D_DLMTRACE, "inode=" DFID
>> +            ", pid=%u, flags=%#llx, mode=%u, start=%llu, end=%llu\n",
>>              PFID(ll_inode2fid(inode)), flock.l_flock.pid, flags,
>>              einfo.ei_mode, flock.l_flock.start, flock.l_flock.end);
>
> Similarly, this should be kept as a single line.
>
>> diff --git a/drivers/staging/lustre/lustre/llite/llite_internal.h b/drivers/staging/lustre/lustre/llite/llite_internal.h
>> index 0287c75..c31d98d 100644
>> --- a/drivers/staging/lustre/lustre/llite/llite_internal.h
>> +++ b/drivers/staging/lustre/lustre/llite/llite_internal.h
>> @@ -84,7 +84,9 @@ struct ll_dentry_data {
>>
>> struct ll_getname_data {
>>       struct dir_context ctx;
>> -     char        *lgd_name;      /* points to a buffer with NAME_MAX+1 size */
>> +     char        *lgd_name;      /* points to a buffer with
>> +                                  * NAME_MAX+1 size
>> +                                  */
>
> Just drop "a " from the comment to keep it under 80 characters.
>
>>       struct lu_fid    lgd_fid;       /* target fid we are looking for */
>>       int           lgd_found;     /* inode matched? */
>> };
>> @@ -637,7 +639,8 @@ static inline int ll_need_32bit_api(struct ll_sb_info *sbi)
>> #if BITS_PER_LONG == 32
>>       return 1;
>> #elif defined(CONFIG_COMPAT)
>> -     return unlikely(in_compat_syscall() || (sbi->ll_flags & LL_SBI_32BIT_API));
>> +     return unlikely(in_compat_syscall() ||
>> +             (sbi->ll_flags & LL_SBI_32BIT_API));
>
> Align continued lines after '(' on previous line.
>
>> #else
>>       return unlikely(sbi->ll_flags & LL_SBI_32BIT_API);
>> #endif
>> @@ -1065,7 +1068,9 @@ struct ll_statahead_info {
>>                                            * hidden entries
>>                                            */
>>                               sai_agl_valid:1,/* AGL is valid for the dir */
>> -                             sai_in_readpage:1;/* statahead is in readdir() */
>> +                             sai_in_readpage:1;/* statahead is in
>> +                                                * readdir()
>> +                                                */
>
> Just drop "is " to keep it under 80 columns.
>
>>       wait_queue_head_t       sai_waitq;      /* stat-ahead wait queue */
>>       struct ptlrpc_thread    sai_thread;     /* stat-ahead thread */
>>       struct ptlrpc_thread    sai_agl_thread; /* AGL thread */
>> @@ -1253,7 +1258,8 @@ static inline void ll_set_lock_data(struct obd_export *exp, struct inode *inode,
>>                */
>>               if (it->it_remote_lock_mode) {
>>                       handle.cookie = it->it_remote_lock_handle;
>> -                     CDEBUG(D_DLMTRACE, "setting l_data to inode " DFID "%p for remote lock %#llx\n",
>> +                     CDEBUG(D_DLMTRACE, "setting l_data to inode "
>> +                            DFID "%p for remote lock %#llx\n",
>
> Should not be split.
>
>>                              PFID(ll_inode2fid(inode)), inode,
>>                              handle.cookie);
>>                       md_set_lock_data(exp, &handle, inode, NULL);
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/llite_lib.c b/drivers/staging/lustre/lustre/llite/llite_lib.c
>> index 25393e3..51919bb 100644
>> --- a/drivers/staging/lustre/lustre/llite/llite_lib.c
>> +++ b/drivers/staging/lustre/lustre/llite/llite_lib.c
>> @@ -540,7 +544,8 @@ static int client_common_fill_super(struct super_block *sb, char *md, char *dt,
>>               err = ldebugfs_register_mountpoint(llite_root, sb, dt, md);
>>               if (err < 0) {
>>                       CERROR("%s: could not register mount in debugfs: "
>> -                            "rc = %d\n", ll_get_fsname(sb, NULL, 0), err);
>> +                            "rc = %d\n", ll_get_fsname(sb, NULL, 0),
>> +                            err);
>
> It isn't clear why this was changed, since the original was still within
> 80 columns?
>
>>                       err = 0;
>>               }
>>       }
>>
>> @@ -1419,7 +1426,8 @@ int ll_setattr_raw(struct dentry *dentry, struct iattr *attr, bool hsm_import)
>>       struct md_op_data *op_data = NULL;
>>       int rc = 0;
>>
>> -     CDEBUG(D_VFSTRACE, "%s: setattr inode " DFID "(%p) from %llu to %llu, valid %x, hsm_import %d\n",
>> +     CDEBUG(D_VFSTRACE, "%s: setattr inode " DFID
>> +            "(%p) from %llu to %llu, valid %x, hsm_import %d\n",
>
> The error message should be kept on a single line.
>
>>              ll_get_fsname(inode->i_sb, NULL, 0), PFID(&lli->lli_fid), inode,
>>              i_size_read(inode), attr->ia_size, attr->ia_valid, hsm_import);
>>
>> @@ -1744,7 +1752,8 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
>>       }
>>       if (body->mbo_valid & OBD_MD_FLMTIME) {
>>               if (body->mbo_mtime > LTIME_S(inode->i_mtime)) {
>> -                     CDEBUG(D_INODE, "setting ino %lu mtime from %lu to %llu\n",
>> +                     CDEBUG(D_INODE,
>> +                            "setting ino %lu mtime from %lu to %llu\n",
>>                              inode->i_ino, LTIME_S(inode->i_mtime),
>>                              body->mbo_mtime);
>>                       LTIME_S(inode->i_mtime) = body->mbo_mtime;
>> @@ -1783,7 +1792,8 @@ int ll_update_inode(struct inode *inode, struct lustre_md *md)
>>               /* FID shouldn't be changed! */
>>               if (fid_is_sane(&lli->lli_fid)) {
>>                       LASSERTF(lu_fid_eq(&lli->lli_fid, &body->mbo_fid1),
>> -                              "Trying to change FID " DFID " to the " DFID ", inode " DFID "(%p)\n",
>> +                              "Trying to change FID " DFID " to the " DFID
>> +                              ", inode " DFID "(%p)\n",
>
> Error message should be kept on a single line.
>
>>                                PFID(&lli->lli_fid), PFID(&body->mbo_fid1),
>>                                PFID(ll_inode2fid(inode)), inode);
>>               } else {
>> @@ -1870,8 +1880,8 @@ void ll_delete_inode(struct inode *inode)
>>
>>       truncate_inode_pages_final(&inode->i_data);
>>
>> -     LASSERTF(!inode->i_data.nrpages,
>> -              "inode=" DFID "(%p) nrpages=%lu, see http://jira.whamcloud.com/browse/LU-118\n",
>> +     LASSERTF(!inode->i_data.nrpages, "inode=" DFID
>> +              "(%p) nrpages=%lu, see http://jira.whamcloud.com/browse/LU-118\n",
>
> ...
>
>>                PFID(ll_inode2fid(inode)), inode, inode->i_data.nrpages);
>>
>>       ll_clear_inode(inode);
>> @@ -2441,7 +2452,8 @@ void ll_dirty_page_discard_warn(struct page *page, int ioret)
>>       }
>>
>>       CDEBUG(D_WARNING,
>> -            "%s: dirty page discard: %s/fid: " DFID "/%s may get corrupted (rc %d)\n",
>> +            "%s: dirty page discard: %s/fid: " DFID
>> +            "/%s may get corrupted (rc %d)\n",
>
> ...
>
>>              ll_get_fsname(page->mapping->host->i_sb, NULL, 0),
>>              s2lsi(page->mapping->host->i_sb)->lsi_lmd->lmd_dev,
>>              PFID(&obj->vob_header.coh_lu.loh_fid),
>> diff --git a/drivers/staging/lustre/lustre/llite/namei.c b/drivers/staging/lustre/lustre/llite/namei.c
>> index 5cc2b32..0b3649b 100644
>> --- a/drivers/staging/lustre/lustre/llite/namei.c
>> +++ b/drivers/staging/lustre/lustre/llite/namei.c
>> @@ -273,7 +274,8 @@ int ll_md_blocking_ast(struct ldlm_lock *lock, struct ldlm_lock_desc *desc,
>>               if ((bits & MDS_INODELOCK_UPDATE) && S_ISDIR(inode->i_mode)) {
>>                       struct ll_inode_info *lli = ll_i2info(inode);
>>
>> -                     CDEBUG(D_INODE, "invalidating inode " DFID " lli = %p, pfid  = " DFID "\n",
>> +                     CDEBUG(D_INODE, "invalidating inode " DFID
>> +                            " lli = %p, pfid  = " DFID "\n",
>
> Should be kept on a single line, like:
>
>                         CDEBUG(D_INODE,
>                                "invalidating inode "DFID" lli = %p, pfid  = "DFID"\n",
>
>>                              PFID(ll_inode2fid(inode)), lli,
>>                              PFID(&lli->lli_pfid));
>>
>> @@ -683,7 +686,8 @@ static int ll_atomic_open(struct inode *dir, struct dentry *dentry,
>>       struct dentry *de;
>>       int rc = 0;
>>
>> -     CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, dir=" DFID "(%p),file %p,open_flags %x,mode %x opened %d\n",
>> +     CDEBUG(D_VFSTRACE, "VFS Op:name=%pd, dir=" DFID
>> +            "(%p),file %p,open_flags %x,mode %x opened %d\n",
>
> Should be kept on a single line.
>
>>              dentry, PFID(ll_inode2fid(dir)), dir, file, open_flags, mode,
>>              *opened);
>>
>> @@ -736,7 +740,8 @@ static int ll_atomic_open(struct inode *dir, struct dentry *dentry,
>>
>>                       *opened |= FILE_CREATED;
>>               }
>> -             if (d_really_is_positive(dentry) && it_disposition(it, DISP_OPEN_OPEN)) {
>> +             if (d_really_is_positive(dentry) &&
>> +                     it_disposition(it, DISP_OPEN_OPEN)) {
>
> Align continued line after first '(' on previous line.
>
>>                       /* Open dentry. */
>>                       if (S_ISFIFO(d_inode(dentry)->i_mode)) {
>>                               /* We cannot call open here as it might
>> @@ -1136,7 +1143,8 @@ static int ll_rename(struct inode *src, struct dentry *src_dchild,
>>               return -EINVAL;
>>
>>       CDEBUG(D_VFSTRACE,
>> -            "VFS Op:oldname=%pd, src_dir=" DFID "(%p), newname=%pd, tgt_dir=" DFID "(%p)\n",
>> +            "VFS Op:oldname=%pd, src_dir=" DFID
>> +            "(%p), newname=%pd, tgt_dir=" DFID "(%p)\n",
>
> Should be kept on a single line.
>
>>              src_dchild, PFID(ll_inode2fid(src)), src,
>>              tgt_dchild, PFID(ll_inode2fid(tgt)), tgt);
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/rw26.c b/drivers/staging/lustre/lustre/llite/rw26.c
>> index 3619cd8..d1a1899 100644
>> --- a/drivers/staging/lustre/lustre/llite/rw26.c
>> +++ b/drivers/staging/lustre/lustre/llite/rw26.c
>> @@ -327,7 +327,8 @@ static ssize_t ll_direct_IO_26(struct kiocb *iocb, struct iov_iter *iter)
>>       if ((file_offset & ~PAGE_MASK) || (count & ~PAGE_MASK))
>>               return -EINVAL;
>>
>> -     CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID "(%p), size=%zd (max %lu), offset=%lld=%llx, pages %zd (max %lu)\n",
>> +     CDEBUG(D_VFSTRACE, "VFS Op:inode=" DFID
>> +            "(%p), size=%zd (max %lu), offset=%lld=%llx, pages %zd (max %lu)\n",
>
> Should be kept on a single line.
>
>>              PFID(ll_inode2fid(inode)), inode, count, MAX_DIO_SIZE,
>>              file_offset, file_offset, count >> PAGE_SHIFT,
>>              MAX_DIO_SIZE >> PAGE_SHIFT);
>> diff --git a/drivers/staging/lustre/lustre/llite/statahead.c b/drivers/staging/lustre/lustre/llite/statahead.c
>> index ea9d59f..3969c9c3 100644
>> --- a/drivers/staging/lustre/lustre/llite/statahead.c
>> +++ b/drivers/staging/lustre/lustre/llite/statahead.c
>> @@ -1008,7 +1008,8 @@ static int ll_statahead_thread(void *arg)
>>               sai->sai_in_readpage = 0;
>>               if (IS_ERR(page)) {
>>                       rc = PTR_ERR(page);
>> -                     CDEBUG(D_READA, "error reading dir " DFID " at %llu/%llu: opendir_pid = %u: rc = %d\n",
>> +                     CDEBUG(D_READA, "error reading dir " DFID
>> +                            " at %llu/%llu: opendir_pid = %u: rc = %d\n",
>
> ...
>
>>                              PFID(ll_inode2fid(dir)), pos, sai->sai_index,
>>                              lli->lli_opendir_pid, rc);
>>                       break;
>> @@ -1105,7 +1107,8 @@ static int ll_statahead_thread(void *arg)
>>               if (sa_low_hit(sai)) {
>>                       rc = -EFAULT;
>>                       atomic_inc(&sbi->ll_sa_wrong);
>> -                     CDEBUG(D_READA, "Statahead for dir " DFID " hit ratio too low: hit/miss %llu/%llu, sent/replied %llu/%llu, stopping statahead thread: pid %d\n",
>> +                     CDEBUG(D_READA, "Statahead for dir " DFID
>> +                            " hit ratio too low: hit/miss %llu/%llu, sent/replied %llu/%llu, stopping statahead thread: pid %d\n",
>
> ...
>
>>                              PFID(&lli->lli_fid), sai->sai_hit,
>>                              sai->sai_miss, sai->sai_sent,
>>                              sai->sai_replied, current_pid());
>> @@ -1274,7 +1277,8 @@ static int is_first_dirent(struct inode *dir, struct dentry *dentry)
>>                       struct ll_inode_info *lli = ll_i2info(dir);
>>
>>                       rc = PTR_ERR(page);
>> -                     CERROR("%s: error reading dir " DFID " at %llu: opendir_pid = %u : rc = %d\n",
>> +                     CERROR("%s: error reading dir " DFID
>> +                            " at %llu: opendir_pid = %u : rc = %d\n",
>
> ...
>
>>                              ll_get_fsname(dir->i_sb, NULL, 0),
>>                              PFID(ll_inode2fid(dir)), pos,
>>                              lli->lli_opendir_pid, rc);
>> @@ -1470,8 +1474,8 @@ static int revalidate_statahead_dentry(struct inode *dir,
>
>>                               entry->se_inode = NULL;
>>                       } else if ((*dentryp)->d_inode != inode) {
>>                               /* revalidate, but inode is recreated */
>> -                             CDEBUG(D_READA,
>> -                                    "%s: stale dentry %pd inode " DFID ", statahead inode " DFID "\n",
>> +                             CDEBUG(D_READA, "%s: stale dentry %pd inode "
>> +                                    DFID ", statahead inode " DFID "\n",
>
> I think the original was correct.
>
>>                                      ll_get_fsname((*dentryp)->d_inode->i_sb,
>>                                                    NULL, 0),
>>                                      *dentryp,
>> diff --git a/drivers/staging/lustre/lustre/llite/super25.c b/drivers/staging/lustre/lustre/llite/super25.c
>> index 0da4af8..5a52595 100644
>> --- a/drivers/staging/lustre/lustre/llite/super25.c
>> +++ b/drivers/staging/lustre/lustre/llite/super25.c
>> @@ -88,7 +88,8 @@ static int __init lustre_init(void)
>>       struct timespec64 ts;
>>       int i, rc, seed[2];
>>
>> -     BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) != LUSTRE_VOLATILE_HDR_LEN + 1);
>> +     BUILD_BUG_ON(sizeof(LUSTRE_VOLATILE_HDR) !=
>> +             LUSTRE_VOLATILE_HDR_LEN + 1);
>
> Align after first '(' on previous line.
>
>>
>>       /* print an address of _any_ initialized kernel symbol from this
>>        * module, to allow debugging with gdb that doesn't support data
>
> Cheers, Andreas
> --
> Andreas Dilger
> Lustre Principal Architect
> Intel Corporation
>
>
>
>
>
>
>

