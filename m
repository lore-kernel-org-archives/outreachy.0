X-GM-THRID: 6211564621691617280
X-Received: by 10.107.7.230 with SMTP id g99mr9481432ioi.17.1446245798197;
        Fri, 30 Oct 2015 15:56:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.38.81 with SMTP id m78ls742876iom.33.gmail; Fri, 30 Oct
 2015 15:56:37 -0700 (PDT)
X-Received: by 10.50.134.199 with SMTP id pm7mr678182igb.0.1446245797895;
        Fri, 30 Oct 2015 15:56:37 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22d.google.com (mail-qg0-x22d.google.com. [2607:f8b0:400d:c04::22d])
        by gmr-mx.google.com with ESMTPS id m7si687625ywe.1.2015.10.30.15.56.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 15:56:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) client-ip=2607:f8b0:400d:c04::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22d as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-qg0-x22d.google.com with SMTP id m9so73836348qge.1
        for <outreachy-kernel@googlegroups.com>; Fri, 30 Oct 2015 15:56:37 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=k006mEEpfh226tfykcd+hlEms/X2tayf9vaPfL2gaN8=;
        b=HCNSAgNJ8LvMdu3MqDwskdUWtqEsy8qWFnogXUKhdI4sx3aG1E33gfQvydoPu3RbW/
         DTNnVI/4owX8D723eGp5HndKIMplCdfYRV4zkVc2GcsRapqX1AG9PTi8pK3bJUlKdJOM
         mz3um5Nl2e8cdLMO275izXciwN+OrdClJat+1aG8hFe+Eca0liyi0EYcMq3e+1Namizo
         UJ1/xU+qJcWzEGthEXFrYbdF9LxoZ9IOC8c6p31yrP3CbNjgKngKhIYDqmYqwRgtY+7n
         xMbgVg5IkMdyrq5SsWyGXTjeyo/DzFbx6m9yMbyJpNWw32ywO/1llMr1GU8HNjfH6ypm
         tS+g==
MIME-Version: 1.0
X-Received: by 10.140.225.16 with SMTP id v16mr14231842qhb.89.1446245797634;
 Fri, 30 Oct 2015 15:56:37 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Fri, 30 Oct 2015 15:56:37 -0700 (PDT)
In-Reply-To: <20151030225011.GA2400@kroah.com>
References: <20151030220302.GA3803@amitoj-Inspiron-3542>
	<20151030225011.GA2400@kroah.com>
Date: Sat, 31 Oct 2015 04:26:37 +0530
Message-ID: <CA+5yK5H=F8p71Apeb+xUXLWvjrxhVOaOnVz5NH1F-Aqp2bhPpg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lustre: llite: dir: Add
 __user annotations to remove sparse warnings
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 31, 2015 at 4:20 AM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sat, Oct 31, 2015 at 03:33:03AM +0530, Amitoj Kaur Chawla wrote:
>> This patch fixes the following multiple sparse warnings by adding
>> __user annotations:
>>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got char *<noident>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got int *<noident>
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void [noderef] <asn:1>*to got void *<noident>
>> warning: incorrect type in argument 2 (different address spaces)
>> expected void const [noderef] <asn:1>*from got struct lov_user_md_v3
>> warning: incorrect type in argument 2 (different address spaces)
>> expected void const [noderef] <asn:1>*from got struct lov_user_md_v1
>> warning: incorrect type in argument 1 (different address spaces)
>> expected void const [noderef] <asn:1>*from got const char
>>
>> After this patch, there are no more sparse warnings for this file.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/llite/dir.c | 71 ++++++++++++++++---------------
>>  1 file changed, 36 insertions(+), 35 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/llite/dir.c b/drivers/staging/lustre/lustre/llite/dir.c
>> index cc6f0f5..da91226 100644
>> --- a/drivers/staging/lustre/lustre/llite/dir.c
>> +++ b/drivers/staging/lustre/lustre/llite/dir.c
>> @@ -1244,6 +1244,9 @@ static long ll_dir_ioctl(struct file *file, unsigned int cmd, unsigned long arg)
>>       struct ll_sb_info *sbi = ll_i2sbi(inode);
>>       struct obd_ioctl_data *data;
>>       int rc = 0;
>> +     int __user *argi = (int __user *)arg;
>> +     void __user *argv = (void __user *)arg;
>> +     char __user *argc = (char __user *)arg;
>
> It's impossible to fix up lustre with the correct __user markings,
> sorry.  The code is horribly designed and probably wrong in places
> (kernel semaphore structures in userspace!), so I would just ignore
> these warnings, we can't fix them up until the developers of the code do
> the work, it's very non-trivial.
>
> sorry.
>
> greg k-h


Oh, okay. So I'll just drop this.

Thanks for all the help.
-- 
Amitoj

