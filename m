X-GM-THRID: 195205005312
X-Received: by 10.180.13.98 with SMTP id g2mr3978283wic.3.1424983312366;
        Thu, 26 Feb 2015 12:41:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.200 with SMTP id la8ls88579lac.90.gmail; Thu, 26 Feb
 2015 12:41:51 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr1605850lbw.4.1424983311839;
        Thu, 26 Feb 2015 12:41:51 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-wg0-x22c.google.com (mail-wg0-x22c.google.com. [2a00:1450:400c:c00::22c])
        by gmr-mx.google.com with ESMTPS id o3si1430230wib.2.2015.02.26.12.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:41:51 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) client-ip=2a00:1450:400c:c00::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c00::22c as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x22c.google.com with SMTP id y19so14590644wgg.13
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 12:41:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=oCaG/x9OQpAtw3CMpfTRdeQVjN73HnU2BXnvWanNMMY=;
        b=OiXGKthxuw1xZSXKNWXy/0dH9bo/QLEw9pFPxSPYJVzjRzUkM3nekEACD5mFX5G9nY
         Mciyd2MJKCmv7f3IG9AnValw2ELF1+MS6e1Gr9vj+E0HyGwiP3K5Zw6s0nng9RX/5/W9
         wW+bcqXPN3jz0NJbqF5YgQmgoxB5kmFtwWMt0ScI4ihfo8b/gMDxQYz3WnXYprLSTB5t
         2nKN1dLnu8GkBY2sWowYGW0zw3l1ryzCiXzviRNPsp+n5/1EK47o0xczcRBhhV47mvUI
         TKV8kkANbV3QG8C7bK/NCNs2L2RoTH3OMffuVlOJpVPexyL2k3kUTifrdufnjib6wiV6
         qifw==
X-Received: by 10.194.83.66 with SMTP id o2mr20830296wjy.55.1424983311721;
        Thu, 26 Feb 2015 12:41:51 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.5])
        by mx.google.com with ESMTPSA id g10sm31440159wic.7.2015.02.26.12.41.50
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:41:51 -0800 (PST)
Date: Thu, 26 Feb 2015 22:41:41 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150226204141.GA22851@waves>
References: <20150217200055.GA11277@localhost.localdomain>
 <20150226182827.GA1267@kroah.com>
 <20150226203243.GA12622@waves>
 <alpine.DEB.2.10.1502262134490.3032@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1502262134490.3032@hadrien>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 09:35:08PM +0100, Julia Lawall wrote:
> On Thu, 26 Feb 2015, Aya Mahfouz wrote:
> 
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
> >
> > It also seems to be that you compile all warnings as errors, it would be
> > kind of you if you let me know your build settings.
> 
> Are you sure that you have a .o file for this file?
> 
> julia

I'm rebuilding the kernel now. I will let you know once I'm done.

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

