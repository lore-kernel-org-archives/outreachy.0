X-GM-THRID: 195205005312
X-Received: by 10.112.146.65 with SMTP id ta1mr1688844lbb.19.1425000775181;
        Thu, 26 Feb 2015 17:32:55 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.126.35 with SMTP id mv3ls22625wib.7.gmail; Thu, 26 Feb
 2015 17:32:54 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr1678804wjc.7.1425000774803;
        Thu, 26 Feb 2015 17:32:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22c.google.com (mail-we0-x22c.google.com. [2a00:1450:400c:c03::22c])
        by gmr-mx.google.com with ESMTPS id by11si40687wib.1.2015.02.26.17.32.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 17:32:54 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) client-ip=2a00:1450:400c:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesw55 with SMTP id w55so16275128wes.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 17:32:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=xCt2KLkwkiDDyAsWyihtLUqBWaBUO34oGLbmlqXGNJQ=;
        b=fij04VZP4cqF062LWgJR1orpcrCRHZaUSD2lcgr3/Le8OGpM+8DR/041Dw4c9WPZ+s
         pZwgfTrujRDbJuiWczqWFU9pbOf7xzcXCf0IPEs8yHvBD1fV9Ep3W55jVL8KUP3f4jTt
         JUZ/E0bAOvA+Id812HbLdTxeup2rS130RvTIDG4D1VP12406gYJxAzy5+6J4qTWuogMb
         pLXZECPPetLa2sEnjEcwpoFYbo42gqtuI6WjjZrxTgK6/4vyRd+XoxrCMjZgmK+bKyrR
         o5pwlcEfkgAtwi+1ILAp/aNHNrvFGAaA8cVvjzwHGuXY4Kx3Hfyt3pGt0m6hna2YF6lj
         vIzw==
X-Received: by 10.180.106.70 with SMTP id gs6mr1481337wib.39.1425000774708;
        Thu, 26 Feb 2015 17:32:54 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.5])
        by mx.google.com with ESMTPSA id md8sm623292wic.13.2015.02.26.17.32.53
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 17:32:54 -0800 (PST)
Date: Fri, 27 Feb 2015 03:32:51 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150227013251.GA14999@waves>
References: <20150217200055.GA11277@localhost.localdomain>
 <20150226182827.GA1267@kroah.com>
 <20150226203243.GA12622@waves>
 <20150226205930.GB21154@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150226205930.GB21154@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 12:59:30PM -0800, Greg KH wrote:
> On Thu, Feb 26, 2015 at 10:32:44PM +0200, Aya Mahfouz wrote:
> > On Thu, Feb 26, 2015 at 10:28:27AM -0800, Greg KH wrote:
> > > On Tue, Feb 17, 2015 at 10:00:55PM +0200, Aya Mahfouz wrote:
> > > > This patch fixes the following checkpatch.pl warning:
> > > > 
> > > > Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> > > > __aligned(2)
> > > > 
> > > > The changes were applied using the following coccinelle
> > > > rule: 
> > > > @@ expression e1, e2; @@
> > > > - memcpy(e1, e2, ETH_ALEN);
> > > > + ether_addr_copy(e1, e2); 
> > > > 
> > > > All variables defined in vnt_mac_set_key start at even offsets
> > > > making the variables aligned to the u16 datatype.
> > > > 
> > > > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > > > ---
> > > >  drivers/staging/vt6656/mac.c | 2 +-
> > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > 
> > > > diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
> > > > index bb37e33..5958ecf 100644
> > > > --- a/drivers/staging/vt6656/mac.c
> > > > +++ b/drivers/staging/vt6656/mac.c
> > > > @@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
> > > >  	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
> > > >  
> > > >  	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
> > > > -	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
> > > > +	ether_addr_copy(set_key.u.write.addr, addr);
> > > >  
> > > >  	/* swap over swap[0] and swap[1] to get correct write order */
> > > >  	swap(set_key.u.swap[0], set_key.u.swap[1]);
> > > 
> > > This patch breaks the build, please _always_ test build your patches :(
> > > 
> > > thanks,
> > > 
> > > greg k-h
> > 
> > Hello Greg,
> > 
> > I always do and I didn't get any warnings or erros when building it
> > before sending. If you have the time, please let me know what is the
> > error. 
> 
> The compiler does not know what ether_addr_copy() is.
> 
> > It also seems to be that you compile all warnings as errors, it would be
> > kind of you if you let me know your build settings.
> 
> I am building a "normal" x86-64 kernel with this driver enabled.  And
> no, I am not treating warnings as errors, but your patches should never
> be adding build warnings, that is not allowed either.
>

Yes, concerning warnings, you told me that before. It seems to me that
I'm compiling the modules in a wrong way. I usually use one of the
following commands, if compiling a module:

make -C $pwd SUBDIRS=drivers/staging/xxx modules
make M=drivers/staging/xxx

The .o files were generated only after I broke the whole kernel build,
otherwise nothing is generated.

Any remedies?

> thanks,
> 
> greg k-h

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

