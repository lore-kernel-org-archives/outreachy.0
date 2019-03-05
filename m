X-GM-THRID: 6664617547649777664
X-Received: by 2002:a17:902:20eb:: with SMTP id v40mr359165plg.68.1551769522275;
        Mon, 04 Mar 2019 23:05:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a62:5788:: with SMTP id i8ls4851829pfj.0.gmail; Mon, 04 Mar
 2019 23:05:21 -0800 (PST)
X-Google-Smtp-Source: APXvYqwz9+NXGu2tmovc01F0q8vJfQzzj3ZOOKPyUrDPibnrdGAIYaiYmo5R2qK2S+WmmYk+1r+e
X-Received: by 2002:a63:f252:: with SMTP id d18mr34294pgk.69.1551769521497;
        Mon, 04 Mar 2019 23:05:21 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551769521; cv=none;
        d=google.com; s=arc-20160816;
        b=Cwfrl+VcH5q2TNOUQLRH6lHVTwM2GrW2jvvdJicD1/HdHz48TX0f5mdZGjNkfREF63
         xm+PgCVeGEz/jS9toXq5DmkwCbpYFKnr7sF2GW4EL8/LA+zK5VP7PUUu2PY0as0PydWG
         ulJ8DX+ueCTFfUXeAOJLCrb8AabD3LsdJdTd9K7Lbj29AHN1AgD55ZPkN509jLChlb63
         YUJFb+F+VcmjgzvXM9TQu/Y/MCqx2uMmNSvOe04QiQ0gzcRpUs8cWL3DxVleCDp6AIi+
         JfugNAT7fiXKZhe+OEoToapxUdq9DKJinA3u8tjzoh/XIsWgutlLYw2VO6jBMklT+ShD
         jwZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=1wFCVYqjQU2kHpyf4ohRgXT+QtnVt67b+tHndzIf5pw=;
        b=OvyjhAfS6ZpAcWUdnV8hD1Py7lXzRel91+p3sNUiNyyJmHKU/PNQid5dQqzMxzLHRm
         IsLDun5LyxikRCGkcjHda9v+dExg+tvSL6DE/+eU1Zp+iOLm9DKNXrb68kij982hz+ZF
         skffUjSnsZQmrKK8TEaTtwA9D7+/ASTqOU5JKnToleVSxqCCmAwUUAdZKFSJfXIvLpAL
         uc4Xy9Pze8kvT383+ZJh2ORAbmiwx3NXxXefYuGtmSbpLC/4SENB5arb6q1bkQVFDUIh
         Ae6AVTNKKoPGu36OPQzI+e+lC46oStmujOFGt7V+/EOfd/e+s8zMq7ipqJB9/exsumq+
         NEoA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=e6auo8xE;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=l6YTHVd2;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id 3si393641pfs.4.2019.03.04.23.05.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:05:21 -0800 (PST)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=e6auo8xE;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=l6YTHVd2;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 3F34C220F9;
	Tue,  5 Mar 2019 02:05:20 -0500 (EST)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Tue, 05 Mar 2019 02:05:20 -0500
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=1wFCVYqjQU2kHpyf4ohRgXT+Qtn
	Vt67b+tHndzIf5pw=; b=e6auo8xEou1xPrfQM6/XUaSRMAcBrRhxPgA7NZJtaW3
	PpGT0oBi9mA7DR+75l8aqbv14eivaUv482Ry7Wbeh05h4p3arwHnyjEHb3UTI+qE
	4ay6opmP5r29lEr84AugFnNQ2ZvXHj0zomUo5MxIOCijSJny3e2bVSsLKE/2lQsN
	nAlxnIKI7gBrZCACq/WxsGigB3SnUB+LV0bODxzaGwa5aEtbFxZD0JrFi6TcQQI8
	QanZHSHV2WI6JNmWYdxX53yEnR549jsSZyzGAkwOTc4ROCIKoroTV8sqtemfPmWy
	/kapFJzsGJnvYzUBVSYdGb00KzJRlJrlsXD2OISxHyg==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=1wFCVY
	qjQU2kHpyf4ohRgXT+QtnVt67b+tHndzIf5pw=; b=l6YTHVd2kms02HKhg+737f
	GPvuFlx8RfoUTSRWldXTLozYdptbCcmjCxhSCfQpKSiCmUMq1WIuzgx54wWUNp0Q
	1AUY3UlwD3hmqSvyHmg0OkXKAZIBofRm0DLdwvZBkj76GE64WQBNGmb+pNBmPjSE
	e6b0Ylx8WUFboGW1Zajpy45Yu1W6Af5YYB9W6MjMId5FF4fc4/eEJ0oGJzC6B3+b
	zN7GpquCpMWDpV16WEFzgK6kdYWcS/nvevcx5139KAQwIrjCIfbOi1uipCZp87ch
	Iqeio23JsRbIS5C4Kgh/qLNNUpuygXg3MNWzFf5Sdh7rbBupRZ+ctgIj7NSyEEeA
	==
X-ME-Sender: <xms:rx9-XK-5F4WoBsPfrUGbrUtJ1JKqLhyN_ym7AY7MiQkxLMYFxVV3Zg>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrfedvgddutdehucetufdoteggodetrfdotf
    fvucfrrhhofhhilhgvmecuhfgrshhtofgrihhlpdfqfgfvpdfurfetoffkrfgpnffqhgen
    uceurghilhhouhhtmecufedttdenucenucfjughrpeffhffvuffkfhggtggujggfsehttd
    ertddtredvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:rx9-XEXNjGcc7Zfe-__k_NP253v_k5PPNSydDGwVyuKQ7lEaZIVQuQ>
    <xmx:rx9-XDfMYNVnMgbAgsW5TrKhRsDdAnfxTq7JOMchoPp4xdOUimLgGw>
    <xmx:rx9-XJU9bDRYSNu3-MBqccXPE_0tr0HF167_UaodEkAwXFAzhwXokg>
    <xmx:sB9-XDADpTuOh6YPoJX_eNAKE5fjPiKuLUH5anUIUFxNxYmpz7zFxQ>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 3F757E40C1;
	Tue,  5 Mar 2019 02:05:19 -0500 (EST)
Date: Tue, 5 Mar 2019 08:05:17 +0100
From: Greg KH <greg@kroah.com>
To: idebleenasen@gmail.com
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Regarding undocumented string
 checkpatch.pl warning
Message-ID: <20190305070517.GC1538@kroah.com>
References: <CACw+u4ENfxYmSmGHaFMZ=rKjjNVvO3P=RezCF8dJEZOnp-xSCA@mail.gmail.com>
 <f28dc17c-9521-4f21-8ca5-a54d79adac81@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <f28dc17c-9521-4f21-8ca5-a54d79adac81@googlegroups.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 11:50:35AM -0800, idebleenasen@gmail.com wrote:
> On Tuesday, March 5, 2019 at 12:49:53 AM UTC+5:30, Debleena Sen wrote:
> >
> > I came across the following warning in drivers/staging/wilc1000/wilc_spi.c
> >
> > WARNING: DT compatible string "microchip,wilc1000-spi" appears 
> > un-documented --check ./Documentation/devicetree/bindings/
> >
> > I referred to  ./Documentation/devicetree/bindings/  and checked /staging, 
> > resource-names.txt, vendor-prefixes.txt but I could not find anything 
> > related to microchip or wilc1000.
> >
> > On referring to ./Documentation/devicetree/bindings/spi  I found a text 
> > file "microchip,spi-pic32.txt"  but I do not think its related to WILC1000 
> > driver.
> >
> > What should I do to remove this warning? 
> >
> 
> Wanted to add that I found another text file in drivers/staging/wilc1000 
> itself named "microchip,wilc1000,spi.txt". I think this is the required 
> file. Should I move/copy this file to ./Documentation/devicetree/bindings/ 
> to remove the warning?

No, staging drivers are supposed to be "self contained" and not need
changes in other parts of the kernel.  That doesn't work well with DT
files, so for now, until the driver gets merged to the "correct" part of
the kernel, the DT files stay with the driver itself.

Please do not move that file, as I will not take that patch, and you can
just ignore that checkpatch warning, there's nothing to do for it at
this point in time.

hope this helps,

greg k-h

