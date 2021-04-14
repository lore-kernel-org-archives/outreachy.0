X-GM-THRID: 6950980105413853184
X-Received: by 2002:aca:3093:: with SMTP id w141mr3083283oiw.105.1618423028021;
        Wed, 14 Apr 2021 10:57:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6808:13d0:: with SMTP id d16ls660499oiw.10.gmail; Wed,
 14 Apr 2021 10:57:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJw9sbMcY5XmcAV3uEFlEbw1FgJUPBRgQlSoKwE6OUeCcKvHxqqjlgEQwA078/U3e7tViHQD
X-Received: by 2002:a54:4419:: with SMTP id k25mr3379067oiw.15.1618423027196;
        Wed, 14 Apr 2021 10:57:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618423027; cv=none;
        d=google.com; s=arc-20160816;
        b=ELpjNBPu7TKGIEqXrvfsxOXzQIHhrP6itK3rNkO+BZ1IZCydl9nJOokyq5WlueRlPP
         aGT4ERNK2Ok8ua/3CFd4N1YPgfV0KN4l79hDACqz9SJI2vF8IQwnGuISm61lNBl9IS1+
         SWGPSgmxxeoD/UzSeIUsYg/hCyWLDU7T5XXiYHxV1LnZ6rDrEp1wju9+dH8czh8cDDHx
         /I+2DdbDO3TsCDK4YBme9XMIC9OkGOgW8h8wa2zlKxBt0PsaGpzqq7kSCx33b/6LbV2w
         aG3O+37NqbCEG9YBOGm+XsLITARSq/06I+k7Fo+/iw2GCzFhmpw4gPecdm9jYKjxD0NC
         KTOQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=CHNe5QusVemybtFf0EwMssYCQhyexZUcskEO9IPwddQ=;
        b=Z8kEYtMV8qALQ/81JhRzOEGgKaxAhpbeHgPEsnLpwtxtGW8MwoAw6eNrV+g2R+4P5T
         zWUgVbjeOdvwal87E6mBQVGXlTUYvxWb/Kyt7k5Ppru7eyP1UABlFTJo2HuWFTlhnctC
         6F/DlI4zsV7Wk85WX5DKlqfBPzueCh7NH+xRR0PNQWaGyhop3yOL10cLAoDHxYtTCs7I
         zgeNH6/s9K+IyqR1k6EwpIX0xHGtndXMX3H6ft1RaYgKKis2azt2noQn7cEDuMdfbu8M
         1o74FszcrNA1BuibfkFO05hvCu50gVHfu80aE8SZTbn9DLG9gaXGF4bawCmZDSrdhmfN
         bNMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="qy9wu/cx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 6si18252ooy.1.2021.04.14.10.57.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Apr 2021 10:57:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b="qy9wu/cx";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 9150960FF0;
	Wed, 14 Apr 2021 17:57:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618423026;
	bh=cQ9f4u2xR3uFXq5S5htMvUykddDB8bI00VAaR7ZaQ1Q=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=qy9wu/cxBjQjTqY7RD0xDdNPYZkaERYrUM11TFHPJn3SWjjBTn0YRN8xC5Jlqv6tI
	 bMKCsazVI4rEk3y8sybmRIWDXWfITeLg4OTZmksiWoIiOG0bILBf7G9GtKHDVtLxHa
	 s/xUunAuWw0DzlfEkpgkke88wBG6T/ztOs4eIVFI=
Date: Wed, 14 Apr 2021 19:57:03 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>,
	outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtl8723bs: Remove useless
 led_blink_hdl()
Message-ID: <YHcs70RdhaBBZv0i@kroah.com>
References: <20210414162614.14867-1-fmdefrancesco@gmail.com>
 <YHcfud6Fpsi9Weac@kroah.com>
 <20210414174809.GX6021@kadam>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210414174809.GX6021@kadam>

On Wed, Apr 14, 2021 at 08:48:09PM +0300, Dan Carpenter wrote:
> On Wed, Apr 14, 2021 at 07:00:41PM +0200, Greg Kroah-Hartman wrote:
> > On Wed, Apr 14, 2021 at 06:26:14PM +0200, Fabio M. De Francesco wrote:
> > > Removed useless led_blink_hdl() prototype and definition. In wlancmds[]
> > > the slot #60 is now set to NULL using the macro GEN_MLME_EXT_HANDLER. This
> > > change has not unwanted side effects because the code in rtw_cmd.c checks
> > > if the function pointer is valid before using it.
> > > 
> > > Reported-by: Julia Lawall <julia.lawall@inria.fr>
> > > Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > > 
> > > Changes since v1: Corrected a bad solution to this issue that made use of
> > > an unnecessary dummy function.
> > > 
> > >  drivers/staging/rtl8723bs/core/rtw_cmd.c         | 2 +-
> > >  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c    | 9 ---------
> > >  drivers/staging/rtl8723bs/include/rtw_mlme_ext.h | 1 -
> > >  3 files changed, 1 insertion(+), 11 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > index 0297fbad7bce..f82dbd4f4c3d 100644
> > > --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> > > @@ -150,7 +150,7 @@ static struct cmd_hdl wlancmds[] = {
> > >  
> > >  	GEN_MLME_EXT_HANDLER(0, h2c_msg_hdl) /*58*/
> > >  	GEN_MLME_EXT_HANDLER(sizeof(struct SetChannelPlan_param), set_chplan_hdl) /*59*/
> > > -	GEN_MLME_EXT_HANDLER(sizeof(struct LedBlink_param), led_blink_hdl) /*60*/
> > > +	GEN_MLME_EXT_HANDLER(0, NULL) /*60*/
> > 
> > Better, but you really do not need to keep this here, right?  Remove the
> > "led blink command" entirely, you didn't do that here.
> 
> No, this is right.  We have to put a NULL function pointer in the array
> or the indexing will be off.  But Fabio is correct that the struct
> type should be removed.

The indexing can be off, just remove the other place where the "command"
is in the index and all is good as rebuilding will fix it.  These are
not external "values" we have to keep stable.

This has been done for other drivers exactly like this, there are loads
of "odd" commands in there that should not be.

thanks,

greg k-h

