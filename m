X-GM-THRID: 6805942899825442816
X-Received: by 2002:a2e:920f:: with SMTP id k15mr2659566ljg.178.1584632225370;
        Thu, 19 Mar 2020 08:37:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8189:: with SMTP id e9ls441266ljg.4.gmail; Thu, 19 Mar
 2020 08:37:03 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuPk2YHct4q0leOFHM55SIKi+iUnGJmW2XbaWHYqBLmkFETomrn3nFKglZHmh2Ixd3zRfuJ
X-Received: by 2002:a05:651c:10f:: with SMTP id a15mr2639625ljb.158.1584632223609;
        Thu, 19 Mar 2020 08:37:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584632223; cv=none;
        d=google.com; s=arc-20160816;
        b=n4WP9oqmzzhttf83A2nTeGaA4HW+ZmSe1GLggz/l5sCeBVtTnLWxjma8PNTLDjhGK+
         g5rKhpETbvrNmcgSkid26MJwwSwk+vO5bkTpXYGdqZPBRMaG9RS0pIsRrM6oYQxsbmrT
         /NfNAevaNHLsU1UxaImAu2d3x8094nAKWQ4ppugZSMk0Iq+9EBH/1jH1W1mKsB/qxM+0
         G16f6kKNz+w12LeshZHYPzMeBK3++GCHEvdCTQrLlDLS/4F/V8JLpcdBfyVu3aMG0Mn4
         oV5gpJykNNfP7XCBSCaAIAiYh+hKN31NPo01s0OQtLpklY6veS1oY98xkT3KOWYxTj3j
         hvkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=ioTDMPJILkhHwDLheDaHVb8PPjte8AyG2fskNwZdhNM=;
        b=jalZj2Jvt3aKwDSo8e2R3w3d9SvcV53FoLszc3I+HozBpC6CnJfgsohAOQIl4YpKHS
         vzy5PyKLkQIQo07FCHZbvWlb6Fegw+7Iw+UFwDF27aVr2lRaQJdhL01Tk2oTGfVX0PdY
         /8uzHPWRRnXF/TxvXwY+XNodxMh/6+kpXh0flGJDbOT2Ml2qyNHsW0iYwdVep+AVr43Y
         qI6ccohhmEsaQzhM7DYuTfYBtZtyiPE0zWIqTyu8msvJ75FoBu4cuWuv2G4VYAd3sfUB
         5HprL6WJ8/wa6YIpKMQb2HIlaGtMdEHFXyTG0XopqyMtXjbJAYyyE3NcvXrbOY4mgu9O
         UfMA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=fa8C8xPN;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=EPmiSY1V;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from wout1-smtp.messagingengine.com (wout1-smtp.messagingengine.com. [64.147.123.24])
        by gmr-mx.google.com with ESMTPS id a21si186241lff.3.2020.03.19.08.37.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 08:37:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) client-ip=64.147.123.24;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=fa8C8xPN;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=EPmiSY1V;
       spf=pass (google.com: domain of greg@kroah.com designates 64.147.123.24 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.west.internal (Postfix) with ESMTP id 57F37A57;
	Thu, 19 Mar 2020 11:37:00 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute1.internal (MEProxy); Thu, 19 Mar 2020 11:37:00 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=ioTDMPJILkhHwDLheDaHVb8PPjt
	e8AyG2fskNwZdhNM=; b=fa8C8xPNXIRzW6JESzviajU/u1wtfEtiS5iEEpBz7g1
	w1ADUmRlqek0AKc1QWvQMFmbFsCqfXZMYq9vI5w/eyTR+Kd5I8SWOg7uGeVwY9fZ
	Rc4fEOxlmXFqTaxKAUUtFuw+sYFT0W6IDorkp59PF2V8sTrGlqZ6/mEfxiY5gBEV
	mrJ6ZWlKS7YbbrmAe/A+4KcH4PW17SgvqJJdM/tx6N0wnLceiOD1T/XipAxBX9Ng
	1wtpiuzjnxEYda/Fd0NSBp5CESEJlSd/r+3r2DP3EnWAmnypb03PjVDys3lZDLRh
	FNFCgvfOZ1p9ft7I5hE8q3foDIdkKroZhQrxANveBbg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=ioTDMP
	JILkhHwDLheDaHVb8PPjte8AyG2fskNwZdhNM=; b=EPmiSY1VJFn+0V5yAHn/5n
	m0hghfGGlnWoE5eOu+FuTfvmLJuXhri+A4Q8ClqEiUq1HhfXxXCCPeeGu33lwCgl
	EY3gAmCVbtr/SEqWJtRar54wyR1co+GxhZSBoijzU2HL8nIrd//ehfbcmRJZfnnN
	W2LgVTvq0+dywI/vM9zGvaSA2eF7ZbayA7yeABFHYpbuy9GaHToxxRwj7f1ezBIf
	pYGjmhdIeVTmM+xr8V33ZVFYOflkG1ukbMQoVJZzzhnVJpSOyoqTKNfyv3v+Yg/J
	am6Rb8B79UG6SF9d2Lai3OWQ/rfS+X9wk/YXDbCA5qBKpq5T0wF0UgcxNA0Na+IA
	==
X-ME-Sender: <xms:m5FzXviVClwPLWbyytFA3O299DscISbJkYVFiIkwnN8ApGk3tBE-IQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudefledgjeekucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujgesthdtre
    dttddtvdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necukfhppeekfedrkeeirdekledruddtjeenucevlhhushhtvghrufhiiigvpedtnecurf
    grrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomh
X-ME-Proxy: <xmx:m5FzXusz-6qJsQZwF3AaRCZDnBJB8PP4p9-CX96kqLx1TR9JIzU0NQ>
    <xmx:m5FzXq4gYledC1VLV1Z_nwaIUeMPiA3DVelEbbkrOK9b-h0mbguiGA>
    <xmx:m5FzXitKU7TPiwTjiy4ytrrL1IdXomQ7U9-5dNRW_dtvXuzcmXRkug>
    <xmx:m5FzXne5Phjc0byQ3ZtcGuFcLhk2PhlpXKKUTf7BufDHDy4xrV1tKw>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 5038B3061856;
	Thu, 19 Mar 2020 11:36:59 -0400 (EDT)
Date: Thu, 19 Mar 2020 16:36:57 +0100
From: Greg KH <greg@kroah.com>
To: R Veera Kumar <vkor@vkten.in>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] I made a two patches in a set with two
 different changes; does it qulifies
Message-ID: <20200319153657.GA135326@kroah.com>
References: <20200319153412.GA464@tulip.local>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200319153412.GA464@tulip.local>

On Thu, Mar 19, 2020 at 09:04:17PM +0530, R Veera Kumar wrote:
> 
> Hi,
> 
> I made a patchset of two patches.
> 
> one patch fixing misspelling in comments.
> 
> other fixing long lines in comments.
> 
> Does it qualifies as a patchset.
> I sent it to Greg.

Greg rejected it so it doesn't qualify as anything :)

> And he says the subject is not unique and to be named
> something better.
> 
> Sub1: Correct typos in comments.
> Sub2: Correct long lines in comments
> 
> I am unable to think of anything more descriptive.

Take a day off, come back and look at what you did, compare it to the
hundreds of other patches accepted for these drivers, and see what you
could do differently.

good luck!

greg k-h

