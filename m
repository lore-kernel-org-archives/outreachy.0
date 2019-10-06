X-GM-THRID: 6744763915639455744
X-Received: by 2002:a17:902:aa92:: with SMTP id d18mr26323385plr.58.1570388804416;
        Sun, 06 Oct 2019 12:06:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:aa91:: with SMTP id d17ls3664089plr.2.gmail; Sun, 06
 Oct 2019 12:06:43 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwdntgGDVihBIdEJtIQLI2TPZVEJyiKxhuEYQkMDVig+2B/wVNClT4cO4srre9MOTPC/pA3
X-Received: by 2002:a17:90a:24a1:: with SMTP id i30mr30541840pje.128.1570388803519;
        Sun, 06 Oct 2019 12:06:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570388803; cv=none;
        d=google.com; s=arc-20160816;
        b=Y+zUK6dBTxNyjuilLmoYm7vsgTSzjmBXO1TDXRvVQUDOpaVlFY13ZKjH382ObyvH7D
         UmqrgATWjeV6FiBQXwe2wGjZp6gsR8jMMyqZ7wg5LITgPw3W6JWQH22A0iLx0G4wYKUS
         +CdjddUe2Mio95Gpd5zVNrmciw3Aec+knpJP9E8Kf0TMTBqL+Q0fsqZagtQW95XmDtky
         B4af0eudlJOuy7O1638oQ/FNhUCu8T1RPjpqzGSabmgfJ2k0rkVR5+a/B8YCrlYDVBPH
         6PXcyBCqYQgW1sNIcVVZo5+U9wwp9YOFjMLmGRP/kvYC2i5xQmewZBsiolcs5ygFOrud
         6x/w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=GgT5DVMxXhk2ooixVQPJ5rdwD/1Ki/Zv2P0YjN0zX3s=;
        b=dCfZLX7iidSo+l/dsKjHUmAVOB7zfgzy1iXHcJEWz6WxhgBAxC8VT1xB/PuGhWYshd
         kPtJlnk0fSR/SDGXqU/+bDZb95PQJ4R/GjKsqj+6LXCard4Xk7MFyauyE58+cpPcHpMM
         PtbLLiuKKapUdBc21ofE1DFM9LbJ60fnE7kaVGIcCN9DTmKAg3fvKwL3qsiloKrMqkyt
         Nvb45yyWHmYr6gxynCOuE7Ej1g2Nzwi5/IqNnxaRV34cmyKc6SLsiJh17Y5zX6IU8UbJ
         T0rHbVyjlfuYs4DzhE/01KjE29okVzyzMK2wmVEwe9KHU87iOitfiX1NeqEpXCmPTXMu
         zg9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L/bvtaOn";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b64si437402pfg.0.2019.10.06.12.06.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 06 Oct 2019 12:06:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="L/bvtaOn";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9F2D22080F;
	Sun,  6 Oct 2019 19:06:42 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1570388803;
	bh=uSjjwqJ+WQNYE7UjlHLyYnUqr6Pwy8Mnlttuvz673UA=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=L/bvtaOnBCthDPK4ZmxMAF3ECimk4Jylp+MLMmkYRmmhLHwHarvohCbWxnfXx9EkK
	 Nlb7QMKYYqyUec4D65xXiN/1qka39yXJkSdpNRm9drA75paFPqY3Znz8xQsFsMiNzS
	 yj583ZSZvB4JGPKZxf912Irb3hNiglciIFChME1k=
Date: Sun, 6 Oct 2019 21:06:40 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Jules Irenge <jbi.octave@gmail.com>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com,
	abbotti@mev.co.uk, olsonse@umich.edu
Subject: Re: [Outreachy kernel] [PATCH] staging: comedi: Capitalize macro
 name to fix camelcase checkpatch warning
Message-ID: <20191006190640.GA237538@kroah.com>
References: <20191006184827.12021-1-jbi.octave@gmail.com>
 <alpine.DEB.2.21.1910062100530.2515@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.1910062100530.2515@hadrien>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Oct 06, 2019 at 09:01:09PM +0200, Julia Lawall wrote:
> 
> 
> On Sun, 6 Oct 2019, Jules Irenge wrote:
> 
> > Capitalize RANGE_mA to fix camelcase check warning.
> > Issue reported by checkpatch.pl
> 
> I guess mA means something, so it would be better to keep it?

Yes it does, we need to keep it, sorry.

thanks,

greg k-h

