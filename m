X-GM-THRID: 6203527091850313728
X-Received: by 10.195.18.100 with SMTP id gl4mr3435736wjd.4.1444461749021;
        Sat, 10 Oct 2015 00:22:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.33.196 with SMTP id h187ls384309lfh.4.gmail; Sat, 10 Oct
 2015 00:22:28 -0700 (PDT)
X-Received: by 10.112.169.34 with SMTP id ab2mr3385777lbc.23.1444461748341;
        Sat, 10 Oct 2015 00:22:28 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m4si89663wib.0.2015.10.10.00.22.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Oct 2015 00:22:28 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,662,1437429600"; 
   d="scan'208";a="182060799"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2015 09:22:27 +0200
Date: Sat, 10 Oct 2015 09:22:27 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Alison Schofield <amsfield22@gmail.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: gdmwm: move constant to
 right side of comparison test
In-Reply-To: <20151010070034.GA4795@sudip-pc>
Message-ID: <alpine.DEB.2.02.1510100921000.2062@localhost6.localdomain6>
References: <20151009061314.GA31693@Ubuntu-D830> <20151010070034.GA4795@sudip-pc>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Sat, 10 Oct 2015, Sudip Mukherjee wrote:

> On Thu, Oct 08, 2015 at 11:13:23PM -0700, Alison Schofield wrote:
> > Move constant to right side of comparison test per checkpatch.pl:
> > WARNING: Comparisons should place the constant on the right side of the
> > test
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > ---
> >  drivers/staging/gdm72xx/gdm_wimax.c | 4 ++--
> >  1 file changed, 2 insertions(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/gdm72xx/gdm_wimax.c b/drivers/staging/gdm72xx/gdm_wimax.c
> > index 6e8dbaf..69f00cc 100644
> > --- a/drivers/staging/gdm72xx/gdm_wimax.c
> > +++ b/drivers/staging/gdm72xx/gdm_wimax.c
> > @@ -581,8 +581,8 @@ static int gdm_wimax_get_prepared_info(struct net_device *dev, char *buf,
> >  		}
> >  
> >  		pos += gdm_wimax_hci_get_tlv(&buf[pos], &T, &L, &V);
> > -		if (T == TLV_T(T_MAC_ADDRESS)) {
> > -			if (L != dev->addr_len) {
> > +		if (TLV_T(T_MAC_ADDRESS) == T) {
> 
> Is it correct? T and L are variables which are getting its values from
> gdm_wimax_hci_get_tlv(). TLV_T is a macro which is ((x) & 0xff).
> 
> Do we use it like:
> 
> if ((T_MAC_ADDRESS & 0xff) == T)
> 
> or do we use like:
> 
> if (T == (T_MAC_ADDRESS & 0xff))

I'm not sure there is such a semantic intent to the rule.  Do something 
complex and then see if it is like T, looks better to me than see if T is 
like doing something complex.  The checkpatch/commit message is indeed 
misleading, but the layout of characters looks better.

julia

