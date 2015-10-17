X-GM-THRID: 6206234099598753792
X-Received: by 10.180.9.104 with SMTP id y8mr2385442wia.7.1445081587218;
        Sat, 17 Oct 2015 04:33:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.51 with SMTP id v19ls310045wij.46.gmail; Sat, 17 Oct
 2015 04:33:06 -0700 (PDT)
X-Received: by 10.194.240.230 with SMTP id wd6mr4833981wjc.0.1445081586695;
        Sat, 17 Oct 2015 04:33:06 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id q6si209902wif.2.2015.10.17.04.33.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 04:33:06 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id gb1so39377620wic.1
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 04:33:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=2rba3ykxtbs+KOM8eeljKpo4UWvIc7w0R53ebwtOnPA=;
        b=r2xIkkYhb21KO+1muOaFcnOvcPDb2Pubqw7NhhFB8TAznxHqG/CIMgQWCZtby8uubk
         fu0mSWIkzm+V4hEgGgdW3knfkwlnKlvHEDKq292yA2iVF7G3IdoIzq/idLxEy+v7R+yc
         ntyW8G/74p2T0Tn4eAsWo8uPuzs8J0ynpOQpyBvhu930DkbyJhzeYWjJqaUZ+y9DfUGQ
         JhVyLsJCfM98i2bSDpI+srHRMWUpmG42RI5TY2gRTvJCzGYaNdrQJ2CN8w3rNlhksE9A
         c+9ne9Fe3BwLZvL3UDB2Bs2AA4kKas8yGNpOOukOKCi7+flYSneDM7wqL6D91lDR18mL
         7U/g==
MIME-Version: 1.0
X-Received: by 10.194.52.6 with SMTP id p6mr24946819wjo.119.1445081586587;
 Sat, 17 Oct 2015 04:33:06 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sat, 17 Oct 2015 04:33:06 -0700 (PDT)
In-Reply-To: <20151017053809.GA19991@kroah.com>
References: <20151016131745.GA3734@ubuntu>
	<20151017053809.GA19991@kroah.com>
Date: Sat, 17 Oct 2015 17:03:06 +0530
Message-ID: <CAKHNQQHmRrtrKK-rN_daY7yn6yb2GtzLytJtSs688k6jGuk6Ew@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Remove
 irrelevant check
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Oct 17, 2015 at 11:08 AM, Greg KH <greg@kroah.com> wrote:
> On Fri, Oct 16, 2015 at 06:47:45PM +0530, Shivani Bhardwaj wrote:
>> The variable val has been declared as unsigned long and thus the check
>> for negative values should be removed from it.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> index 053d508..c4d44e7 100644
>> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> @@ -63,7 +63,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>>       rc = kstrtoul(buffer, 10, &val);
>>       if (rc)
>>               return rc;
>> -     if (val < 0 || val > 1)
>> +     if (val > 1)
>>               return -ERANGE;
>
> Doesn't apply as I added your other patch, can you provide a fix-up on
> top of that for this instead?
>
> thanks,
>
> greg k-h

Yes, I'll do that.
Thank you

