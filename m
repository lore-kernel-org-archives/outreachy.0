X-GM-THRID: 195205005312
X-Received: by 10.112.25.7 with SMTP id y7mr1557661lbf.21.1424982922998;
        Thu, 26 Feb 2015 12:35:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.42.136 with SMTP id o8ls84492lal.74.gmail; Thu, 26 Feb
 2015 12:35:22 -0800 (PST)
X-Received: by 10.152.6.41 with SMTP id x9mr1580924lax.10.1424982922325;
        Thu, 26 Feb 2015 12:35:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ev8si1425673wib.3.2015.02.26.12.35.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:35:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,655,1418079600"; 
   d="scan'208";a="123568870"
Received: from ppp-188-174-123-88.dynamic.mnet-online.de (HELO [192.168.1.53]) ([188.174.123.88])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 21:35:21 +0100
Date: Thu, 26 Feb 2015 21:35:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
In-Reply-To: <20150226203243.GA12622@waves>
Message-ID: <alpine.DEB.2.10.1502262134490.3032@hadrien>
References: <20150217200055.GA11277@localhost.localdomain> <20150226182827.GA1267@kroah.com> <20150226203243.GA12622@waves>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Aya Mahfouz wrote:

> On Thu, Feb 26, 2015 at 10:28:27AM -0800, Greg KH wrote:
> > On Tue, Feb 17, 2015 at 10:00:55PM +0200, Aya Mahfouz wrote:
> > > This patch fixes the following checkpatch.pl warning:
> > >
> > > Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> > > __aligned(2)
> > >
> > > The changes were applied using the following coccinelle
> > > rule:
> > > @@ expression e1, e2; @@
> > > - memcpy(e1, e2, ETH_ALEN);
> > > + ether_addr_copy(e1, e2);
> > >
> > > All variables defined in vnt_mac_set_key start at even offsets
> > > making the variables aligned to the u16 datatype.
> > >
> > > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > > ---
> > >  drivers/staging/vt6656/mac.c | 2 +-
> > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > >
> > > diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
> > > index bb37e33..5958ecf 100644
> > > --- a/drivers/staging/vt6656/mac.c
> > > +++ b/drivers/staging/vt6656/mac.c
> > > @@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
> > >  	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
> > >
> > >  	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
> > > -	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
> > > +	ether_addr_copy(set_key.u.write.addr, addr);
> > >
> > >  	/* swap over swap[0] and swap[1] to get correct write order */
> > >  	swap(set_key.u.swap[0], set_key.u.swap[1]);
> >
> > This patch breaks the build, please _always_ test build your patches :(
> >
> > thanks,
> >
> > greg k-h
>
> Hello Greg,
>
> I always do and I didn't get any warnings or erros when building it
> before sending. If you have the time, please let me know what is the
> error.
>
> It also seems to be that you compile all warnings as errors, it would be
> kind of you if you let me know your build settings.

Are you sure that you have a .o file for this file?

julia

