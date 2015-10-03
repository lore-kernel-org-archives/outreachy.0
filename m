X-GM-THRID: 6200341306580926464
X-Received: by 10.66.102.38 with SMTP id fl6mr13719928pab.48.1443899747581;
        Sat, 03 Oct 2015 12:15:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.108.97 with SMTP id i88ls2010923qgf.50.gmail; Sat, 03 Oct
 2015 12:15:47 -0700 (PDT)
X-Received: by 10.13.242.134 with SMTP id b128mr20212584ywf.7.1443899747082;
        Sat, 03 Oct 2015 12:15:47 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22c.google.com (mail-io0-x22c.google.com. [2607:f8b0:4001:c06::22c])
        by gmr-mx.google.com with ESMTPS id n7si436157iga.3.2015.10.03.12.15.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 03 Oct 2015 12:15:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) client-ip=2607:f8b0:4001:c06::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22c as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22c.google.com with SMTP id z6so150671439ioi.2
        for <outreachy-kernel@googlegroups.com>; Sat, 03 Oct 2015 12:15:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=Mqj9k+3sKueDojWO/RfBDoKdvmpOUUV5S8JzA8A7kds=;
        b=cIU3/bPbuRSqeez3M2Dng88LeYAEsdnXJRvF8sOCwc4tiz3QJaBkO/ibkmXKaQXUoC
         KTbm8Xi05prR4Kupn6JXd0svydmHanTOYfbrn4zj7v0HkV+4x43WK9bV33R1gWIyOfbB
         LJ/pwy0ojOTDfhWPiX73pgEi+N7tt5zZqAvO2J/SJzqKdN7CNim4eWmvTx6+YIlzQqkc
         8VVjz1B3874sQiD0Nc0Uax918LzqEK44+ODPQ1lNoADMqKSV8LoWMcp3Mf7wvs+nUnRU
         wa71w4NLzUeaTHgXS2SxDwiiyTTstZSOar268YGxBZL/Jnj5JDqkKD9yfrXumo7r7B/u
         AA3A==
MIME-Version: 1.0
X-Received: by 10.107.18.26 with SMTP id a26mr22984155ioj.150.1443899746929;
 Sat, 03 Oct 2015 12:15:46 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Sat, 3 Oct 2015 12:15:46 -0700 (PDT)
In-Reply-To: <4117012.VUd9JF0oa2@wuerfel>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
	<1593744.M7Nca36Ssj@wuerfel>
	<CAL7P5jJvJ0SR5-5uFxx8Hrhy6Q76qqYCAV65RJOB0nm7eVXpZQ@mail.gmail.com>
	<4117012.VUd9JF0oa2@wuerfel>
Date: Sat, 3 Oct 2015 21:15:46 +0200
Message-ID: <CAL7P5jL8Y5EORR4pvZHEhc9nKJuh7p+v_k_Kcjy8dXidiBq7Bg@mail.gmail.com>
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Thu, Oct 1, 2015 at 10:05 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Thursday 01 October 2015 19:44:46 Ksenija Stanojevi=C4=87 wrote:
>>
>> In my local repository I modified my .config file so that CONFIG_64BIT
>> is not set,
>> and after that I recompiled all directory, but I don't get any errors/wa=
rning at
>> compile-time.
>> Also I separetly compiled this specific file but still no warnings
>> My .config  looks something like this:
>>
>> . . .
>>
>> Should I change my working kernel or .config file is just enough?
>
> I think the problem is that you only compiled that directory but did
> not attempt to do a full rebuild of the kernel and modules, which is
> required to catch link-time errors.
>
> The compiler does not know at this point that the 64-bit division functio=
n
> is undefined in the kernel, you only get a warning at the 'make vmlinux'
> link stage (for built-in drivers) or the 'make modules' modpost stage
> afterwards.

I rebuilded my repository with:
make vmlinux
make modules
but I still don't get any warnings.
Do you have any other suggestion on what I'm doing wrong?

Thanks,
Ksenija

