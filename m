X-GM-THRID: 6200081911391453184
X-Received: by 10.112.144.99 with SMTP id sl3mr193516lbb.12.1443588124520;
        Tue, 29 Sep 2015 21:42:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.2.129 with SMTP id 1ls16924lau.31.gmail; Tue, 29 Sep 2015
 21:42:03 -0700 (PDT)
X-Received: by 10.112.158.202 with SMTP id ww10mr197095lbb.13.1443588123887;
        Tue, 29 Sep 2015 21:42:03 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x234.google.com (mail-wi0-x234.google.com. [2a00:1450:400c:c05::234])
        by gmr-mx.google.com with ESMTPS id bn1si830469wib.0.2015.09.29.21.42.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 21:42:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) client-ip=2a00:1450:400c:c05::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::234 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x234.google.com with SMTP id gb1so176725202wic.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 21:42:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=+NGMXa+GO0qNUIahJDWD7GCN2FjrgouEfbJPiU9v7PY=;
        b=mEW/sLs+Qrv7BrOHUdUe1s8YUfYE402ieDzANetzsuZF2CpwCEtr1NVa+Lytl2tCz8
         fR8+UGuLFCEFHOPydsi6Zj0tfUtXSCrvDUyZIjq4SqZbNjArSzmZeUlXYsD2P85Zyn36
         b9vcLvrUZHkqvy/+c4vfgVPshX3jET13x2j/da/rklGrL4aJccuhzDlFPX+LROULEiUm
         UPBzgBGfG4CUiIYGQ91S+yxv/VfdZ+Y/ALEDdFktN1kzn8I7zA1putMqHVLBIoUSrYoZ
         ifj+eTlxYuF+vci6BIiHRjRYffADsq90RSHvTOTvEKaG4rKcL4KOvRpsAElay2TJPJ73
         jpMQ==
MIME-Version: 1.0
X-Received: by 10.194.176.6 with SMTP id ce6mr1561284wjc.101.1443588123681;
 Tue, 29 Sep 2015 21:42:03 -0700 (PDT)
Received: by 10.194.67.99 with HTTP; Tue, 29 Sep 2015 21:42:03 -0700 (PDT)
In-Reply-To: <CAKHNQQGy1mPrWEcWqHFBNz_8BiG2sFSGAL9LmHgSLS0gPn9cog@mail.gmail.com>
References: <20150929232413.GA16457@ubuntu>
	<20150930015931.GA14259@kroah.com>
	<CAKHNQQFAUaJfbySZ_r-ZtFAz9B7ih0Vmezgz3Qv7-khTB-2WYA@mail.gmail.com>
	<20150930041851.GA21970@kroah.com>
	<CAKHNQQHv-LA-6W5EE=tx=xKc+aMFGiUTfnqTLEuL0NWMZj2nGQ@mail.gmail.com>
	<CAKHNQQGy1mPrWEcWqHFBNz_8BiG2sFSGAL9LmHgSLS0gPn9cog@mail.gmail.com>
Date: Wed, 30 Sep 2015 10:12:03 +0530
Message-ID: <CAK-LDbJdGmUTK520bc4oEUS7zPhcXnvM4hiR--X58fhxeBAzdA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: unisys: visorbus:
 visorchipset: Converted arrays to static const
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Shivani Bhardwaj <shivanib134@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 30, 2015 at 9:56 AM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> This was a warning message by compiler only that I need to convert char * to
> static const char * const. I just did that without noticing env_selftest
> which is directly related. and then when I compiled, it worked. Compilers
> aren't very reliable, I see.

Please do not top-post. When you are responding to email, respond inline.
You can use this link to understand proper communication style:
http://kernelnewbies.org/FirstKernelPatch#head-9799d3ebaa1221875dfdb0a05c4063dc4eb474a1

> Thanks, Greg!
>
> On Wed, Sep 30, 2015 at 9:50 AM, Shivani Bhardwaj <shivanib134@gmail.com>
> wrote:
>>
>> This was a warning message by compiler only that I need to convert char *
>> to static const char * const. I just did that without noticing env_selftest
>> which is directly related. and then when I compiled, it worked. Compilers
>> aren't very reliable, I see.
>>
>> Thanks, Greg!
>>
>> On Wed, Sep 30, 2015 at 9:48 AM, Greg KH <gregkh@linuxfoundation.org>
>> wrote:
>>>
>>> On Wed, Sep 30, 2015 at 09:41:14AM +0530, Shivani Bhardwaj wrote:
>>>
>>> <snip>
>>>
>>> For some reason you sent this only to me, which is a bit rude to
>>> everyone else on the mailing list.  I'll be glad to respond if you
>>> resend it to everyone.
>>>
>>> thanks,
>>>
>>> greg k-h
>>
>>
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGy1mPrWEcWqHFBNz_8BiG2sFSGAL9LmHgSLS0gPn9cog%40mail.gmail.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

