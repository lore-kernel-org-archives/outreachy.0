X-GM-THRID: 6946280249577439232
X-Received: by 2002:a25:3057:: with SMTP id w84mr2130172ybw.62.1617773863982;
        Tue, 06 Apr 2021 22:37:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:1342:: with SMTP id 63ls459412ybt.8.gmail; Tue, 06 Apr
 2021 22:37:42 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwYh6Mucz68gOgR+2Umuh8sQXEusDwQAFGAZpIBn0hLGQxtUuYXQy8pjddCz6VWr/p8ekOS
X-Received: by 2002:a25:4014:: with SMTP id n20mr2077310yba.39.1617773862698;
        Tue, 06 Apr 2021 22:37:42 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617773862; cv=none;
        d=google.com; s=arc-20160816;
        b=oI26NTjZEfTtpLxCjvAGdpHgsZbXrMntaX3meowncvw8Zkm58THzycq18/fn7UYCdO
         ifKLV7WxGVlBcGkMPofrZlcAOPNj2AtZ74x2/IphdvjmAim08qRvumxEgx1VczepUmo5
         wn76xS1VYnX2IPkRr+TZ++4kvS2b8hCgY3TlOD6X9ROMBPk7Vvi33QZNhhgCR4Uu6I5H
         ousX24AmksduIzlLhdy47BcdPXMCLycksqawn3dD+cRgC02iL58Y3rGM31KW/xKI5nQp
         63HAo6ClMRMRWp1jQtZhoyAW/u0WqCrHzXlfdbKTNlxOejt5kKudWawLUXL5hMPhMTxx
         Blzg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=NyjljShl4+nMixfnPfwR5LIDcTovHp9zKTsvDIIcYiE=;
        b=vvXJmo4Jw+aQsUkscVPmOWU1zZzkbTxwXUUSXGpXSGZgkwDkWZQx0K/1O5Hl5I7wcY
         AH1obHJUFoY0GwtBCcFv57nasf3PgISUBtDBdlbaN+yyxknrwrcj52eEaQWKGK/5Abxq
         aqE5kxib26iHEuQVuests6Hi7t6r8yVnMITgyHKJBAhuzHOGkzngnq836m/95vGl3IRL
         Xi5H29tDlfrmljyTJziTDoF54umQcFU+t2HhAw4c7rxW5A8FZvXQTagDNyVj9rxV1Bc7
         erUfSWEcLzwyoWcCelU6TEfo8QKfEtxcTWUrBYSZgoAPtnOsDenNfZUEWy5MV7Fb9vjE
         JD+w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xnCUb60R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id i1si1680983ybe.2.2021.04.06.22.37.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 06 Apr 2021 22:37:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=xnCUb60R;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 2D25A613AF;
	Wed,  7 Apr 2021 05:37:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617773861;
	bh=nzwtY+L0kgmfWf4JSBCkm5fqQT9Wgv7V7OBgqfxP7iQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=xnCUb60RQc+dbIilRCXgHSUKVn1uSFZRGHhqBgIHEUtOafKvgpD8IHyGesMJ1jfXL
	 01RmSupd0IRlARujw4yym69PmeknlmD/m+ZPpiHBvIaUWDGCfrEvx0jMX/iGk0Yneh
	 EqdAp4TF0KHnboEMVlH3NikrloWCoSpedSWQfP/8=
Date: Wed, 7 Apr 2021 07:37:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
Message-ID: <YG1FI38zNbidjt9q@kroah.com>
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <YGy4LXHBrBb/r3dk@kroah.com>
 <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>

On Tue, Apr 06, 2021 at 09:00:07PM +0100, Beatriz Martins de Carvalho wrote:
> 
> Em 06/04/21 20:36, Greg KH escreveu:
> > On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
> > > Cleans up check of "Lines should not end with a '('"
> > > with argument present in next line in file emxx_udc.c
> > > 
> > > Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> > > ---
> > >   drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
> > >   1 file changed, 4 insertions(+), 7 deletions(-)
> > Why is this a [RESEND] ?
> > 
> > What happened to the first version?
> Sorry, I didn't receive your review, and in kernelnewbies tutorial, they say
> if not receive a response, may have missed the patch, so I resent it.

Do you have a pointer to your previous patch in the lore.kernel.org
archives anywhere?  I can't seem to find it.

> > Also, your subject is odd, please look at the documentation for how to
> > write good subject lines for patches.
> 
> Yes, I know. It was my second patch, and I was learning, and when I resent
> it, I didn't know if I can change the subject.

Of course you can always fix up things you know you did incorrectly,
don't make others review stuff that you know is wrong, that just wastes
everyone's time.

thanks,

greg k-h

