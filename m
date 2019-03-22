X-GM-THRID: 6671020394532569088
X-Received: by 2002:a19:f607:: with SMTP id x7mr4027371lfe.111.1553236263523;
        Thu, 21 Mar 2019 23:31:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:121d:: with SMTP id t29ls976357lje.4.gmail; Thu, 21 Mar
 2019 23:31:02 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxn744c+1mgvZODa15C20sKVV22B1RPWclKqKRnn0p2fH5sDFYN3mwOrv44weOJT2FH+nNo
X-Received: by 2002:a2e:b045:: with SMTP id d5mr4295805ljl.12.1553236262766;
        Thu, 21 Mar 2019 23:31:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553236262; cv=none;
        d=google.com; s=arc-20160816;
        b=nMOTlg0rC1ZaZlTvVmtR0kvgM8iv1qtGlMAPVLx9nNIAkfLTHlY/x3QBI8lZgUXQtP
         hRWyODN5DeRzsKBzeOvLlRFhyc9pICRrluY4JLwOAmNayXb3/QAqO9Yp7ERlxmo4TRIe
         L5747Qz9Sd/EnC5xsWzzq3EUOpTX995ef8H6AjCv6bxemRV7rKHHvpkI4MrZ/8FyfJcB
         b5KZCVsoI3DiqH52XCWzWvyJudHGs/WGB5BfF7yaRuTjuxEi3hUlpV1P4DMErkSFVLbd
         fNIudXyPTPBYL5Ry1/BTbfoo9X8QXFZKYfoc0PUIB/KPBnxIuNb29e0bs1dUJXDI2s9a
         jzMw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=NIahjPqvOhOQ1gtNy1gj/MswzjNdwOpC2sgtCDVPCYc=;
        b=H/SSi8X5TznuriN6YdRwJh8LIlx6G4r2CsRhxyJgwNcFDfClDxVUB/u9ebJmVVqyzW
         HvM+Y6hZL+klQUSxnvaQR/Bi3toqX0MQp7vnVqRLuLxiT9UFp7rvd4AyN6/+j09e5O9W
         9bkYeYme7ZAg8THXpz3tswbvwdELWxZ1sHeEXSBz7gVKZBOocXpBdZjv7PwkLSwXNMjB
         doe2nlDDB+RBoZivQ8rFDoWxy8ncWGX2CO4PIEGtaILgb5n2guDdu49CwkupYzcpmyEG
         A7PAZQm4uA3hpCUrBdv4ty34dBQ75LBuDqgIm7jyNjXKj7Do6M2070TBkoUUXIdzvPI7
         c+EA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n21si326391lfl.2.2019.03.21.23.31.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Mar 2019 23:31:02 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,255,1549926000"; 
   d="scan'208";a="375215979"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Mar 2019 07:31:01 +0100
Date: Fri, 22 Mar 2019 07:31:01 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Greg KH <gregkh@linuxfoundation.org>
cc: Madhumitha Prabakaran <madhumithabiw@gmail.com>, mchehab@kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] Staging: media: davinci_vpfe:
 Remove RESETBIT macro and use BIT macro
In-Reply-To: <20190322052659.GB29938@kroah.com>
Message-ID: <alpine.DEB.2.21.1903220727420.2621@hadrien>
References: <cover.1553217781.git.madhumithabiw@gmail.com> <a64c7dd0bf44cc3ac0270a382209e592c8a05987.1553217781.git.madhumithabiw@gmail.com> <20190322052659.GB29938@kroah.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Mar 2019, Greg KH wrote:

> On Thu, Mar 21, 2019 at 08:26:06PM -0500, Madhumitha Prabakaran wrote:
> > Remove RESETBIT macro and use BIT(x) instead of (1 << x) to improve
> > codebase.
> >
> > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > ---
> >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.c | 8 ++++----
> >  drivers/staging/media/davinci_vpfe/dm365_ipipeif.h | 1 -
> >  2 files changed, 4 insertions(+), 5 deletions(-)
> >
> > diff --git a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > index 382d88bee5a7..4f18db127caf 100644
> > --- a/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > +++ b/drivers/staging/media/davinci_vpfe/dm365_ipipeif.c
> > @@ -296,14 +296,14 @@ static int ipipeif_hw_setup(struct v4l2_subdev *sd)
> >  		case MEDIA_BUS_FMT_YUYV8_1X16:
> >  		case MEDIA_BUS_FMT_UYVY8_2X8:
> >  		case MEDIA_BUS_FMT_Y8_1X8:
> > -			RESETBIT(val, IPIPEIF_CFG2_YUV8_SHIFT);
> > +			val &= ~BIT(IPIPEIF_CFG2_YUV8_SHIFT);
>
> clear_bit()?
>
> >  			val |= BIT(IPIPEIF_CFG2_YUV16_SHIFT);
>
> set_bit()?

OK, I see that the definition of these things is much more complicated
than what I was looking for.  These are atomic operations.  There is also
__set_bit, which is not atomic.  But set_bit does seem to be commonly
used.

julia

