X-GM-THRID: 6206976986922876928
X-Received: by 10.112.158.202 with SMTP id ww10mr5961274lbb.13.1445174859563;
        Sun, 18 Oct 2015 06:27:39 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.35.196 with SMTP id k4ls393930wij.24.gmail; Sun, 18 Oct
 2015 06:27:39 -0700 (PDT)
X-Received: by 10.180.198.139 with SMTP id jc11mr1276930wic.4.1445174859078;
        Sun, 18 Oct 2015 06:27:39 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x229.google.com (mail-wi0-x229.google.com. [2a00:1450:400c:c05::229])
        by gmr-mx.google.com with ESMTPS id hs5si373308wib.1.2015.10.18.06.27.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:27:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) client-ip=2a00:1450:400c:c05::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::229 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x229.google.com with SMTP id fv8so44525457wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 06:27:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=B/QLWqz8faukYGKtW8nnUCoia+4QlKPxNCEprBvBaaw=;
        b=CaSPPudmz1jBKmCaaBqyZvUxP7uz+GvgT4lPL5njK2OtM5z0/i52MPPVKW1C5H7i6L
         VOomuK2WOkZPJKYkN/r6VFcn6u8WXCICUGV8a5JmVT9/G+z2cax8mjchnBrVP7EAQ4Cx
         Mffimzfuxh7HnCO1ucqMauDZm9HJbRq5FrrWGRsKPF6AzblGYbTOToumsqfWTzmbACd5
         /5R3m8UtbFL5L/r/u0HGAJVf5I8/nRba6fD6CbwlW6ZoFFRx9FcwXiUsbNCbsXY46n99
         dan8sixzfgFd4OeB+6m9HZxETmXsCQpwYcpLBMp9oE4Q70wGHQAMbtTlv9DWAfsSA7du
         0cag==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr30711982wja.87.1445174858988; Sun,
 18 Oct 2015 06:27:38 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 06:27:38 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510181523580.2614@hadrien>
References: <20151018132030.GA30680@ubuntu>
	<alpine.DEB.2.10.1510181523580.2614@hadrien>
Date: Sun, 18 Oct 2015 18:57:38 +0530
Message-ID: <CAKHNQQEJLf1LXOZr7KS=BdC8riOXdjg6jgfDMfV8OK2uXvpJww@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Add check
 on a variable
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 6:54 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 18 Oct 2015, Shivani Bhardwaj wrote:
>
>> Variable rc is not tested for negative values and hence a check should
>> be included. Also, a check for variable val should be introduced.
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +++-
>>  1 file changed, 3 insertions(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> index cdc7f88..c4d44e7 100644
>> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> @@ -61,7 +61,9 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>>       unsigned long val;
>>
>>       rc = kstrtoul(buffer, 10, &val);
>> -     if (rc < 0)
>> +     if (rc)
>
> If rc is never > 0, then why do you want to change rc < 0 to just rc?
>
> julia
>

Because in case rc=0, it will be success and we don't need to return.
This patch is a fix up on earlier patch as suggested by Greg.

>> +             return rc;
>> +     if (val > 1)
>>               return -ERANGE;
>>
>>       /* opposite senses */
>> --
>> 2.1.0
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151018132030.GA30680%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

