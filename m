X-GM-THRID: 6249137798348013568
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.194.110.233 with SMTP id id9mr4151746wjb.5.1455033434931;
        Tue, 09 Feb 2016 07:57:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.22.169 with SMTP id 41ls854348lfw.11.gmail; Tue, 09 Feb
 2016 07:57:14 -0800 (PST)
X-Received: by 10.25.23.105 with SMTP id n102mr4143568lfi.9.1455033434384;
        Tue, 09 Feb 2016 07:57:14 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm0-x22f.google.com (mail-wm0-x22f.google.com. [2a00:1450:400c:c09::22f])
        by gmr-mx.google.com with ESMTPS id w197si552956wmw.3.2016.02.09.07.57.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 09 Feb 2016 07:57:14 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) client-ip=2a00:1450:400c:c09::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c09::22f as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x22f.google.com with SMTP id p63so29162339wmp.1
        for <outreachy-kernel@googlegroups.com>; Tue, 09 Feb 2016 07:57:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=SWrMAHfPiF4ze+iGU6dxQWsM0692R0mOSC5P6c+ldRg=;
        b=XOE0/SSoJkr+4SHkcHEE1SVzXNM3/TZ6pU5Qif8nRIoORcq1qZBfHtbpwjIUW2YL7c
         362xJta2m0q/JfBzsUn0wdxQkhbUCCF8X+lZPA+zpVpO9rUlsShKQCwIgKlx+V47F2XZ
         cy8C5jz0uu+wvkQhVohUs2f1hNJ3LsN2HV+OqdQxG+aCk0hx6ToEonVUHMkoVJ8+mwie
         SszBoYnxbLW30RU067ctLhDb89DhNzi/8Xd3PIuFcEKBGwi/MAY6AwUzncb58uzUFKfb
         v+MkUVpE2mDL8ZWyLc9MdTVib/y5gN5pgLUBRMHZU6ZKQi3TkJ46u4iEuTDtkbdpZdf/
         /Hyg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=SWrMAHfPiF4ze+iGU6dxQWsM0692R0mOSC5P6c+ldRg=;
        b=NVjskZ2khBJaiP2pZEcSXp3f3t8X08IblJXwgeJ2eA6iqAY1n91QRAoI5sg7+1hZWj
         qX79SR/sKLzIBw8vRhamVWSDgSDDr0fIzIOEISe/18fFo6U1k3bbN4mLQsi3tdxByZXz
         +7WiC8+uwHWv7uewN1WMZI9qe4f5vH4i+RCJpWI35vIErjyBYoHsExyYkFtwEI+fEDob
         Ss96qD8oyArpNiUnFcJHw7UQXUJdf37bn9NjnqiF09FQw8/BGOBk7QQYoglMvJvi7f4W
         3aKRZzom+QGSKDpGpLoN+AQmgmwuy9s/rCX3wWMp96vAytuVgAG7Q/mYn+5AeaCACdjJ
         xs3Q==
X-Gm-Message-State: AG10YOTt5lxyBosmtcPa1/lfx/DgL9UvCoOy5c8m6NJZ7ZrIXGSVIJff+IDJbeRYZMHNeHtqQ7+bi6BjQwfqmw==
MIME-Version: 1.0
X-Received: by 10.28.187.198 with SMTP id l189mr6130993wmf.0.1455033434281;
 Tue, 09 Feb 2016 07:57:14 -0800 (PST)
Received: by 10.194.222.165 with HTTP; Tue, 9 Feb 2016 07:57:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602091655340.2578@hadrien>
References: <ba8ae97e-c7c5-4383-bffc-a5eac3003e1d@googlegroups.com>
	<2431688.NvBMsGsSsv@wuerfel>
	<alpine.DEB.2.10.1602091649200.2578@hadrien>
	<2414518.udrIPO2x22@wuerfel>
	<alpine.DEB.2.10.1602091655340.2578@hadrien>
Date: Tue, 9 Feb 2016 17:57:14 +0200
Message-ID: <CAEnQRZBMaRXCuvV6h-LDo4bO4XyrEHPUuz5skfOBZS+aKXdgCQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Doubt regarding build warnings
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 9, 2016 at 5:55 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 9 Feb 2016, Arnd Bergmann wrote:
>
>> On Tuesday 09 February 2016 16:49:31 Julia Lawall wrote:
>> > On Tue, 9 Feb 2016, Arnd Bergmann wrote:
>> >
>> > > On Tuesday 09 February 2016 16:18:55 Julia Lawall wrote:
>> > > >     make M=drivers/staging: This seems to try to link the modules in a
>> > > > previously build vmlinux file.
>> > > >
>> > > > Make path/ could be a reasonable choice for a localized change within a
>> > > > single driver, or for a change localized to drivers staging. In any case,
>> > > > as a minimum always check that compilation produces a .o file for every
>> > > > file that your patch changes. If there is no .o file, you have not
>> > > > compiled the file, and you need to look for other compiler options.
>> > >
>> > > Ok, sounds good. I've added a little bit more detail now:
>> > >
>> > > http://kernelnewbies.org/FirstKernelPatch?action=diff&rev2=25&rev1=24
>> >
>> > Thanks.  What is -sj2?
>> >
>> >
>>
>> -s is 'silent', -j2 is used to build on two threads in parallel rather than
>> one. On second thought, I'll remove those again, as this prevents you
>> from seeing which files get built.
>
> -j2 could be left, but one could also infer it from the rest.

I would also remove -j2, doesn't make any difference for building few modules.
It can only confuse things.

Daniel.

