X-GM-THRID: 6471467521247543296
X-Received: by 10.36.117.71 with SMTP id y68mr4132614itc.26.1506769914278;
        Sat, 30 Sep 2017 04:11:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.108.195 with SMTP id w186ls832010itb.8.gmail; Sat, 30 Sep
 2017 04:11:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QB+fScyoA4CUVcBrpZoAyGW5YNtVqNcREwX8SsV2cgTbLBy/6ehiI8ibluryDkU4I3lXzy/
X-Received: by 10.36.64.20 with SMTP id n20mr3960781ita.45.1506769913532;
        Sat, 30 Sep 2017 04:11:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506769913; cv=none;
        d=google.com; s=arc-20160816;
        b=Tvw0rz2dIVktIiwB8z5jvMIc7yqQf8fmTtzR976kpBYfHUYDCaM4qHZ2B2K8Fo2KNA
         v3AIPqCm4j5nLGyFaojDv6gQvJrb3OYO6l41stAU96ah1NjtkylCFbBq3vpxNAgLHSnL
         bOnCSLU+Ql13NbzWYDpVv4HRBSz8chVsjyOVbgC2PEqp6LbvniUKfJCt8urwvZWhENoL
         IZQsTHnMOcnSIc2y+GmJ4Ed2jUzv+qCiqpBf7v0llxxAwvNkUJ4HuBAk5HiFaVgz2Lsq
         JCcjhrQ80UR29XxuKeYKS+JiEtoe7Kx16wDv5XCQ0Ec5nAzxdZaYFpNcX5N9aZxMfEkt
         1fMQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature
         :arc-authentication-results;
        bh=yIj79mblwbFuBLpGZQ0gZNAtKMngJf4eEPgayadt3tc=;
        b=pDeTOHko1PJmg/ljVDtS1ZHuqunC+pUPHylG8YaTL0x7g+HZ7JcBwrfHM6B2iHEMO/
         0VYcyQ/oQTqSDmYN/oj9HZfOj2sGerp0lFIaaYWxLl6urJDRivauALafqAtF00PJrfCl
         X/funfsgApjlW3+6v6l1V+VUphQcwjcmJqT/zSovtLZSPh1flM7uvuDdOLlcwAh02nKD
         eUwLk9WcbHek/c8xNLl65GMfURYiKaCAAmXz53BXR1NwllUAum1raxRRV+eYMTgCRgF7
         K/xPLNUCAGxAuXepHMhG8uLF98JYPYgKKQBjVplJZ5IjH+GGXDEY8JGXm8CzV8YZrAwS
         p7IA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=EE1bhtFT;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=A9S+Bc8C;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Return-Path: <me@tobin.cc>
Received: from out1-smtp.messagingengine.com (out1-smtp.messagingengine.com. [66.111.4.25])
        by gmr-mx.google.com with ESMTPS id e141si17317ite.5.2017.09.30.04.11.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Sep 2017 04:11:53 -0700 (PDT)
Received-SPF: neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) client-ip=66.111.4.25;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@tobin.cc header.s=fm1 header.b=EE1bhtFT;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=A9S+Bc8C;
       spf=neutral (google.com: 66.111.4.25 is neither permitted nor denied by best guess record for domain of me@tobin.cc) smtp.mailfrom=me@tobin.cc
Received: from compute5.internal (compute5.nyi.internal [10.202.2.45])
	by mailout.nyi.internal (Postfix) with ESMTP id D1A8420BC5;
	Sat, 30 Sep 2017 07:11:52 -0400 (EDT)
Received: from frontend2 ([10.202.2.161])
  by compute5.internal (MEProxy); Sat, 30 Sep 2017 07:11:52 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=tobin.cc; h=cc
	:content-type:date:from:in-reply-to:message-id:mime-version
	:references:subject:to:x-me-sender:x-me-sender:x-sasl-enc
	:x-sasl-enc; s=fm1; bh=yIj79mblwbFuBLpGZQ0gZNAtKMngJf4eEPgayadt3
	tc=; b=EE1bhtFTf5NWUMQK95ZxATDtpxRobVp8DA5uebY53E11lyY7QxENzaSgA
	+bq+ohWw4GNHmXX4fqJGfzKtZcQA9PPhrE8+sSOG4/8KRl8PfoviZgzHqRIY1OKw
	kZwB4fR4OttQMr7AQki/Sa0glCRHMbGdOPDAqOQ1gCnT4ZsCV0E6OzZxL40QT1aQ
	U/W8VRLaT2NeQnGL5NvTbJKgqxCO6/AZrPCXtbUg9PqoaGwiCXhFd20Tm6mi1ikH
	gaz2f2n7FSq0koil8byjnJkxkp/ppkNYiFyYHhSxHs9aM8QoUrLkjw36qm+hdALQ
	hlpfxR4WMCcZQEUek+/LwLQOzoJPA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-sender
	:x-me-sender:x-sasl-enc:x-sasl-enc; s=fm1; bh=yIj79mblwbFuBLpGZQ
	0gZNAtKMngJf4eEPgayadt3tc=; b=A9S+Bc8CgpwiDUEgTAyKxlqLXcfhcvQ8xd
	UEp/z1qTMZwzcbYWrTgGUArrOCbvGYKQq/DZOTGxho7/IdgaEVxND/pmix2JkSmg
	fh+n/Lwq/LJB8LYF9SuMsUP9W/roV77kYtj1jaDAnS5mcXT2SEBnnE8CHg/crRk8
	cneKJmmWYBtl+UMiTsHoMuN/S6o+gxvDIQ5UGBa+jSjFAvw8pyAyi2FtcIStyUPx
	yGUd6XhsDaoc3Ol4KkHKsnAl4aLZgfpGzOIpMjqYMCykIlwBq24+Vw1mGA93p9as
	6knXvkNqny8x8uMIJAy7VBg5T0lv3Am/Xl544lHIoGtYOBoZraHA==
X-ME-Sender: <xms:-HvPWfBxPmVCkKfDOsNbJN3y372Y2gutrPsB0Kn1Z9PUwJWsAyCJ9Q>
X-Sasl-enc: ZJxeXL2kMlMRBz3Je9S8YC+PDW+nayVnGpnslB8QYw+D 1506769912
Received: from localhost (124-169-110-131.dyn.iinet.net.au [124.169.110.131])
	by mail.messagingengine.com (Postfix) with ESMTPA id 297E124155;
	Sat, 30 Sep 2017 07:11:51 -0400 (EDT)
Date: Sat, 30 Sep 2017 21:11:49 +1000
From: "Tobin C. Harding" <me@tobin.cc>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com, linux-kernel@vger.kernel.org
Subject: Re: [PATCH 0/6] Replace container_of with list_entry
Message-ID: <20170930111149.GB25277@eros>
References: <cover.1506755265.git.srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1506755265.git.srishtishar@gmail.com>
X-Mailer: Mutt 1.5.24 (2015-08-30)
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 30, 2017 at 12:49:00PM +0530, Srishti Sharma wrote:
> Replaces instances of container_of with list_entry to 
> access current list element.
> 
> Srishti Sharma (6):
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of
>   Staging: rtl8188eu: core: Use list_entry instead of container_of

You may have trouble getting patches merged with duplicate commit logs like this. The reason is that
the git index should be grep'able. You may like to squash all of these commits into a single patch
since they all do the same thing. The mantra is 'one thing per patch' so this makes sense in this
case.

Hope this helps,
Tobin.

