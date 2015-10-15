X-GM-THRID: 6205949945587957760
X-Received: by 10.112.181.10 with SMTP id ds10mr2574476lbc.3.1444938886846;
        Thu, 15 Oct 2015 12:54:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.37.164 with SMTP id z4ls3590wij.4.gmail; Thu, 15 Oct 2015
 12:54:46 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr142014wib.1.1444938886472;
        Thu, 15 Oct 2015 12:54:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-lb0-x233.google.com (mail-lb0-x233.google.com. [2a00:1450:4010:c04::233])
        by gmr-mx.google.com with ESMTPS id jp7si444256lbc.2.2015.10.15.12.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 12:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) client-ip=2a00:1450:4010:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:4010:c04::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-lb0-x233.google.com with SMTP id ao8so82519716lbc.3
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 12:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xmTZt0xx/0vBlmIm5Y0Spe65xs8iJjLLCL+rHfGOJDs=;
        b=gFis9Y+XkJ90v3SCpKoe4n+gseQ9rGb041M6MdjZGb2wxyIKnJH+9SKsVu5+hdfass
         Z0CWikfxIe3be1SbYFDIytaXJTBTPIE7/VUQEeuGeB2Ok3a/sHZiGK/CnVRGLTtpoL4R
         qhiVKiupfxpWIKIr9M09kg9H0MdBcFF5LOnwNFfdgJTVFjmDDgmNgZSQAPMmn8SQXxFD
         0OGk9a3vLzZEQuJpuDGRJWIx6W9hDBhR4/PR/c2NqB6JwiBP4v9077BCdrZrqnvz/caj
         Qrmxh0047JSPbR1yW0e3VdfaghKmJVQ0NFkaKcaUL+SHO3zzLA67w9dkfCOPKzYnfZbm
         5LjA==
MIME-Version: 1.0
X-Received: by 10.194.116.197 with SMTP id jy5mr12938652wjb.86.1444938886333;
 Thu, 15 Oct 2015 12:54:46 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 12:54:46 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510152150280.2027@localhost6.localdomain6>
References: <20151015185507.GA40274@ubuntu>
	<alpine.DEB.2.02.1510152150280.2027@localhost6.localdomain6>
Date: Fri, 16 Oct 2015 01:24:46 +0530
Message-ID: <CAKHNQQF3c1687N=AkBXGjZxjWAqPKRAaPM9M-uoM_8gcmf9zxQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: lproc_osc: Change the
 variable to be tested
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 16, 2015 at 1:20 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 16 Oct 2015, Shivani Bhardwaj wrote:
>
>> The variable rc is supposed to hold the value returned by function
>> kstrtoul which can either be 0, -EINVAL (-22) or -ERANGE (-34).
>> Therefore, the check must be performed on rc instead of val for error
>> values. Also, val can never be positive.
>
> Typo.  val can never be negative.
>
> julia
>
Right. I had to write that for rc. rc can never be greater than zero
actually. This is what should be there.

>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/osc/lproc_osc.c | 4 +---
>>  1 file changed, 1 insertion(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/lustre/lustre/osc/lproc_osc.c b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> index 053d508..cdc7f88 100644
>> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>>       unsigned long val;
>>
>>       rc = kstrtoul(buffer, 10, &val);
>> -     if (rc)
>> -             return rc;
>> -     if (val < 0 || val > 1)
>> +     if (rc < 0)
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151015185507.GA40274%40ubuntu.
>> For more options, visit https://groups.google.com/d/optout.
>>

