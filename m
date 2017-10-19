X-GM-THRID: 6477576827810349056
X-Received: by 10.80.152.61 with SMTP id g58mr57530edb.5.1508377101938;
        Wed, 18 Oct 2017 18:38:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.171.29 with SMTP id s29ls2329688edc.4.gmail; Wed, 18 Oct
 2017 18:38:21 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RbVre8tr4OocsFBJQsEaE+nAJc/nMuOpV2hWR31ksch8x6kVNhqamUUdr0VWlWnxSYSEiV
X-Received: by 10.80.242.140 with SMTP id f12mr57757edm.1.1508377101129;
        Wed, 18 Oct 2017 18:38:21 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508377101; cv=none;
        d=google.com; s=arc-20160816;
        b=GfplDyENwaETv6/UAw5pxuEe7eWL7edMGGXiz0TMeYLhLQhvGiEqRtWfVcA9hdyuij
         5gmHofc2NRW/d1tDwe/HYTAolwlMcqe5JiNMAY9mDUaE3zbet/snW+9y/f0uEYgPHx7r
         2shyX7c5T+2OQWNBDpksHA11w+TspVILooXhhsjZL4kG/tJLM2Qo9zhYqh4zrsoLznFm
         YQzTtU6jwEiro1jk3C8y29KnlqjWJHlZ4lgcn2V5kDs7jCvQQl0rx2QRL3N3dWPzb5Ph
         1ujZrC4Wj0/BD+8Hae2a77TJhvbpj//H1A2hM2E6/vQM0DacWWu52Ae2Q9Q/Cd3T1Hr4
         aEyA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=mTgbx8NDnuDPDJSnpB2Jld6TWJW+Qk/oSZ9D3pAhKsc=;
        b=zeW4pmn4vAzFo22beo+PT1nuqDEHmYBjpN3AO5XSMNfU00Mc70FBclFhjEntsQvw0J
         d0niyU+sc1XY+kS4qdFCxooprZAl3qDgh3YNo++X1QnnAnSBssos1WfKfQpvewVtqot5
         qIfnmfGlF9eWp1NPSMptmpmR2eeWLnuttv18Nar95cy87P9HRRe4CyhHPoo4urlmRF//
         y0sVwoZuOBjT2WWlOiYG9Fx5D9t3WDYaPqg0nOz4WKMzSdeaPPFZrE3c2Q9Ugn6nYFy2
         A5p+/SCGX0Z04DgW/0T1TBrFLm4HPwjvU3kOdXID8otDBxqOwb+Vo+Q+YATJT39c6An/
         fc5A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=GhBKX6Hn;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=AQ4G8PLq;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Return-Path: <me@tobin.cc>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id a57si615324edd.3.2017.10.18.18.38.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 18:38:20 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=GhBKX6Hn;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=AQ4G8PLq;
       spf=neutral (google.com: 66.111.4.28 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id 11DAE20B99;
	Wed, 18 Oct 2017 21:38:20 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute5.internal (MEProxy); Wed, 18 Oct 2017 21:38:20 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc; s=
	fm1; bh=mTgbx8NDnuDPDJSnpB2Jld6TWJW+Qk/oSZ9D3pAhKsc=; b=GhBKX6Hn
	4ddzqbz0OKkMhQHH064i0MHa4qjZqet/s52kRamTs76Vm9fcwac4lt3UWAmJt/dW
	gtafnMxPflM+eVp+y5kYpoS0VM2KZ1mEUCpdJcu0ICQM6W1vt7n7usofZToEJzsJ
	3LPNOYrjvTGtoV5aQbyxOftAAK05mQqdzJ1dpd7O2zhX4DSkEXrIiYxqtQBQdaQu
	mh8XlDp++xRsFNiGOCcCf8a4CUaPX5lbquDMYyrpKod5rENGpHCTOoP/P5B6Ly/N
	xiFZACLLI9eDIZZ7f+Ko5+rWP5H7VPh7SpmKYtzIa1ifBKuE8m6mPMpo7Ae1f6Yh
	oFKmF+lNmFVwNQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc; s=fm1; bh=mTgbx8NDnuDPDJSnpB2Jld6TWJW+Q
	k/oSZ9D3pAhKsc=; b=AQ4G8PLqNjp+lzJkFVQVxyxMFWm1Rqr7sDYJd0p3S2PD6
	+Y1ejYm+z+MD+TADCq+MmkWxo/0cZ38bd60GS7cdYG0KzXr05PGKKbzXTCEWppCC
	R+J+PZAAZ4WnINPFrjlO7If8ju9NHKz3oyriXe/O4TkzIUDiGNM5Akb64AZPGV84
	6QAWdad0+5r3hzkM45vglGaxgDAR2hE/zJ1whobfVpUEY/CMDwlIk9QLFq+sAtRy
	KiLKRO8VU0gWfhAu71b0w5h0vlaxyMvJhKLjaTcplEtjaY1rd+7h/3jV76N3/C/3
	M3foT0Fg/Gmi8c2qD2wXac9E3hyu+xgvzavlxrAiA==
X-ME-Sender: <xms:DALoWbvf_o-HP4XL98R-Os-cQBVXEw1pYEVTgZ1lWGGYvIhJ6F0jIQ>
Received: from localhost (124-170-207-147.dyn.iinet.net.au [124.170.207.147])
	by mail.messagingengine.com (Postfix) with ESMTPA id 57AE424347;
	Wed, 18 Oct 2017 21:38:19 -0400 (EDT)
Date: Thu, 19 Oct 2017 12:38:16 +1100
From: "Tobin C. Harding" <me@tobin.cc>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: gregkh@linuxfoundation.org, Julia.Lawall@lip6.fr, pablo@netfilter.org,
	devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171019013816.GF31318@eros>
References: <20171018145522.GA27138@kroah.com>
 <20171018154821.GA2002@ubuntu-server-1604>
 <20171018214008.GC31318@eros>
 <20171018225052.GA20395@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018225052.GA20395@ubuntu-server-1604>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 18, 2017 at 06:50:52PM -0400, Frank A. Cancio Bello wrote:
> On Thu, Oct 19, 2017 at 08:40:08AM +1100, Tobin C. Harding wrote:
> > On Wed, Oct 18, 2017 at 11:48:21AM -0400, Frank A. Cancio Bello wrote:
> > > --- a/drivers/staging/wlan-ng/p80211req.c
> > > +++ b/drivers/staging/wlan-ng/p80211req.c
> > > @@ -124,7 +124,7 @@ int p80211req_dorequest(struct wlandevice *wlandev, u8 *msgbuf)
> > >  
> > >  	/* Check Permissions */
> > >  	if (!capable(CAP_NET_ADMIN) &&
> > > -	    (msg->msgcode != DIDmsg_dot11req_mibget)) {
> > > +	    msg->msgcode != DIDmsg_dot11req_mibget) {
> > 
> > While this is not making the code _harder_ to read, it is not making it any easier either. So all
> > the change is really doing is quieting checkpatch. Usually it is not a good idea to make code
> > changes _just_ to quieten a static analysis tool. It's just a tool remember, there to help us write
> > better code.
> > 
> 
> For me is easy to read without parentheses given the fact that I tend to jump to the closing parentheses and then read from the opening parentheses up to the mental mark that I did at the closing parentheses. But that is me, and given the fact that I'm a newbie that is still learning I will stop sending this kind of patches if you consider it wise.
> 
> > On top of that CHECKS are just that, things that should be CHECK'ed, not necessarily fixed.
> > 
> 
> Agreed.
> 
> > Hope this helps,
> 
> A lot! I really appreciate any input at this stage.

Glad to help, stick at it. You will get there.

> 
> thanks,
> frank

