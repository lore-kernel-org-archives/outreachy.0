X-GM-THRID: 6202672545102036992
X-Received: by 10.13.228.133 with SMTP id n127mr215135ywe.37.1444214885878;
        Wed, 07 Oct 2015 03:48:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.99 with SMTP id i96ls166177ioo.37.gmail; Wed, 07 Oct
 2015 03:48:05 -0700 (PDT)
X-Received: by 10.66.62.228 with SMTP id b4mr259457pas.10.1444214885368;
        Wed, 07 Oct 2015 03:48:05 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x230.google.com (mail-yk0-x230.google.com. [2607:f8b0:4002:c07::230])
        by gmr-mx.google.com with ESMTPS id y11si369286ywd.7.2015.10.07.03.48.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 03:48:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) client-ip=2607:f8b0:4002:c07::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::230 as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x230.google.com with SMTP id z138so12139579ykd.2
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 03:48:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type:content-transfer-encoding;
        bh=d/fwEn1FrVVcEo3YtQ5NEST5JA8/D9X7RvZi+6bbkhs=;
        b=C0QsP0OXYiLtOsJ/szGrjXcaMx5VpE/BwNpgUlrpQUhfPfwugGt6V8Hw4YiIA3amTi
         fVHOaCNKT8wpX7m40t4R1/XcOTk087LRLsWGqQW2pQ4MSyl26yWglA4HXmF0oEMC+T8X
         Zc8JdnyIvfUBbTVy416V7vdfDOSks/d+XjHSfk0zd/BtnzywgoYBsAEOagSYGmt8RDft
         nSXBzo5oFJQ5siFEiA5JQKBhDsauSvuUSTI8L9+Ve8FWrBWdDeprg64aN4kzn6jag+d0
         KDKw7WmfqHMEamcFvpN3Ao8squevpz2QmcX5pMPT6o86uHWu2cjTfgUss59FUXpQhp4Z
         gEuw==
MIME-Version: 1.0
X-Received: by 10.13.208.134 with SMTP id s128mr179825ywd.163.1444214885197;
 Wed, 07 Oct 2015 03:48:05 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 7 Oct 2015 03:48:05 -0700 (PDT)
In-Reply-To: <20151007051736.GD4070@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
	<c8e2d47eeef0c65ce13a9b2a8159a92a04686e72.1444172066.git.ciorneiioana@gmail.com>
	<20151007051736.GD4070@sudip-pc>
Date: Wed, 7 Oct 2015 13:48:05 +0300
Message-ID: <CAHWJYFkgfqMhe9CjsnnmARE_ts6_BRGDAKnxxR-C1rc+PbNLtA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 09/10] staging: iio: adc: use BIT macro
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Oct 7, 2015 at 8:17 AM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Wed, Oct 07, 2015 at 01:57:09AM +0300, Ioana Ciornei wrote:
>> Use BIT macro instead of shifting operator in order to improve
>> readability
>>
>> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
>> ---
>
> This is introducing build warnings:
>
> drivers/staging/iio/adc/mxs-lradc.c: In function =E2=80=98mxs_lradc_compl=
ete_touch_event=E2=80=99:
> drivers/staging/iio/adc/mxs-lradc.c:728:6: warning: large integer implici=
tly truncated to unsigned type [-Woverflow]
>       LRADC_DELAY(2));
>       ^
> drivers/staging/iio/adc/mxs-lradc.c: In function =E2=80=98mxs_lradc_buffe=
r_preenable=E2=80=99:
> drivers/staging/iio/adc/mxs-lradc.c:1292:8: warning: large integer implic=
itly truncated to unsigned type [-Woverflow]
>         LRADC_DELAY_KICK, LRADC_DELAY(0));
>         ^
> drivers/staging/iio/adc/mxs-lradc.c: In function =E2=80=98mxs_lradc_buffe=
r_postdisable=E2=80=99:
> drivers/staging/iio/adc/mxs-lradc.c:1311:8: warning: large integer implic=
itly truncated to unsigned type [-Woverflow]
>         LRADC_DELAY_KICK, LRADC_DELAY(0));
>         ^
>

I did saw the build warnings when I build tested them but I really do
not know what should I do in this case.
The problems appear because 1UL' replaces '1' when using the BIT macro.
In this case, should it be appropriate to just drop this patch and
create a new patchset with just 9 patches?

Thanks,

Ioana

