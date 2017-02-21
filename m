X-GM-THRID: 6388911007678332928
X-Received: by 10.36.6.15 with SMTP id 15mr10783274itv.12.1487685697509;
        Tue, 21 Feb 2017 06:01:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.39.202 with SMTP id g193ls2943623ita.15.gmail; Tue, 21 Feb
 2017 06:01:36 -0800 (PST)
X-Received: by 10.107.130.150 with SMTP id m22mr8958844ioi.101.1487685696829;
        Tue, 21 Feb 2017 06:01:36 -0800 (PST)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yb0-x242.google.com (mail-yb0-x242.google.com. [2607:f8b0:4002:c09::242])
        by gmr-mx.google.com with ESMTPS id r198si333247ywe.4.2017.02.21.06.01.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Feb 2017 06:01:36 -0800 (PST)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) client-ip=2607:f8b0:4002:c09::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c09::242 as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yb0-x242.google.com with SMTP id u130so3310672ybb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Feb 2017 06:01:36 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=YxNRM/tEfAHtgDg+4Gr4yQ+t21DNq9eI1eoG1JEzYHw=;
        b=HVjJFMiuv52iFWEyk6syDwMGbIlcDqkuv59mO51iCnalui8iTgT+mKD81ImhD3bGOW
         7KoSxtzH0gWfAivgHJy+W5s1MCP2SE6T4+zFcLugGbTitRhvA2bzgzHxoKgoFSniCLuq
         kAHWIzndQXzb2HbsjFLboH5eR5N2YpLmcwcENkv4MhMhzcyJmEKKBgiSoR9Oy5q10R/y
         aVYoh+nRTxZs21KuJzjvZOwheN+FGyvAYcW6l6xgmCxVq7IUtjmC+uarJ+mJqMqYp8T4
         pBAlZMkHRju+s3Z9oD5ZikDbTg/2WWBEKPGDUY4Rttg99xlH42RvR+l1BnG03zub9UjX
         ZaKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=YxNRM/tEfAHtgDg+4Gr4yQ+t21DNq9eI1eoG1JEzYHw=;
        b=Yk7ux18Ci0DsdabzPS7QQj9xBKeMfgncNTtejhvAhtT144VMZrBj7m0BTshaU6REmk
         TcDpUkDxlWmgvGGRet0f1yRbLpEGw6fFf8hGzTTmzv+aUBCMFAMZlQM3d9jBJhX1zsxC
         om6U9AT9VZiGkEbix6J+IAM+bnEIzk1jA18nhRyo0LQx6WYanHSyR3D25gu9gqNADtrl
         DCZB9bdulX61RJIkMnLHXroHNhEX0WMvjRWqOMejSPHuKK4V42J+mKr66s434w8Y6jqx
         SdLXa5Yhekm6/X+8SYZqE0C4UOjqkeWVkR6exZE+mshXEHQtTrOuGmOQdqVtLSbpoLhS
         wn/A==
X-Gm-Message-State: AMke39kMIm3ltHuO9Ld+kOuFPPPHYHZnJbztRKqFUn5uRC0iuBk0R9ZbLWk8rM/qxOBbJpbg4tkCr383N/xejg==
X-Received: by 10.37.197.194 with SMTP id v185mr10968984ybe.33.1487685696299;
 Tue, 21 Feb 2017 06:01:36 -0800 (PST)
MIME-Version: 1.0
Received: by 10.37.163.196 with HTTP; Tue, 21 Feb 2017 06:00:55 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702201136490.3114@hadrien>
References: <cover.1487483384.git.karniksayli1995@gmail.com>
 <b74094e5c94e11cad734b1bde11db0356e6d3aab.1487483384.git.karniksayli1995@gmail.com>
 <20170220094845.GA17071@psyche.fritz.box> <alpine.DEB.2.20.1702201136490.3114@hadrien>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Tue, 21 Feb 2017 19:30:55 +0530
Message-ID: <CAKG5xWiqR95XiVz8zu_fR5kFdvjqYSDf1fEg_uDNDRax0Nqj+w@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v2 2/2] staging: iio: ad7152: Use
 GENMASK() macro for left shifts
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: "Hendrik v. Raven" <hendrik@consetetur.de>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Lars-Peter Clausen <lars@metafoo.de>, 
	Michael Hennerich <Michael.Hennerich@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
	Hartmut Knaack <knaack.h@gmx.de>, Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

On Mon, Feb 20, 2017 at 4:10 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 20 Feb 2017, Hendrik v. Raven wrote:
>
>> On Mon, Feb 20, 2017 at 01:30:27AM +0530, sayli karnik wrote:
>> > Use GENMASK() macro for left shifting integers.
>> >
>> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
>> > ---
>> > v2:
>> > Used GENMASK() macro instead of BIT() macro for multi-bit bitfields.
>> > Removed extra parentheses around argument to macro
>> >
>> >  drivers/staging/iio/cdc/ad7152.c | 32 ++++++++++++++++----------------
>> >  1 file changed, 16 insertions(+), 16 deletions(-)
>> >
>> > diff --git a/drivers/staging/iio/cdc/ad7152.c b/drivers/staging/iio/cdc/ad7152.c
>> > index e8609b8..ab94fad 100644
>> > --- a/drivers/staging/iio/cdc/ad7152.c
>> > +++ b/drivers/staging/iio/cdc/ad7152.c
>> > @@ -47,28 +47,28 @@
>> >  #define AD7152_STATUS_PWDN         BIT(7)
>> >
>> >  /* Setup Register Bit Designations (AD7152_REG_CHx_SETUP) */
>> > -#define AD7152_SETUP_CAPDIFF               (1 << 5)
>> > -#define AD7152_SETUP_RANGE_2pF             (0 << 6)
>> > -#define AD7152_SETUP_RANGE_0_5pF   (1 << 6)
>> > -#define AD7152_SETUP_RANGE_1pF             (2 << 6)
>> > -#define AD7152_SETUP_RANGE_4pF             (3 << 6)
>> > -#define AD7152_SETUP_RANGE(x)              ((x) << 6)
>> > +#define AD7152_SETUP_CAPDIFF               GENMASK(1, 5)
>> > +#define AD7152_SETUP_RANGE_2pF             GENMASK(0, 6)
>> > +#define AD7152_SETUP_RANGE_0_5pF   GENMASK(1, 6)
>> > +#define AD7152_SETUP_RANGE_1pF             GENMASK(2, 6)
>> > +#define AD7152_SETUP_RANGE_4pF             GENMASK(3, 6)
>> > +#define AD7152_SETUP_RANGE(x)              GENMASK(x, 6)
>> I am a bit confused about the usage of GENMASK here. Unless I completely
>> misunderstand the macro these are not at all equivalent to the previous
>> bitshifts as most of them just expand to 0.
>
Hello,
Could you explain how these aren't equivalent? And should we drop the
plan to use genmask here altogether?

> Indeed.  Sorry not to have been more attentive.  The comment before the
> definition of GENMASK says:
>
>  /*
>   * Create a contiguous bitmask starting at bit position @l and ending at
>   * position @h. For example
>   * GENMASK_ULL(39, 21) gives us the 64bit vector 0x000000ffffe00000.
>   */
>
> Here is an example of a commit that converts BIT calls to use GENMASK:
>
> 408fec3ff8
>
Okay so the above commit concludes that BIT(x) | BIT(y) equals GENMASK(x, y)
But how do we use this for the code here?

thanks,
sayli
> But it doesn't seem very convenient for the code modified here.
>
> julia
>
>>
>> >  /* Config Register Bit Designations (AD7152_REG_CFG) */
>> > -#define AD7152_CONF_CH2EN          (1 << 3)
>> > -#define AD7152_CONF_CH1EN          (1 << 4)
>> > -#define AD7152_CONF_MODE_IDLE              (0 << 0)
>> > -#define AD7152_CONF_MODE_CONT_CONV (1 << 0)
>> > -#define AD7152_CONF_MODE_SINGLE_CONV       (2 << 0)
>> > -#define AD7152_CONF_MODE_OFFS_CAL  (5 << 0)
>> > -#define AD7152_CONF_MODE_GAIN_CAL  (6 << 0)
>> > +#define AD7152_CONF_CH2EN          GENMASK(1, 3)
>> > +#define AD7152_CONF_CH1EN          GENMASK(1, 4)
>> > +#define AD7152_CONF_MODE_IDLE              GENMASK(0, 0)
>> > +#define AD7152_CONF_MODE_CONT_CONV GENMASK(1, 0)
>> > +#define AD7152_CONF_MODE_SINGLE_CONV       GENMASK(2, 0)
>> > +#define AD7152_CONF_MODE_OFFS_CAL  GENMASK(5, 0)
>> > +#define AD7152_CONF_MODE_GAIN_CAL  GENMASK(6, 0)
>> >
>> >  /* Capdac Register Bit Designations (AD7152_REG_CAPDAC_XXX) */
>> > -#define AD7152_CAPDAC_DACEN                (1 << 7)
>> > -#define AD7152_CAPDAC_DACP(x)              ((x) & 0x1F)
>> > +#define AD7152_CAPDAC_DACEN                GENMASK(1, 7)
>> same here
>> > +#define AD7152_CAPDAC_DACP(x)              GENMASK(x, 0x1F)
>> this is more something like ((x) & GENMASK(5,0)).
>>
Sorry, my bad here!

>> >  /* CFG2 Register Bit Designations (AD7152_REG_CFG2) */
>> > -#define AD7152_CFG2_OSR(x)         (((x) & 0x3) << 4)
>> > +#define AD7152_CFG2_OSR(x)         GENMASK((x) & 0x3, 4)
>> >
>> >  enum {
>> >     AD7152_DATA,
>> > --
>> > 2.7.4
>> >
>> > --
>> > To unsubscribe from this list: send the line "unsubscribe linux-iio" in
>> > the body of a message to majordomo@vger.kernel.org
>> > More majordomo info at  http://vger.kernel.org/majordomo-info.html
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170220094845.GA17071%40psyche.fritz.box.
>> For more options, visit https://groups.google.com/d/optout.
>>

