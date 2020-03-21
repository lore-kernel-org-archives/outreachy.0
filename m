X-GM-THRID: 6806226770839207936
X-Received: by 2002:a37:a484:: with SMTP id n126mr11781137qke.362.1584784886118;
        Sat, 21 Mar 2020 03:01:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:3284:: with SMTP id z4ls4061096qta.11.gmail; Sat, 21 Mar
 2020 03:01:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvT/Uz1KEoivAp8kmWthYqq2PBZNsCf1/YxzHHQXS1VRuzc/W4a5Tfelu29f/4Kln7UvFSs
X-Received: by 2002:ac8:7501:: with SMTP id u1mr12622897qtq.149.1584784884983;
        Sat, 21 Mar 2020 03:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584784884; cv=none;
        d=google.com; s=arc-20160816;
        b=Cs83x8dFwLhEj8vJE8qjD0hNdVChl8jm7KlsoYfNi5IDhL9jN7xp6yY0+K4Kl+9k2g
         iN+m6iBwVQq/IcpjNU5D0lJWjUoDc/Mk3NjllRX7l4F7Y7E/UFsjtKizP9SLzy0JrB8C
         6Jqc9p5muiWbX3Jp9Sez62ZiI0ViafirlqdvxjazL8BkxlfzaUX21/FaXtAl/7F2iamy
         tGyHxk94Nr7ExHCNcPiKAbMcAqrnl884ScsAeQM3SZTunPTSZoqg+wIPJiZ5u1tj21NG
         O2nkNGOA0elPfUi6YDfisNihxOEkBvqppo69VC7ycC+U4dhbnaXJyCAimVgU0IIAMqgx
         FSRA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=1g/TD9C/5elhr5f42QyCwXI4ZvYkKq/cpj6HShB78BY=;
        b=dq9tK/4e4yXvUAvYRTPBmDAGrCT4pRW816sNYLRTYWjpAFwCenIEPsUxxapip2ZP+L
         c70S0kIJdZ9AxK2v0rrU6wCAdDibd/ulexHfCwW+TOKR+N6GGP/R4IG1GyxyQYMmRZ2r
         PBtQw8OIY0WPMVq1btaRUwm+Moagb99MEI/l0zWsfQ8Kji0hJ1OS9daY510ooLmj3vCS
         uraCIJ/wjXaDYfbOKbSSOyopihm7C0i1g28URgV6E1kStFBBg9zm9yTTZMpA26wc4mvB
         sepQt0IqlGL0N0r4OZx7DqqQ7DNEIZa75KhPbLW7MDCFt6mVlbcknZ30NdyEnxsb5WXW
         eUbA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="D83DtY/1";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d193si406236qke.1.2020.03.21.03.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Mar 2020 03:01:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b="D83DtY/1";
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 60BE320637;
	Sat, 21 Mar 2020 10:01:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1584784883;
	bh=bnou/5bMNHxhBlxHyQQzzVEmeRXmena55tt8liwEeRc=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=D83DtY/1etSCu5potZwtP/P1CALbLIj0QueKpB9W1Cx3ocxz0DTADUw5dfJ7ZMLTf
	 3/aK/vUhGsvUztOWmLDAiL2Ng8EAS/Yj0blExXM0dWkdj87RjuL8t95YraVVWojK7D
	 77wU+zG+zn5pItU3GJOQzVK36kjO3h+nSzHtx5Go=
Date: Sat, 21 Mar 2020 11:01:21 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: "John B. Wyatt IV" <jbwyatt4@gmail.com>,
	outreachy-kernel@googlegroups.com, Tim Collier <osdevtc@gmail.com>,
	Nikola Jelic <nikola.jelic83@gmail.com>,
	Moritz Muehlenhoff <jmm@debian.org>,
	Julia Lawall <julia.lawall@inria.fr>
Subject: Re: [Outreachy kernel] Re: [PATCH v2] staging: wlan-ng: Fix third
 argument going over 80 characters
Message-ID: <20200321100121.GA963811@kroah.com>
References: <20200321013905.2422334-1-jbwyatt4@gmail.com>
 <20200321093402.GD917692@kroah.com>
 <20200321104604.4d43bd25@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200321104604.4d43bd25@elisabeth>

On Sat, Mar 21, 2020 at 10:46:04AM +0100, Stefano Brivio wrote:
> On Sat, 21 Mar 2020 10:34:02 +0100
> Greg Kroah-Hartman <gregkh@linuxfoundation.org> wrote:
> 
> > On Fri, Mar 20, 2020 at 06:39:05PM -0700, John B. Wyatt IV wrote:
> > > Create a new 'status' variable to store the value of a long argument
> > > that goes over 80 characters. The status variable is also used for
> > > an if check. Replacing that long statement in both places makes the
> > > code much easier to read.
> > > 
> > > Note: the status variable is assigned after a needed byte order
> > > conversion for usbin->rxfrm.desc.status, which uses a reference.
> > > 
> > > Issue reported by checkpatch.
> > > 
> > > Suggested-by: Stefano Brivio <sbrivio@redhat.com>
> > > Signed-off-by: John B. Wyatt IV <jbwyatt4@gmail.com>
> > > ---
> > > v2: Resubmitting after git rebase and comments from Julia Lawall 
> > > <julia.lawall@inria.fr>
> > > 
> > >  drivers/staging/wlan-ng/hfa384x_usb.c | 9 +++++----
> > >  1 file changed, 5 insertions(+), 4 deletions(-)
> > > 
> > > diff --git a/drivers/staging/wlan-ng/hfa384x_usb.c b/drivers/staging/wlan-ng/hfa384x_usb.c
> > > index f8485601aead..9016e6b32efc 100644
> > > --- a/drivers/staging/wlan-ng/hfa384x_usb.c
> > > +++ b/drivers/staging/wlan-ng/hfa384x_usb.c
> > > @@ -3252,15 +3252,16 @@ static void hfa384x_usbin_rx(struct wlandevice *wlandev, struct sk_buff *skb)
> > >  	struct hfa384x *hw = wlandev->priv;
> > >  	int hdrlen;
> > >  	struct p80211_rxmeta *rxmeta;
> > > -	u16 data_len;
> > > -	u16 fc;
> > > +	u16 data_len, fc, status;  
> > 
> > No need to change data_len, or fc definitions, just add a new line here
> > instead for status.
> 
> My bad, I suggested that John would change that because to me:
> 
> 	u16 data_len;
> 	u16 fc;
> 	u16 status;
> 
> looks only slightly worse than:
> 
> 	u16 data_len;
> 	u16 fc;
> 
> but still it's horrible. If the idea is to avoid unrelated changes,
> yeah, I get it :)

The idea is to avoid unrelated changes :)

