X-GM-THRID: 6395900241087823872
X-Received: by 10.25.190.65 with SMTP id o62mr3054525lff.16.1489178224191;
        Fri, 10 Mar 2017 12:37:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.6 with SMTP id s6ls434246ljd.43.gmail; Fri, 10 Mar 2017
 12:37:03 -0800 (PST)
X-Received: by 10.25.56.6 with SMTP id f6mr3127148lfa.4.1489178223105;
        Fri, 10 Mar 2017 12:37:03 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from mail-wm0-x244.google.com (mail-wm0-x244.google.com. [2a00:1450:400c:c09::244])
        by gmr-mx.google.com with ESMTPS id e72si51697wma.0.2017.03.10.12.37.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 12:37:03 -0800 (PST)
Received-SPF: pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) client-ip=2a00:1450:400c:c09::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of narcisaanamaria12@gmail.com designates 2a00:1450:400c:c09::244 as permitted sender) smtp.mailfrom=narcisaanamaria12@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-wm0-x244.google.com with SMTP id n11so809474wma.0
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 12:37:03 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=5g1ep66ApcgPEv/mv7WTBGAeRH+7rWpjDuuRTaBKjc4=;
        b=o1Oq6v8oN3nz1GHNDFfFPSu5xtY/OTnA/yfHNhAFR0yly2yVAFGEffAyrHqt2EUPPP
         iyzI4rwy41oiblappRAbSjXx8Kc9xef0cO+tojfioSQdmyLasOWmkm3K54yVZX77vl+n
         /B+HMKP5AfUann2Bl7iNI8eJncA3i11EB8ZDo0w098sWjh8lGiYk4i4ABNl4zgJAx78b
         MvilP9c77z0AcCWKJMcNp3yCSo2OAarxtmT/TcOQ8KWtmI5uPasSoaTNLxQmpJksBgq+
         d4AfAK8yuXVhtq4huo3gAJaDIT2ecNmaCrK065dQt2vvPuD8Ac0FcwGkUdhm8VmbKC1Y
         BDbQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=5g1ep66ApcgPEv/mv7WTBGAeRH+7rWpjDuuRTaBKjc4=;
        b=rSQHjjgxRZ/8rruFbU6joSvImlKOUhLGa5/PNsWH/u8/xwPetpltt21Cr3GBuUyj4x
         ZqIJ/N21rw9bt/HDrwra9JUVpi5TUmpLtcKA1Pp87zzarTvqB0xXXom9MB1Hsd4R01Ku
         N5RwAu1PKbBd0MOZggcF8G5OmVgIulYC3c7AY6J+cND4W5XTeT1vwo/yLKDI850fzUjP
         NN+t/QYwswZ5yF8h48E+a6Z1/cCvYNg4aT1580JItN5m895Tbb1i8+0WlBguOL+mFwJa
         iHow8515pIG9FE0oWVEh3FHQUx1HEAHwVNYDsDQ826cyHpJtvp8BPrTH7QajxR2Qp6W1
         I/+Q==
X-Gm-Message-State: AFeK/H35jOIlI1IURddJ+yK/nfmvvuwn7wRtk3XTZ2F/mf6WwP7A9Nl3buczKNjpar61Hg==
X-Received: by 10.28.173.193 with SMTP id w184mr712463wme.106.1489178222844;
        Fri, 10 Mar 2017 12:37:02 -0800 (PST)
Return-Path: <narcisaanamaria12@gmail.com>
Received: from nati-X550JK (p22.eregie.pub.ro. [141.85.0.122])
        by smtp.gmail.com with ESMTPSA id o63sm666207wmo.30.2017.03.10.12.37.01
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 12:37:02 -0800 (PST)
Date: Fri, 10 Mar 2017 22:37:00 +0200
From: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8712: Refactor
 conditional in r871x_get_ap_info
Message-ID: <20170310203659.GA4118@nati-X550JK>
References: <cover.1489161001.git.narcisaanamaria12@gmail.com>
 <51a2ef5e1c0eedf9700b43a83914983a6584ed24.1489161001.git.narcisaanamaria12@gmail.com>
 <alpine.DEB.2.20.1703101908200.3356@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.20.1703101908200.3356@hadrien>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Mar 10, 2017 at 07:08:59PM +0100, Julia Lawall wrote:
> 
> 
> On Fri, 10 Mar 2017, Narcisa Ana Maria Vasile wrote:
> 
> > Reduce indentation level in r871x_get_ap_info.
> > This was done using the following Coccinelle script:
> 
> Actually, this script doesn't do anything to the code.  It just detects an
> opportunity.  Otherwise,
> 
> Acked-by: Julia Lawall <julia.lawall@lip6.fr>
> 
 Yes, what I meant is that the script helped me find this opportunity to
 improve a piece of code. I'll resend another version of this patchset
 based on the observations you made. Should I still include the
 Coccinelle script, but mention I used it to detect, not to change the
 code?

 Thanks,
 Narcisa
> >
> > @disable neg_if@
> > expression e,E;
> > statement S;
> > @@
> >
> > *if (e)
> > S
> > else { return -E; }
> >
> > @disable neg_if@
> > expression e,E;
> > statement S;
> > identifier l;
> > @@
> >
> > *if (e)
> > S
> > else { rc = -E; goto l; }
> >
> > Signed-off-by: Narcisa Ana Maria Vasile <narcisaanamaria12@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 12 ++++++------
> >  1 file changed, 6 insertions(+), 6 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > index 7ba8cf6..0b73f67 100644
> > --- a/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > +++ b/drivers/staging/rtl8712/rtl871x_ioctl_linux.c
> > @@ -1971,13 +1971,13 @@ static int r871x_get_ap_info(struct net_device *dev,
> >  			break;
> >  	}
> >  	pdata->flags = 0;
> > -	if (pdata->length >= 32) {
> > -		if (copy_from_user(data, pdata->pointer, 32))
> > -			return -EINVAL;
> > -		data[32] = 0;
> > -	} else {
> > +	if (pdata->length < 32)
> >  		return -EINVAL;
> > -	}
> > +
> > +	if (copy_from_user(data, pdata->pointer, 32))
> > +		return -EINVAL;
> > +	data[32] = 0;
> > +
> >  	spin_lock_irqsave(&(pmlmepriv->scanned_queue.lock), irqL);
> >  	phead = &queue->queue;
> >  	plist = phead->next;
> > --
> > 1.9.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/51a2ef5e1c0eedf9700b43a83914983a6584ed24.1489161001.git.narcisaanamaria12%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >

