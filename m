X-GM-THRID: 6751912583325810688
X-Received: by 2002:a92:297:: with SMTP id 145mr25364553ilc.85.1572336360030;
        Tue, 29 Oct 2019 01:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a6b:7f45:: with SMTP id m5ls3150847ioq.14.gmail; Tue, 29 Oct
 2019 01:05:58 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx4f9rTk33/xh3T+uIYvVmNo7g+h/QfuyRpIw11WCUKFwL22p/vf36VIhwbv5i58L9TsF4e
X-Received: by 2002:a6b:b581:: with SMTP id e123mr2210756iof.67.1572336358724;
        Tue, 29 Oct 2019 01:05:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572336358; cv=none;
        d=google.com; s=arc-20160816;
        b=gIL30u+hPLXFUjrNKdRgjUcMUaZbjD4Y1jLcLQ/0zYo9vcorsd+3wTNToNZcMst+xY
         btjukHZjZAo7RnMKHZzA76RBPBPAei4QTALI0hZPXPcBWc1KUJQLl1qNeAi4MSesRY6T
         hZ8TaavtxlUVSZcF2hden/rtK6PaJWZp8MGPEjMdLfBQoP4M/cydX1d/dldh6tNxs2qo
         /CNdJNwqIWI3NhQHsbdZqheH+eJIlSOKsuHoJSJLx7U3hIcUbr/O6EnNkSQXo11JGtVb
         6fKXZk8PEmJB2nbk+vnDm0xtHGcB9Sr18qsNQs4pJRy63T+XkeKgNTk3cvWHdIeWqpjn
         maog==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uE3vNi5tSPd02iaoGnysyOJuSIeF/hd0jUnfOXnxH08=;
        b=OLGrRPSn7PVJ+UqpPRGGH3Bf8ADwu+Yn8BPdpW1KH+rGIqZyssHigjw/po35u+isnM
         E3dQUuYVMDniTmWAloHlGhKZj0Y61Kyl42lEqpj50YAcM3mGvZEIffjlSpjgnbAlPitg
         ReAV6I27hnEZigitngvOFmBYcL4AOsYyAcd1O/aOtjivuhy47b91CqdtZFrPbycBLbK1
         07enm9obd7/HbHABZFFwZ/tJFA5rCEMstH1ci32lr1NflMGn22fqyU0a8qXrnSeCYA4s
         B1TeGzGO8c9Fg1l7h8Jmoj4cFSwWR2LufxQiENkX1CUznXYOaxZ3rs3z/j4g8vMAZw4P
         y1Yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FedaWOqz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 75si752557ilw.3.2019.10.29.01.05.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 29 Oct 2019 01:05:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=FedaWOqz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 41A4720663;
	Tue, 29 Oct 2019 08:05:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572336358;
	bh=BwRR8X+b+I77C/lg6ZIXxpKCv4h6fp7wQeFZ+0D/QYw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=FedaWOqz2vu+PIwQtveKYhnEIEmos2ruqqkRoXU7nc1cd8wsJQentwliq1KXl/SVS
	 3kOBjntgXIHc+VFLhg0Ev3D7O2CJ/pM51ZJiLOIozm9el5QSf2EOt+0nQst2AQAhTR
	 oz7VL+aoQKGOf95Jr/9DNkicxDsuHHQFJLtbf2lE=
Date: Tue, 29 Oct 2019 09:05:54 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Cristiane Naves <cristianenavescardoso09@gmail.com>
Cc: Dan Carpenter <dan.carpenter@oracle.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/2] staging: rtl8712: Fix
 Alignment of open parenthesis
Message-ID: <20191029080554.GA506924@kroah.com>
References: <cover.1572273794.git.cristianenavescardoso09@gmail.com>
 <158960d90adff42169bb7ce968a4082bf3e73387.1572273794.git.cristianenavescardoso09@gmail.com>
 <20191028190259.GF1944@kadam>
 <20191028212137.GC2311@cristiane-Inspiron-5420>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191028212137.GC2311@cristiane-Inspiron-5420>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Mon, Oct 28, 2019 at 06:21:37PM -0300, Cristiane Naves wrote:
> On Mon, Oct 28, 2019 at 10:02:59PM +0300, Dan Carpenter wrote:
> > On Mon, Oct 28, 2019 at 12:15:52PM -0300, Cristiane Naves wrote:
> > > Fix alignment should match open parenthesis. Issue found by checkpatch.
> > > 
> > > Signed-off-by: Cristiane Naves <cristianenavescardoso09@gmail.com>
> > > ---
> > >  drivers/staging/rtl8712/rtl8712_recv.c | 36 +++++++++++++++++-----------------
> > >  1 file changed, 18 insertions(+), 18 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8712/rtl8712_recv.c b/drivers/staging/rtl8712/rtl8712_recv.c
> > > index af12c16..304d031 100644
> > > --- a/drivers/staging/rtl8712/rtl8712_recv.c
> > > +++ b/drivers/staging/rtl8712/rtl8712_recv.c
> > > @@ -61,13 +61,13 @@ void r8712_init_recv_priv(struct recv_priv *precvpriv,
> > >  		precvbuf->ref_cnt = 0;
> > >  		precvbuf->adapter = padapter;
> > >  		list_add_tail(&precvbuf->list,
> > > -				 &(precvpriv->free_recv_buf_queue.queue));
> > > +			      (&precvpriv->free_recv_buf_queue.queue));
> > 
> > You did this correctly in v2.
> > 
> > -				 &(precvpriv->free_recv_buf_queue.queue));
> > +			      &precvpriv->free_recv_buf_queue.queue);
> > 
> > >  		precvbuf++;
> > >  	}
> > >  	precvpriv->free_recv_buf_queue_cnt = NR_RECVBUFF;
> > >  	tasklet_init(&precvpriv->recv_tasklet,
> > 
> > regards,
> > dan carpenter
> >
> I wondered if it was better to use parentheses or not. Is it necessary
> to send a new v5 version containing this change or it's possible to get it from
> v2?

Send a follow-on patch to fix this up please as your other one is in my
tree now I think.

thanks,

greg k-h

