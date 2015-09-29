X-GM-THRID: 6199959961900941312
X-Received: by 10.68.69.102 with SMTP id d6mr23817238pbu.10.1443541759482;
        Tue, 29 Sep 2015 08:49:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.27.33 with SMTP id q1ls1187787igg.33.gmail; Tue, 29 Sep
 2015 08:49:19 -0700 (PDT)
X-Received: by 10.67.3.71 with SMTP id bu7mr22851002pad.18.1443541759018;
        Tue, 29 Sep 2015 08:49:19 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x233.google.com (mail-ig0-x233.google.com. [2607:f8b0:4001:c05::233])
        by gmr-mx.google.com with ESMTPS id o7si1889956igp.1.2015.09.29.08.49.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Sep 2015 08:49:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::233 as permitted sender) client-ip=2607:f8b0:4001:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::233 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x233.google.com with SMTP id rk20so80549989igc.1
        for <outreachy-kernel@googlegroups.com>; Tue, 29 Sep 2015 08:49:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=3tXGUtt7ocH/okFxo8B7cTUDG7rgsZwRrseLcOybfLc=;
        b=0oDPP5aZZvDg9CeyC5+8nrOJpS1UAmb9jDRMhWymCSUGygLWLsAEQIoDDj+/G9JXnw
         hQHGYBIQ3tnSnnJMTvtaDm1T7ziqm5Y0ajuRiyEY0K61rerqa8cGueyCjQ4BmmF/M1K6
         jnTC6c/BLsX2JvUYmzuIYcrH3pWOzSQ2kqAJAEwsyKkvNi827J9o/iPVdngVvBB6oLBU
         Wufkxh9RMk9LylvQ4LaxdW19XgWyygc+IEdN7/Jy1AiMTw0RfN81hoVrTaOfBs9rYBxB
         mGQb6t57CuhgMIdBnQYyYy37xuBq3LSPhz47TEAd6MairnVKHBOuyjP2bJZW/6NIwH0K
         zE1g==
MIME-Version: 1.0
X-Received: by 10.50.178.145 with SMTP id cy17mr24558523igc.92.1443541758819;
 Tue, 29 Sep 2015 08:49:18 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Tue, 29 Sep 2015 08:49:18 -0700 (PDT)
In-Reply-To: <65619350.xPqzLkLPqM@wuerfel>
References: <1443540659-6900-1-git-send-email-ksenija.stanojevic@gmail.com>
	<65619350.xPqzLkLPqM@wuerfel>
Date: Tue, 29 Sep 2015 17:49:18 +0200
Message-ID: <CAL7P5jJgJKPEbNwkagZ+vhwx9Em3wzO7bFMOis8_wvLPVi_JMg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [RFC] x86: include: asm: Fix build warning
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Sep 29, 2015 at 5:47 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tuesday 29 September 2015 17:30:59 Ksenija Stanojevic wrote:
>> Fix build warnings:
>> error: implicit declaration of function =E2=80=98olpc_board_at_least=E2=
=80=99
>> [-Werror=3Dimplicit-function-declaration]
>>
>>  error: implicit declaration of function =E2=80=98olpc_board=E2=80=99
>> [-Werror=3Dimplicit-function-declaration]
>>
>> in files:
>> drivers/power/olpc_battery.c
>> drivers/input/mouse/hgpk.c
>> drivers/staging/olpc_dcon/olpc_dcon.c
>> arch/x86/platform/olpc/olpc.c
>> sound/pci/cs5535audio/cs5535audio_olpc.c
>>
>
> The patch looks good to me in principle, except that it is missing
> a 'Signed-off-by' line, and a somewhat inaccurate return code:

Oops, I forgot it.

>> +static inline int olpc_board_at_least(uint32_t rev)
>> +{
>> +       return -ENODEV;
>> +}
>
> The original function returns either 0 or 1, and so should this version.
> Returning 0 probably makes more sense here.
>
> With those two things changed, you could send the patch to the x86
> architecture maintainers and the people that last touched
> arch/x86/platform/olpc/olpc.c.
>

Thanks!

>         Arnd

