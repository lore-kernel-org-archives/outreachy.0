X-GM-THRID: 6803231056018276352
X-Received: by 2002:a25:360c:: with SMTP id d12mr3944424yba.271.1584015294347;
        Thu, 12 Mar 2020 05:14:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ab94:: with SMTP id v20ls1418451ybi.0.gmail; Thu, 12 Mar
 2020 05:14:52 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvehkKA5t+VgGRmQG/rK+oxFRtn4uB9Boc1QDwiesafqiGtui17pHQnd3R18MH6iYAvCJVw
X-Received: by 2002:a25:bbcd:: with SMTP id c13mr5216289ybk.9.1584015292803;
        Thu, 12 Mar 2020 05:14:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584015292; cv=none;
        d=google.com; s=arc-20160816;
        b=zgL8LFgfNwhr+U8FxczwdCwBbhSYLF9WjHgsJbZNDRUHnj0WR8jaUQSFFFdzgTiYop
         p89KSrGDrY5uK+tKm9BtqLpkUPKXQEZi6xRq0aplCvL+dJQg6FFGBJSAsMXiQ+Z2drc8
         TXOUNl1iIcigUYfH5eCpLm/bvMBtmCI7hERZGE4S3SAWDQQtdhfkFl03WNnLoUEGWLxk
         vey/NgmPgdLRthlTjYu6P/enoCc2gAv0T2CBXiJaPWq05DuZDTSTM3G2fgVvBCs39/1f
         PQi9eQmj1G41HDC6sVbKfbj5+YqL+SrKZNbGjxas4oljRyvzUYVuiTtXFY4+lh6mn5GQ
         rlnA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=GXcLJG5GLSPJvWmaIlVBHsVEiPaZm7aICItM2n8E/tg=;
        b=04xdi343QIId5/NLua2a7pY2fHmKz+vT3Dk/9wk7SsdzIxB4ib5R1wqSWnwRLNccB+
         GyJZJrTn4YGXYlKtJnz9MS5RtRqG5RmNOSrTQJB7zPxAe14bnzL9HtOcGdJtBrvfWagy
         Xk6pNxM6usqy9fmm5gCJlWqYlMr7k2xpbEGS4oXWo7wbdyo664emUNmqQ3Mvt4TK7KlI
         xNunc18DlS/YABXLBy4nEWpLiHxeOs1toiqB817Lezg50E1XmGFIlqgX/0FTds9M/mnW
         QkJlhglmFQsA7Cl2dj7KDowx4TPGkv6YNhnV+UuY+mQriID2cake82MUGfCvk/7H/qFS
         5Fnw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l9n6kMZG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id e131si255227ybh.3.2020.03.12.05.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 05:14:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=l9n6kMZG;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6A0A1206E9;
	Thu, 12 Mar 2020 12:14:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584015291;
	bh=2I/qJimIPZfRSaJOuKJgnuQPukUbw9mmC73XDdI3Uqc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=l9n6kMZG3PXBKWWiketmKOsfyfFbFkbQ+rqaQlBrSoehwyGoxohC2x0QMDY/CGeYN
	 Nlt8ZhrkyMnq12Wjcmetf/06L2qHCAo7e2olJ9vhPzWMD3vGvOD8tLmmDqycXbblI7
	 SzAwTVCMzDXQqlMNnnq1zCka+Ky6D7rr1KLwqHdc=
Date: Thu, 12 Mar 2020 13:14:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: rtl8712: Fix for long lines in Kconfig help
Message-ID: <20200312121449.GA260420@kroah.com>
References: <20200312081044.GA3742@tulip.local>
 <20200312115409.GA224615@kroah.com>
 <20200312120817.GB5010@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200312120817.GB5010@tulip.local>

On Thu, Mar 12, 2020 at 05:38:18PM +0530, R Veera Kumar wrote:
> On Thu, Mar 12, 2020 at 12:54:09PM +0100, Greg Kroah-Hartman wrote:
> > On Thu, Mar 12, 2020 at 01:40:55PM +0530, R Veera Kumar wrote:
> > > Fixes two long line in Kconfig help.
> > > Found using checkpatch.pl
> > > 
> > > Signed-off-by: R Veera Kumar <vkor@vkten.in>
> > > ---
> > >  drivers/staging/rtl8712/Kconfig | 7 +++++--
> > >  1 file changed, 5 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8712/Kconfig b/drivers/staging/rtl8712/Kconfig
> > > index b6dcda77db1f..678bbeace823 100644
> > > --- a/drivers/staging/rtl8712/Kconfig
> > > +++ b/drivers/staging/rtl8712/Kconfig
> > > @@ -6,13 +6,16 @@ config R8712U
> > >  	select WEXT_PRIV
> > >  	select FW_LOADER
> > >  	help
> > > -	    This option adds the Realtek RTL8712 USB device such as the D-Link DWA-130.
> > > +	    This option adds the Realtek RTL8712 USB device such as the
> > > +	    D-Link DWA-130.
> > > +
> > >  	    If built as a module, it will be called r8712u.
> > >  
> > >  config R8712_TX_AGGR
> > >  	bool "Realtek RTL8712U Transmit Aggregation code"
> > >  	depends on R8712U && BROKEN
> > >  	help
> > > -	    This option provides transmit aggregation for the Realtek RTL8712 USB device.
> > > +	    This option provides transmit aggregation for the
> > > +	    Realtek RTL8712 USB device.
> > >  
> > 
> > Why did you pick two different line lengths to wrap at for these two
> > options?
> > 
> > Please be consistent.
> > 
> 
> So should I resend the patch.

I can not take it as-is, so why wouldn't you fix it up and resend it?
:)

thanks,

greg k-h

