X-GM-THRID: 6202672545102036992
X-Received: by 10.50.142.103 with SMTP id rv7mr20656791igb.2.1444218948210;
        Wed, 07 Oct 2015 04:55:48 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.41.100 with SMTP id y91ls334353qgy.7.gmail; Wed, 07 Oct
 2015 04:55:47 -0700 (PDT)
X-Received: by 10.129.116.133 with SMTP id p127mr449729ywc.50.1444218947544;
        Wed, 07 Oct 2015 04:55:47 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x232.google.com (mail-yk0-x232.google.com. [2607:f8b0:4002:c07::232])
        by gmr-mx.google.com with ESMTPS id q133si3134256ywb.1.2015.10.07.04.55.47
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:55:47 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::232 as permitted sender) client-ip=2607:f8b0:4002:c07::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::232 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x232.google.com with SMTP id z138so13475388ykd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 04:55:47 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=9vOU3qihuSHYj93+GIS7WIVbzmqGB5QrZ58o6yt96Zg=;
        b=U+uE1z3nRCUBH7jfs+gpmsGUZ2qYqPjQQZrr1WzKBT8IrTB5jcTDHmRhkydgDDigc0
         maucmfMU2by18syXsHorh924QkCKl6dx/8hsglbEAqcamuwUpI30eYR/b2LEZ+AAWyDR
         W0cHaHYrnGBGyc3IA+GzPqWzs/TbQH2d6anwOKPPZ5oqdPz2cTBBBUdOLSh24hJLmShc
         Iq178IHwXY8vz7zcCUFyPRu0Np9ivpjLOuq6wfg+oia1qhDKb9R+imLBoKT/eJksMFCx
         hvZVnAko63VsLNetI34eCTl97EFUP43v7a18xUKM6pKr+hLrz1J1zpHt6QCjQKlCzL7V
         lfMg==
MIME-Version: 1.0
X-Received: by 10.13.232.21 with SMTP id r21mr378048ywe.283.1444218947422;
 Wed, 07 Oct 2015 04:55:47 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 7 Oct 2015 04:55:47 -0700 (PDT)
In-Reply-To: <20151007115210.GB17761@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
	<c8e2d47eeef0c65ce13a9b2a8159a92a04686e72.1444172066.git.ciorneiioana@gmail.com>
	<20151007051736.GD4070@sudip-pc>
	<CAHWJYFkgfqMhe9CjsnnmARE_ts6_BRGDAKnxxR-C1rc+PbNLtA@mail.gmail.com>
	<20151007115210.GB17761@sudip-pc>
Date: Wed, 7 Oct 2015 14:55:47 +0300
Message-ID: <CAHWJYFkMgffvs4WksPZycByytSe1VRvVP1S49ZWcMtnihiDA_A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 09/10] staging: iio: adc: use BIT macro
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 7, 2015 at 2:52 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Wed, Oct 07, 2015 at 01:48:05PM +0300, Ioana Ciornei wrote:
>> On Wed, Oct 7, 2015 at 8:17 AM, Sudip Mukherjee
>> <sudipm.mukherjee@gmail.com> wrote:
>> > On Wed, Oct 07, 2015 at 01:57:09AM +0300, Ioana Ciornei wrote:
>> >> Use BIT macro instead of shifting operator in order to improve
>> >> readability
>> >>
>> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> >> ---
>> >
>> > This is introducing build warnings:
>> >
>> > drivers/staging/iio/adc/mxs-lradc.c: In function =E2=80=98mxs_lradc_co=
mplete_touch_event=E2=80=99:
>> > drivers/staging/iio/adc/mxs-lradc.c:728:6: warning: large integer impl=
icitly truncated to unsigned type [-Woverflow]
>> >       LRADC_DELAY(2));
>> >       ^
>> > drivers/staging/iio/adc/mxs-lradc.c: In function =E2=80=98mxs_lradc_bu=
ffer_preenable=E2=80=99:
>> > drivers/staging/iio/adc/mxs-lradc.c:1292:8: warning: large integer imp=
licitly truncated to unsigned type [-Woverflow]
>> >         LRADC_DELAY_KICK, LRADC_DELAY(0));
>> >         ^
>> > drivers/staging/iio/adc/mxs-lradc.c: In function =E2=80=98mxs_lradc_bu=
ffer_postdisable=E2=80=99:
>> > drivers/staging/iio/adc/mxs-lradc.c:1311:8: warning: large integer imp=
licitly truncated to unsigned type [-Woverflow]
>> >         LRADC_DELAY_KICK, LRADC_DELAY(0));
>> >         ^
>> >
>>
>> I did saw the build warnings when I build tested them but I really do
>> not know what should I do in this case.
>> The problems appear because 1UL' replaces '1' when using the BIT macro.
>> In this case, should it be appropriate to just drop this patch and
>> create a new patchset with just 9 patches?
> Never send a patch which introduces build warnings. Better send the
> series with the other 9 patches and meanwhile try to see if you can find
> any possible solution to this problem. When you find the solution then
> send that particular patch as a single patch.
>

Thanks a lot.

Ioana

