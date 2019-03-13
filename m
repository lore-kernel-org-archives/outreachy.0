X-GM-THRID: 6667904381849960448
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr5347546ejx.13.1552514814606;
        Wed, 13 Mar 2019 15:06:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:32c1:: with SMTP id k1ls695722ejk.9.gmail; Wed, 13
 Mar 2019 15:06:53 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwkOBKrq2KntaIMZB0tYFoA4VodfPsKaJqbGfHKkppiDiWPIHZkXjRSak2zj2wgtjOFpJ0E
X-Received: by 2002:a17:906:9701:: with SMTP id k1mr5347543ejx.13.1552514813881;
        Wed, 13 Mar 2019 15:06:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552514813; cv=none;
        d=google.com; s=arc-20160816;
        b=on161Rtoah22NvU7Tr5XRq+ZbZMNrL2Udx5dOz06dYybeCq/PBq9uLC0hkAWiNW8J5
         yddZshunCmeyczHjce78Z6uLuPyn6W0b1HJFayKB3KhL0q1xoZ3SO80TXCsTAqXlal+u
         usUlC3DP8WWvyPMeXoJIL2CI078CRR3vamLpSMfh5H4+w5Aj6cgnpkEwD5VZdq6KNilL
         GICrwrPaLE978VjDL5IHbz0WBBhbBWEWmjKzsDl8mcRwLIqg521RKU0kZYMJHcby3I02
         p7nqaChA2B2SVZAujsXwmDWyI5WEioHdhj1/GNFk4Iys8XlHOgwlgiAmTXIpVT6iZex/
         uveA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ru6JTmB97NnMP9e6gUeHIhoHNBEltnN5DaqxKyWtO6Y=;
        b=IppSdqG/4fDFw2/cHYNJCeTuxRiz7sX8pkfWbWVcff30jRyoAAiwO4mvGFRC4t3zLx
         P0ym+98zt9LdACSNTun1ViftzyctSxzg0dZUrxapgmXhJ/14c4SL7WyGvR9EthHjxacy
         Kj8J/SpqGUDouUsnZJ8Thr81jEPBoiM9CpRFB6J+CJJwobE4y6LunLzLHXtNr1c4zuAr
         sR4Hjnnlfn3lb8sE4xqhKDbDpdDLIKnugFQzfKgB86ecFqrOfjhRcV4VEaFENc8Yaub9
         VzuqkTWF2u+lj5IYiGR2KugdowWDODtFYlecDCNl4vAfdj8NNB8XY0/BbEaY1QXGs3Dg
         zBqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r37si102479edd.2.2019.03.13.15.06.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 15:06:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,475,1544482800"; 
   d="scan'208";a="373302040"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2019 23:06:53 +0100
Date: Wed, 13 Mar 2019 23:06:53 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumthia Prabakaran <madhumithabiw@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl872bs: Remove local
 variables in functions
In-Reply-To: <20190313214945.GB5065@madhuleo>
Message-ID: <alpine.DEB.2.21.1903132304420.2515@hadrien>
References: <20190313155425.5548-1-madhumithabiw@gmail.com> <alpine.DEB.2.21.1903132045230.2515@hadrien> <20190313214945.GB5065@madhuleo>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 13 Mar 2019, Madhumthia Prabakaran wrote:

> On Wed, Mar 13, 2019 at 08:48:09PM +0100, Julia Lawall wrote:
> >
> >
> > On Wed, 13 Mar 2019, Madhumitha Prabakaran wrote:
> >
> > > Remove declarations of local variables in functions rtw_init_cmd_priv
> > > and rtw_init_evt_priv.
> > > Issue suggested by Coccinelle using ret.cocci.
> > >
> > > Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> > > ---
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 ++--------
> > >  1 file changed, 2 insertions(+), 8 deletions(-)
> > >
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > index 91520ca3bbad..814a4b7677a9 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -297,18 +297,12 @@ struct	cmd_obj	*_rtw_dequeue_cmd(struct __queue *queue)
> > >
> > >  u32 rtw_init_cmd_priv(struct cmd_priv *pcmdpriv)
> > >  {
> > > -	u32 res;
> > > -
> > > -	res = _rtw_init_cmd_priv(pcmdpriv);
> > > -	return res;
> > > +	return _rtw_init_cmd_priv(pcmdpriv);
> > >  }
> > >
> > >  u32 rtw_init_evt_priv(struct	evt_priv *pevtpriv)
> > >  {
> > > -	int	res;
> > > -
> > > -	res = _rtw_init_evt_priv(pevtpriv);
> > > -	return res;
> > > +	return _rtw_init_evt_priv(pevtpriv);
> > >  }
> >
> > I wonder if there is something more drastic that you could do here.  The
> > functions that these functions call (the ones with the _s) are called only
> > once.  They have a different return type (sint) than these functions
> > (u32).  They are declared as extern, but they are only used in the file in
> > which they are defined.  It looks like things could be greatly simplified.
> >
> > julia
> >
> >
> > >
> > >  void rtw_free_evt_priv(struct	evt_priv *pevtpriv)
> > > --
> > > 2.17.1
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190313155425.5548-1-madhumithabiw%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903132045230.2515%40hadrien.
> > For more options, visit https://groups.google.com/d/optout.
>
> Should I submit this as patch series, along with other modified file.

I'm not sure to understand the question.  I expect that the changes I
suggest above would need to be in one patch, because the kernel has to be
able to compiler after each patch is applied.

Please respond to messages right below the text you are responding to, and
not at the end of the message.  There is currently a good chance that your
comments will be missed, because one doesn't pay much attention to what
comes after the bla bla bla information about the group.

julia

