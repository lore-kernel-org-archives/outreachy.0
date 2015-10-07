X-GM-THRID: 6202672545102036992
X-Received: by 10.182.107.162 with SMTP id hd2mr458987obb.29.1444218780080;
        Wed, 07 Oct 2015 04:53:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.135.105 with SMTP id j102ls194179iod.85.gmail; Wed, 07 Oct
 2015 04:52:59 -0700 (PDT)
X-Received: by 10.66.55.104 with SMTP id r8mr452849pap.46.1444218779747;
        Wed, 07 Oct 2015 04:52:59 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x231.google.com (mail-pa0-x231.google.com. [2607:f8b0:400e:c03::231])
        by gmr-mx.google.com with ESMTPS id w5si4552435pbt.1.2015.10.07.04.52.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 04:52:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) client-ip=2607:f8b0:400e:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::231 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x231.google.com with SMTP id hy16so19730540pad.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 04:52:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=O2XODwm+CBGfWwv7Yj6R4ZDTaEdo3856fZCKZ/XTbeY=;
        b=G2jZI3Y6wNHQ+CBSNYOPkEdQpJwr16jyUw7vQBuXRMQp1UwGcZQpl9n5GiB9SL3AzH
         9Sqvtpc1Cb+jVCG40XSv14SVXF1gZGaGTjZ4lowSHPU7GTamZQe8l4EYNhaN714+xfEI
         5GQOqeRihOd4BCqFZpV3noUbWx52diFZtS5u9P8Lm/WsLTpMXr8oMbcvdRzhHJt+Z063
         iog4UWKKppWH6BFFMAsLpRG4bp7yas5rirmeaKG3hh3U2ZlMxB7kIm5UJ+LoxpKmPGnU
         uBRJhPzfOJY7eC1W2SUKfKGBx5gs8HmRlJ4d4LcLUccREMpw6lffE6GuY3PAWWjQOFKx
         O+mg==
X-Received: by 10.68.69.79 with SMTP id c15mr746138pbu.90.1444218735630;
        Wed, 07 Oct 2015 04:52:15 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id gi4sm39174290pbc.4.2015.10.07.04.52.14
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Wed, 07 Oct 2015 04:52:15 -0700 (PDT)
Date: Wed, 7 Oct 2015 17:22:10 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 09/10] staging: iio: adc: use BIT macro
Message-ID: <20151007115210.GB17761@sudip-pc>
References: <cover.1444172065.git.ciorneiioana@gmail.com>
 <c8e2d47eeef0c65ce13a9b2a8159a92a04686e72.1444172066.git.ciorneiioana@gmail.com>
 <20151007051736.GD4070@sudip-pc>
 <CAHWJYFkgfqMhe9CjsnnmARE_ts6_BRGDAKnxxR-C1rc+PbNLtA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <CAHWJYFkgfqMhe9CjsnnmARE_ts6_BRGDAKnxxR-C1rc+PbNLtA@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Oct 07, 2015 at 01:48:05PM +0300, Ioana Ciornei wrote:
> On Wed, Oct 7, 2015 at 8:17 AM, Sudip Mukherjee
> <sudipm.mukherjee@gmail.com> wrote:
> > On Wed, Oct 07, 2015 at 01:57:09AM +0300, Ioana Ciornei wrote:
> >> Use BIT macro instead of shifting operator in order to improve
> >> readability
> >>
> >> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>
> >> ---
> >
> > This is introducing build warnings:
> >
> > drivers/staging/iio/adc/mxs-lradc.c: In function ‘mxs_lradc_complete_touch_event’:
> > drivers/staging/iio/adc/mxs-lradc.c:728:6: warning: large integer implicitly truncated to unsigned type [-Woverflow]
> >       LRADC_DELAY(2));
> >       ^
> > drivers/staging/iio/adc/mxs-lradc.c: In function ‘mxs_lradc_buffer_preenable’:
> > drivers/staging/iio/adc/mxs-lradc.c:1292:8: warning: large integer implicitly truncated to unsigned type [-Woverflow]
> >         LRADC_DELAY_KICK, LRADC_DELAY(0));
> >         ^
> > drivers/staging/iio/adc/mxs-lradc.c: In function ‘mxs_lradc_buffer_postdisable’:
> > drivers/staging/iio/adc/mxs-lradc.c:1311:8: warning: large integer implicitly truncated to unsigned type [-Woverflow]
> >         LRADC_DELAY_KICK, LRADC_DELAY(0));
> >         ^
> >
> 
> I did saw the build warnings when I build tested them but I really do
> not know what should I do in this case.
> The problems appear because 1UL' replaces '1' when using the BIT macro.
> In this case, should it be appropriate to just drop this patch and
> create a new patchset with just 9 patches?
Never send a patch which introduces build warnings. Better send the
series with the other 9 patches and meanwhile try to see if you can find
any possible solution to this problem. When you find the solution then
send that particular patch as a single patch.

regards
sudip

