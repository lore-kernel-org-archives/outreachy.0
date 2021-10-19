X-GM-THRID: 7018981355604148224
X-Received: by 2002:a05:6638:348b:: with SMTP id t11mr2491805jal.70.1634624396471;
        Mon, 18 Oct 2021 23:19:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:2c8d:: with SMTP id s135ls3336677ios.0.gmail; Mon, 18
 Oct 2021 23:19:55 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzD3jjlJdtH/sbxHImOXgDfHttMwtrCTJ3iKPIl94ZtOvQcD4M/83iNvHFnm5AAp2+vs577
X-Received: by 2002:a05:6602:15d3:: with SMTP id f19mr17706713iow.161.1634624395620;
        Mon, 18 Oct 2021 23:19:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634624395; cv=none;
        d=google.com; s=arc-20160816;
        b=ohFwJlGWSQ+Sgb3jn8bRJpNPQnXmrpU+541BRa24fuGt0htG8sGbRcf8Z0u3Gx2Gfz
         pONUK2pnf4oLHS0Zl9zhin1DNmnHCoxo09Jc72oh+O1vP1D1rsikGMYdOm2EP36hwWrI
         ZCfnj6BeeLB034/1a/BcesaVnZLnnC9hlSaXQEu7qXKnrNjjtF7BKcOz1wVKi+OSWfi6
         9p7eduyx7JMarIbSK7Z/h6cM8Qz2NfycrzqmXci3BoaHRPAD5c5ANZnG12dJoxGixblX
         9wtWBX59ReNgQo9qKhdZ+KJoQILHfVZSIJIc+QVOUu1JP0sKNAaF6QcHrMOaV3YDrVtJ
         17jg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WKSpteTJfcWoZB02ubPiByff6ZSmaa7KcCiDF5LidJA=;
        b=ry5gww38EFJpjq88yUagDhqc0Q0ItytmPWkApoShvf2huuXDVWM02rv5LRqbiK/5/Q
         QKFMnpfaGD5GW/5JgXnzfHOK2i6SBQfmFS5mulxteDAWgEiwdGN6Dc/t2L9a/o1kWprI
         ZlP54Lua0iFDpy4YiZzgSBSOX7nTQcsGeazXO3dP5RecaFuUERTLNJQYQhrw6IZlDeia
         eEldT8isrP+Y079xiSGMYhI/SoCPDNZjSdfEeJuEqtJ871EkYMZ0fLk+Av8QaD6cK9i0
         0Vz5TkvU9cd5TRUMuXD+BskRdzNzsmV5iMtaLcWqeK+6o3fBZ0c3Cy7KAe2/SA9ylvBL
         ciHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DQVUaLSX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h10si287137ilq.2.2021.10.18.23.19.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 23:19:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=DQVUaLSX;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 5FC17611BF;
	Tue, 19 Oct 2021 06:19:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1634624394;
	bh=AyQWwStnduaoKk0yTKhME53t1UT1lOcuONQ2qK6ZkGg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=DQVUaLSXIZT1yt60ijtfHEbroSxB+2owI5cOXA/jYYlk7+at1S9YLO5flX/DjpluP
	 5oa+wL2PJ573X6avSDIyT+Z43YmTiarhXwLaWt8zXSOcTN8zqOtOSSozZPj796qZnV
	 2bGNNTPwuJ5YNk3KCPCv4D5iUMG8hCBVDEJuVxas=
Date: Tue, 19 Oct 2021 08:19:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <alison.schofield@intel.com>
Cc: Karolina Drobnik <karolinadrobnik@gmail.com>,
	Outreachy Linux Kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Help maintain the First Patch Tutorial
Message-ID: <YW5jiKHmi3/cjXQW@kroah.com>
References: <20211014174207.GA426328@alison-desk>
 <c924b4477fa4067b040e9a0d72af3d8eeb882a98.camel@gmail.com>
 <20211018175420.GA446414@alison-desk>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211018175420.GA446414@alison-desk>

On Mon, Oct 18, 2021 at 10:54:20AM -0700, Alison Schofield wrote:
> On Mon, Oct 18, 2021 at 10:59:42AM +0100, Karolina Drobnik wrote:
> > Hi Alison,
> > 
> > I updated the `get_maintainer.pl` code section and split it up a bit,
> > hope it's fine. Additionally, I decided to extract the note on
> > `vc04_services` so it's more visible and add a comment on including the
> > outreachy list (as a reminder).
> > 
> > One thing - should I use double-spaces while editing this wiki? I see
> > they're used there, I added some in but I wouldn't be surprised if I
> > missed some.
> 
> Is that the double spaces between sentences you are referring too?
> HA HA - that shows that this writing is dated, because double space
> between sentences, use to be the standard, but is not anymore ;)

It is still the standard for plain-text email where your email client
shows text in fixed-width fonts.  Just like the old typewriters where
this style was created for.

> > '''not''' to be CCd on Outreachy patches. Please CC Greg explicitly on
> > these patches: Greg KH <gregkh@linuxfoundation.org>.
> 
> wrt GregKH - 
> If the code is in drivers/staging, I believe gregkh automatically
> sees all patches because the patches go to linux-staging list.
> Is there really a need to do special handling with GregKH?

You need to ALWAYS cc: the maintainers of the subsystem for a patch, I
am not being treated differently here at all.

To not do so is to risk your patches being lost in the noise.

thanks,

greg k-h

