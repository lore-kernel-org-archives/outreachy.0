X-GM-THRID: 6344288501760
X-Received: by 10.152.36.132 with SMTP id q4mr159620laj.6.1425419904430;
        Tue, 03 Mar 2015 13:58:24 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.87.233 with SMTP id bb9ls204918wib.29.gmail; Tue, 03 Mar
 2015 13:58:23 -0800 (PST)
X-Received: by 10.180.13.195 with SMTP id j3mr3323900wic.2.1425419903035;
        Tue, 03 Mar 2015 13:58:23 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x230.google.com (mail-la0-x230.google.com. [2a00:1450:4010:c03::230])
        by gmr-mx.google.com with ESMTPS id xl7si171823lbb.1.2015.03.03.13.58.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 03 Mar 2015 13:58:23 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) client-ip=2a00:1450:4010:c03::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::230 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x230.google.com with SMTP id ge10so40479557lab.12
        for <outreachy-kernel@googlegroups.com>; Tue, 03 Mar 2015 13:58:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=WTTIB44I/7fcXzdszy+tRgswf6FPPmy5kA/LoAkKlR4=;
        b=ty9A0SIWEaoZhZgsCphxkN4/WzzX2RCmavZwH5iKYxYCgxBkrCirMSvWC3KaSEkH6J
         Td0FQeps9gPYyGkG1eNrZh59MPdIlRVRYyuzoddWCq6kMp0Cl/abJzk9eFQ7llED0mRZ
         CUdI9/Rhm6L3tvRWFZ9CaGnfNV2mx71x/qz4TQS5d+imqRdCekngsTx8t4NIDsrTUD2u
         qJIozsKQtd9Sqa7LQQgXmKC7d78TMTyFETvaNCq5lVBowc1H7p996t9Ci9NHznhHiXh2
         TsJDkaM9jiJgDZgHavJKaqey2nRdZvoR+W9FFPSPu7s9YU8NjObEymAZ6AbNNUG95Jfz
         ATmA==
MIME-Version: 1.0
X-Received: by 10.112.105.103 with SMTP id gl7mr921153lbb.2.1425419902940;
 Tue, 03 Mar 2015 13:58:22 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Tue, 3 Mar 2015 13:58:22 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1503031645080.2677@hadrien>
References: <CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ=2yK07o+84z_=c64Qas9jQ@mail.gmail.com>
	<alpine.DEB.2.10.1503031645080.2677@hadrien>
Date: Tue, 3 Mar 2015 22:58:22 +0100
Message-ID: <CAL7P5jL6Jsp3_UE8-5vJ0feqkRoMP=7Ba0k7P8y8_Bt9Eb5sTQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Cannot locate pMgntInfo
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Tue, Mar 3, 2015 at 10:50 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 3 Mar 2015, Ksenija Stanojevi=C4=87 wrote:
>
>> Hi,
>>
>> While working on a patch, I needed to find out the type of
>> pMgntInfo->RegRfOff on line 2770, in file
>> drivers/staging/rtl8192u/r8192U_core.c. But I cannot find where
>> pMgntInfo is defined, I saw that is used in  rtl8192u and rtl8192eu
>> directories. I tried recursive grep to find it and I could not locate
>> where it is defined. I suppose it's some kind of macro...
>
> The structure r8192_priv defined in rtl8192e/rtl8192e/rtl_core.h has a
> field named RegRfOff.  It has type bool.  The directory is different than
> the one you are looking at though.
>
> In your directory, there is drivers/staging/rtl8192u/r8192U.h that
> declares a r8192_priv structure type, but it does not have this field.
>
> Maybe this is dead code?  Can you compile the file?

Yes I can compile it, and I do: make
drivers/staging/rtl8192u/r8192U_core.o. Also I found
commented code : drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c in fil=
e
drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c (for example in line 21=
4)

I find it quite strange.

Ksenija

> julia
>
>
>>
>> Can you help me find out?
>>
>> Regards,
>>
>> Ksenija
>>
>> --
>> You received this message because you are subscribed to the Google Group=
s "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send a=
n email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msg=
id/outreachy-kernel/CAL7P5jKSFrxDKXwC1VhLfFYVPqHQ%3D2yK07o%2B84z_%3Dc64Qas9=
jQ%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

