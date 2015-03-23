X-GM-THRID: 9643848892416
X-Received: by 10.236.227.162 with SMTP id d32mr113358133yhq.7.1427118827428;
        Mon, 23 Mar 2015 06:53:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.2 with SMTP id y2ls1947286ioi.2.gmail; Mon, 23 Mar 2015
 06:53:47 -0700 (PDT)
X-Received: by 10.66.194.234 with SMTP id hz10mr11096215pac.10.1427118827158;
        Mon, 23 Mar 2015 06:53:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u27si63201yhu.4.2015.03.23.06.53.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Mar 2015 06:53:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.11,452,1422918000"; 
   d="scan'208";a="128150554"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Mar 2015 14:53:45 +0100
Date: Mon, 23 Mar 2015 14:53:36 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Cristina Opriceana <cristina.opriceana@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8712: Use mem_dup()
 instead of copy_from_user()
In-Reply-To: <1427109852.6799.12.camel@Inspiron>
Message-ID: <alpine.DEB.2.10.1503231452220.2432@hadrien>
References: <20150322190400.GA1115@Inspiron>  <alpine.DEB.2.02.1503222101410.2195@localhost6.localdomain6> <1427109852.6799.12.camel@Inspiron>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 23 Mar 2015, Cristina Opriceana wrote:

> On Du, 2015-03-22 at 21:04 +0100, Julia Lawall wrote:
> >
> > On Sun, 22 Mar 2015, Cristina Opriceana wrote:
> >
> > > Use mem_dup() instead of its duplicated implementation in order
> > > to simplify code. Found with coccinelle.
> > >
> > > Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> > > ---
> > >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 10 +++-------
> > >  1 file changed, 3 insertions(+), 7 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > > index 81f39c3..c39d031 100644
> > > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > > @@ -1912,13 +1912,9 @@ static int r871x_mp_ioctl_hdl(struct net_device *dev,
> > >  	bset = (u8)(p->flags & 0xFFFF);
> > >  	len = p->length;
> > >  	pparmbuf = NULL;
> > > -	pparmbuf = kmalloc(len, GFP_ATOMIC);
> > > -	if (pparmbuf == NULL) {
> > > -		ret = -ENOMEM;
> > > -		goto _r871x_mp_ioctl_hdl_exit;
> > > -	}
> > > -	if (copy_from_user(pparmbuf, p->pointer, len)) {
> > > -		ret = -EFAULT;
> > > +	pparmbuf = memdup_user(p->pointer, len);
> >
> > There is a potential problem with this.  memdup_user uses GFP_KERNEL
> > (blocking allowed), while the original code used GFP_ATOMIC (blocking not
> > allowed).  You could check whether any locks can be held on the way to
> > this code, which would require GFP_ATOMIC.  On the other hand, it may be
> > that copy_from_user can only be used when blocking is allowed.
> >
> > julia
> >
> As far as i understand, since copy_from_user() may sleep, it cannot be
> used while holding a lock. So, the use of GFP_ATOMIC might be useless in
> this context.
> Either that or copy_from_user shouldn't be used, which is not the case
> because the purpose of this function is to receive a command from the
> userspace and call its associated handler.

OK, it would be good to add a note about this to the commit message.

julia

