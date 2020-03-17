X-GM-THRID: 6804292371114622976
X-Received: by 2002:aed:2a55:: with SMTP id k21mr5361472qtf.159.1584449479189;
        Tue, 17 Mar 2020 05:51:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:ab1c:: with SMTP id h28ls1932027qvb.2.gmail; Tue, 17 Mar
 2020 05:51:17 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuRMIXcgHe3mNH2mgYnER95EhFmwCWFtwRIqzaROJduYB2NQ9Y+/BLzBwmIoZpNxaY7qHkI
X-Received: by 2002:a05:6214:11e1:: with SMTP id e1mr4818973qvu.176.1584449477878;
        Tue, 17 Mar 2020 05:51:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584449477; cv=none;
        d=google.com; s=arc-20160816;
        b=pgoKxAyJSuDkQsZhwfaY5k9dfytLKFDOKOtuQIZyBwXNbAc/1lEOl/dow4hmTRFPp1
         +4Pn01dBHzVysxNpJWofn0XRKNplbdRprN4wWLKjF+JwePKOujXZDlVp44tBJSlB7L7F
         2Pi2vXPKImRAi/sE5yHn3xQ+avwM3m6cGcxTVwuobBjLpwJY6LgJsZ1SEZ412i9iy9JE
         +xVgWwcJrRFFfuBSW0z/9zucsmgMwF6f5bSn1t2AZisLkX0weLUUQVN8v7hR9QvOVgXQ
         i1jPEXJQ0cGzSEF5blFitEYZoq/UtByvY9owDqMniWdIV9nwk58+sr60zFv0prawiTEr
         1R0w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=B5preIMJsOnW3g/KXDCcmYd/hFrPOhbqWnuRsDdcaHk=;
        b=lFC1pt9UJnNPppa9wwDzvWhjPbu0bwhx76tLRfT7pFvr7HDeoIokO/GqgYUUf0MVIA
         FdJ0qS/zDS6j/6xBjaMjKTeLeipUkqfajPwsUJnzoIk34v6k329E32OB4jh5GiG5+46f
         RbsnULHP1K3lRf4TCaVugw8RlV3cKD9paGvtHFnibixgG2f2BuuUitOf5rVxutL/mING
         MlSxdeAIn0u21/GVDgvtU6IsFu9xmWPT+fg38ndAaYJ2gnIKUIQl5iNET6sQyaIe6u/w
         VCjoaFvWKi52ry9FXgBUgjTBrXmiSZMPuG6PYggR9N1rgBxdJUTk1ExSI/tPaUf1+Tul
         kROg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ejQzeaVR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id z126si77934qkd.2.2020.03.17.05.51.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Mar 2020 05:51:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ejQzeaVR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 41E4C205ED;
	Tue, 17 Mar 2020 12:51:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584449476;
	bh=SkZYhS1S3zOLilXm7lMJGaYZDf3DtqaxtZcwtZM9ECI=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ejQzeaVRnoUMxHks9vJlXBbS/rcXnfZYjJzBrhFBbqnRlOXrZI4UqdXHpRf3G1zWK
	 cApRuo/IRpLm72Bf23Flo5xDQzQsdeU6tAltxnVM+2I+brDVHOT4Qu/ItV1OuE5q9M
	 9vdOG1NjEdt8Rcpczsd6vv5Rm6mZwjvf1kg+zbe0=
Date: Tue, 17 Mar 2020 13:51:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Lourdes Pedrajas <lu@pplo.net>, outreachy-kernel@googlegroups.com,
	jerome.pouiller@silabs.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wfx: remove unneeded spaces
Message-ID: <20200317125114.GA1275972@kroah.com>
References: <20200315044922.14249-1-lu@pplo.net>
 <20200317134505.2e417b36@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200317134505.2e417b36@elisabeth>

On Tue, Mar 17, 2020 at 01:45:05PM +0100, Stefano Brivio wrote:
> On Sun, 15 Mar 2020 05:49:22 +0100
> Lourdes Pedrajas <lu@pplo.net> wrote:
> 
> > Remove spaces after type casting operators in order to comply codding
> 
> with coding...
> 
> > standards.
> >
> > Issue found with checkpatch.
> > 
> > Signed-off-by: Lourdes Pedrajas <lu@pplo.net>
> 
> Reviewed-by: Stefano Brivio <sbrivio@redhat.com>
> 
> By the way, question for Greg:
> 
> > [...]
> >
> > index a60ac03fa73d..07a9991929fd 100644
> > --- a/drivers/staging/wfx/sta.c
> > +++ b/drivers/staging/wfx/sta.c
> > @@ -903,7 +903,7 @@ static void wfx_update_tim_work(struct work_struct *work)
> >  int wfx_set_tim(struct ieee80211_hw *hw, struct ieee80211_sta *sta, bool set)
> >  {
> >  	struct wfx_dev *wdev = hw->priv;
> > -	struct wfx_sta_priv *sta_dev = (struct wfx_sta_priv *) &sta->drv_priv;
> > +	struct wfx_sta_priv *sta_dev = (struct wfx_sta_priv *)&sta->drv_priv;
> >  	struct wfx_vif *wvif = wdev_to_wvif(wdev, sta_dev->vif_id);
> 
> Will this eventually have to conform to networking coding style? At
> what point in time is this stuff checked, if at all?

When the maintainer wants it merged to the "real" part of the kernel,
that will be needed to be checked.

thanks,

greg k-h

