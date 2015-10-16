X-GM-THRID: 6206160535830921216
X-Received: by 10.112.130.41 with SMTP id ob9mr3410855lbb.17.1444993362424;
        Fri, 16 Oct 2015 04:02:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.19.100 with SMTP id j97ls303841lfi.50.gmail; Fri, 16 Oct
 2015 04:02:41 -0700 (PDT)
X-Received: by 10.112.181.10 with SMTP id ds10mr3412744lbc.3.1444993361683;
        Fri, 16 Oct 2015 04:02:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22f.google.com (mail-wi0-x22f.google.com. [2a00:1450:400c:c05::22f])
        by gmr-mx.google.com with ESMTPS id o3si110704wiz.1.2015.10.16.04.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Oct 2015 04:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) client-ip=2a00:1450:400c:c05::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22f as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22f.google.com with SMTP id gb1so4385080wic.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Oct 2015 04:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=8SQfj30UqXoGglD2x9f6bn/r8ZY94RFfGx+5aBszCBg=;
        b=AogJ81i072RbVXLNyBhFos3frWE8axifuZxOsVH16MhE3k45OOCWh8aVTjfZ6KdEEN
         zSB0p9R1fvcKfeV9iKQPxGkuNxJSSn3x6xItjIXllsC0G/FHk/IVjKsTz/yTUmpQuQMU
         wGpq0h1Moe6pq7Ia1oa4GPeafCT1KeWki+UTZoc58UC9rW6zkWANGcGq7JHfUUH8P+2h
         0lDeS494V9ICqRXoGLZ0I4z18lDmChkQ70nmcfGmMUOqnHWMbicuGXW9BNhJGc8zNvua
         7r8RrSAmYvPD41dmYVLVknWz3QUXxgcWzCnAR76wpZmBLUo+tk5FcnurN5Mh5MsZN4f9
         f9Eg==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr17663897wja.87.1444993359301; Fri,
 16 Oct 2015 04:02:39 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Fri, 16 Oct 2015 04:02:39 -0700 (PDT)
In-Reply-To: <9667273.8SQsnSMdnh@wuerfel>
References: <20151016083218.GA2815@ubuntu>
	<4275207.TTHHeQE8pW@wuerfel>
	<CAKHNQQFXZ2rqkbig2hwPSd=nHg-OZt3c6JiaGAHao6mkXPsUQQ@mail.gmail.com>
	<9667273.8SQsnSMdnh@wuerfel>
Date: Fri, 16 Oct 2015 16:32:39 +0530
Message-ID: <CAKHNQQGQTmd2-UHKSqyf_86D7Xo30HPm=y-VZM4AagrQ_u6zFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change
 the variable to be checked
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Shivani


On Fri, Oct 16, 2015 at 3:25 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Friday 16 October 2015 14:27:35 Shivani Bhardwaj wrote:
>> On Fri, Oct 16, 2015 at 2:11 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > On Friday 16 October 2015 14:02:18 Shivani Bhardwaj wrote:
>> >> index 053d508..cdc7f88 100644
>> >> --- a/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> >> +++ b/drivers/staging/lustre/lustre/osc/lproc_osc.c
>> >> @@ -61,9 +61,7 @@ static ssize_t active_store(struct kobject *kobj, struct attribute *attr,
>> >>         unsigned long val;
>> >>
>> >>         rc = kstrtoul(buffer, 10, &val);
>> >> -       if (rc)
>> >> -               return rc;
>> >> -       if (val < 0 || val > 1)
>> >> +       if (rc < 0)
>> >>                 return -ERANGE;
>> >>
>> >>         /* opposite senses */
>> >> --
>> >>
>> >
>> > I believe the intention of the code is to return -ERANGE if anything other
>> > than 0 or 1 is stored here, which no longer works after your patch. The
>> > range check in kstrtoul only ensures that there is a number that fits within
>> > an 'unsigned long'.
>>
>> This means it is never going to throw out of range error?
>> If that is the case why do we take the variable val as unsigned long?
>> It can be typecasted in the function kstrtoul. We can take it as
>> simple int. And still
>> if (rc)
>>      return rc;
>>
>> statement is never going to be valid, is it?
>
> A used may still write "aardvark" into the file, which would return
> -EINVAL, and writing 999999999999999999 would return -ERANGE.
>
>> Plus, why base 10? base 2 should work fine to check for 0 and 1.
>
> Right, it doesn't matter here. 'base=0' (autodetect) would work too.
>
>> And, if everything above is wrong then, since val is taken as unsigned
>> int it can again never be less than 0 so, shouldn't the check be made
>> only for val>1?
>
> Yes, that would be correct.
>
>         Arnd
>
Fine. I'll make this change.
Thank you.

