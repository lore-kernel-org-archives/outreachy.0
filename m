X-GM-THRID: 6211472827821850624
X-Received: by 10.13.216.14 with SMTP id a14mr6662498ywe.8.1446222121914;
        Fri, 30 Oct 2015 09:22:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.230 with SMTP id j93ls1291887qgf.69.gmail; Fri, 30 Oct
 2015 09:22:01 -0700 (PDT)
X-Received: by 10.13.223.72 with SMTP id i69mr6631951ywe.28.1446222121298;
        Fri, 30 Oct 2015 09:22:01 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qk0-x235.google.com (mail-qk0-x235.google.com. [2607:f8b0:400d:c09::235])
        by gmr-mx.google.com with ESMTPS id q68si560558ywf.0.2015.10.30.09.22.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 09:22:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) client-ip=2607:f8b0:400d:c09::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c09::235 as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qk0-x235.google.com with SMTP id n129so32837538qkc.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 09:22:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=FxClyalYDJBGy1ImxAU2cjJl8zBlsv6wD7jKil/mDV4=;
        b=T5jhrQqwMETToIo3MCX1gm49L8MVl7yUBbWhwoFPwvDcvfjjHYgiM0utQTHbkpksbv
         BK1iCa+zV7lUprwA0zw9L0IJayy09vP53ufSyBmsOAiaP04pkfoHtUlTWoBSOR49/D2+
         4hXdNYQa2+h7wh7lfD2sWo0QcWI7pTlKH1+h5EghNg6jlGlzUaSsC3ZlkIbHf0ouMj1p
         iOMF4Hu9gMRur8XaXJO0Owr1bnT8cC8QdsRx78zPKFEN4AS0CpQXPqgUsqnV+oXnq1HV
         jcKs3a2Yr8QsZ/wnuvQLR3ZANjA3o8MASnark9fAcheel438URsgKBgbAHrXMEMAW3An
         BkNA==
MIME-Version: 1.0
X-Received: by 10.55.71.81 with SMTP id u78mr11265540qka.81.1446222121102;
 Fri, 30 Oct 2015 09:22:01 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 30 Oct 2015 09:22:01 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510301709020.2364@hadrien>
References: <20151030160650.GA13665@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1510301709020.2364@hadrien>
Date: Fri, 30 Oct 2015 21:52:01 +0530
Message-ID: <CA+5yK5H1uWr9EC4YB+CYOHu1sTCJ1e7=_WUedyToM5OTsQFQrA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: Add __iomem annotations
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 30, 2015 at 9:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 30 Oct 2015, Amitoj Kaur Chawla wrote:
>
>> This patch fixes following sparse warnings by adding __iomem
>> annotations:
>
> It looks like it is __user annotations?
>
> julia
>
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
>>  drivers/staging/lustre/lustre/llite/file.c | 16 ++++++++--------
>>  1 file changed, 8 insertions(+), 8 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/file.c b/drivers/staging/lustre/lustre/llite/file.c
>> index 51b6bc5..112da6f 100644
>> --- a/drivers/staging/lustre/lustre/llite/file.c
>> +++ b/drivers/staging/lustre/lustre/llite/file.c
>> @@ -2245,7 +2245,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               struct file *file2;
>>               struct lustre_swap_layouts lsl;
>>
>> -             if (copy_from_user(&lsl, (char *)arg,
>> +             if (copy_from_user(&lsl, (char __user *)arg,
>>                                      sizeof(struct lustre_swap_layouts)))
>>                       return -EFAULT;
>>
>> @@ -2292,7 +2292,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>       case LL_IOC_FLUSHCTX:
>>               return ll_flush_ctx(inode);
>>       case LL_IOC_PATH2FID: {
>> -             if (copy_to_user((void *)arg, ll_inode2fid(inode),
>> +             if (copy_to_user((void __user *)arg, ll_inode2fid(inode),
>>                                sizeof(struct lu_fid)))
>>                       return -EFAULT;
>>
>> @@ -2304,13 +2304,13 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               struct ioc_data_version idv;
>>               int                     rc;
>>
>> -             if (copy_from_user(&idv, (char *)arg, sizeof(idv)))
>> +             if (copy_from_user(&idv, (char __user *)arg, sizeof(idv)))
>>                       return -EFAULT;
>>
>>               rc = ll_data_version(inode, &idv.idv_version,
>>                               !(idv.idv_flags & LL_DV_NOFLUSH));
>>
>> -             if (rc == 0 && copy_to_user((char *) arg, &idv, sizeof(idv)))
>> +             if (rc == 0 && copy_to_user((char __user *) arg, &idv, sizeof(idv)))
>>                       return -EFAULT;
>>
>>               return rc;
>> @@ -2323,7 +2323,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               if (mdtidx < 0)
>>                       return mdtidx;
>>
>> -             if (put_user((int)mdtidx, (int *)arg))
>> +             if (put_user((int)mdtidx, (int __user *)arg))
>>                       return -EFAULT;
>>
>>               return 0;
>> @@ -2350,7 +2350,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               rc = obd_iocontrol(cmd, ll_i2mdexp(inode), sizeof(*op_data),
>>                                  op_data, NULL);
>>
>> -             if (copy_to_user((void *)arg, hus, sizeof(*hus)))
>> +             if (copy_to_user((void __user *)arg, hus, sizeof(*hus)))
>>                       rc = -EFAULT;
>>
>>               ll_finish_md_op_data(op_data);
>> @@ -2361,7 +2361,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               struct hsm_state_set    *hss;
>>               int                      rc;
>>
>> -             hss = memdup_user((char *)arg, sizeof(*hss));
>> +             hss = memdup_user((char __user *)arg, sizeof(*hss));
>>               if (IS_ERR(hss))
>>                       return PTR_ERR(hss);
>>
>> @@ -2389,7 +2389,7 @@ ll_file_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>               rc = obd_iocontrol(cmd, ll_i2mdexp(inode), sizeof(*op_data),
>>                                  op_data, NULL);
>>
>> -             if (copy_to_user((char *)arg, hca, sizeof(*hca)))
>> +             if (copy_to_user((char __user *)arg, hca, sizeof(*hca)))
>>                       rc = -EFAULT;
>>
>>               ll_finish_md_op_data(op_data);
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151030160650.GA13665%40amitoj-Inspiron-3542.
>> For more options, visit https://groups.google.com/d/optout.
>>

Oh yes, my bad. Was reading up on __iomem and made the mistake. Sorry.
Sending a v2.

-- 
Amitoj

