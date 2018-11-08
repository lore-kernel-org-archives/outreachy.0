X-GM-THRID: 6620547167797903360
X-Received: by 2002:a62:438c:: with SMTP id l12-v6mr1264025pfi.118.1541635359213;
        Wed, 07 Nov 2018 16:02:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:8bca:: with SMTP id r10-v6ls163026plo.9.gmail; Wed,
 07 Nov 2018 16:02:38 -0800 (PST)
X-Google-Smtp-Source: AJdET5eJJOv3UBJFbAjcAOcA/sBeMUWfT5W382qNMhNl+rB9PDkk77iWR6nx7YCmvFKyBVGxetSs
X-Received: by 2002:a17:902:6b44:: with SMTP id g4-v6mr523129plt.88.1541635358227;
        Wed, 07 Nov 2018 16:02:38 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541635358; cv=none;
        d=google.com; s=arc-20160816;
        b=ii6z60ylyaM5jrh/oqBUn6zsNPQ2y1m/cdexvsRaOzMJ1zfI6CFt3A3177gFJ7544X
         V9DUk7fHvi7kpLPtmbkYZN4OTUJFZWs4+Plfxb7hddcImSARZelX6Fb/TzfnT6+HCbzC
         RpHUDbXsb1uUPKU6tf1CAaLA70fH7QKOrqF47YPzJkcSQ/wt1ZQrg736VaT4ue77NSjg
         KshJFYwW/YyCEcGusu3hGXgwk+EXw3lE2R9A0qE0Gjc2wG6XnSNxEd7C0JR4kr8J0ujI
         TAtmQ0T4fXaqUClkE3L/XM18VjGxLwKdGVPX9m7190zCTpPbYDAHLsCCljywiUvL2LFj
         Uwbg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=Fr4Zgkp84JTK5b02bDL0lbbGnKzkjCZqpem+TFLO4YM=;
        b=mrPtNtiOdslFR8HlJQoBSnbl4fk+s0F/mT3FUhpKxKaMpobo3Nt5D72dNZhJiAb+AD
         wGjPLUctUw5H7bZHcY+vf+ulwjAeMMrGPaCZycGXU3Ff1CmYg63rDMCXjTM8Y8dl8D8c
         ys7HnnKTWtBctyTzthsKwMgCsxrZwPQQbWfDIhM5Wrf8DCWIs/ffSGjRwWJx3Csyno6V
         e1jDp79hCCyRuExcPkSKf4Qj9R7XJF8qusM5rZ1apYS0GkWRiArCBAWX1ko54WOCN/Qe
         0gDAnqb9bFkC4IdKy1P2k0hTTaqzrqBSUqYLQTVAHV3S+/Wd0ZQ4+BQig07XYu//PZcm
         OsNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=uVQRTYk2;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=zGNM8Fkz;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out5-smtp.messagingengine.com (out5-smtp.messagingengine.com. [66.111.4.29])
        by gmr-mx.google.com with ESMTPS id 184-v6si109177pgb.4.2018.11.07.16.02.37
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 07 Nov 2018 16:02:38 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) client-ip=66.111.4.29;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=uVQRTYk2;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=zGNM8Fkz;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.29 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 22294218FD;
	Wed,  7 Nov 2018 19:02:37 -0500 (EST)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 07 Nov 2018 19:02:37 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=Fr4Zgkp84JTK5b02bDL0lbbGnKz
	kjCZqpem+TFLO4YM=; b=uVQRTYk2TTHmyp7kz/1Ibx0ecOnsgVOS3ZUhoE/Mlcf
	hpXwY8GT+1kF92DTamuW1krhMsc92UZVGsZdec/lYIFCWZwkF3iFEs1esAxTJxFU
	TwAJR6Y6u0dCij0lax/Hvqob/hae8R7Ez2CH7A88UOZ7/4AWcszLdn+SFmhX21Pb
	Iyv5YHZDmV2ALtnelHPPFulx0bylkW1HLdEu9TykRqHJ6YiG6C025elehzTTo/on
	0IQ6rt5+Yh9NnA/zmvRZcKmYUNKlbcbtr9BTYE+rxfJ0K5bN67B8R85V1zaLDabK
	l73LtnFFs20YBoCODZ/X7itKKSexbkqRBnquc3slfDQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=Fr4Zgk
	p84JTK5b02bDL0lbbGnKzkjCZqpem+TFLO4YM=; b=zGNM8FkznCTnIvgeaB9PiX
	lk+Tzq8jLcwFtTtrZHFzFYdwKix3nTfNBc/np/ZS8ZW11Lc8JCZhmEKh+vHlBh31
	TbLt+Wo7HJVFB9grdoKu23NIMxEhTHUWrUxyHjevz+tGncM+FjKWNVh4X255s3kt
	SMCY0E47I/WU99/hAMAMhOSG3Aj26MqDN9ZTZDmHn9TGISxEkqDaVTwmometJ2ur
	nbiQHwHmm+Fhm8tw14hTRtnzEwwGhp4fawhW0w5C1E9uBoTHKIsYBS/vNFlTqVw9
	7jc3AgcjOH98dZyoO7XvVwOJBUrKt9D9bqHF32xBojjUx5R6SiZV7UTgwMV5MFuw
	==
X-ME-Sender: <xms:HH3jW7oKaPuRx0gIP21j_2Gx22ceriSyphNIWu6gNLv88qC2oS9Rug>
X-ME-Proxy: <xmx:HH3jW4DBWTu2FSjGCz8obEsWkWXq8723J4mLJINm1jws0d_HTohzUA>
    <xmx:HH3jWyu22BlM7C0MQwc_YYONsg8IFeTbam6X4XzEtK5ZwCV98X1yNQ>
    <xmx:HH3jWy5E3e286OZL3JtODbATF_hn5PXCEYQXyRAZgEykK33KNDh7Vg>
    <xmx:HH3jW8eB0CCXrGFkXFcz_otArlBnwTBCPGJIagqjYV-dYm5RsEOKxw>
    <xmx:HH3jW6U6dtv4Z-qCBnMvAxd_hdg2qawr647k0VnEUAZZLnMe69_gjw>
    <xmx:HX3jW5_lCBdiDB2rGeLlCYQG8aXEMR6NtWm8DTwPAav4iu5GapQ6ag>
Received: from localhost (unknown [104.153.224.166])
	by mail.messagingengine.com (Postfix) with ESMTPA id C6A2B1033A;
	Wed,  7 Nov 2018 19:02:19 -0500 (EST)
Date: Thu, 8 Nov 2018 01:00:20 +0100
From: Greg KH <greg@kroah.com>
To: tungolcild@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH 00/15] staging: greybus: fix
 various coding style issues
Message-ID: <20181108000020.GA28675@kroah.com>
References: <cover.1541466184.git.code@wizofe.uk>
 <20181107111739.GA8006@kroah.com>
 <a0685897-c32d-47de-a6a7-0c0c5344febe@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <a0685897-c32d-47de-a6a7-0c0c5344febe@googlegroups.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Wed, Nov 07, 2018 at 09:48:03AM -0800, tungolcild@gmail.com wrote:
> On Wednesday, November 7, 2018 at 11:17:52 AM UTC, gregkh wrote:
> >
> > On Tue, Nov 06, 2018 at 01:04:06AM +0000, Ioannis Valasakis wrote: 
> > > Fix various coding style issues reported by reportcheck, uncrustify and 
> > > coccinelle. 
> > > 
> > > Ioannis Valasakis (15): 
> > >   staging: greybus: shorten comparison to NULL 
> > >   staging: greybus: align parameters to parentheses 
> > >   staging: greybus: add a blank line after declaration 
> > >   staging: greybus: fix SPDX License Identifier 
> > >   greybus: staging: align arguments with parentheses 
> >
> > Looks like your subject got switched around here. 
> >
> > Again, doing a review of your email before sending it out is very good. 
> >
> > v2? 
> >
> > thanks, 
> >
> > greg k-h 
> >
> 
> thanks greg! probably it's due to my misunderstanding but this patch series 
> wasn't the same
> as before (as I've added a few commits). So I didn't consider it a 
> continuation that's why I re-edited
> the code and added new subject lines/commits. Was that wrong? I am going to 
> do a v2 if needed, just
> need to understand :) 

Sorry for not being explicit, you did this correctly, except for that
one patch with the subject line a bit messed up.

I was _asking_ for a v2 series to be sent to fix this up, so that I can
accept these patches.  Can you do that please?

thanks,

greg k-h

