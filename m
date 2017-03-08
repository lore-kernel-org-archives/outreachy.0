X-GM-THRID: 6395186049294794752
X-Received: by 10.129.69.37 with SMTP id s37mr3975195ywa.147.1489008670420;
        Wed, 08 Mar 2017 13:31:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.5.7 with SMTP id 7ls1172610otw.5.gmail; Wed, 08 Mar 2017
 13:31:10 -0800 (PST)
X-Received: by 10.157.47.7 with SMTP id h7mr3108867otb.98.1489008670058;
        Wed, 08 Mar 2017 13:31:10 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id a3si855147pfb.2.2017.03.08.13.31.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 08 Mar 2017 13:31:10 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id j5so4982045pfb.3
        for <outreachy-kernel@googlegroups.com>; Wed, 08 Mar 2017 13:31:10 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=+Vx9nTds1szsfkg6k6ckIMQYHtI8DDog1sjm8k/D/Lc=;
        b=dEFgme/O4fvUztlG6anopfLJ0jDzCJfCLkkTZnqkeq8gSSJptkcBH1zWoSW4Y2T/ps
         JcbH1zj2rC6Dix9/E2g+xx1zafvWvQbJ7OySVaQO8eqlCJye6TdPFcBCOAtc9SJbN4F/
         mJyvlph+kEZSXa1ga5+v7aeuJagt4F8rOErrYeBB3PZpimptw2QZ9lN/fWq5Z4LfiI5n
         72NcEbySclKOQp8VT4Fiia4M9xjk+g9sd4TOtGq5uk4OxkDRNrpJmr66WwkJp0VbNewe
         UGllpfO0RT/T4RZlknwGyWhGg/hHbXb2OOX+TW3NYVgoEx7q9bjBTowUCRqYSDecEW3Q
         ZdAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=+Vx9nTds1szsfkg6k6ckIMQYHtI8DDog1sjm8k/D/Lc=;
        b=B+C6IDROfKxC83eB/XDoyCvAjTyZwaXhPAXv5QhaooXkM83xHXBTpx/+8c806ZZkaa
         7aCZLWdZg6pkL6OinGwpl/UruaiFR3XlM8+T7DMRq+UrR8hxAc+9RNGiFEJ5RvZ4l9yd
         JqjmsDUqslzUvyHQ/REVRthsLX/HG6me1iTBqTZUc5CcDef7sKr6yi8hAk91RrGfBizX
         03Lw87dbD7b+x/Du4pe4D1D94/+yy7+0NfgG3C4ooh8s5nxK3cOwvFIYUZc/78NxsFiw
         p800mFQ8WdwOQoZsI7Tnt44ZqIs6kdrhwsG9vpc86JIbNe4Ly9pJOeesSd+yHXw8Zmt8
         KZaQ==
X-Gm-Message-State: AMke39kKiufs+HhEDXpQoATuxCqUeuDjGZgPEZxusuq2VImoB2TEzLQtKynAZHpmH4/2Lg==
X-Received: by 10.98.192.217 with SMTP id g86mr9669000pfk.170.1489008669741;
        Wed, 08 Mar 2017 13:31:09 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id p129sm7909039pfp.118.2017.03.08.13.31.08
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 08 Mar 2017 13:31:09 -0800 (PST)
Date: Wed, 8 Mar 2017 13:31:08 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: eap_packet:
 Rearrange the code
Message-ID: <20170308213107.GB13352@d830.WORKGROUP>
References: <20170308174753.5540-1-diaconita.tamara@gmail.com>
 <20170308203952.GB3284@d830.WORKGROUP>
 <alpine.DEB.2.20.1703082146480.2238@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703082146480.2238@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Mar 08, 2017 at 09:50:55PM +0100, Julia Lawall wrote:
> 
> 
> On Wed, 8 Mar 2017, Alison Schofield wrote:
> 
> > On Wed, Mar 08, 2017 at 07:47:53PM +0200, Tamara Diaconita wrote:
> > > Split lines to have less than 80 characters.
> > >
> > > Fix the checkpath.pl warning:
> > > WARNING: line over 80 characters.
> > >
> > > Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> > > ---
> > >  drivers/staging/ks7010/eap_packet.h | 9 ++++++---
> >
> > Tamara, This driver is no longer in staging.  I don't see it upstream
> > either.  I guess there's another path out of staging, other than
> > graduation upstream ;)
> 
> Some drivers in staging are on the way out, instead of on the way in.
> 
> Others get replaced by a more mature driver for the device.
> 
> However, I just pulled staging-testing and I still see the file.
> 
> julia
> 

Hi Tamara, 

Got, compiled it, checkpatched it. So, functionally- great!
(sorry for the confusion)

2 things to tweak:

1) In the Subject, "Rearrange the code" is a bit broad for this change.
Let's be more specific and say something like: "format comments to fit in
line"
2) it's checkpatch, not checkpath

thanks,
alisons

> > alisons
> >
> >
> >
> >
> >
> > >  1 file changed, 6 insertions(+), 3 deletions(-)
> > >
> > > diff --git a/drivers/staging/ks7010/eap_packet.h b/drivers/staging/ks7010/eap_packet.h
> > > index df7f760..7a3decf 100644
> > > --- a/drivers/staging/ks7010/eap_packet.h
> > > +++ b/drivers/staging/ks7010/eap_packet.h
> > > @@ -58,12 +58,15 @@ struct ieee802_1x_eapol_key {
> > >  	 * encrypt the Key field; 64-bit NTP timestamp MAY be used here
> > >  	 */
> > >  	unsigned char replay_counter[IEEE8021X_REPLAY_COUNTER_LEN];
> > > -	unsigned char key_iv[IEEE8021X_KEY_IV_LEN];	/* cryptographically random number */
> > > +	unsigned char key_iv[IEEE8021X_KEY_IV_LEN]; /* cryptographically random
> > > +						     * number
> > > +						     */
> > >  	unsigned char key_index;	/*
> > >  					 * key flag in the most significant bit:
> > >  					 * 0 = broadcast (default key),
> > > -					 * 1 = unicast (key mapping key); key index is in the
> > > -					 * 7 least significant bits
> > > +					 * 1 = unicast (key mapping key);
> > > +					 * key index is in the 7 least
> > > +					 * significant bits
> > >  					 */
> > >  	/*
> > >  	 * HMAC-MD5 message integrity check computed with MS-MPPE-Send-Key as
> > > --
> > > 2.9.3
> > >
> > > --
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308174753.5540-1-diaconita.tamara%40gmail.com.
> > > For more options, visit https://groups.google.com/d/optout.
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170308203952.GB3284%40d830.WORKGROUP.
> > For more options, visit https://groups.google.com/d/optout.
> >

