X-GM-THRID: 7021065776829300736
X-Received: by 2002:a05:6512:2347:: with SMTP id p7mr12116427lfu.558.1634734475508;
        Wed, 20 Oct 2021 05:54:35 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:e85:: with SMTP id bi5ls1391162lfb.2.gmail; Wed, 20
 Oct 2021 05:54:33 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyzGoLbHKVEKH8DjLMe9E46pelcD2r4pgC3DXhttQ8Se7nXcqGmQp944f2qO3BU5P5sOmC9
X-Received: by 2002:a05:6512:110d:: with SMTP id l13mr11568369lfg.199.1634734473859;
        Wed, 20 Oct 2021 05:54:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634734473; cv=none;
        d=google.com; s=arc-20160816;
        b=IZchCNcQoNaLMvOpWnWOUs6tBfI3wvgnlPxMC+i+e8w7xR57hO0IioZfD149qRVatE
         /XwfGvw4waNvXgmUYDewOjJkwa95XWcStILHOCZWwU7aH0+No9mhy9z1sre0Pege+dZ+
         st8h89d5BS+UBrRoyJ56S2iVlmsfZZu9cW6VIyW3x+ueGbnnWORgC8OHSBRjj+tXdl03
         t816ZtOShoLihSQdLH9KmJRG/vyjH7FllHyTudpubupo3dA9x5+5e++m0TDm09Xabd38
         pW7kxlZireXWWecgKhQ+vbop4aXkuVFyTtBbP9G9oOUtemKViJkx2y/2g0CmY8Dfx/pp
         mmeA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=RaJru0LeJpp+5gdjew/h/QiM8NOqvMypszVPqMO2bps=;
        b=KzpR+d38ncweLms91mFhiSJ4LZWHx1D0ScuGNuub8Yed+/yFALFvbTi7YjDARWv62Z
         +jxgeZAWmwAGMuDzHyO0zP6ri57/umeYPeqB+nA36qL1yNRjDnTUVpBlQIYRBs2IlCR4
         WJt1Pwe9ChlrKSPfeKZ8xVGGJ7bG0gql/f+mWrSARanfLM10pLvGhh0e5tGv5CeQqtn1
         MEktSjI3G+kOawx8fh4wZwrdqIkwaU7GXLotYiL7kSxfbFO3wWumxHqAqY17J7KTihr0
         yOfylcjQLtt8XRfcO67QINJc1JICDkE7oXNQF4CMml7oKdCVUCYfcuZB+gwNX9UDwgrh
         tHqQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oZ6IDXUl;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <karolinadrobnik@gmail.com>
Received: from mail-wm1-x32c.google.com (mail-wm1-x32c.google.com. [2a00:1450:4864:20::32c])
        by gmr-mx.google.com with ESMTPS id q4si180680lji.6.2021.10.20.05.54.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 20 Oct 2021 05:54:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) client-ip=2a00:1450:4864:20::32c;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=oZ6IDXUl;
       spf=pass (google.com: domain of karolinadrobnik@gmail.com designates 2a00:1450:4864:20::32c as permitted sender) smtp.mailfrom=karolinadrobnik@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32c.google.com with SMTP id g79-20020a1c2052000000b00323023159e1so1483774wmg.2
        for <outreachy-kernel@googlegroups.com>; Wed, 20 Oct 2021 05:54:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=RaJru0LeJpp+5gdjew/h/QiM8NOqvMypszVPqMO2bps=;
        b=oZ6IDXUlY7cvhwSvrcAq7EeqRaqyNFERA30XsAN/R0atKAg0QxWlzqduJ8bvkKfzaL
         iFFJGIU/gYoi2smwZmc4C4EZ3jD0zqqcq6U+TQwNzyWSqBuJuMvxi8KFz1Lg1GRB6Tmg
         2T5ACUdq32UKsj+mrEjUOFsFabxxO0uB+Py89RayddZv+QOZohytvuCcV3OpQ/zpWGAP
         mGREZkfqely9KNwtznFnGyz4VITMXlIcrN0HP63rXc1s3Gb1MAFQ7b+CJkkYW5n8g+Ii
         fVUu1u1IHOb3Xu80Ym1Bhp9IOoEQNIPULF4sWksWawHUaOgfD8O+4N6grDZVaf42RGkU
         aVeg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=RaJru0LeJpp+5gdjew/h/QiM8NOqvMypszVPqMO2bps=;
        b=CG7Gh1THrm4tn1TGoDeOaRo9x1i7gQioUrCEyOBcbCyp2xEdKKMUygdoinQc+uyqTQ
         /GxO8oKVkQoaWZke7qcnu0KQ3hpGBhEdpT/QJTef3eGAtKCV4taU4gJQEoj/uqfWzE/L
         eLAxzSYjhLGpzZDjKYub9jjFrVlclQ2amnW6318kYBVEBkyQkZRJVSkpeW8Z/jOKtzHC
         JzLP18pGiXfbY3AVufMWDC/zs9VYoh3Sfq9xpLarzodXPkEQ4IzHkQsWiCskWm8MJuoN
         rt+a+ET5CFz6dwALoJZa+YOiv3scPUPCk7FOXDPXN6EHtVAb9/eHZOsijOnCvjWuYedb
         ByGQ==
X-Gm-Message-State: AOAM531PDKL/ueTVC2BSDez7UJcOBO+LWIjwSz6twtj07ISgmI30dZVV
	Cf1cuAv0c3/wxLtZU742Qv0=
X-Received: by 2002:a5d:6d51:: with SMTP id k17mr51031912wri.233.1634734473573;
        Wed, 20 Oct 2021 05:54:33 -0700 (PDT)
Return-Path: <karolinadrobnik@gmail.com>
Received: from ?IPv6:2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62? ([2a01:4b00:f411:e700:e085:8cb7:7bf6:5d62])
        by smtp.gmail.com with ESMTPSA id j16sm2253167wms.16.2021.10.20.05.54.32
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 20 Oct 2021 05:54:33 -0700 (PDT)
Message-ID: <6089e564f89ceaa7303bf3a4b4c864bf1389ac25.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6655: Rename
 `by_preamble_type` parameter
From: Karolina Drobnik <karolinadrobnik@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org
Date: Wed, 20 Oct 2021 13:54:27 +0100
In-Reply-To: <alpine.DEB.2.22.394.2110201051300.2930@hadrien>
References: <20211020084033.414994-1-karolinadrobnik@gmail.com>
	 <alpine.DEB.2.22.394.2110201051300.2930@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.38.3-1 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Wed, 2021-10-20 at 10:54 +0200, Julia Lawall wrote:
> On Wed, 20 Oct 2021, Karolina Drobnik wrote:
> 
> > Drop `by` prefix in the first parameter of `bb_get_frame_time`
> > function.
> > As the original argument, `byPreambleType`, was renamed to
> > `preamble_type`,
> > the parameter referring to it is now renamed to match the new
> > naming
> > convention.
> > Update `bb_get_frame_time` comment to reflect that change.
> > 
> > This patch is a follow-up work to this commit:
> >     Commit 548b6d7ebfa4 ("staging: vt6655: Rename byPreambleType
> > field")
> 
> This is not going to be practical.  If the previous patch is
> accepted, then this it not needed.

This change was there before but Greg told me to do only one logical
change per patch (which was a struct member rename), so I reverted it.
I believe this is needed because this parameter still uses Hungarian
notation, which is against the LK coding style. Also, it makes sense to
update the name given my previous change.

> there needs to be a vn+1 putting the patches together into a series.

I didn't know that it should be send this way, especially given the
fact that Outreachy applicants should first get 3-5 patches out before
creating a patchset. Or has something changed in this regard?

> > @@ -1691,7 +1691,7 @@ static const unsigned short
> > awc_frame_time[MAX_RATE] = {
> >   *
> >   * Parameters:
> >   *  In:
> > - *      by_preamble_type  - Preamble Type
> > + *      preamble_type     - Preamble Type
> >   *      by_pkt_type        - PK_TYPE_11A, PK_TYPE_11B,
> > PK_TYPE_11GB, PK_TYPE_11GA
> 
> In the realm of small cleanups to this driver, the extra space in
> front of the - above is a bit annoying.

I can add this in but will that still count as a one logical change? 
I described the comment update, will that suffice?

> > @@ -1717,7 +1717,7 @@ unsigned int bb_get_frame_time(unsigned char
> > by_preamble_type,
> >         rate = (unsigned int)awc_frame_time[rate_idx];
> > 
> >         if (rate_idx <= 3) {                /* CCK mode */
> > -               if (by_preamble_type == 1) /* Short */
> > +               if (preamble_type == 1) /* Short */
> 
> I hope you will get around to replacing the 1 by the appropriate
> constant and removing the "Short" comment.

I plan to do so after correcting the name variable.


On Wed, 2021-10-20 at 10:55 +0200, Greg KH wrote:
> On Wed, Oct 20, 2021 at 09:40:33AM +0100, Karolina Drobnik wrote:
> > Drop `by` prefix in the first parameter of `bb_get_frame_time`
> > function.
> > As the original argument, `byPreambleType`, was renamed to
> > `preamble_type`,
> > the parameter referring to it is now renamed to match the new
> > naming
> > convention.
> > Update `bb_get_frame_time` comment to reflect that change.
> > 
> > This patch is a follow-up work to this commit:
> >     Commit 548b6d7ebfa4 ("staging: vt6655: Rename byPreambleType
> > field")
> 
> There is no need for these two lines in the changelog text.  They can
> go
> below --- if you want to have them.

Thank you for clarifying this. I've been following the Submitting
Patches docs[1] and thought this is needed.


Thanks,
Karolina
-------------------------------------------------------------------
[1]:
https://elixir.bootlin.com/linux/latest/source/Documentation/process/submitting-patches.rst#L106



