X-GM-THRID: 6885936091088551936
X-Received: by 2002:a5d:9cd0:: with SMTP id w16mr9728858iow.112.1603691811040;
        Sun, 25 Oct 2020 22:56:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8a05:: with SMTP id w5ls908321iod.0.gmail; Sun, 25 Oct
 2020 22:56:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy52jxWRkENV+SmXR8SBM161Yym8I89hahcg/p5BfDexLEYhmh5J1urc3+4mumYCcsOW99v
X-Received: by 2002:a05:6602:1216:: with SMTP id y22mr9674293iot.53.1603691809945;
        Sun, 25 Oct 2020 22:56:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603691809; cv=none;
        d=google.com; s=arc-20160816;
        b=mGLdGHguKD3yb7y/nky69OuNs/r9vJZKwVJ5/9NYaqJYVu6maAQaOYa1QPYJ7MttHD
         WAzTuS3wzTVU+Fpwu8TbFNnR+3zCmQ3QSovmAewucEvKJzWExXQgvVx645K2OHfC+sF4
         GX4VSuFXhR2dBdFw1s/azKVLwVpvHtwvRhfWrz0iA7hB3Ljgyor+TaEkk+v/Ne2tr7Xp
         G/5W2um7Et4q99BcGEgj0deCURBIr1JOVqw5jak+PdbE5kXIDJFCK3yShgNi1InRbZDi
         RAiblh/usVybVJj2OsTVXzWBPEwW2cMeZ03Theou2z5Db/OERr/rrpd2ep+ZrRN7RRLJ
         ro8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=yqrlAxtF58hfGTRLPXKpzgr9tMLa+dhT0UMj1iQEAQM=;
        b=nTOh2AVjtfOeqRf1LJsHYKN/kqSB3DW6GSxIUZG8bPEkWCsYEoj1cVycZpJQWS0sw7
         1tSAM1DFE//t2ufGZwyUT0iLjQk+mr6hdWkGDueBERSs6Q43dxfOWeNK4impa/gBXF+Q
         gICsFaTvHcKU/AyJvQ876TwdC+HsVzY+vEJp573IWmyECWimdP/7LgZkdDo5c2Ab/QB3
         5GOSeOZtbHMA63UD+BGxyaFRx7Q4RCQVrVboqdjRtuSD+Y/uNnYrwG+CaPvvXkGruYwT
         UX34kyFGvF5luo+fPByYMCjFhh6e9Esd4jYHbMPdqw9rl8v4ZHNO7MSXkkUybZeBxVe7
         fVjw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ycLePGxe;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e1si496903ilm.0.2020.10.25.22.56.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2020 22:56:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ycLePGxe;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: from localhost (83-86-74-64.cable.dynamic.v4.ziggo.nl [83.86.74.64])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 9CE6822247;
	Mon, 26 Oct 2020 05:56:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1603691809;
	bh=68L4RzffTGlRheVxmrno1nftMutervn0FgxBx87UdGs=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ycLePGxeJm5aIaVBee6QuXxcmKkn0QeZp6bPdwrYCpafjS/UkN48IAnZ/7qAHLlzd
	 KFqUCJs38sGr5jKOO4OJ7tZrkWplnEWhINlWOANRV1lbis88O4kIaWPe4piXP4LtoA
	 Q+HtMyNWeI0nISta+F7ZsWn13O+NbV7g2xOPlXfs=
Date: Mon, 26 Oct 2020 06:57:17 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 1/2] staging: kpc2000: kpc_dma: rearrange lines
 exceeding 100 columns
Message-ID: <20201026055717.GB779791@kroah.com>
References: <c61a3c244bea516528e9ca4e909c30f16959c3aa.1603264617.git.mh12gx2825@gmail.com>
 <20201026040453.GC5074@my--box>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20201026040453.GC5074@my--box>

On Mon, Oct 26, 2020 at 09:34:53AM +0530, Deepak R Varma wrote:
> On Wed, Oct 21, 2020 at 01:01:07PM +0530, Deepak R Varma wrote:
> 
> Hello,
> Requesting a review / ack of this patch.

As I said in my previous email, to the outreachy list, if I have not
applied something, it needs to be resent, if you still think it is
needed.

thanks,

greg k-h

