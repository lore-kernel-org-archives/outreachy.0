X-GM-THRID: 6206160535830921216
X-Received: by 10.112.150.229 with SMTP id ul5mr5851084lbb.2.1445174091788;
        Sun, 18 Oct 2015 06:14:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.73 with SMTP id v9ls447129wiz.9.gmail; Sun, 18 Oct 2015
 06:14:51 -0700 (PDT)
X-Received: by 10.180.87.164 with SMTP id az4mr3337604wib.1.1445174091445;
        Sun, 18 Oct 2015 06:14:51 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id d7si316437wiy.2.2015.10.18.06.14.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Oct 2015 06:14:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x230.google.com with SMTP id ll6so62649808wic.0
        for <outreachy-kernel@googlegroups.com>; Sun, 18 Oct 2015 06:14:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=Xtb1H8OxjueyXEcZepXJgNvHOTqpOV4ndJWG0zsTA0I=;
        b=pRKTPG40VxXvyfHcyEuKmIwJqbfGNOhfPrbfotc9Pd6fPuy2nb2+BJ4X/f/C+MM3/7
         XijiTdwbNkT1Mc//OlMRWkBeUWD8xve86mYXK2Gc/JksURMHei6xJgW2PSp8mIgLPJSn
         nN7J8ERLZhVJ4wfSl15U78s4R0qD8qxrgoBXV7XtYyxGnyNG1Ca6JJLuysb2KDCfAylg
         UtSXovFSo4tejZNt0YKurbZ50vtI6FaVekQ9CLvYKtoXQgb9xhYYhhK0Zzge6x4Nvn3V
         Pj64u6t0lwG06Zu0EPuoTJ86FthVjdBQIwUEnTRw8UPrNUE7i6SVmKmWDG3tGKs+Gc4l
         EUiQ==
MIME-Version: 1.0
X-Received: by 10.180.206.52 with SMTP id ll20mr14517670wic.48.1445174091359;
 Sun, 18 Oct 2015 06:14:51 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Sun, 18 Oct 2015 06:14:51 -0700 (PDT)
In-Reply-To: <17155772.EFqutzHQyx@wuerfel>
References: <20151016083218.GA2815@ubuntu>
	<11015695.tbMmBsISvl@wuerfel>
	<CAKHNQQGC4LAGrQ2Z-A_TBVu9NhXE_uXpiQCBb-exKbuLMYHGMw@mail.gmail.com>
	<17155772.EFqutzHQyx@wuerfel>
Date: Sun, 18 Oct 2015 18:44:51 +0530
Message-ID: <CAKHNQQGwsVQ_FZzxOsvuzwMmF2hJDyRDo9e=L=5u5aCjQc6pyQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: lustre: lpoc_osc: Change
 the variable to be checked
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Oct 18, 2015 at 6:42 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Sunday 18 October 2015 18:32:06 Shivani Bhardwaj wrote:
>> On Sun, Oct 18, 2015 at 6:24 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > On Sunday 18 October 2015 16:01:48 Shivani Bhardwaj wrote:
>> >> Hi Arnd! I still have a doubt.
>> >> if (rc)
>> >>      return rc;
>> >>
>> >> still doesn't make any sense, right?
>> >
>> > I don't understand what you mean.
>> >
>> >> On Fri, Oct 16, 2015 at 4:32 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>> >> > On Fri, Oct 16, 2015 at 3:25 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> >> >>>
>> >> >>> This means it is never going to throw out of range error?
>> >> >>> If that is the case why do we take the variable val as unsigned long?
>> >> >>> It can be typecasted in the function kstrtoul. We can take it as
>> >> >>> simple int. And still
>> >> >>> if (rc)
>> >> >>>      return rc;
>> >> >>>
>> >> >>> statement is never going to be valid, is it?
>> >> >>
>> >> >> A used may still write "aardvark" into the file, which would return
>> >> >> -EINVAL, and writing 999999999999999999 would return -ERANGE.
>> >
>> > Anything wrong with my explanation here?
>> >
>> >         Arnd
>>
>> According to your explanation, -EINVAL or -ERANGE if failure or 0 if success.
>> if(rc)     ->   if rc happens to be true which means >0.
>> This is never going to happen. Right?
>
> No. 'if (rc)' means 'if (rc != 0)', so the condition is also true when rc<0.
>
>         Arnd

OK. Thanks.

