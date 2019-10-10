X-GM-THRID: 6745898329157140480
X-Received: by 2002:a1c:7219:: with SMTP id n25mr5650356wmc.33.1570685825395;
        Wed, 09 Oct 2019 22:37:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4c42:: with SMTP id n2ls860134wrt.8.gmail; Wed, 09 Oct
 2019 22:37:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw68bMOluaPKrIirdHBkPLZoCjURcIRzIh6Ta1PAI9pEx7ju98WTKJtDWQ5sqhOHXyOpWZS
X-Received: by 2002:adf:cc8e:: with SMTP id p14mr6903345wrj.301.1570685824669;
        Wed, 09 Oct 2019 22:37:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570685824; cv=none;
        d=google.com; s=arc-20160816;
        b=a9hUys6fNXc7tfXT1Eg4XtTy5+sgzpAmLemdLbbgaEgGw6dF73nw90DAWW00NtdpdF
         dklkb2A5731yXAhSEOzB40msRkzkYVjStyu170FKA+447j9uoWUF4FGJq53WlfEM1Yrk
         coel64HT7aQ2dNR8zJD6o8IGlqr7OH5FTku3raY7xXjhDH5qAXFRZ4evdQwZzwX26R1R
         OkuXMMK3JiOVoCEuajowXtgSuZWVgaxuT8N86YJor9iCCrJ1BQ6olJo2lQ1ErrX18Qxw
         nSYBvVLv9Sghhb66/0vzvMnbWFg46WMMJgZTF1uluKXW+mm044ULIO0A9SQQ8im6/EnW
         4Kyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=2NjAnL7UdXugTN0VVj3PatwSDMh6mkCWU4WljIicNT8=;
        b=wKW5Qe0eLcFSyor1ZEIlZ0QlYpoUeG656QSMrmcxcaMFiqd+O35J9NwasUsrt8imdU
         hZpQrfaFt7C1kwEHyTHayPr30IpxNP0grfvg3c9Ox+VDF8cILKrBzLzb43eTPZlI0cm5
         rj8AUIbNMjxqh1wZvZK/t9DXHIG26LO/cEiNeIamQIHaIMitby3lGEN0nFRj7DOU+k0x
         JfDX+24WAJezlsTqXpJuMWmC3KBJlKPNIYgYXaO2bzWuTg8XSEvgo4wAv6jlw77DLHHi
         c6mbOo/ReUEUonO5uEjwj9dlP2gdWDkViDofiAvMUXZK9al9LEvx44efvqW3G9HCM/Mw
         i4yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x8si338581wmk.2.2019.10.09.22.37.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 09 Oct 2019 22:37:04 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,279,1566856800"; 
   d="scan'208";a="322222603"
Received: from 81-65-53-202.rev.numericable.fr (HELO hadrien) ([81.65.53.202])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Oct 2019 07:37:03 +0200
Date: Thu, 10 Oct 2019 07:37:03 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Jules Irenge <jbi.octave@gmail.com>, outreachy-kernel@googlegroups.com, 
    gregkh@linuxfoundation.org, GR-Linux-NIC-Dev@marvell.com, 
    netdev@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: qlge: Fix multiple assignments
 warning by splitting the assignement into two each
In-Reply-To: <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
Message-ID: <alpine.DEB.2.21.1910100734330.3287@hadrien>
References: <20191009204311.7988-1-jbi.octave@gmail.com>  <alpine.DEB.2.21.1910092248170.2570@hadrien> <f9bdcaeccc9dd131f28a64f4b19136d1c92a27e2.camel@perches.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 9 Oct 2019, Joe Perches wrote:

> On Wed, 2019-10-09 at 22:48 +0200, Julia Lawall wrote:
> > On Wed, 9 Oct 2019, Jules Irenge wrote:
> > > Fix multiple assignments warning " check
> > >  issued by checkpatch.pl tool:
> > > "CHECK: multiple assignments should be avoided".
> []
> > > diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> []
> > > @@ -141,8 +141,10 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
> > >  	u32 *direct_ptr, temp;
> > >  	u32 *indirect_ptr;
> > >
> > > -	xfi_direct_valid = xfi_indirect_valid = 0;
> > > -	xaui_direct_valid = xaui_indirect_valid = 1;
> > > +	xfi_indirect_valid = 0;
> > > +	xfi_direct_valid = xfi_indirect_valid;
> > > +	xaui_indirect_valid = 1;
> > > +	xaui_direct_valid = xaui_indirect_valid
> >
> > Despite checkpatch, I think that the original code was easier to
> > understand.
>
> It'd likely be easier to understand if all the
> <foo>_valid uses were bool and the ql_get_both_serdes
> <foo>_valid arguments were change to bool from
> unsigned int as well.

Indeed, given the names and the values, bool would be much better.

> btw: qlge likely is going to be deleted and not updated.

OK.  Jules, if you want to make this change, you can, but it could be
better to move on to some other driver.

thanks,
julia

>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 22 ++++++++++------------
>  1 file changed, 10 insertions(+), 12 deletions(-)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 7e16066a3527..90ab37d4c49d 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -112,7 +112,7 @@ static int ql_read_serdes_reg(struct ql_adapter *qdev, u32 reg, u32 *data)
>
>  static void ql_get_both_serdes(struct ql_adapter *qdev, u32 addr,
>  			u32 *direct_ptr, u32 *indirect_ptr,
> -			unsigned int direct_valid, unsigned int indirect_valid)
> +			bool direct_valid, bool indirect_valid)
>  {
>  	unsigned int status;
>
> @@ -136,14 +136,12 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>  				struct ql_mpi_coredump *mpi_coredump)
>  {
>  	int status;
> -	unsigned int xfi_direct_valid, xfi_indirect_valid, xaui_direct_valid;
> -	unsigned int xaui_indirect_valid, i;
> +	bool xfi_direct_valid = false, xfi_indirect_valid = false;
> +	bool xaui_direct_valid = true, xaui_indirect_valid = true;
> +	unsigned int i;
>  	u32 *direct_ptr, temp;
>  	u32 *indirect_ptr;
>
> -	xfi_direct_valid = xfi_indirect_valid = 0;
> -	xaui_direct_valid = xaui_indirect_valid = 1;
> -
>  	/* The XAUI needs to be read out per port */
>  	status = ql_read_other_func_serdes_reg(qdev,
>  			XG_SERDES_XAUI_HSS_PCS_START, &temp);
> @@ -152,7 +150,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>
>  	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
>  				XG_SERDES_ADDR_XAUI_PWR_DOWN)
> -		xaui_indirect_valid = 0;
> +		xaui_indirect_valid = false;
>
>  	status = ql_read_serdes_reg(qdev, XG_SERDES_XAUI_HSS_PCS_START, &temp);
>
> @@ -161,7 +159,7 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>
>  	if ((temp & XG_SERDES_ADDR_XAUI_PWR_DOWN) ==
>  				XG_SERDES_ADDR_XAUI_PWR_DOWN)
> -		xaui_direct_valid = 0;
> +		xaui_direct_valid = false;
>
>  	/*
>  	 * XFI register is shared so only need to read one
> @@ -176,18 +174,18 @@ static int ql_get_serdes_regs(struct ql_adapter *qdev,
>  		/* now see if i'm NIC 1 or NIC 2 */
>  		if (qdev->func & 1)
>  			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
> -			xfi_indirect_valid = 1;
> +			xfi_indirect_valid = true;
>  		else
> -			xfi_direct_valid = 1;
> +			xfi_direct_valid = true;
>  	}
>  	if ((temp & XG_SERDES_ADDR_XFI2_PWR_UP) ==
>  					XG_SERDES_ADDR_XFI2_PWR_UP) {
>  		/* now see if i'm NIC 1 or NIC 2 */
>  		if (qdev->func & 1)
>  			/* I'm NIC 2, so the indirect (NIC1) xfi is up. */
> -			xfi_direct_valid = 1;
> +			xfi_direct_valid = true;
>  		else
> -			xfi_indirect_valid = 1;
> +			xfi_indirect_valid = true;
>  	}
>
>  	/* Get XAUI_AN register block. */
>
>

