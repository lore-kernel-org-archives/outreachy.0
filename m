X-GM-THRID: 6211494140664872960
X-Received: by 10.13.220.4 with SMTP id f4mr7126345ywe.22.1446228564495;
        Fri, 30 Oct 2015 11:09:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.81.194 with SMTP id c2ls428448oby.6.gmail; Fri, 30 Oct
 2015 11:09:24 -0700 (PDT)
X-Received: by 10.182.181.3 with SMTP id ds3mr7363820obc.5.1446228564069;
        Fri, 30 Oct 2015 11:09:24 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id u202si590815ywf.5.2015.10.30.11.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 11:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id o38so68546143qge.0
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 11:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ulpAA4HMlh2I/w/tOPSYDpfKoAOW0539QgQ4U9KxF+U=;
        b=lp96rtwSWIsDY4JRvcZnqLUBuYkLjsdooEo5xpX/QvK/nCLKROxstThsV6qdWRp6yu
         uZxhk8jSLPHcyWbiCn/FgDXK7mCpae4KbmeADQ/CNdoCGc2BhInB3ydUU15+aI0UuPIY
         nXWxasjPt+/9wM8YmKBiq1FamzCGt2qhwb5e4eMflcEIUnn8KSwuTBwhL2RK3W+uUKE9
         k1gy4Bl2Kj6oSVR7uOowyIOrUq7hPG2wyS9Svu+BMYlcv6um6mO9FmGx1GCvEQgkKAdL
         TqncLpHyoFC7JOKg/PMFfOFd3WE1IgXZykqtZuv6+EA9ANtD8LroJLaqFSgx0Pt3fu29
         B0ng==
MIME-Version: 1.0
X-Received: by 10.140.34.75 with SMTP id k69mr11867802qgk.64.1446228563866;
 Fri, 30 Oct 2015 11:09:23 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 30 Oct 2015 11:09:23 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510301845500.2364@hadrien>
References: <20151030172932.GA27324@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1510301845500.2364@hadrien>
Date: Fri, 30 Oct 2015 23:39:23 +0530
Message-ID: <CA+5yK5HzVQj9=c20DaW-s24MjyS2N8zi3kAogTX1bHDVS870Tw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 30, 2015 at 11:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 30 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> This patch fixes the following multiple sparse warnings by adding
>> __user annotations:
>
> It's puzzling what sparse complains about.  For example, there is this
> code:
>
> struct lov_user_md_v1 *lumv1p = (struct lov_user_md_v1 *)arg;
> ...
> if (copy_from_user(lumv1, lumv1p, sizeof(*lumv1)))
>         return -EFAULT;
>
> But you didn't change it, so I guess there was no complaint, even though
> there is no __user annotation on lumv1p.
>
> julia

It is complaining for this too. I tried changing it. But it gave me
some other warnings when I made a similar change so I'm still trying
to figure out how to stop warnings for cases like these.

I thought I could send that in as a separate patch later on with a
detailed explanation for these cases *when* I figure it out and send
the current changes as is.

Should I have done differently?

>
>>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got char *<noident>
>>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got int *<noident>
>>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got void *<noident>
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/llite/dir.c | 38 +++++++++++++++----------------
>>  1 file changed, 19 insertions(+), 19 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
>> index cc6f0f5..6a20e61 100644
>> --- a/drivers/staging/lustre/lustre/llite/dir.c
>> +++ b/drivers/staging/lustre/lustre/llite/dir.c
>> @@ -1259,7 +1259,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               return ll_iocontrol(inode, file, cmd, arg);
>>       case FSFILT_IOC_GETVERSION_OLD:
>>       case FSFILT_IOC_GETVERSION:
>> -             return put_user(inode->i_generation, (int *)arg);
>> +             return put_user(inode->i_generation, (int __user *)arg);
>>       /* We need to special case any other ioctls we want to handle,
>>        * to send them to the MDS/OST as appropriate and to properly
>>        * network encode the arg field.
>> @@ -1273,7 +1273,7 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               if (mdtidx < 0)
>>                       return mdtidx;
>>
>> -             if (put_user((int)mdtidx, (int *)arg))
>> +             if (put_user((int)mdtidx, (int __user *)arg))
>>                       return -EFAULT;
>>
>>               return 0;
>> @@ -1429,7 +1429,7 @@ lmv_out_free:
>>               tmp->lum_objects[0].lum_mds = mdtindex;
>>               memcpy(&tmp->lum_objects[0].lum_fid, ll_inode2fid(inode),
>>                      sizeof(struct lu_fid));
>> -             if (copy_to_user((void *)arg, tmp, lum_size)) {
>> +             if (copy_to_user((void __user *)arg, tmp, lum_size)) {
>>                       rc = -EFAULT;
>>                       goto free_lmv;
>>               }
>> @@ -1643,7 +1643,7 @@ free_lmm:
>>                                  NULL);
>>               if (rc) {
>>                       CDEBUG(D_QUOTA, "mdc ioctl %d failed: %d\n", cmd, rc);
>> -                     if (copy_to_user((void *)arg, check,
>> +                     if (copy_to_user((void __user *)arg, check,
>>                                            sizeof(*check)))
>>                               CDEBUG(D_QUOTA, "copy_to_user failed\n");
>>                       goto out_poll;
>> @@ -1653,7 +1653,7 @@ free_lmm:
>>                                  NULL);
>>               if (rc) {
>>                       CDEBUG(D_QUOTA, "osc ioctl %d failed: %d\n", cmd, rc);
>> -                     if (copy_to_user((void *)arg, check,
>> +                     if (copy_to_user((void __user *)arg, check,
>>                                            sizeof(*check)))
>>                               CDEBUG(D_QUOTA, "copy_to_user failed\n");
>>                       goto out_poll;
>> @@ -1669,14 +1669,14 @@ out_poll:
>>               if (!qctl)
>>                       return -ENOMEM;
>>
>> -             if (copy_from_user(qctl, (void *)arg, sizeof(*qctl))) {
>> +             if (copy_from_user(qctl, (void __user *)arg, sizeof(*qctl))) {
>>                       rc = -EFAULT;
>>                       goto out_quotactl;
>>               }
>>
>>               rc = quotactl_ioctl(sbi, qctl);
>>
>> -             if (rc == 0 && copy_to_user((void *)arg, qctl, sizeof(*qctl)))
>> +             if (rc == 0 && copy_to_user((void __user *)arg, qctl, sizeof(*qctl)))
>>                       rc = -EFAULT;
>>
>>  out_quotactl:
>> @@ -1706,7 +1706,7 @@ out_quotactl:
>>               int count, vallen;
>>               struct obd_export *exp;
>>
>> -             if (copy_from_user(&count, (int *)arg, sizeof(int)))
>> +             if (copy_from_user(&count, (int __user *)arg, sizeof(int)))
>>                       return -EFAULT;
>>
>>               /* get ost count when count is zero, get mdt count otherwise */
>> @@ -1719,13 +1719,13 @@ out_quotactl:
>>                       return rc;
>>               }
>>
>> -             if (copy_to_user((int *)arg, &count, sizeof(int)))
>> +             if (copy_to_user((int __user *)arg, &count, sizeof(int)))
>>                       return -EFAULT;
>>
>>               return 0;
>>       }
>>       case LL_IOC_PATH2FID:
>> -             if (copy_to_user((void *)arg, ll_inode2fid(inode),
>> +             if (copy_to_user((void __user *)arg, ll_inode2fid(inode),
>>                                    sizeof(struct lu_fid)))
>>                       return -EFAULT;
>>               return 0;
>> @@ -1737,16 +1737,16 @@ out_quotactl:
>>               if (!capable(CFS_CAP_SYS_ADMIN))
>>                       return -EPERM;
>>
>> -             rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void *)arg,
>> +             rc = copy_and_ioctl(cmd, sbi->ll_md_exp, (void __user *)arg,
>>                                   sizeof(struct ioc_changelog));
>>               return rc;
>>       case OBD_IOC_FID2PATH:
>> -             return ll_fid2path(inode, (void *)arg);
>> +             return ll_fid2path(inode, (void __user *)arg);
>>       case LL_IOC_HSM_REQUEST: {
>>               struct hsm_user_request *hur;
>>               ssize_t                  totalsize;
>>
>> -             hur = memdup_user((void *)arg, sizeof(*hur));
>> +             hur = memdup_user((void __user *)arg, sizeof(*hur));
>>               if (IS_ERR(hur))
>>                       return PTR_ERR(hur);
>>
>> @@ -1765,7 +1765,7 @@ out_quotactl:
>>                       return -ENOMEM;
>>
>>               /* Copy the whole struct */
>> -             if (copy_from_user(hur, (void *)arg, totalsize)) {
>> +             if (copy_from_user(hur, (void __user *)arg, totalsize)) {
>>                       kvfree(hur);
>>                       return -EFAULT;
>>               }
>> @@ -1801,7 +1801,7 @@ out_quotactl:
>>               struct hsm_progress_kernel      hpk;
>>               struct hsm_progress             hp;
>>
>> -             if (copy_from_user(&hp, (void *)arg, sizeof(hp)))
>> +             if (copy_from_user(&hp, (void __user *)arg, sizeof(hp)))
>>                       return -EFAULT;
>>
>>               hpk.hpk_fid = hp.hp_fid;
>> @@ -1826,12 +1826,12 @@ out_quotactl:
>>               struct hsm_copy *copy;
>>               int              rc;
>>
>> -             copy = memdup_user((char *)arg, sizeof(*copy));
>> +             copy = memdup_user((char __user *)arg, sizeof(*copy));
>>               if (IS_ERR(copy))
>>                       return PTR_ERR(copy);
>>
>>               rc = ll_ioc_copy_start(inode->i_sb, copy);
>> -             if (copy_to_user((char *)arg, copy, sizeof(*copy)))
>> +             if (copy_to_user((char __user *)arg, copy, sizeof(*copy)))
>>                       rc = -EFAULT;
>>
>>               kfree(copy);
>> @@ -1841,12 +1841,12 @@ out_quotactl:
>>               struct hsm_copy *copy;
>>               int              rc;
>>
>> -             copy = memdup_user((char *)arg, sizeof(*copy));
>> +             copy = memdup_user((char __user *)arg, sizeof(*copy));
>>               if (IS_ERR(copy))
>>                       return PTR_ERR(copy);
>>
>>               rc = ll_ioc_copy_end(inode->i_sb, copy);
>> -             if (copy_to_user((char *)arg, copy, sizeof(*copy)))
>> +             if (copy_to_user((char __user *)arg, copy, sizeof(*copy)))
>>                       rc = -EFAULT;
>>
>>               kfree(copy);
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151030172932.GA27324%40amitoj-Inspiron-3542.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Amitoj

