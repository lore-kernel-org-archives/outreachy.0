X-GM-THRID: 6801796609244921856
X-Received: by 2002:a0c:f98e:: with SMTP id t14mr10453032qvn.74.1583667448354;
        Sun, 08 Mar 2020 04:37:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2ca1:: with SMTP id g30ls248055qtd.1.gmail; Sun, 08 Mar
 2020 04:37:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtCZOT/GwnPfTsQTpciOm/ZW3Gou2xAAH+l91PXka0M4U9k7sqteyN6PnT1mvJObkjNyREe
X-Received: by 2002:ac8:7b94:: with SMTP id p20mr10627578qtu.122.1583667446949;
        Sun, 08 Mar 2020 04:37:26 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583667446; cv=none;
        d=google.com; s=arc-20160816;
        b=caBc4CaEy+7KUMgVLgS0Cbo1X0zCLJ/eVlP9iLyG+el93cM4oekmU4bLEYnOp1SHf6
         fOosEsRh//nU4K5rA8/Ow1NjlFe5hLpa/0VwxV15EFexEm5F8x6t1scshYfrVPGMuWYJ
         bu15L9Ph05GvTHa51pw/DfN0Z3hagiKNE7y2wFCUlfPZ/Yz0FIaxmxkYSfvASd1HTJMx
         KkqiAxFhERXpj5QQtV0Hu+jSaPfdz1V07EegMN/vSEi73s+SmDFaZAxyZcEvBIqpap6s
         bANcN/5ysQvCR5DvRKUWDaCz20IXRhzo2YlYMLtwnLAH3B3n6bZTuZJxOWRzXH87cP4P
         vn2g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=Hbhw0QN6dd6kdK6H7AQTIJcY05CrMrKE6ez2mmfcO8c=;
        b=0PDWLcHkPL++8s6olhGa8UDwO9+sEMQNyA6JY9bLyQL7TRjpT+zw8DsD0p7sZ8OB2Z
         5j9QdeFMdyepC/dRkgH51O8cXQv6lnCVJMHckoqT2C+45ABMpm3xOb0GHecXGbtlh/xl
         Bd27ZoVGrEc9Z6dtrkiddtiOotzP0ml770+JOOeR79lPseB4q4letzF5rMs9jHwYVgKd
         GVgUVNZiGwHIseXXq5OQsA2b26rv8eEe7WBlHDQx5m9+sv+u3gLx1g+Bmmgtiy0QyDHB
         bqYNG17i/BMxZRC/ymRUd5B91/A1d6ihvNsnvExmBZNrraaKIOPs04g3yBRT0mysdlwQ
         83zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=meDWqvuU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id g23si349316qki.4.2020.03.08.04.37.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 04:37:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=meDWqvuU;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 42AD120663;
	Sun,  8 Mar 2020 11:37:25 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1583667445;
	bh=oSRfdoPglSss1PSXHxjpDPTscNURguGdjodEG2Wknac=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=meDWqvuU1jTldwIyNYFOx2SWWg0pc2X9s9Uk4Be5BJIfM9BVfJEmxOYPZimaF13Lw
	 IBY9IEfSIhSJRBmjaYq7hub3JgyDdDpsPOPaznqQo4rIq692YdYNDYy5OzDEg9iTTO
	 QRIfKrOPa9PURnF0sQBC4ZRSytuvq4+ccP/wdo6Y=
Date: Sun, 8 Mar 2020 12:37:23 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Shreeya Patel <shreeya.patel23498@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>,
	Julia Lawall <julia.lawall@inria.fr>,
	Vaishali Thakkar <vthakkar@vaishalithakkar.in>, helen@koikeco.de
Subject: Re: Using 4.18.0-rc7+ kernel
Message-ID: <20200308113723.GA4040818@kroah.com>
References: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>

On Sun, Mar 08, 2020 at 04:54:30PM +0530, Shreeya Patel wrote:
> Hi,
> 
> I am currently using 4.18.0-rc7+ custom kernel so to start with my
> contributions is it recommended to compile the latest kernel or it will be
> fine to just update it using the following commands.
> git fetch origin
> git rebase origin/staging-testing
> 
> Since the compilation process is very lengthy and takes a lot of time I
> would like to know if it is just fine to update the kernel rather than
> always upgrading it.

What do you mean "update" instead of "upgrading"?

You should always run the latest kernel version, and especially when you
are making changes to the kernel, otherwise it's hard to know if your
change worked properly or not.

It should not take that long to rebuild a kernel, look at the 'make
localmodconfig' option for how to rebuild a kernel that only includes
the drivers and modules that you currently have in your system.

And 4.18-rc7 is _VERY_ old and obsolete, I would not use that at all :)

good luck!

greg k-h

