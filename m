X-GM-THRID: 6806841558557523968
X-Received: by 2002:adf:f6c8:: with SMTP id y8mr29444806wrp.403.1584947732614;
        Mon, 23 Mar 2020 00:15:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:230e:: with SMTP id j14ls1908995wmj.0.canary-gmail; Mon,
 23 Mar 2020 00:15:31 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtbFk4lkrs7fID5gPKCtBd0ue+szdPN/wJLRfUNys/S1OX6reGNAq4Aln6RwNzhfGHwlbuE
X-Received: by 2002:a05:600c:10ce:: with SMTP id l14mr10757584wmd.161.1584947731306;
        Mon, 23 Mar 2020 00:15:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584947731; cv=none;
        d=google.com; s=arc-20160816;
        b=p6N6997RAihDqw3V3ulzzDI43EVhKwcFmmeaPqQXIayMLjMRzLrF4/hINrzFL1dOn7
         UKFjviDg4t3D6Jrt+oNgFwG//29JeUVERFl7pxIhp4SFFKo7i81Ydf2UydvKoQXewKt9
         bEmyqPyseZOr1FYicUfRNkgdX2h6b38boit1j9XLiMnlfq1xRrV7DBSDEcMUcsUu7Mow
         WX4f6ba3JC1dYhzh6SZmJ/vTd8fm1IGP/N1VVXxSLDd99Q31LLCgaeYBtK0gFTEyrTWJ
         TSuF95VkTXHjcshskd5ujPVarbfYScBl6t6c6Rh3EhUk6gT4CIjs94pvIyANRx3Nbu68
         QEVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Jkr1ksj1DkAeFiV4C1zwZVztGVpdys7P9F3bFVh9Fp8=;
        b=Lv95nh4Gh4gclVp+5wUFSWaY5Pn+hLPLySwLy7nBwMUaPiRLAF29SkR6SfIIeCrl1r
         jEoQD1fNGAsAx7aQJPdvYzXmQl15ZEQUnvXLQMakMYNrEvKCwGQQbVULMIbpr3UGz/WE
         Vu6wagOZmLVRusLyMSB3qpGMUjzpWXGLLGMCnwPh6qjznLgeWuBersSvhFECn2mdeJkf
         FV2jiJoQq1GvCDGuROqOnMzG3wzKVrgyghALtWqoDBmn5XzcPxwSUmBxLP1oGFhNl770
         +ffpd+UJ10sqHJEq8VPbruPKSPRYVW3O0Dc1fMHrVqRND8ZCQO06JxI6Lkyf5PaPYXoT
         Zw5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a18si655276wra.0.2020.03.23.00.15.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Mar 2020 00:15:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,295,1580770800"; 
   d="scan'208";a="441597352"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Mar 2020 08:15:30 +0100
Date: Mon, 23 Mar 2020 08:15:30 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Stefano Brivio <sbrivio@redhat.com>
cc: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: hp100: line over 80
 characters
In-Reply-To: <20200323014959.3267920c@elisabeth>
Message-ID: <alpine.DEB.2.21.2003230814520.3054@hadrien>
References: <20200322014137.GA6031@siyah2> <20200323014959.3267920c@elisabeth>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 23 Mar 2020, Stefano Brivio wrote:

> On Sun, 22 Mar 2020 04:41:37 +0300
> Gokce Kuler <gokcekuler@gmail.com> wrote:
>
> > Moved to the bottom line after == operator for it exceeds 80 character
> >
> > Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> > ---
> >  drivers/staging/hp/hp100.c | 3 ++-
> >  1 file changed, 2 insertions(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/hp/hp100.c b/drivers/staging/hp/hp100.c
> > index 1b957aa..43607fb 100644
> > --- a/drivers/staging/hp/hp100.c
> > +++ b/drivers/staging/hp/hp100.c
> > @@ -549,7 +549,8 @@ static int hp100_probe1(struct net_device *dev, int ioaddr, u_char bus,
> >  #endif
> >  			local_mode = 3;
> >  		} else if (chip == HP100_CHIPID_LASSEN &&
> > -			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) == (HP100_BM_WRITE | HP100_BM_READ)) {
> > +			   (lsw & (HP100_BM_WRITE | HP100_BM_READ)) ==
> > +			   (HP100_BM_WRITE | HP100_BM_READ)) {
>
> There's another way to fix this:
> 	a & (x | y) == x | y <=> a & x && a & y
>
> it should be more readable this way, as it's then immediately clear
> that those and only those bits need to be set.

Maybe with ()s?  All those &s looks confusing.

julia

