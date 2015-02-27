X-GM-THRID: 195205005312
X-Received: by 10.182.248.227 with SMTP id yp3mr11643919obc.22.1425002113582;
        Thu, 26 Feb 2015 17:55:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.43.226 with SMTP id z2ls48472igl.39.canary; Thu, 26 Feb
 2015 17:55:13 -0800 (PST)
X-Received: by 10.42.209.12 with SMTP id ge12mr11539627icb.16.1425002113381;
        Thu, 26 Feb 2015 17:55:13 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id bx1si305062pdb.2.2015.02.26.17.55.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 17:55:13 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (c-24-22-230-10.hsd1.wa.comcast.net [24.22.230.10])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D4822AB5;
	Fri, 27 Feb 2015 01:55:12 +0000 (UTC)
Date: Thu, 26 Feb 2015 17:55:12 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150227015512.GA29726@kroah.com>
References: <20150217200055.GA11277@localhost.localdomain>
 <20150226182827.GA1267@kroah.com>
 <20150226203243.GA12622@waves>
 <20150226205930.GB21154@kroah.com>
 <20150227013251.GA14999@waves>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150227013251.GA14999@waves>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 03:32:51AM +0200, Aya Mahfouz wrote:
> On Thu, Feb 26, 2015 at 12:59:30PM -0800, Greg KH wrote:
> > On Thu, Feb 26, 2015 at 10:32:44PM +0200, Aya Mahfouz wrote:
> > > On Thu, Feb 26, 2015 at 10:28:27AM -0800, Greg KH wrote:
> > > > On Tue, Feb 17, 2015 at 10:00:55PM +0200, Aya Mahfouz wrote:
> > > > > This patch fixes the following checkpatch.pl warning:
> > > > > 
> > > > > Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> > > > > __aligned(2)
> > > > > 
> > > > > The changes were applied using the following coccinelle
> > > > > rule: 
> > > > > @@ expression e1, e2; @@
> > > > > - memcpy(e1, e2, ETH_ALEN);
> > > > > + ether_addr_copy(e1, e2); 
> > > > > 
> > > > > All variables defined in vnt_mac_set_key start at even offsets
> > > > > making the variables aligned to the u16 datatype.
> > > > > 
> > > > > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > > > > ---
> > > > >  drivers/staging/vt6656/mac.c | 2 +-
> > > > >  1 file changed, 1 insertion(+), 1 deletion(-)
> > > > > 
> > > > > diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
> > > > > index bb37e33..5958ecf 100644
> > > > > --- a/drivers/staging/vt6656/mac.c
> > > > > +++ b/drivers/staging/vt6656/mac.c
> > > > > @@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
> > > > >  	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
> > > > >  
> > > > >  	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
> > > > > -	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
> > > > > +	ether_addr_copy(set_key.u.write.addr, addr);
> > > > >  
> > > > >  	/* swap over swap[0] and swap[1] to get correct write order */
> > > > >  	swap(set_key.u.swap[0], set_key.u.swap[1]);
> > > > 
> > > > This patch breaks the build, please _always_ test build your patches :(
> > > > 
> > > > thanks,
> > > > 
> > > > greg k-h
> > > 
> > > Hello Greg,
> > > 
> > > I always do and I didn't get any warnings or erros when building it
> > > before sending. If you have the time, please let me know what is the
> > > error. 
> > 
> > The compiler does not know what ether_addr_copy() is.
> > 
> > > It also seems to be that you compile all warnings as errors, it would be
> > > kind of you if you let me know your build settings.
> > 
> > I am building a "normal" x86-64 kernel with this driver enabled.  And
> > no, I am not treating warnings as errors, but your patches should never
> > be adding build warnings, that is not allowed either.
> >
> 
> Yes, concerning warnings, you told me that before. It seems to me that
> I'm compiling the modules in a wrong way. I usually use one of the
> following commands, if compiling a module:
> 
> make -C $pwd SUBDIRS=drivers/staging/xxx modules
> make M=drivers/staging/xxx

Both of those should work.

> The .o files were generated only after I broke the whole kernel build,
> otherwise nothing is generated.
> 
> Any remedies?

I don't understand, what exactly was the errors?

It's usually just easiest to build the whole tree, you can do it quicker
by doing:
	make -j16

replace the number with 2x the number of cpus you have, and you should
be fine.

good luck,

greg k-h

