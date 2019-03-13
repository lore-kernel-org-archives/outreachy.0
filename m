X-GM-THRID: 6663345238466101248
X-Received: by 2002:a24:a14f:: with SMTP id n15mr1979195iti.1.1552486701333;
        Wed, 13 Mar 2019 07:18:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:66c5:: with SMTP id k188ls343867itc.3.gmail; Wed, 13 Mar
 2019 07:18:20 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyySo5rAYdGUjZcIadUkGgIUYFN7zcjVmuhedpQO2L/AYHDhfEiPSJe442w0xMGvkn/sE+E
X-Received: by 2002:a05:660c:484:: with SMTP id a4mr1902629itk.15.1552486700166;
        Wed, 13 Mar 2019 07:18:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552486700; cv=none;
        d=google.com; s=arc-20160816;
        b=I4JTGLcYpnyCAhEr4OX8egmY9oSPo7Fi6Vro0qWYKwZnFpsoVke7XdG9LqvCH94Ygd
         Nokf5LHNCOqzcUUN/VVW0qHEQg298FKVfdVG2RroUbznKejPkR5MtMfIc9J3KJOxX7Uf
         5PII895w0Kce3I7Yrx15E+MJ7nVOWtpCfgROJyCij2byoldCrRmywQtwiAF9lE0l9pNT
         M4pGm2J/KBf06s5AS/p360NjdmzX+eh69AzjsBCWbLiDOxzbm0dLzcpVhOgS3gDQSq1B
         tGitmI+rGnZx5G0yGevTGmHTbYFJTD43QDfOhvOLAq9R7724/1vjmZC/inXyNF17n9V1
         zHJQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=FymH3hmoun7ySjKEP56xS0EqrBfSocSenRwiy1WBA5M=;
        b=rG5/f5ckzsglkbv7GTUMt9gFREbX7C8rnDyiXDJX/dVgtCQA9gTTTK8JBIrej9PqnU
         sPdVs6Zw0xS6ubwpXSlrwf9aYQMfS09B8DMCMNgWbo3G1iIFBbyVjzFkDpkkZoTDTPGl
         v2zPTUFtc5NLaWksLlOjLPFVTsGBi96wTPBCMJAEie2dCRDGw0wRdKSZYMZGnGzll3KY
         PRApOJyPSMZFZBbyxGENigYoLCrF0sO4ji6pJa8K2lGkTGa5gxVtoCeWaQPjo+adZsiw
         CxIXiB5n8Oy7bp/gfL/6QU7Jr5FG0isR71X+PULJBx15FDJDOedteI30jzAmNmgb+v7X
         BCPw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="AUoScv/g";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=sApOJQXY;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id k26si418120ioh.5.2019.03.13.07.18.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Mar 2019 07:18:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b="AUoScv/g";
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=sApOJQXY;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 3077C245A5;
	Wed, 13 Mar 2019 10:18:19 -0400 (EDT)
Received: from mailfrontend2 ([10.202.2.163])
  by compute6.internal (MEProxy); Wed, 13 Mar 2019 10:18:19 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=FymH3hmoun7ySjKEP56xS0EqrBf
	SocSenRwiy1WBA5M=; b=AUoScv/gUWgkEI/fHRAQBftGJ8ELeAKq91uivpDqXxy
	FlXT+0tJ1jvlAMC3LUNK9HJjLIGTipR4B42mMA17037gSqYwkw0cEDdsrl1ooz+f
	WcLgDyJKaPLsvHh6xl2I3Tpn+VZk8N8yu3NKWBl64zPFCaXv+8+JLk/v9sAIVWK1
	+oeXb30OLxFN+kFigGOOz/4C0KccPGlVY0DF8dhwHmWecwZiLls6yumSM7yZEgEM
	IZ7Y1a4xxv3vTJV4OY/CCLjiFJi2ZiTt+nuA9JVl52PYB2gEav4Hj3wohxb4RBfj
	zjLS3Hw7lovnbmmqczLWtxvJ+Gh95JIshnQ33dImavQ==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=FymH3h
	moun7ySjKEP56xS0EqrBfSocSenRwiy1WBA5M=; b=sApOJQXYdrTUdeB8PDlJFx
	jVSk8cnGSf/e8e1eOfy3/h4oAC+4rUaFcuiojDiQ4iUdpGXb+KBln2CSk5JCIz79
	HuQL271RLr4KTPAcaOSYxiWu7ZWxh1MJR4wlIKFCJWbGpueZWkDt1GMzlJuWrHMa
	AkXD7fomYbn2vum+lKNLkZ8vfvhr8nYOQlaQVm8w/QjsbVpXTry2oN/aQcLiK0Xz
	+rAIqVLg2M2eVZFVArIxn6oc3DY/9Ubd+RyayP+4Cd6vyvKqHVBJTICRtQkfgFWN
	UTdiU7aoVe4zDUo4ONKjYp+Ld7oanS1aDeuTyvz7a4+iN5XtNkPOjTagJmCYoQqw
	==
X-ME-Sender: <xms:KhGJXK47grTzxZ7vOTt2gWDUy61yCnlbZfv4zEgncPClHmDjKOxq1w>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrhedtgdeivdcutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necuffhomhgrihhnpehkohdrhihouhenucfkphepuddvrddvjedrieehrddvvddunecurf
    grrhgrmhepmhgrihhlfhhrohhmpehgrhgvgheskhhrohgrhhdrtghomhenucevlhhushht
    vghrufhiiigvpedt
X-ME-Proxy: <xmx:KhGJXOL1amFw12UElNKJqHpW_aRK7h1ycOVNKXFIvy-KgU3Dfxfkgw>
    <xmx:KhGJXIZpEDm-cIZYv8HDgGEVwAvBwFKlcfj8ur-MEArTHGXvphQ9Sg>
    <xmx:KhGJXOxwkqTJzJcnJsKNL_5FT1z26hNNJgV-xcjO2-GiMdWTyYAGuQ>
    <xmx:KxGJXN0McuXX8unyB33wNHNA2g9VuVIWP03llFTx4DsB2JD1N7aSSQ>
Received: from localhost (unknown [12.27.65.221])
	by mail.messagingengine.com (Postfix) with ESMTPA id 599AC10312;
	Wed, 13 Mar 2019 10:18:18 -0400 (EDT)
Date: Wed, 13 Mar 2019 07:18:17 -0700
From: Greg KH <greg@kroah.com>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCHv2] Staging: fpgaboot: Delete
 newline at the end of Kconfig
Message-ID: <20190313141817.GB5328@kroah.com>
References: <20190301090225.9475-1-etsai042@gmail.com>
 <20190301090849.GA29599@kroah.com>
 <6289455c-2178-4baf-b1ae-899b7c19fa2a@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <6289455c-2178-4baf-b1ae-899b7c19fa2a@googlegroups.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 13, 2019 at 01:34:55AM -0700, Wentao Cai wrote:
> 
> 
> On Friday, March 1, 2019 at 1:08:53 AM UTC-8, gregkh wrote:
> >
> > > On Fri, Mar 01, 2019 at 05:02:25PM +0800, Wentao Cai wrote: 
> > > > Delete the newline at the end of a Kconfig file, to silence the 
> > > > checkpatch warning: 
> > > > WARNING: please write a paragraph that describes the config symbol 
> > > > fully. 
> > > 
> > > That is not the way to fix this warning :) 
> > > 
> > > You need to actually write a paragraph, not delete an empty line. 
> > > 
> >
> Hi, greg, I wonder if it is ok to solve this problem by adding this?
> 
> Say Y if you want to include this driver in the kernel.
> To compile this driver as a module, choose M here.  The module will be 
> called gs_fpgaboot.ko.

You need to say what the driver does, otherwise the user has no idea if
they need it or not.

thanks,

greg k-h

