X-GM-THRID: 6202978899734822912
X-Received: by 10.50.114.2 with SMTP id jc2mr23694472igb.5.1444245534315;
        Wed, 07 Oct 2015 12:18:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.29.36 with SMTP id g4ls1902146igh.31.canary; Wed, 07 Oct
 2015 12:18:53 -0700 (PDT)
X-Received: by 10.66.249.100 with SMTP id yt4mr2328275pac.42.1444245533761;
        Wed, 07 Oct 2015 12:18:53 -0700 (PDT)
Return-Path: <ciorneiioana@gmail.com>
Received: from mail-yk0-x22b.google.com (mail-yk0-x22b.google.com. [2607:f8b0:4002:c07::22b])
        by gmr-mx.google.com with ESMTPS id u67si3281224ywf.5.2015.10.07.12.18.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Oct 2015 12:18:53 -0700 (PDT)
Received-SPF: pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22b as permitted sender) client-ip=2607:f8b0:4002:c07::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ciorneiioana@gmail.com designates 2607:f8b0:4002:c07::22b as permitted sender) smtp.mailfrom=ciorneiioana@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-yk0-x22b.google.com with SMTP id g206so27594274ykd.1
        for <outreachy-kernel@googlegroups.com>; Wed, 07 Oct 2015 12:18:53 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=J7DvRhj7PVqg0tUTEawjW8Tr919M0Q6CCF2pTxiPiYA=;
        b=fKmqwv3TQ1SY+Vd6wydIk+kWq6I0ZKwL9v7g7eDxFsfg6ELkHxVD+nWSI3eXJP9Vjd
         BOaBmvN8ku0hAdHr7kkaTxlWARp8gDP49jG+C8J3gSJbg5Iq0ocSi7/pS3WqbrLHONx6
         C8hCNrbCgfFHZSLk2S4HKQu4KUr9fUGFQumHkeIOClchLX+Tr0sFs0LhXNi8N+toIMli
         pxjQNMLFJNHCy1Bzpz9HeX8OlB3kkelVnNZE9Bv14/11vuYaf3fIaBnznatXhxCr5Nx0
         pa17ZzgVq9ZpECo4HVeyt8l9MSApnzcsFc6IHFpMVCRj616VQvGkdIt0h86xdwr9SypB
         OdFQ==
MIME-Version: 1.0
X-Received: by 10.13.223.141 with SMTP id i135mr2385272ywe.30.1444245533595;
 Wed, 07 Oct 2015 12:18:53 -0700 (PDT)
Received: by 10.37.107.66 with HTTP; Wed, 7 Oct 2015 12:18:53 -0700 (PDT)
In-Reply-To: <4982395.WtRaKIPf3W@wuerfel>
References: <1444243562-19812-1-git-send-email-ciorneiioana@gmail.com>
	<4982395.WtRaKIPf3W@wuerfel>
Date: Wed, 7 Oct 2015 22:18:53 +0300
Message-ID: <CAHWJYFnukj268RW2aPBp2tuLUWSSCdxiQNG5CKc-io9S860vPg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: adc: remove unused definitions
From: Ioana Ciornei <ciorneiioana@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 7, 2015 at 10:10 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>
> On Wednesday 07 October 2015 21:46:02 Ioana Ciornei wrote:
> > diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> > index fe56fb6..53bce3a 100644
> > --- a/drivers/staging/iio/adc/ad7192.c
> > +++ b/drivers/staging/iio/adc/ad7192.c
> > @@ -118,12 +118,6 @@
> >
> >  /* GPOCON Register Bit Designations (AD7192_REG_GPOCON) */
> >  #define AD7192_GPOCON_BPDSW    BIT(6) /* Bridge power-down switch enable */
> > -#define AD7192_GPOCON_GP32EN   BIT(5) /* Digital Output P3 and P2 enable */
> > -#define AD7192_GPOCON_GP10EN   BIT(4) /* Digital Output P1 and P0 enable */
> > -#define AD7192_GPOCON_P3DAT    BIT(3) /* P3 state */
> > -#define AD7192_GPOCON_P2DAT    BIT(2) /* P2 state */
> > -#define AD7192_GPOCON_P1DAT    BIT(1) /* P1 state */
> > -#define AD7192_GPOCON_P0DAT    BIT(0) /* P0 state */
> >
> >  #define AD7192_INT_FREQ_MHz    4915200
>
> I'd say it makes sense to leave these ones present, because it documents
> the hardware registers.
>
> Any unused code or definitions that are purely for the code's own sake
> should be removed normally, but in this case the bit 6 is clearly used
> in the code, so it's good to know what the other bits are.

I also had doubts about this one.
Thanks for the feedback,

Ioana

