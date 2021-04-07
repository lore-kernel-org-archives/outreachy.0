X-GM-THRID: 6946280249577439232
X-Received: by 2002:a17:902:ea05:b029:e7:1490:9daa with SMTP id s5-20020a170902ea05b02900e714909daamr2359816plg.33.1617789278679;
        Wed, 07 Apr 2021 02:54:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90b:4d81:: with SMTP id oj1ls534331pjb.2.canary-gmail;
 Wed, 07 Apr 2021 02:54:37 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJz5Rl+rtNbFNX2QcP1X4V+jD/iP/88B/dCNOGViRAIQheVzb7QfgCVguio6sBNbk+0icaCL
X-Received: by 2002:a17:90a:34c:: with SMTP id 12mr2465485pjf.100.1617789277531;
        Wed, 07 Apr 2021 02:54:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617789277; cv=none;
        d=google.com; s=arc-20160816;
        b=sgQRCgy0/h6lX9jyl/EAymyLalE8FsiXY92pCqHarH2xnne6R+f/x7XPgJ76X3NJrd
         uonAJb21W1CmOVmw4PLKtK6IqWuy7sg0EYuMWNIg6AJ2j6zJ9BZR8kX4QrMosV9PFGwd
         6TTphpyesVH5X6gadc824oisnurN2Cc5dg1Ug7xth/20Oc+m+PM6CUoY+wfbu6f7/5/F
         2UCO4CaLrYn3Mqacz/ulb1stmEfBKXCLbXCi7R5O0AMfRN8rs/9avRR5hm3haH7cbu63
         orxyU5kg85M4Jqq2g83/YqdkwVGWBD2CKvERpgX4rAvN0NFAYhrQzyubJ83qv5LWlpnz
         ny9w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GzM5otXbCzbTxNXYL6CqIagyxqVzTdMM5bqvc/lVwN0=;
        b=zzebLgoiHOgfilRTP5hEIzlExknkFDPoLWKQm5Y0mGl21USj6hcC4jfjXVYr1khIoi
         oFjnmoMsHe4+4pgCsmuMjDCCvuw+T2NXFEtgGSTlH3WDfqwoWtacvN5zMeFC8okLtfYw
         xOqUScbALwuJeUDOjQFczdAP34wgVjLQuKufWxo/QyW8mJcHLGmJuZUQcT/9muKSo8Bi
         AIJaKiXWYMTzLt8yCFCDfEmk8iTk/INv1UCKmDLeVG0u7Jcoz6vb/N7TgsqpIBviVAty
         Lkw+J8Gq5rwgfj7ONTFHUcv8q4InBIG0VS3miGrIIDp6YSmgBM5IYBfZGeXKy5WI8ua3
         buoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=AI+PK3sT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n10si1513522pgq.2.2021.04.07.02.54.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 02:54:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=AI+PK3sT;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 738B561382;
	Wed,  7 Apr 2021 09:54:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617789277;
	bh=zWJ+SMOiDDkk14mXom4NjVcpZ2wgtTB1vowz8JWtg5s=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=AI+PK3sTplYdXC1BcnmhYfjkvjUTprGlfNsiS2W3IqXnzA/c94mKNyQCoFgK4rsdK
	 4noemkmQdovAnE9sIKXSd9zQme4I1pKT3EG8/LNQ8GF1bW3UugRKI7i+Gc6bgDV0/P
	 xmRyQQdI8hBVyrVN1g/EGl2MMyySKxhW5IcDXp/8=
Date: Wed, 7 Apr 2021 11:54:29 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
Message-ID: <YG2BVSOI+UNfEZTT@kroah.com>
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <YGy4LXHBrBb/r3dk@kroah.com>
 <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>
 <YG1FI38zNbidjt9q@kroah.com>
 <4d7ebe9c-8ebc-2fc9-10ed-6756ab42d5d7@gmail.com>
 <YG1usolTNEOfDqXh@kroah.com>
 <e7a18709-0b26-751e-6ba4-b43dd89c203f@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <e7a18709-0b26-751e-6ba4-b43dd89c203f@gmail.com>

On Wed, Apr 07, 2021 at 10:46:23AM +0100, Beatriz Martins de Carvalho wrote:
> 
> Em 07/04/21 09:34, Greg KH escreveu:
> > On Wed, Apr 07, 2021 at 09:16:44AM +0100, Beatriz Martins de Carvalho wrote:
> > > Em 07/04/21 06:37, Greg KH escreveu:
> > > > On Tue, Apr 06, 2021 at 09:00:07PM +0100, Beatriz Martins de Carvalho wrote:
> > > > > Em 06/04/21 20:36, Greg KH escreveu:
> > > > > > On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
> > > > > > > Cleans up check of "Lines should not end with a '('"
> > > > > > > with argument present in next line in file emxx_udc.c
> > > > > > > 
> > > > > > > Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> > > > > > > ---
> > > > > > >     drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
> > > > > > >     1 file changed, 4 insertions(+), 7 deletions(-)
> > > > > > Why is this a [RESEND] ?
> > > > > > 
> > > > > > What happened to the first version?
> > > > > Sorry, I didn't receive your review, and in kernelnewbies tutorial, they say
> > > > > if not receive a response, may have missed the patch, so I resent it.
> > > > Do you have a pointer to your previous patch in the lore.kernel.org
> > > > archives anywhere?  I can't seem to find it.
> > > 
> > > I found this, it's what is you need?
> > > 
> > > https://lore.kernel.org/linux-staging/20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com/
> > Ah, yes, I saw Julia's review and assumed you would fix up your patch
> > based on her comments.  Please do not ignore review comments, it makes
> > everyone's lives harder.
> Sorry, I didn't fix up my patch based on her comments, because to do this
> was
> to revert all my patch or will break a code line if I remaining within 80
> characters. How the code line still stays between 85 or 90 I assumed that
> was
> ok, so I was waiting for your review. Now I saw that I should send this
> answer
> to her. What should I do with the patch?

If you do not know, ask the reviewer what they mean by their review
comments.

thanks,

greg k-h

