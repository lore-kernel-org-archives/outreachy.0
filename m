X-GM-THRID: 195205005312
X-Received: by 10.112.146.65 with SMTP id ta1mr1579251lbb.19.1424982774252;
        Thu, 26 Feb 2015 12:32:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.68 with SMTP id y4ls1287927wix.19.canary; Thu, 26 Feb
 2015 12:32:53 -0800 (PST)
X-Received: by 10.180.87.166 with SMTP id az6mr67794wib.1.1424982773835;
        Thu, 26 Feb 2015 12:32:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x233.google.com (mail-we0-x233.google.com. [2a00:1450:400c:c03::233])
        by gmr-mx.google.com with ESMTPS id o3si1428851wib.2.2015.02.26.12.32.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 26 Feb 2015 12:32:53 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) client-ip=2a00:1450:400c:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::233 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x233.google.com with SMTP id w55so14539597wes.5
        for <outreachy-kernel@googlegroups.com>; Thu, 26 Feb 2015 12:32:53 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=TAIs/2DMvIBdtpXRZNFNNUzWRSPLsghbkiy+TpGPs4g=;
        b=BwSEdByCH9Gspgf+QnbndQQOMVE4mG4uljF668farIE7WRm7HeSvUQvgPJ7RewCIMM
         zgNrW/JOfeUKYJQhOd8CNwcedXExvM+VJTmBSo7FaTXvDwmgwXvQJ3zQWeqrIsYkJ6An
         htgFQRt1jTXSJhv+mHPc7N0Vuzy3hc46D+AQkPlzF2m014TRE2aYF2N9P3MWg4KIFmsk
         IudeNLwIpEUOJQg77goFOBwAWTer3ARlY9uk6pNHoo908+I03+5Hx8SJeGQzhdT01ZQp
         iYRth52mEDqR/lWU15bimWoqBAu9szmbX0XyxgjnaFCR6HGfqzL2txuFI79eboKniXev
         Oatw==
X-Received: by 10.180.78.202 with SMTP id d10mr53654867wix.25.1424982773741;
        Thu, 26 Feb 2015 12:32:53 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([41.130.214.5])
        by mx.google.com with ESMTPSA id jy7sm21558939wid.22.2015.02.26.12.32.51
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 12:32:52 -0800 (PST)
Date: Thu, 26 Feb 2015 22:32:44 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150226203243.GA12622@waves>
References: <20150217200055.GA11277@localhost.localdomain>
 <20150226182827.GA1267@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150226182827.GA1267@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Feb 26, 2015 at 10:28:27AM -0800, Greg KH wrote:
> On Tue, Feb 17, 2015 at 10:00:55PM +0200, Aya Mahfouz wrote:
> > This patch fixes the following checkpatch.pl warning:
> > 
> > Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> > __aligned(2)
> > 
> > The changes were applied using the following coccinelle
> > rule: 
> > @@ expression e1, e2; @@
> > - memcpy(e1, e2, ETH_ALEN);
> > + ether_addr_copy(e1, e2); 
> > 
> > All variables defined in vnt_mac_set_key start at even offsets
> > making the variables aligned to the u16 datatype.
> > 
> > Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> > ---
> >  drivers/staging/vt6656/mac.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> > 
> > diff --git a/drivers/staging/vt6656/mac.c b/drivers/staging/vt6656/mac.c
> > index bb37e33..5958ecf 100644
> > --- a/drivers/staging/vt6656/mac.c
> > +++ b/drivers/staging/vt6656/mac.c
> > @@ -126,7 +126,7 @@ void vnt_mac_set_keyentry(struct vnt_private *priv, u16 key_ctl, u32 entry_idx,
> >  	offset += (entry_idx * MISCFIFO_KEYENTRYSIZE);
> >  
> >  	set_key.u.write.key_ctl = cpu_to_le16(key_ctl);
> > -	memcpy(set_key.u.write.addr, addr, ETH_ALEN);
> > +	ether_addr_copy(set_key.u.write.addr, addr);
> >  
> >  	/* swap over swap[0] and swap[1] to get correct write order */
> >  	swap(set_key.u.swap[0], set_key.u.swap[1]);
> 
> This patch breaks the build, please _always_ test build your patches :(
> 
> thanks,
> 
> greg k-h

Hello Greg,

I always do and I didn't get any warnings or erros when building it
before sending. If you have the time, please let me know what is the
error. 

It also seems to be that you compile all warnings as errors, it would be
kind of you if you let me know your build settings.

 
-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

