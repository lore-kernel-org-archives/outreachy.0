X-GM-THRID: 6206160535830921216
X-Received: by 10.180.9.104 with SMTP id y8mr3259588wia.7.1445164309823;
        Sun, 18 Oct 2015 03:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.152 with SMTP id 24ls360195lfv.97.gmail; Sun, 18 Oct
 2015 03:31:49 -0700 (PDT)
X-Received: by 10.112.12.132 with SMTP id y4mr5634582lbb.0.1445164309092;
        Sun, 18 Oct 2015 03:31:49 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x235.google.com (mail-wi0-x235.google.com. [2a00:1450:400c:c05::235])
        by gmr-mx.google.com with ESMTPS id cm6si436809wib.1.2015.10.18.03.31.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 03:31:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) client-ip=2a00:1450:400c:c05::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::235 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x235.google.com with SMTP id q8so14954641wik.1
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 03:31:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=xj/a5Ogl4YQthpkUPs3+pAkcSHacD8zM4UUNjTrTOQE=;
        b=O+qY0LCwk/v91jQB4ZQ+coKY3+lP4mvFj+kBQZYrkTG42c1FiYcRcdU6jcMpCkdhGl
         zK11TieofZmDQCvhUWEnNeYC4bizRpdU9rIjmBivmIIVA8wbdRRCIyzym02JHTO2lM/f
         hjuDjL0PP4BNmfxMaQiyDdVDEhHkjVFfUSK8PhxYyEybNw06JhQIYfognq+P1UuUKZmV
         MHAEy/XU6DccQcNKy75w95wFeO6pDSSWnAZfKfbRXrXVxR1wGjIUym3xt0UVX48WZBpJ
         6ec3spCmq5V9kXEaTyfHROPAtm7K3oP0taBZmZbFs+gkq51CwpmcCnVNRs5TtcZwqCy9
         In/g==
MIME-Version: 1.0
X-Received: by 10.180.189.102 with SMTP id gh6mr13748063wic.95.1445164308988;
 Sun, 18 Oct 2015 03:31:48 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 03:31:48 -0700 (PDT)
In-Reply-To: <CAKHNQQGQTmd2-UHKSqyf_86D7Xo30HPm=y-VZM4AagrQ_u6zFA@mail.gmail.com>
References: <20151016083218.GA2815@ubuntu>
	<4275207.TTHHeQE8pW@wuerfel>
	<CAKHNQQFXZ2rqkbig2hwPSd=nHg-OZt3c6JiaGAHao6mkXPsUQQ@mail.gmail.com>
	<9667273.8SQsnSMdnh@wuerfel>
	<CAKHNQQGQTmd2-UHKSqyf_86D7Xo30HPm=y-VZM4AagrQ_u6zFA@mail.gmail.com>
Date: Sun, 18 Oct 2015 16:01:48 +0530
Message-ID: <CAKHNQQHa4qnxs-CnrdLhFFTSxRs=xjH2XQbNb-bKBymFJDzrpg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change
 the variable to be checked
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hi Arnd! I still have a doubt.
if (rc)
     return rc;

still doesn't make any sense, right?

On Fri, Oct 16, 2015 at 4:32 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> Shivani
>
>
> On Fri, Oct 16, 2015 at 3:25 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Friday 16 October 2015 14:27:35 Shivani Bhardwaj wrote:
>>> On Fri, Oct 16, 2015 at 2:11 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>>> > On Friday 16 October 2015 14:02:18 Shivani Bhardwaj wrote:
>>> >> index 053d508..cdc7f88 100644
>>> >> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>>> >> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>>> >> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>>> >>         unsigned long val;
>>> >>
>>> >>         rc = kstrtoul(buffer, 10, &val);
>>> >> -       if (rc)
>>> >> -               return rc;
>>> >> -       if (val < 0 || val > 1)
>>> >> +       if (rc < 0)
>>> >>                 return -ERANGE;
>>> >>
>>> >>         /* opposite senses */
>>> >> --
>>> >>
>>> >
>>> > I believe the intention of the code is to return -ERANGE if anything other
>>> > than 0 or 1 is stored here, which no longer works after your patch. The
>>> > range check in kstrtoul only ensures that there is a number that fits within
>>> > an 'unsigned long'.
>>>
>>> This means it is never going to throw out of range error?
>>> If that is the case why do we take the variable val as unsigned long?
>>> It can be typecasted in the function kstrtoul. We can take it as
>>> simple int. And still
>>> if (rc)
>>>      return rc;
>>>
>>> statement is never going to be valid, is it?
>>
>> A used may still write "aardvark" into the file, which would return
>> -EINVAL, and writing 999999999999999999 would return -ERANGE.
>>
>>> Plus, why base 10? base 2 should work fine to check for 0 and 1.
>>
>> Right, it doesn't matter here. 'base=0' (autodetect) would work too.
>>
>>> And, if everything above is wrong then, since val is taken as unsigned
>>> int it can again never be less than 0 so, shouldn't the check be made
>>> only for val>1?
>>
>> Yes, that would be correct.
>>
>>         Arnd
>>
> Fine. I'll make this change.
> Thank you.

