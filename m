X-GM-THRID: 6344288501760
X-Received: by 10.112.16.102 with SMTP id f6mr865861lbd.19.1425491104770;
        Wed, 04 Mar 2015 09:45:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.87.140 with SMTP id ay12ls243256lab.2.gmail; Wed, 04 Mar
 2015 09:45:04 -0800 (PST)
X-Received: by 10.152.45.7 with SMTP id i7mr880586lam.9.1425491104238;
        Wed, 04 Mar 2015 09:45:04 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x22c.google.com (mail-lb0-x22c.google.com. [2a00:1450:4010:c04::22c])
        by gmr-mx.google.com with ESMTPS id xl7si395046lbb.1.2015.03.04.09.45.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Mar 2015 09:45:04 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22c as permitted sender) client-ip=2a00:1450:4010:c04::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22c as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22c.google.com with SMTP id v13so27128231lbi.11
        for <outreachy-kernel@googlegroups.com>; Wed, 04 Mar 2015 09:45:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=mucuWrdGy/+Dncqj+0sSwGCLT7xKndKL+bro31s6Fgc=;
        b=kHjOwRVP+tuegrmsxvXm2I8SchwIezW58Zsd/cO/BCqkCPi+Y5gHx4byOYqLupxhLj
         +nZmmpk7eWLo9ojzuA+7AnlMVZp1qYYbuKRb+2DoEYbAPUx/rfb+c/ecCvky8fZtEeBt
         wQrtP5ZJ3Rkxpdmsynr+U/w3y0zd4OsWc33mHyWvqfM/W7oAzRMrF4C8qJq88KdpfSrE
         n3QF0wRl7Disbs+JmZlIYVwtCXYGQoEv6TjTTjSnTFGTGmWclvm6YtElEH86EB680JTp
         B/3LLvMggn1iDoyERYeautvxwtWKdJYEw1ksce+qsoyJx/4VDQODk5zGSmA1D+j30SFt
         QNlA==
MIME-Version: 1.0
X-Received: by 10.152.27.232 with SMTP id w8mr101252lag.51.1425491104149; Wed,
 04 Mar 2015 09:45:04 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Wed, 4 Mar 2015 09:45:04 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1503031703010.2677@hadrien>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
	<alpine.DEB.2.10.1503031645080.2677@hadrien>
	<CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
	<alpine.DEB.2.10.1503031659270.2677@hadrien>
	<CAL7P5jJ7sgfxVNC2_aS-ak8_dOU2Q8ih_Hok1DqT0ko5E-hAQA@mail.gmail.com>
	<alpine.DEB.2.10.1503031703010.2677@hadrien>
Date: Wed, 4 Mar 2015 18:45:04 +0100
Message-ID: <CAL7P5jJrN4vzScSmWwQcFWaSc5Dr3zknq38g_O38MXLy477bMQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 3, 2015 at 11:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>
>> On Tue, Mar 3, 2015 at 10:59 PM, Julia Lawall <julia.lawall@lip6.fr> wro=
te:
>> >
>> >
>> > On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>> >
>> >> On Tue, Mar 3, 2015 at 10:50 PM, Julia Lawall <julia.lawall@lip6.fr> =
wrote:
>> >> > On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>> >> >
>> >> >> Hi,
>> >> >>
>> >> >> While working on a patch, I needed to find out the type of
>> >> >> pMgntInfo->RegRfOff on line 2770, in file
>> >> >> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
>> >> >> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192e=
u
>> >> >> directories. I tried recursive grep to find it and I could not loc=
ate
>> >> >> where it is defined. I suppose it's some kind of macro...
>> >> >
>> >> > The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h ha=
s a
>> >> > field named RegRfOff.  It has type bool.  The directory is differen=
t than
>> >> > the one you are looking at though.
>> >> >
>> >> > In your directory, there is drivers/staging/rtl8192u/r8192U.h that
>> >> > declares a r8192_priv structure type, but it does not have this fie=
ld.
>> >> >
>> >> > Maybe this is dead code?  Can you compile the file?
>> >>
>> >> Yes I can compile it, and I do: make
>> >> drivers/staging/rtl8192u/r8192U_core.o. Also I found
>> >> commented code : drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c =
in file
>> >> drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c (for example in l=
ine 214)
>> >>
>> >> I find it quite strange.
>> >
>> > Is there an ifdef around the code?
>>
>> Yes, there is #ifdef TO_DO_LIST
>
> OK, this seems very unlikely to be set to true by your configuration.
> Perhaps check the TODO list for the driver to see if there is
> some information.

Hi, it seems that there is no TO DO LIst for this driver, I only found
one comment:

//// TODO: this function doesn't work well at this time, we should wait for=
 FPGA

so maybe its all dead code?


Ksenija


>
> julia
>
>>
>> > You can say make foo.i and see the result of macro expansion.
>>
>> Ok, I will try that. Thanks.
>>
>> Ksenija
>> >
>> > julia
>>

