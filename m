X-GM-THRID: 6200341306580926464
X-Received: by 10.68.104.193 with SMTP id gg1mr2169941pbb.3.1444243584102;
        Wed, 07 Oct 2015 11:46:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.5.139 with SMTP id 133ls283775iof.107.gmail; Wed, 07 Oct
 2015 11:46:23 -0700 (PDT)
X-Received: by 10.66.197.136 with SMTP id iu8mr2166901pac.47.1444243583353;
        Wed, 07 Oct 2015 11:46:23 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x22f.google.com (mail-io0-x22f.google.com. [2607:f8b0:4001:c06::22f])
        by gmr-mx.google.com with ESMTPS id z7si259094igw.0.2015.10.07.11.46.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 11:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) client-ip=2607:f8b0:4001:c06::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::22f as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x22f.google.com with SMTP id z6so32680925ioi.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 11:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=YNvA1fNfOHDzSh9MyKp/law5al65mGiQ1ollbw8GADY=;
        b=QwnS1TYZGjeSIj+kap4NQfKgR6iEbtrkBaU6wMauiIzKceIez+OxFQqHCgk9rGP3FM
         UBYJofGq5pi5Ty0uS0qIIg7M5tp1RqwVD/NyILNlyQwi8AwKvPCQIaruz+VuwZBnLLhj
         9HaBFxX4ZDOFgeyuFD4Ica1m6vFQ7yvPu5dfL0J5+kN53Yt30Q8B7Sh3bCLscMN0tg+g
         LHH2xRoiJ6o+hqRGtA7gJxn6Q1oMqOgvcpnrIZY48OYfy9vWd0UDPFuvYYq9aa9EDFDL
         mvjCH4e6gqFIOsLd95smu5QrreXqz99Ysiwf6Bn5Q+tLTV0xDNKPDp5sk+wlfSiJH1EQ
         dOXQ==
MIME-Version: 1.0
X-Received: by 10.107.18.26 with SMTP id a26mr3992757ioj.150.1444243583157;
 Wed, 07 Oct 2015 11:46:23 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Wed, 7 Oct 2015 11:46:23 -0700 (PDT)
In-Reply-To: <5548451.nrtKaPCYPk@wuerfel>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
	<4117012.VUd9JF0oa2@wuerfel>
	<CAL7P5jL8Y5EORR4pvZHEhc9nKJuh7p+v_k_Kcjy8dXidiBq7Bg@mail.gmail.com>
	<5548451.nrtKaPCYPk@wuerfel>
Date: Wed, 7 Oct 2015 20:46:23 +0200
Message-ID: <CAL7P5j+BvLMFomdsYW4hTHRJHj4J4iFDRLjF=UW2a9WgfUxDFA@mail.gmail.com>
Subject: Re: [Y2038] [PATCH v2] Staging: fbtbt: Replace timespec with ktime_t
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Sun, Oct 4, 2015 at 9:34 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Saturday 03 October 2015 21:15:46 Ksenija Stanojevi=C4=87 wrote:
>> On Thu, Oct 1, 2015 at 10:05 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> > On Thursday 01 October 2015 19:44:46 Ksenija Stanojevi=C4=87 wrote:
>> >>
>> >> In my local repository I modified my .config file so that CONFIG_64BI=
T
>> >> is not set,
>> >> and after that I recompiled all directory, but I don't get any errors=
/warning at
>> >> compile-time.
>> >> Also I separetly compiled this specific file but still no warnings
>> >> My .config  looks something like this:
>> >>
>> >> . . .
>> >>
>> >> Should I change my working kernel or .config file is just enough?
>> >
>> > I think the problem is that you only compiled that directory but did
>> > not attempt to do a full rebuild of the kernel and modules, which is
>> > required to catch link-time errors.
>> >
>> > The compiler does not know at this point that the 64-bit division func=
tion
>> > is undefined in the kernel, you only get a warning at the 'make vmlinu=
x'
>> > link stage (for built-in drivers) or the 'make modules' modpost stage
>> > afterwards.
>>
>> I rebuilded my repository with:
>> make vmlinux
>> make modules
>> but I still don't get any warnings.
>> Do you have any other suggestion on what I'm doing wrong?
>
> I just tried it on my machine and I get (for an ARM build)
>
> $ make -skj30
> ERROR: "__aeabi_ldivmod" [drivers/staging/fbtft/fbtft.ko] undefined!

I got this error:
ERROR: "__divdi3" [drivers/staging/fbtft/fbtft.ko] undefined!

I suppose that divdi3 is division used for long long by gcc on x86


Ksenija

