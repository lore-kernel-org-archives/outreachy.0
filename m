X-GM-THRID: 6344288501760
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,4ca3f90fe855d892
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.160.176 with SMTP id xl16mr3325548wib.6.1425420165674;
        Tue, 03 Mar 2015 14:02:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.14.137 with SMTP id p9ls206884wic.42.gmail; Tue, 03 Mar
 2015 14:02:45 -0800 (PST)
X-Received: by 10.180.13.98 with SMTP id g2mr3317135wic.3.1425420165416;
        Tue, 03 Mar 2015 14:02:45 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x22d.google.com (mail-la0-x22d.google.com. [2a00:1450:4010:c03::22d])
        by gmr-mx.google.com with ESMTPS id wz2si35592lbb.0.2015.03.03.14.02.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 14:02:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::22d as permitted sender) client-ip=2a00:1450:4010:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::22d as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x22d.google.com with SMTP id ge10so40505046lab.12
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 14:02:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=rYu71wBc54a0OFxEOZQZHux8ZOIVO+eAiHranSuv6PU=;
        b=KaCB4CBa0IjYfJDkkgtzjDM61r9/LCWSy/U0pk1bND+Kgzn4nLo0JaD2PSqqq9XhCm
         wqLycOTg2Dw9uUBGunSpA6xpqlNketlGkeFm0NhrNxXmsIafak6XP1GXRBxc8h/Jy7nN
         ei9cu7wRWS/7GdUXS11F6zk9AGKCUstn6A4HGyfv+7b3WRbzyL6xvTCht5/MacgiQkKv
         1RzupOg850WV5lqAw63khhVZ2t/87mivkjm334XiCWOhbMqZ74Lv6NcXove7A126cRuf
         gVB2GxRn6BinUWJKc1SSF378AUFa+ec8mG0euThWndssbXnfp+KYN+BfRid5BWOX4Mpw
         jTYA==
MIME-Version: 1.0
X-Received: by 10.152.228.167 with SMTP id sj7mr929653lac.2.1425420165297;
 Tue, 03 Mar 2015 14:02:45 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Tue, 3 Mar 2015 14:02:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1503031659270.2677@hadrien>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
	<alpine.DEB.2.10.1503031645080.2677@hadrien>
	<CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
	<alpine.DEB.2.10.1503031659270.2677@hadrien>
Date: Tue, 3 Mar 2015 23:02:45 +0100
Message-ID: <CAL7P5jJ7sgfxVNC2_aS-ak8_dOU2Q8ih_Hok1DqT0ko5E-hAQA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 3, 2015 at 10:59 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>
>> On Tue, Mar 3, 2015 at 10:50 PM, Julia Lawall <julia.lawall@lip6.fr> wro=
te:
>> > On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>> >
>> >> Hi,
>> >>
>> >> While working on a patch, I needed to find out the type of
>> >> pMgntInfo->RegRfOff on line 2770, in file
>> >> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
>> >> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
>> >> directories. I tried recursive grep to find it and I could not locate
>> >> where it is defined. I suppose it's some kind of macro...
>> >
>> > The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h has a
>> > field named RegRfOff.  It has type bool.  The directory is different t=
han
>> > the one you are looking at though.
>> >
>> > In your directory, there is drivers/staging/rtl8192u/r8192U.h that
>> > declares a r8192_priv structure type, but it does not have this field.
>> >
>> > Maybe this is dead code?  Can you compile the file?
>>
>> Yes I can compile it, and I do: make
>> drivers/staging/rtl8192u/r8192U_core.o. Also I found
>> commented code : drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c in =
file
>> drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c (for example in line=
 214)
>>
>> I find it quite strange.
>
> Is there an ifdef around the code?

Yes, there is #ifdef TO_DO_LIST

> You can say make foo.i and see the result of macro expansion.

Ok, I will try that. Thanks.

Ksenija
>
> julia

