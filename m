X-GM-THRID: 6946280249577439232
X-Received: by 2002:a25:d8d5:: with SMTP id p204mr3217775ybg.16.1617784503101;
        Wed, 07 Apr 2021 01:35:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ade8:: with SMTP id d40ls632856ybe.11.gmail; Wed, 07 Apr
 2021 01:35:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyXdUmnEB76hMheS3XZV+QLSCiT5id/VwwlX81uqaS4CV4X2s68Q/cjTi+LqHuvVueXtqeR
X-Received: by 2002:a25:8b0f:: with SMTP id i15mr2830730ybl.277.1617784502149;
        Wed, 07 Apr 2021 01:35:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617784502; cv=none;
        d=google.com; s=arc-20160816;
        b=maxm5AAHwf2WsS6VkmPCnK4w/C5N6VVDb4HhacjRehtjXIMNz5Ay7uAo/HUZB4jHZQ
         WCKWVdmtJfULrv+pK+0+lCHR6Qf8VuVyyUYVOaRdCVRBzJ3556MtvAnCbUtdGm2SCmub
         yNV53YxVIipQGeh3H6LVwUtxCfNBhKY3waPjTNf/YQglLi01yj2HX4JfbBPgRnN/4ICf
         STbvUcnLSNIq6xYOzjEIPTmdf1JE0T250dm6SsSvccvbJNINXGVJrfKOnTdxcP5148LO
         TKU4pARUbuCblKWGMs75scIxlN0No5wNX6/phTxDckQCLEptwN0Zpw50FqQG7P66/uxR
         cdcg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=vRPC5V11nqJsZb7mB03bJAmu3Bn6LF/Kt0OlXupRglc=;
        b=f/UhEZfUMFEKrtFDtbPoA5Y9xslvIMRyu1GX5F9tWdz+/ITlSwNonND4ykNF+cHoIh
         EFz32pArDYlCLDAM0wQeGMr+bweiqFwJvojD4661tRxk9Hb40hu06hUyELZwh3MbL6He
         7m371xsl0EKh4U5qzJLu1hbtdqdMHsGcJne9PPdRemEORpgo8TLiljqx8MDafCVv6jlL
         4AVesSzZ+MV95vZgFnfR/5EhGsBxlA3mcLSl4+oy9WJIX2D5gsFDK0vrZtc7voXjj61K
         HccapKLJ4aNSslcTk99j/txBSnBtSCgU5waRfln+yvm/N3QgHda3eEkmX+4rmcilBRTp
         fZag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=u+xv4he5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id l14si1457466ybp.4.2021.04.07.01.35.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Apr 2021 01:35:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=u+xv4he5;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id A596061363;
	Wed,  7 Apr 2021 08:35:00 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617784501;
	bh=QUPSZJEVZ4gOqekzobUa4Tu78f4ebblB6ELbnwdOIw0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=u+xv4he5FiLWTw6uVqlGVRKzfN4vnXj8XwhEQEZGLONO/36pm0CpWha2XbchjGEVB
	 /oo+0uryitIsJhls/71V1ZITjEZm54YgUFkhP+AtzkQYxRw80bSsFQC8Hkg9Ty2Q4Y
	 TA0yr56OIxQtLXx57eX1ficLY5bBCUGBEcWGQtr4=
Date: Wed, 7 Apr 2021 10:34:58 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [RESEND PATCH] staging: emxx_udc: Ending line with argument
Message-ID: <YG1usolTNEOfDqXh@kroah.com>
References: <20210406193409.96428-1-martinsdecarvalhobeatriz@gmail.com>
 <YGy4LXHBrBb/r3dk@kroah.com>
 <4c7df741-4e73-2ac4-f0d8-c9513ae29c88@gmail.com>
 <YG1FI38zNbidjt9q@kroah.com>
 <4d7ebe9c-8ebc-2fc9-10ed-6756ab42d5d7@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <4d7ebe9c-8ebc-2fc9-10ed-6756ab42d5d7@gmail.com>

On Wed, Apr 07, 2021 at 09:16:44AM +0100, Beatriz Martins de Carvalho wrote:
> 
> Em 07/04/21 06:37, Greg KH escreveu:
> > On Tue, Apr 06, 2021 at 09:00:07PM +0100, Beatriz Martins de Carvalho wrote:
> > > Em 06/04/21 20:36, Greg KH escreveu:
> > > > On Tue, Apr 06, 2021 at 08:34:09PM +0100, Beatriz Martins de Carvalho wrote:
> > > > > Cleans up check of "Lines should not end with a '('"
> > > > > with argument present in next line in file emxx_udc.c
> > > > > 
> > > > > Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> > > > > ---
> > > > >    drivers/staging/emxx_udc/emxx_udc.c | 11 ++++-------
> > > > >    1 file changed, 4 insertions(+), 7 deletions(-)
> > > > Why is this a [RESEND] ?
> > > > 
> > > > What happened to the first version?
> > > Sorry, I didn't receive your review, and in kernelnewbies tutorial, they say
> > > if not receive a response, may have missed the patch, so I resent it.
> > Do you have a pointer to your previous patch in the lore.kernel.org
> > archives anywhere?  I can't seem to find it.
> 
> 
> I found this, it's what is you need?
> 
> https://lore.kernel.org/linux-staging/20210401195457.24512-1-martinsdecarvalhobeatriz@gmail.com/

Ah, yes, I saw Julia's review and assumed you would fix up your patch
based on her comments.  Please do not ignore review comments, it makes
everyone's lives harder.

thanks,

greg k-h

