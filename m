X-GM-THRID: 6950618792247427072
X-Received: by 2002:a65:6483:: with SMTP id e3mr32586454pgv.208.1618319781328;
        Tue, 13 Apr 2021 06:16:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6a00:1492:: with SMTP id v18ls25092pfu.0.gmail; Tue, 13
 Apr 2021 06:16:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzkpsiRk6KXIw/U+6hfiH4XSIsKzSvDpQGNP/kVl48WG0WFbHVuOKmEykras7a9LFZsRRHV
X-Received: by 2002:aa7:8097:0:b029:229:83ec:cac0 with SMTP id v23-20020aa780970000b029022983eccac0mr29491126pff.67.1618319780170;
        Tue, 13 Apr 2021 06:16:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618319780; cv=none;
        d=google.com; s=arc-20160816;
        b=kIsXwu+Tb4V2RL/FyHjLJoJWYfvwGZq/+KBh/3IBJHAgVXz86Cy5Woq31a6JgpHKhq
         9yIBHT6DdzjEnMIpEmGZkQf11vNPEg31oSeyXwEvAMYEKvXrEIFDFf+fYypK3P1uX+Px
         6CyQVJQX0H56IzAnjsovJrKP2wtkoGkxXzG2pGR25KnuPL98UTh3lfZfGejK5GO4MMts
         1x3NeVeEYr2kowhlKDenjFXmL+s7QSiH+BUb/9QslVi7/6WfFMa9VzRx4ycTLJlmEKP6
         DWMt15mAFthdMwVNAGIuQRNAhNei3KeM7wFInd23BUcnCmAFnolWdcguTlHhdrG7L+Z4
         ea8A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-transfer-encoding:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :dkim-signature;
        bh=UZfqkNvzvOTI3UP2jDgUpQIT4LoTre8pAStBxt/6jAg=;
        b=Ee+69+lSu8B9UWuYGNn7cBZXK2ss3qv1EA9lUPopV48oN9RCatl9a0mZ0SXXIuftb6
         AXY+bnQSxZax5rD6tGWQClZJGYXhbyHcea9SwCQ+hVv0nBPj0U6BNpR3AlTMaqqEOohQ
         csJwyktGekseEUeneOnGOaBXCpdXIZoSQvEhTQ+HIHbtSPBGF8lAyFg2MxBhaDsbazrf
         Rm1AeYKajmaK5imS7btGKqkaF5s6uBihyYyijniYjWIa6st7PmJfpaep8ENu5yGJ1XFF
         1ZT1a/eKAFdHtTEa8xNolScMcW8obX4P5+v5+FXb2VIFDRyC53YMOcLfHSGzpwc8hjq2
         oaCw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fwP8Nd+L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r2si171898pjd.1.2021.04.13.06.16.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Apr 2021 06:16:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=fwP8Nd+L;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 41781611C9;
	Tue, 13 Apr 2021 13:16:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618319779;
	bh=52pCO/Ubuan7rPzq3r31wCXDbf6qMbBIH5fFiq9gt+c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=fwP8Nd+L4ncHkZQX6pzVY0hqT4y9UILLukBCFlGDtcoOPUPylWvpsN+yX6d5r48zY
	 oG33aPwqpeCgVk+csC0mpe7k3f7Rdrm+AFi1uSO8iGqMk/G8/4fVE6PercvNU0orIm
	 j0wc5J6spqGFbTIdNh45w/wU+mJ43OQqHUR2SQjs=
Date: Tue, 13 Apr 2021 15:16:17 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: ieee80211:
 Replaced strncpy() with strscpy()
Message-ID: <YHWZoY6B8sOiflwy@kroah.com>
References: <20210413123041.24260-1-fmdefrancesco@gmail.com>
 <YHWVsahY4nfo9xF/@kroah.com>
 <4666289.4L6Ep8XSK1@linux.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <4666289.4L6Ep8XSK1@linux.local>

On Tue, Apr 13, 2021 at 03:12:02PM +0200, Fabio M. De Francesco wrote:
> On Tuesday, April 13, 2021 2:59:29 PM CEST Greg Kroah-Hartman wrote:
> > On Tue, Apr 13, 2021 at 02:30:41PM +0200, Fabio M. De Francesco wrote:
> > > Replaced strncpy() with strscpy() because of compilation time warnings
> > > about possible truncation of output [-Wstringop-truncation].
> > 
> > build warnings?  What build warnings?
> >
> drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c:1388:5: warning: 
> ‘strncpy’ output may be truncated copying 32 bytes from a string of length 
> 32 [-Wstringop-truncation]
>  1388 |     strncpy(tmp_ssid, ieee->current_network.ssid, 
> IW_ESSID_MAX_SIZE);

That's implying that there is a real bug here, not that just replacing
it with a different call is going to solve this, right?

And how do you see that, I can't see that in my builds.


> > 
> > > Furthermore, according to the Linux official documentation, strscpy()
> > > is
> > > preferred to strncpy.
> > > 
> > > Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> > > ---
> > > 
> > >  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 4 ++--
> > >  1 file changed, 2 insertions(+), 2 deletions(-)
> > > 
> > > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > > b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c index
> > > 25ea8e1b6b65..aa58eedf5e86 100644
> > > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> > > @@ -1385,12 +1385,12 @@ inline void ieee80211_softmac_new_net(struct
> > > ieee80211_device *ieee, struct ieee> 
> > >  			 * essid provided by the user.
> > >  			 */
> > >  			
> > >  			if (!ssidbroad) {
> > > 
> > > -				strncpy(tmp_ssid, ieee-
> >current_network.ssid, IW_ESSID_MAX_SIZE);
> > > +				strscpy(tmp_ssid, ieee-
> >current_network.ssid, IW_ESSID_MAX_SIZE);
> > 
> > Are you sure you can just replace this like this?
> >
> I surely was... but now I'm not anymore, since your review :)
> 
> Maybe you mean I have to check possible return of -E2BIG?
> Did you mean something else?
> May you please elaborate further?

If it was as simple as search/replace, we would have already done that
on the whole codebase at once.  It's not that simple :)

thanks,

greg k-h

