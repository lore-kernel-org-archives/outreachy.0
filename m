X-GM-THRID: 8816133406720
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,dcb10757ef2bddd8
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.13.228 with SMTP id k4mr10045713lbc.8.1426608944502;
        Tue, 17 Mar 2015 09:15:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.121.70 with SMTP id li6ls58699lab.44.gmail; Tue, 17 Mar
 2015 09:15:43 -0700 (PDT)
X-Received: by 10.152.28.137 with SMTP id b9mr10228905lah.8.1426608943829;
        Tue, 17 Mar 2015 09:15:43 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x236.google.com (mail-lb0-x236.google.com. [2a00:1450:4010:c04::236])
        by gmr-mx.google.com with ESMTPS id wz2si1233014lbb.0.2015.03.17.09.15.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2015 09:15:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::236 as permitted sender) client-ip=2a00:1450:4010:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::236 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x236.google.com with SMTP id sy1so10586570lbb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Mar 2015 09:15:43 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=U6dqNuEFS2Wd8EWL6alZp9B/Sx4RUyjMHOgwL29scWE=;
        b=uS0pgJSw60DJlO0HPiDWEPacClkNAS8uKb2Kits82ohJdgjplba0pl2TBnvSCksTE4
         aE8XKgTgI9VWaGgOdeZZ9ooZlUZFoR82ZyD3BD1K6sGta3IuyFLhB8ENJPiYIIyVqOAr
         fqSWvEvZZfaCQArhd/X2OEV/l7wxy9+4ZvafjF8UisZLl+MO/idtJ4thffB7eG7mAeXL
         yrByn3C5/8gvSBllUn6JXnUZ8doy7ffV+D+rqpWeWNIk4FB6EMVEUky/sMjxXNftp0zC
         QzZhJCav8JZvs05Q2QqNvPBCRaf6KdEchdblFEGFyLU0mkh2xYbYUaC/WnLTEiqzhvQO
         U2YA==
MIME-Version: 1.0
X-Received: by 10.112.14.106 with SMTP id o10mr53283014lbc.2.1426608943746;
 Tue, 17 Mar 2015 09:15:43 -0700 (PDT)
Received: by 10.114.182.50 with HTTP; Tue, 17 Mar 2015 09:15:43 -0700 (PDT)
In-Reply-To: <CAHWJYFn2NXmW6GkE4XzDpCyF_YU3jy0m22beZcHiN44QMEPzaA@mail.gmail.com>
References: <8570c5e2-98ae-4a1a-8024-83b60ad55ea4@googlegroups.com>
	<550843A4.5050103@gmail.com>
	<CAHWJYFn2NXmW6GkE4XzDpCyF_YU3jy0m22beZcHiN44QMEPzaA@mail.gmail.com>
Date: Tue, 17 Mar 2015 17:15:43 +0100
Message-ID: <CAL7P5jK_9A4zR=fig8KcUrw3yCHOL7N5GOs-nUfF-wf-B2=Cuw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Compiling a specific driver
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: Jes Sorensen <jes.sorensen@gmail.com>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 17, 2015 at 5:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> On Tue, Mar 17, 2015 at 5:09 PM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
>>
>> On 03/17/15 09:53, Ioana Ciornei wrote:
>> > I was wondering if anyone could explain the steps to be followed in order
>> > to make sure the driver I am working on is compiled
>> > when running 'make -j5'.
>> >
>> > So far, I did the steps explained at [1], under the 'Recompiling the
>> > driver' section, but when selecting 'Staging drivers' the driver list is
>> > empty.
>>
>> If you are working on a specific driver, you can type something like this:
>>
>> make drivers/staging/rtl8723au/r8723au.ko
>>
>> Cheers,
>> Jes
>>
>>
>
> I run the following command as you suggested:
>       make drivers/staging/wlan-ng/wlan-ng.ko
> but I get the output:
>      CHK     include/config/kernel.release
>      CHK     include/generated/uapi/linux/version.h
>      CHK     include/generated/utsrelease.h
>      CALL    scripts/checksyscalls.sh
>      make[1]: *** No rule to make target
> `drivers/staging/wlan-ng/wlan-ng.o'.  Stop.
>      make: *** [drivers/staging/wlan-ng/wlan-ng.ko] Error 2

try /drivers/staging/wlan-ng/wlan-ng.o

Ksenija

> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHWJYFn2NXmW6GkE4XzDpCyF_YU3jy0m22beZcHiN44QMEPzaA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.

