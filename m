X-GM-THRID: 6388887439725821952
X-Received: by 10.25.24.106 with SMTP id o103mr1679877lfi.1.1487530688987;
        Sun, 19 Feb 2017 10:58:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.88.70 with SMTP id x6ls455373ljd.21.gmail; Sun, 19 Feb 2017
 10:58:08 -0800 (PST)
X-Received: by 10.25.213.11 with SMTP id m11mr1890949lfg.19.1487530688187;
        Sun, 19 Feb 2017 10:58:08 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si506203wme.2.2017.02.19.10.58.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 10:58:08 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="213983843"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 19:58:02 +0100
Date: Sun, 19 Feb 2017 19:58:02 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Joe Perches <joe@perches.com>
cc: Arushi Singhal <arushisinghal19971997@gmail.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: ks7010: Unnecessary
 parentheses are removed.
In-Reply-To: <1487529117.2198.36.camel@perches.com>
Message-ID: <alpine.DEB.2.20.1702191955530.2363@hadrien>
References: <20170219182607.GA17005@arushi-HP-Pavilion-Notebook> <1487529117.2198.36.camel@perches.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, Joe Perches wrote:

> On Sun, 2017-02-19 at 23:56 +0530, Arushi Singhal wrote:
> > Unnecessary parentheses should be avoided as reported by checkpatch.pl.
> > Remove unnecessary parentheses, as reported by checkpatch as are nicer
> > to read.For example:-
> > It's often nicer to read if &(foo[0]) is converted to foo like:
> >      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
> >      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
> []
> > diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> []
> > @@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
> >  	memset(ap, 0, sizeof(struct local_ap_t));
> >
> >  	/* bssid */
> > -	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
> > +	memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN);
>
> This code doesn't match the suggested style of
> your commit message.

Is what is suggested in the commit message correct?  That is, is the 0th
element of an array always at the same address as a pointer to the array
itself?  Probably just paramoid...

julia

>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1487529117.2198.36.camel%40perches.com.
> For more options, visit https://groups.google.com/d/optout.
>

