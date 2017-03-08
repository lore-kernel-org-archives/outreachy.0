X-GM-THRID: 6395186049294794752
X-Received: by 10.46.76.17 with SMTP id z17mr1547767lja.13.1489006257362;
        Wed, 08 Mar 2017 12:50:57 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.14.1 with SMTP id 1ls528511ljo.45.gmail; Wed, 08 Mar 2017
 12:50:56 -0800 (PST)
X-Received: by 10.25.18.219 with SMTP id 88mr1321220lfs.29.1489006256332;
        Wed, 08 Mar 2017 12:50:56 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si739467wmg.3.2017.03.08.12.50.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 12:50:56 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,265,1486422000"; 
   d="scan'208";a="263750609"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2017 21:50:55 +0100
Date: Wed, 8 Mar 2017 21:50:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Tamara Diaconita <diaconitatamara@gmail.com>, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: eap_packet: Rearrange
 the code
In-Reply-To: <20170308203952.GB3284@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.20.1703082146480.2238@hadrien>
References: <20170308174753.5540-1-diaconita.tamara@gmail.com> <20170308203952.GB3284@d830.WORKGROUP>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 8 Mar 2017, Alison Schofield wrote:

> On Wed, Mar 08, 2017 at 07:47:53PM +0200, Tamara Diaconita wrote:
> > Split lines to have less than 80 characters.
> >
> > Fix the checkpath.pl warning:
> > WARNING: line over 80 characters.
> >
> > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > ---
> >  drivers/staging/ks7010/eap_packet.h | 9 ++++++---
>
> Tamara, This driver is no longer in staging.  I don't see it upstream
> either.  I guess there's another path out of staging, other than
> graduation upstream ;)

Some drivers in staging are on the way out, instead of on the way in.

Others get replaced by a more mature driver for the device.

However, I just pulled staging-testing and I still see the file.

julia

> alisons
>
>
>
>
>
> >  1 file changed, 6 insertions(+), 3 deletions(-)
> >
> > diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> > index df7f760..7a3decf 100644
> > --- a/drivers/staging/ks7010/eap_packet.h
> > +++ b/drivers/staging/ks7010/eap_packet.h
> > @@ -58,12 +58,15 @@ struct ieee802_1x_eapol_key {
> >  	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> >  	 */
> >  	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
> > -	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
> > +	unsigned char key_iv[IEEE8021X_KEY_IV_LEN]; /* cryptographically random
> > +						     * number
> > +						     */
> >  	unsigned char key_index;	/*
> >  					 * key flag in the most significant bit:
> >  					 * 0 = broadcast (default key),
> > -					 * 1 = unicast (key mapping key); key index is in the
> > -					 * 7 least significant bits
> > +					 * 1 = unicast (key mapping key);
> > +					 * key index is in the 7 least
> > +					 * significant bits
> >  					 */
> >  	/*
> >  	 * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
> > --
> > 2.9.3
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308174753.5540-1-diaconita.tamara%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308203952.GB3284%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

