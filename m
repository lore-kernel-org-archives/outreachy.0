X-GM-THRID: 6674267883353145344
X-Received: by 2002:a65:4507:: with SMTP id n7mr815870pgq.84.1555415317993;
        Tue, 16 Apr 2019 04:48:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:8085:: with SMTP id v5ls5788220pff.5.gmail; Tue, 16 Apr
 2019 04:48:37 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzQ+Zi5yZ6oMUb/td0C6HiuonBEEXByAm/d88QWkXGgm1GPbuocjx+kip6wyipdYYZ5giDn
X-Received: by 2002:a65:6297:: with SMTP id f23mr1667153pgv.116.1555415317150;
        Tue, 16 Apr 2019 04:48:37 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1555415317; cv=none;
        d=google.com; s=arc-20160816;
        b=t4//dPWJ9N2ovcca3b2c9vEiWt2yPM+60SH7foekJctb12ANUga7kd/LS/YigzC6I0
         JJCMqSvBPY/Z/Z2oRhuvPngHxAxoUeGhoZVZZmtU/L+63TGjs+lqAqWIF2zfgQT7/qge
         Ex/yVODOQdN591zXep1sIboK/h5oQOjy68Mm3YA0SIMGHM0JefNcxTt+kGgWSw80PF3j
         qzvUw9r45hPZDrivQ+bNHwxCZ23KMaIHfxWf17/4mEhOgI+gDF7cFbTEnj5HW6+WhYHz
         1Nl2gGjWRowEFnQBWcHG8b7n6Ea/TE7E0nXCbsuq5aNgihSC9lsjCWN0y/9e/Je2cozT
         D6CA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=NWQ5H4PaBO373cskyLqnFZBu+x29o3+jsP2l/+9Z0zY=;
        b=MRlev7TslmO26txh4kZf4dUcIxBMxj2CwVrJsst395ozaK8Ch/Ola+i64HStjYEC32
         UwIbeleuPyPzuArH/za8OKDcTr/tCKaAUDY83TwATmc7zHIgoTR0418sdbrgqmXLfpEk
         39Vd6jPvwKSX4tFyc9dXe8MHIY62KsSX56CZxOUqecubtBNoebL0sgDlP8QhtK9oujuR
         apJXM6DTq3OOAw0kzSo9TFuYpFo1AsefkcjXm8j4usX0N4HdW2WathU9fTR/HyTtHlTz
         02rZECR3gM0HmlydN0EGpsrpLh0EBOxwzx3+dhSU/iJMQVkcwtt3t0D9+zYBrUMy7lQR
         9TJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w73O+udn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 141si3176346pgb.1.2019.04.16.04.48.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Apr 2019 04:48:37 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=w73O+udn;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 52F1220821;
	Tue, 16 Apr 2019 11:48:36 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1555415316;
	bh=HKoki5FGbQ/U4PVKyyLgH1wBQbsn37tWNZuA1FIC09E=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=w73O+udnKjehlCn5UlfBg0I9Fc4aTlpPM16WKveNngiQGRgzOUeIXpqCe4Gih0UQu
	 I22cuMBqM+4UKO7gd7bgqeu/E4nFNUx7urKSkAVsaVj2llKPC0NOllGlhGhQUeRfRl
	 2bMs2LZvInioYjKHSG7OG0ROrh1TX9sic5cFezXI=
Date: Tue, 16 Apr 2019 13:28:23 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Himadri Pandya <himadri18.07@gmail.com>
Cc: Larry Finger <Larry.Finger@lwfinger.net>,
	Florian Schilhabel <florian.c.schilhabel@googlemail.com>,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: rtl8712: remove unnecessary NULL check
Message-ID: <20190416112823.GA29807@kroah.com>
References: <20190403160816.38958-1-himadri18.07@gmail.com>
 <CAPnhUpbm2tPpWBrB2eLrET_GHcmE8=mHMRHH69uxn0sozk8WOg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAPnhUpbm2tPpWBrB2eLrET_GHcmE8=mHMRHH69uxn0sozk8WOg@mail.gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Fri, Apr 05, 2019 at 07:22:58PM +0530, Himadri Pandya wrote:
> On Wed, 3 Apr, 2019, 9:38 PM Himadri Pandya, <himadri18.07@gmail.com> wrote:
> 
> > List wlan_network is built properly with init_list_head and
> > list_add_tail which cancels out its probability of being NULL because of
> > the precence of list_head at the top of this structure. Hence, the NULL
> > test can be omitted.
> >
> > Signed-off-by: Himadri Pandya <himadri18.07@gmail.com>
> > ---
> >  drivers/staging/rtl8712/rtl871x_mlme.c | 2 --
> >  1 file changed, 2 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c
> > b/drivers/staging/rtl8712/rtl871x_mlme.c
> > index e370841a79ca..7c7267d0fc9e 100644
> > --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> > +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> > @@ -1120,8 +1120,6 @@ int r8712_select_and_join_from_scan(struct mlme_priv
> > *pmlmepriv)
> >                 }
> >                 pnetwork = container_of(pmlmepriv->pscanned,
> >                                         struct wlan_network, list);
> > -               if (!pnetwork)
> > -                       return _FAIL;
> >                 pmlmepriv->pscanned = pmlmepriv->pscanned->next;
> >                 if (pmlmepriv->assoc_by_bssid) {
> >                         dst_ssid = pnetwork->network.MacAddress;
> > --
> > 2.17.1
> >
> 
> Please let me know if the patch needs any further improvements.

Please be patient, wait at least 2 weeks for people to get around to
reviewing changes as trivial as code cleanup stuff is.

thanks,

greg k-h

