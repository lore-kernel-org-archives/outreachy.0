X-GM-THRID: 195205005312
X-Received: by 10.112.50.106 with SMTP id b10mr1678144lbo.8.1425002386882;
        Thu, 26 Feb 2015 17:59:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.240.202 with SMTP id wc10ls24725wic.10.canary; Thu, 26 Feb
 2015 17:59:46 -0800 (PST)
X-Received: by 10.194.201.10 with SMTP id jw10mr1691585wjc.3.1425002386522;
        Thu, 26 Feb 2015 17:59:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x22b.google.com (mail-we0-x22b.google.com. [2a00:1450:400c:c03::22b])
        by gmr-mx.google.com with ESMTPS id ev8si17701wib.3.2015.02.26.17.59.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 17:59:46 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) client-ip=2a00:1450:400c:c03::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::22b as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by wesu56 with SMTP id u56so16388496wes.10
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 17:59:46 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=nti0aBo9kl25/5rrbSKW8IxRV6U/UeftNIwQkFYnk+Q=;
        b=NLXpDgGfruKMNUNBM6EAseAL/DX7GnrzHTQ+Ny0T98zKhVyPMsrwdH0o4cdlMU0b7J
         VZ8oheIi8KrHu+EAgg9R1eAohRQ7BDQJjMBtSe/hhPtrOrAsbdan8mSiHoUQtuidBWUP
         yKilto3jzG4zsdQvgl4s9zgYh5qWyuqjH3N04RDENZEiS1j7JBrXibqXoILiOc4+RjLH
         BW1Bd+X/XVg+096EkRVRMF9/Ef3a6o0pyS1EMD8OpkOhHdM5Dm0Vy7UOhSvF2LOwAyF2
         /CfzlCh++At1Hx4UnB66+q+rckBsW4QctVIwAe99+WQbYhONjKUvIXzqcCVkWySN01Bm
         hObQ==
X-Received: by 10.180.80.230 with SMTP id u6mr1578198wix.69.1425002386435;
        Thu, 26 Feb 2015 17:59:46 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.5])
        by mx.google.com with ESMTPSA id lb6sm2926649wjb.22.2015.02.26.17.59.45
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 17:59:45 -0800 (PST)
Date: Fri, 27 Feb 2015 03:59:43 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150227015943.GA15393@waves>
References: <20150217200055.GA11277@localhost.localdomain>
 <20150226182827.GA1267@kroah.com>
 <20150226203243.GA12622@waves>
 <20150226205930.GB21154@kroah.com>
 <20150227013251.GA14999@waves>
 <20150227015512.GA29726@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227015512.GA29726@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 05:55:12PM -0800, Greg KH wrote:
> On Fri, Feb 27, 2015 at 03:32:51AM +0200, Aya Mahfouz wrote:
> > On Thu, Feb 26, 2015 at 12:59:30PM -0800, Greg KH wrote:
> > > On Thu, Feb 26, 2015 at 10:32:44PM +0200, Aya Mahfouz wrote:
> > > > On Thu, Feb 26, 2015 at 10:28:27AM -0800, Greg KH wrote:
> > > > > On Tue, Feb 17, 2015 at 10:00:55PM +0200, Aya Mahfouz wrote:
> > > > > > This patch fixes the following checkpatch.pl warning:
> > > > > > 
> > > > > > Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> > > > > > __aligned(2)
> > > > > > 
> > > > > > The changes were applied using the following coccinelle
> > > > > > rule: 
> > > > > > @@ expression e1, e2; @@
> > > > > > - memcpy(e1, e2, ETH_ALEN);
> > > > > > + ether_addr_copy(e1, e2); 
> > > > > > 
> > > > > > All variables defined in vnt_mac_set_key start at even offsets
> > > > > > making the variables aligned to the u16 datatype.
> > > > > > 
> > > > > > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > > > > > ---
> > > > > >  drivers/staging/vt6656/mac.c | 2 +-
> > > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > > 
> > > > > > diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
> > > > > > index bb37e33..5958ecf 100644
> > > > > > --- a/drivers/staging/vt6656/mac.c
> > > > > > +++ b/drivers/staging/vt6656/mac.c
> > > > > > @@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
> > > > > >  	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
> > > > > >  
> > > > > >  	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
> > > > > > -	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
> > > > > > +	ether_addr_copy(set_key.u.write.addr, addr);
> > > > > >  
> > > > > >  	/* swap over swap[0] and swap[1] to get correct write order */
> > > > > >  	swap(set_key.u.swap[0], set_key.u.swap[1]);
> > > > > 
> > > > > This patch breaks the build, please _always_ test build your patches :(
> > > > > 
> > > > > thanks,
> > > > > 
> > > > > greg k-h
> > > > 
> > > > Hello Greg,
> > > > 
> > > > I always do and I didn't get any warnings or erros when building it
> > > > before sending. If you have the time, please let me know what is the
> > > > error. 
> > > 
> > > The compiler does not know what ether_addr_copy() is.
> > > 
> > > > It also seems to be that you compile all warnings as errors, it would be
> > > > kind of you if you let me know your build settings.
> > > 
> > > I am building a "normal" x86-64 kernel with this driver enabled.  And
> > > no, I am not treating warnings as errors, but your patches should never
> > > be adding build warnings, that is not allowed either.
> > >
> > 
> > Yes, concerning warnings, you told me that before. It seems to me that
> > I'm compiling the modules in a wrong way. I usually use one of the
> > following commands, if compiling a module:
> > 
> > make -C $pwd SUBDIRS=drivers/staging/xxx modules
> > make M=drivers/staging/xxx
> 
> Both of those should work.
> 
> > The .o files were generated only after I broke the whole kernel build,
> > otherwise nothing is generated.
> > 
> > Any remedies?
> 
> I don't understand, what exactly was the errors?
> 
> It's usually just easiest to build the whole tree, you can do it quicker
> by doing:
> 	make -j16
> 
> replace the number with 2x the number of cpus you have, and you should
> be fine.
> 
> good luck,
> 
> greg k-h

ok, Thanks!
-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

