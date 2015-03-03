X-GM-THRID: 6344288501760
X-Received: by 10.194.11.70 with SMTP id o6mr159927wjb.6.1425419994282;
        Tue, 03 Mar 2015 13:59:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.205.33 with SMTP id ld1ls93764lac.16.gmail; Tue, 03 Mar
 2015 13:59:53 -0800 (PST)
X-Received: by 10.112.13.228 with SMTP id k4mr155498lbc.8.1425419993771;
        Tue, 03 Mar 2015 13:59:53 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x230.google.com (mail-lb0-x230.google.com. [2a00:1450:4010:c04::230])
        by gmr-mx.google.com with ESMTPS id xl7si172208lbb.1.2015.03.03.13.59.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 13:59:53 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::230 as permitted sender) client-ip=2a00:1450:4010:c04::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by lbiv13 with SMTP id v13so21461198lbi.11
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 13:59:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=dNtumBgiY5HbUPDQ2LN/d4m9WxzmBANa8nx8w6heNS8=;
        b=KcMw2Fmsy3nMZfOJgPhOiSJxSwKwz/oK/QzfzJfxZdd6FaMOX7IwAjpVJYgqJZ/Bq+
         0sFdBupqRC/XCC5y8AZ3JqMtadEZF8YR9NkwGmwdTglw/MCzzZU12+g3eVgmAC8Aa5x9
         eMeB9R2d7dJKLNXDnQoS2sXhHtPLn17b9U1CUKrqmyu2kYkDflcV5fJ87r1NBrllLLj+
         4rWJVLmyQ48qDdG2TyHpfXMOdJFCQztgEti7ouku0lqepX08Dsh5tsVbhY6ebyf34YDs
         fZinXf62bV7RvhvqhIMM0Yzg+gA1MoyiHeU6gP8O/UkwL80UYxpYXQkfBPBlvu040/yF
         S/Nw==
MIME-Version: 1.0
X-Received: by 10.152.170.233 with SMTP id ap9mr742159lac.47.1425419993669;
 Tue, 03 Mar 2015 13:59:53 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Tue, 3 Mar 2015 13:59:53 -0800 (PST)
In-Reply-To: <CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
	<alpine.DEB.2.10.1503031645080.2677@hadrien>
	<CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
Date: Tue, 3 Mar 2015 22:59:53 +0100
Message-ID: <CAL7P5j+UCRmXkSdET8F08M8eJVU4BCMjYKqbDmRQExtqS3BJaQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 3, 2015 at 10:58 PM, Ksenija Stanojevi=C4=87
<ksenija.stanojevic@gmail.com> wrote:
> On Tue, Mar 3, 2015 at 10:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrot=
e:
>> On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>>
>>> Hi,
>>>
>>> While working on a patch, I needed to find out the type of
>>> pMgntInfo->RegRfOff on line 2770, in file
>>> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
>>> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
>>> directories. I tried recursive grep to find it and I could not locate
>>> where it is defined. I suppose it's some kind of macro...
>>
>> The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h has a
>> field named RegRfOff.  It has type bool.  The directory is different tha=
n
>> the one you are looking at though.
>>
>> In your directory, there is drivers/staging/rtl8192u/r8192U.h that
>> declares a r8192_priv structure type, but it does not have this field.
>>
>> Maybe this is dead code?  Can you compile the file?
>
> Yes I can compile it, and I do: make
> drivers/staging/rtl8192u/r8192U_core.o. Also I found
> commented code : /*PMGNT_INFO pMgntInfo =3D &padapter->MgntInfo; */
in file
> drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c (for example in line =
214)
>
> I find it quite strange.
>
> Ksenija
>
>> julia
>>
>>
>>>
>>> Can you help me find out?
>>>
>>> Regards,
>>>
>>> Ksenija
>>>
>>> --
>>> You received this message because you are subscribed to the Google Grou=
ps "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send =
an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/ms=
gid/outreachy-kernel/CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ%3D2yK07o%2B84z_%3Dc64Qas=
9jQ%40mail.gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>>

