X-GM-THRID: 6202613271340515328
X-Received: by 10.50.78.170 with SMTP id c10mr2181223igx.6.1444298056999;
        Thu, 08 Oct 2015 02:54:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.21.7 with SMTP id r7ls128583ige.4.canary; Thu, 08 Oct 2015
 02:54:16 -0700 (PDT)
X-Received: by 10.66.255.42 with SMTP id an10mr5090231pad.40.1444298056750;
        Thu, 08 Oct 2015 02:54:16 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id u67si3466090ywf.5.2015.10.08.02.54.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 02:54:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [64.88.227.134])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 4495B1A3B;
	Thu,  8 Oct 2015 09:54:14 +0000 (UTC)
Date: Thu, 8 Oct 2015 10:43:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com,
	Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8192u: Do not DMA on
 the stack
Message-ID: <20151008094315.GB6793@kroah.com>
References: <1444158431-4229-1-git-send-email-ksenija.stanojevic@gmail.com>
 <5271552.eVnCbIod9Q@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5271552.eVnCbIod9Q@wuerfel>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Oct 06, 2015 at 09:25:21PM +0200, Arnd Bergmann wrote:
> On Tuesday 06 October 2015 21:07:11 Ksenija Stanojevic wrote:
> > Fix error "doing DMA on the stack" by using kzalloc for buffer
> > allocation.
> > Issue found by smatch.
> > 
> > Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> > 
> 
> Looks correct to me now,
> 
> Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> 
> I have a vague feeling that there ought to be a nicer way to do it
> without having to duplicate all those kmalloc calls, but I didn't
> find an existing USB driver API for that. I'm sure Greg will tell us
> if there is one.

Nope, unfortunatly, it's the only way to do this.

greg k-h

