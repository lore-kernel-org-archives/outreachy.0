X-GM-THRID: 6617179960834523136
X-Received: by 2002:adf:eacb:: with SMTP id o11-v6mr1640131wrn.19.1540758059766;
        Sun, 28 Oct 2018 13:20:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:e441:: with SMTP id t1-v6ls322455wrm.6.gmail; Sun, 28
 Oct 2018 13:20:58 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dt993zQhDgz21T4hsa6X3i8pyjKVHqKEtScwYwLo171UTYxaTmxAFu010iQo+H3qt2SV5W
X-Received: by 2002:a5d:500d:: with SMTP id e13-v6mr793278wrt.9.1540758058928;
        Sun, 28 Oct 2018 13:20:58 -0700 (PDT)
ARC-Seal: i=2; a=rsa-sha256; t=1540758058; cv=pass;
        d=google.com; s=arc-20160816;
        b=qdTcETxE5vouQRPa3nEmQJZNTGXYQesiC7ZUtaVKCa+gS0vDxhebwn3ku3ZNEEG1fL
         lRPz0lpw+amrJlg+NkRNV1ILtN7ccF1qWQjroKDFnPyejN7nTWW8xFIdi45GsbicflzJ
         x9y8u9fERVZvS8KALmbYSHl1HYoMoNPdo+mFSK3L6u39tpuEUc69VfU+wGbCsBkKeCC5
         a/nsy+ST8giwiOOdKHxwU8z5LX0j8kT2tp04MuKHyHKHDX1EFsn9Oo0D+5ILG6/KweT8
         M1V29pfRcGHydnWK6RxpeZmRHJy8SkR+SDaJV5vmx2FkXP1pKgy8dX239jBqA5y6Blem
         hqDg==
ARC-Message-Signature: i=2; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=4iyvW07pBMe/hoBy5qYRE5pwqCnP5qPoUNCzKtrHXQ8=;
        b=Ine4MSHDGHV0Re5Tmm7gCV0HRQ6bgLrRLcOal1BvPeLvsqwoiMzSdoWsJwrIV2YJE7
         QOQ9lsTFQfiRjxXMW8bZebekONj47gcHDeSNcrvwx7/e/rNwDZVY1GT7VbAq7pysH8Mw
         iW/O//y2auRY3vyE9rT1OxJ2tX8w0YQWDGoMsJVfnA+MSQCEjISBN4WZ9N2cmIHrt1Ef
         a9o8XaNoMhUcwhm4TxAH1mM/bNppRx7LKaOmnxFUlgChZi6nuztf5RQoZF3XeNBxkJ2u
         acgsg5IvJKTsmK/S/jK61PkeoRfKarzo4i637KCl46KUijullrSitsaUcPsuAQHmd42T
         4uEg==
ARC-Authentication-Results: i=2; gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JUGTfuGO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
Return-Path: <code@wizofe.uk>
Received: from sender-of-o51.zoho.eu (sender-of-o51.zoho.eu. [31.186.226.243])
        by gmr-mx.google.com with ESMTPS id v12-v6si44497wrw.5.2018.10.28.13.20.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Oct 2018 13:20:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) client-ip=31.186.226.243;
Authentication-Results: gmr-mx.google.com;
       dkim=temperror (no key for signature) header.i=@wizofe.uk header.s=zoho header.b=JUGTfuGO;
       arc=pass (i=1 spf=pass spfdomain=wizofe.uk dkim=pass dkdomain=wizofe.uk dmarc=pass fromdomain=wizofe.uk>);
       spf=pass (google.com: domain of code@wizofe.uk designates 31.186.226.243 as permitted sender) smtp.mailfrom=code@wizofe.uk
ARC-Seal: i=1; a=rsa-sha256; t=1540758055; cv=none; 
	d=zoho.eu; s=zohoarc; 
	b=YPZUFNdbEMKo90zBChejsi/p6KkxIzAhhggI5yLtxSZtsUpB3svhFZ4kAXuTEw+bwiSMTtWAVvx0t19Y0AsLMEpwWifXeYVwFTB2eAWVHiP04t1WlOvJKMQJWWakd8KG6THNh96I+YteVgULqWqEoPqE7sIeclMSv0t0g/kIiHI=
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=zoho.eu; s=zohoarc; 
	t=1540758055; h=Content-Type:Cc:Date:From:In-Reply-To:MIME-Version:Message-ID:References:Subject:To:ARC-Authentication-Results; 
	bh=4iyvW07pBMe/hoBy5qYRE5pwqCnP5qPoUNCzKtrHXQ8=; 
	b=eMueg1lvUMQMHYAZblTAHzUXjTo6gWAUDUdB7WbDAZHecrsUm2km6LG2AzR1UsfUfyDz2fNLSVV6g5xy5MAO8x1bcO/Iyd0+uyrOIBFZ96vFLXsZ8cAexvBWE5uosMR+4D2UoGkDYSu6e5aMIfn5YhrJYaAd83bSpro/p1S6e7Y=
ARC-Authentication-Results: i=1; mx.zoho.eu;
	dkim=pass  header.i=wizofe.uk;
	spf=pass  smtp.mailfrom=code@wizofe.uk;
	dmarc=pass header.from=<code@wizofe.uk> header.from=<code@wizofe.uk>
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed; t=1540758055;
	s=zoho; d=wizofe.uk; i=code@wizofe.uk;
	h=Date:From:To:Cc:Subject:Message-ID:References:MIME-Version:Content-Type:In-Reply-To;
	l=1461; bh=4iyvW07pBMe/hoBy5qYRE5pwqCnP5qPoUNCzKtrHXQ8=;
	b=JUGTfuGOakX1BuLpAiHP1m5stITeFZj4JCSpfgk3FmeBZaLnYW7x6sOJpBpjqd/8
	QJH2SFRIJwcLp4kukNEtC8N9v3RHjew+EjlUoBjqiU+qLGKD8CVxMFdnYxX80FucRWy
	HsLol/F0n94pMYOC4y9cLkFjDr002qXvAhTEhBWc=
Received: from kvasir.local (90.242.56.176 [90.242.56.176]) by mx.zoho.eu
	with SMTPS id 1540758054637989.7552490942663; Sun, 28 Oct 2018 21:20:54 +0100 (CET)
Date: Sun, 28 Oct 2018 20:20:53 +0000
From: Ioannis Valasakis <code@wizofe.uk>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] FirstPatch Wiki Change
Message-ID: <20181028202052.GA21843@kvasir.local>
References: <20181027231742.GA11614@kvasir.local>
 <alpine.DEB.2.21.1810280627040.2450@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1810280627040.2450@hadrien>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-ZohoMailClient: External

On Sun, Oct 28, 2018 at 06:27:29AM +0100, Julia Lawall wrote:
> 
> 
> On Sun, 28 Oct 2018, Ioannis Valasakis wrote:
> 
> > Hi all!
> >
> > I wanted to added a few changed to the FirstPatch Outreachy
> > Kernelnewbies wiki but I get the option that the page is immutable. On
> > top of that, when I am choosing Load/Save from the menu, I don't get the
> > whole page 'source' but a very tiny version of it.
> >
> > Anyone knows how could I edit and send my Wiki patch over to you? Thank
> > you for the help :)
> 
> What are your changes?

I want to add my personal mutt settings (as I couldn't connect with the
default recommendations) as I believe it can help future applicants.

Also I want to correct a few mistakes and add a summary section. I hope
that makes sense.

> 
> I can make you a site editor, and then you can make the changes directly.

That would be great! Thanks.

> 
> julia
> 
> >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181027231742.GA11614%40kvasir.local.
> > For more options, visit https://groups.google.com/d/optout.
> >


