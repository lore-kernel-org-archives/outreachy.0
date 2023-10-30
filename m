Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 138B015E93
	for <outreachy@lists.linux.dev>; Mon, 30 Oct 2023 12:40:18 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (1024-bit key) header.d=linuxfoundation.org header.i=@linuxfoundation.org header.b="vjtQXa6/"
Received: by smtp.kernel.org (Postfix) with ESMTPSA id 33FEDC433C7;
	Mon, 30 Oct 2023 12:40:17 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1698669618;
	bh=QIka//vk229T0NdLqdoRJ/cjt87B5VyKpyvjD08syoc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=vjtQXa6/HYiUaQ/8gOgIjlUECKrL/g+IuPpPMGqC6+RzRlipmbdDkERYk0IDoR+rK
	 mzX03aIfhulNCKKK3RDero5DEN1PaG02BShCrTCCPhIndq4Ach4tgGdYwQ4V/1URWA
	 eBB3MG4cpc7+prxPklfT0qIPId+rV8fCWRx3bm8A=
Date: Mon, 30 Oct 2023 13:40:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Bagas Sanjaya <bagasdotme@gmail.com>
Cc: Dorine Tipo <dorine.a.tipo@gmail.com>, outreachy@lists.linux.dev
Subject: Re: [PATCH] staging: Remove unnecessary parentheses
Message-ID: <2023103021-flashily-eatery-1ac8@gregkh>
References: <20231029185405.11073-1-dorine.a.tipo@gmail.com>
 <ZT-cPxSGysyfLCfk@debian.me>
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ZT-cPxSGysyfLCfk@debian.me>

On Mon, Oct 30, 2023 at 07:06:23PM +0700, Bagas Sanjaya wrote:
> On Sun, Oct 29, 2023 at 06:54:05PM +0000, Dorine Tipo wrote:
> > diff --git a/drivers/staging/octeon/ethernet-rgmii.c b/drivers/staging/octeon/ethernet-rgmii.c
> > index 0c4fac31540a..15d2c84925ba 100644
> > --- a/drivers/staging/octeon/ethernet-rgmii.c
> > +++ b/drivers/staging/octeon/ethernet-rgmii.c
> > @@ -148,7 +148,7 @@ int cvm_oct_rgmii_open(struct net_device *dev)
> >  		 */
> >  		if ((priv->imode == CVMX_HELPER_INTERFACE_MODE_GMII &&
> >  		     priv->port  == 0) ||
> > -		    (priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII)) {
> > +		    priv->imode == CVMX_HELPER_INTERFACE_MODE_RGMII) {
> >  			priv->poll = cvm_oct_check_preamble_errors;
> >  			cvm_oct_check_preamble_errors(dev);
> >  		}
> > 
> 
> I'd prefer explicit parens on the right-hand side of || instead (to match
> the left-hand one).

Sorry, but as always for this type of change, I will reject it so
there's no need to ask for it to be cleaned up any other way.

Dorine, this type of change is constantly rejected on the mailing list
that you should be copying all of these patches to.  Please search the
archives for reasons why.

thanks,

greg k-h
