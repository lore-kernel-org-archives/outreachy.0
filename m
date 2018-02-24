X-GM-THRID: 6526024412200697856
X-Received: by 10.25.212.68 with SMTP id l65mr291032lfg.35.1519465138215;
        Sat, 24 Feb 2018 01:38:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.127.30 with SMTP id a30ls537784ljd.10.gmail; Sat, 24 Feb
 2018 01:38:56 -0800 (PST)
X-Google-Smtp-Source: AH8x224NsdKZwXTx9N1OVLhmAG2Vyf7hwnnKUV8YqVElnPq02FIFJhrL3y9TMig+CyFRfxbgOzp/
X-Received: by 10.46.65.29 with SMTP id o29mr265622lja.3.1519465136759;
        Sat, 24 Feb 2018 01:38:56 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519465136; cv=none;
        d=google.com; s=arc-20160816;
        b=xcIZMv6Ec3ZOL1VF+B8tZbmkMF3SVVImCuXqs2Z9S7us5s4zgy2+kyQ6YtP+XFVSfK
         MKzqaiN4vsawMYlJAlGIZlS29yQd1JS8WwY9ARaaUkrh87sWIm462E4XjY6xyaEi+qfi
         9UDD5O/ABoz/t60z9gSujXsK5b0bH1rF+PW5Y2qNJ8nzSz+IokZJzTwdeAQlO97627pg
         FVQctX8Hi0poukNNg8PRDgds2D/ObHYMi2s82ogJq+cQJg2xGk6Rl0LBiiIK6Rf2e+cO
         GNLkDTFlMXY2j0ick0DEEs2atLpGmu1G6sFtqGLRjiddVFSubHZCF+75Y47Ekfg1BUYy
         HtLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=lLHZpFigOok92zo/8NtV9HY5OThIfR0eZwS614WBKUQ=;
        b=gxrc0OVWOkyoShlpATuwDjDoFW4ELmSlTN2zFBQjEWzASiiDJtkHc9VDyMW/l6Eq0L
         JonPvtaDmIFWsuQ5FujxIDPPztpqE63AKa3EgLdXLOmxyPuWk7mbCaSNkBUd50VL2KPt
         3m/dNU2CLEtqB9LJlyY9vVhaIcnZv4TRD6QupgShohqyUiCryZhv5hm7dQXx0YSOyUAZ
         UD8JIfONt3BLgH4khRMD0M1N8dF8SHNAAvGlbPX5mL+PbrF3LiirFOJMpC/+J36Uzira
         LeXvNO6oTlZyp5NKJ/6DzRcP5uO+TFjydr8/yrczWU3Dx9b4hurvo6czlcj/eGD4bExd
         B5jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y2si152534ljd.2.2018.02.24.01.38.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 01:38:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,386,1515452400"; 
   d="scan'208";a="255970481"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2018 10:38:55 +0100
Date: Sat, 24 Feb 2018 10:38:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: merge 'if' statements
 that test the same condition
In-Reply-To: <20180224090203.GA29453@gmail.com>
Message-ID: <alpine.DEB.2.20.1802241037120.16912@hadrien>
References: <20180224074733.GA6487@gmail.com> <alpine.DEB.2.20.1802240859300.16912@hadrien> <20180224090203.GA29453@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:

> On Sat, Feb 24, 2018 at 09:03:20AM +0100, Julia Lawall wrote:
> >
> >
> > On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:
> >
> > > Merge the instructions of two 'if' statements that test the same
> > > condition and move a 'memcpy' instruction related to a different variable.
> > > Issue found with coccicheck.
> > >
> > > Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> > > ---
> > >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
> > >  1 file changed, 3 insertions(+), 5 deletions(-)
> > >
> > > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > index 621810d..f6f2c7f8 100644
> > > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > > @@ -962,15 +962,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
> > >
> > >  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
> > >
> > > +				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> > >  				kfree(priv->wilc_ptk[key_index]->seq);
> >
> > How about moving the memcpy up a line to be next to the kmalloc, and to be
> > separated by a blank line from the kfree, which is on a different
> > location.
> >
> > These kmallocs should also have null tests to check for failure.  That
> > could be the first patch in the series with this patch being the second
> > one.  The missing null checks represent a small bug, and a bug should not
> > depend on a cleanup.
> >
> > julia
> >
> Hi, the file has about 17 calls to kmalloc that are not tested for null.
> Wouldn't it be better to fix all of them in a different patch?

Sure.  It's just that your choices are either to wait for Greg to take one
patch before taking the next, or put them in a series.

But maybe it would be just as well to get this one out of the way.  The
degree of difficulty is quite different, because to add error handlig
code, you have to figure out how to handle the error.  So that needs to be
done slowly and carefully.

julia

>
> Dafna
>
> > >
> > > -				if (params->seq_len > 0)
> > > +				if (params->seq_len > 0) {
> > >  					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> > > -
> > > -				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> > > -
> > > -				if (params->seq_len > 0)
> > >  					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
> > > +				}
> > >
> > >  				priv->wilc_ptk[key_index]->cipher = params->cipher;
> > >  				priv->wilc_ptk[key_index]->key_len = params->key_len;
> > > --
> > > 2.7.4
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180224074733.GA6487%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> > >
>

