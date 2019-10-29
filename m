X-GM-THRID: 6751912583325810688
X-Received: by 2002:a65:68d6:: with SMTP id k22mr8374588pgt.377.1572336907452;
        Tue, 29 Oct 2019 01:15:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:4c5e:: with SMTP id m30ls6464357pgl.13.gmail; Tue, 29
 Oct 2019 01:15:05 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzj9uP/38IkEjg+bm8nAy0/mOady97n0veX8f3HGAqs4aaC1s3cxD75AvCh3BOp4re7I8wA
X-Received: by 2002:a63:69c9:: with SMTP id e192mr26934753pgc.271.1572336905549;
        Tue, 29 Oct 2019 01:15:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572336905; cv=none;
        d=google.com; s=arc-20160816;
        b=G4/H6xUEmulIOXC7oKQVPi5ZUa77ebApjshTsLNOrFIopOcY8laqlnLH4sG6eptTRw
         ac4ZpyeQUkx+EMavduC664bWiVB7oqdwVD6Yz7+vndQfDN8NSCnDxwmKSxB5NEy+m6Vn
         R71q6qIa65ZwI8giJ7x4exDKoKpURACWYiyNmp17Uix4iT726b0HJCj7f9kwKY7ydTOv
         QhBv4IwwqnFxgrhtww4Jvcj4HZJyeqZ9tzfg0W9o1akZMY9Z50SFnu4zW5A0tz+LmgIf
         vuS2LG8tG74TLW5Fb++7lxP1b+0gJW7P+zs+N5W00M0ZT0RabXOAA+JGbjZ+Wx9NT1Ph
         OhiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=MMk2lr8g5g1URC6StK93isp2AzQk/TugIXuXChGv9A8=;
        b=O5MHEJncFj6ZglYeVF/nNcOgimBI8bGG8NUTLHOpeFLgVUfIhK94XYxCxtXpYO2/mo
         GcXOWpUMS6IcvOe+sLdo7WCbBIxMYM2OdOQ8tcJQzocFVIumWcwL3/IGQIygpnco/PBm
         hNcJ/5yzh2RQ/uUDjxTd2KNn3QQDH8RyspL1hpmdTj8JuG60nbE3ojtpDio66N4iVbaS
         1krkg/gSnqzzxz4s4G5l0mTrE1eAhpN3jmNNVNIfDEzp3N/EZ5jgGCRqv0+NdD8cXG0N
         zjEBMqbTEDio5SnPAvXr+FAt50vofT+lFQMjBHSQV6OTJVqIOj2Gqj23psnYTE8u58+q
         3Y+A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NSPgShTt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h13si57022pjb.0.2019.10.29.01.15.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 01:15:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=NSPgShTt;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 77EDC20663;
	Tue, 29 Oct 2019 08:15:04 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572336905;
	bh=OSbWnBGW/b69WjjSkyctFwn994uBXsUa5M38l1K/2pE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=NSPgShTth9xY2nYQU8+R08n8z+7rnzfImAZonzcUXE5mvqwVXWkbsenN8AWxheS9w
	 XlaYC0sc2OBeZKiq8IBgUqoJoZHKqyzVhzwMY87qye3Gqzw50ppMFggA47ZumKFvQg
	 EQVRyGRIIZ3eNlQCIvFqO99VgbbySAxvG+Xj0AXA=
Date: Tue, 29 Oct 2019 09:15:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
Message-ID: <20191029081501.GA549977@kroah.com>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
 <20191028212137.GC2311@cristiane-Inspiron-5420>
 <20191029080554.GA506924@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191029080554.GA506924@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Oct 29, 2019 at 09:05:54AM +0100, Greg KH wrote:
> On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> > On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > > 
> > > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > > ---
> > > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > > 
> > > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > index af12c16..304d031 100644
> > > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > > >  		precvbuf->ref_cnt = 0;
> > > >  		precvbuf->adapter = padapter;
> > > >  		list_add_tail(&precvbuf->list,
> > > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > > 
> > > You did this correctly in v2.
> > > 
> > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > +			      &precvpriv->free_recv_buf_queue.queue);
> > > 
> > > >  		precvbuf++;
> > > >  	}
> > > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > > >  	tasklet_init(&precvpriv->recv_tasklet,
> > > 
> > > regards,
> > > dan carpenter
> > >
> > I wondered if it was better to use parentheses or not. Is it necessary
> > to send a new v5 version containing this change or it's possible to get it from
> > v2?
> 
> Send a follow-on patch to fix this up please as your other one is in my
> tree now I think.

Or maybe it isn't in my tree, I have no idea, I can't remember.  YOu
know if it is applied or not as you will get an email when it happens.

thanks,

greg k-h

