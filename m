X-GM-THRID: 6749323707377778688
X-Received: by 2002:a1f:5742:: with SMTP id l63mr2037302vkb.38.1572009771270;
        Fri, 25 Oct 2019 06:22:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a67:f491:: with SMTP id o17ls936229vsn.16.gmail; Fri, 25 Oct
 2019 06:22:50 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzk3zLl38J8rqZfQkN8llx/zT0cTdtmtoKdAt38XErwrQ38biqKTPSM9qHSgHdFaaV/90+h
X-Received: by 2002:a67:304a:: with SMTP id w71mr1862014vsw.92.1572009770466;
        Fri, 25 Oct 2019 06:22:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572009770; cv=none;
        d=google.com; s=arc-20160816;
        b=Z9pxuTJKFygJtvOd9Q850wKTfTDPkqAHSRJntQjNvM+LxUutP7RNOnKQJMtvAK4gzz
         lZMCSFTO+a/b7PdfGpQ+ruAy3Aym6GfiFaAnT99pY8nEg/GUQvM1gxUw7D0LDIhYvTXb
         5PLCwnEakQYzgQKiDJEYgxLrIhh6u7Dnso76H2r5dOVQuy9NwtBPdCADKm6Iq9YrPCEW
         RVIRknDgRr8Zo7W5i+X7x8vfgX5dLmmOJJD3/9HuWoTv0MhJOHX5s4L9K+xXD62pKFDF
         UNf2ebFidDx09QwO88VGoDpdQqutkm+a0gLmIoRI9/VjMcmrtACAU9197Feb1dWcq9nL
         4HPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=zaHU/TiESOOA02ysydYRdjPmTChuDf+4yKrOr0Sba8k=;
        b=UaHb5P1ejWeYOoMwz4sRDgaXE7vcDOQn1B1LYM4o1sBVu+DdNOZI/7sOoh88arFkcd
         AKOPFBM0+4N4iTcKxtd6JlTdXfBWONssYOwi4KFwaz4elUB3zw8BrMoGSpdPLcsYoC8v
         hI4OV//DmOdIjMdgIA/NUDEDFHRLMHpfFqcUWJDn0I6WyzSEnQUkw2+B73VZIEYPRx4W
         9I3OE30UBP1moOU9Bf6styI2PuBMGQ+xs2zOyhLbreCVh1fUzG9LWK7Edpdig0NHZtZu
         d4sTSpTTUXGhpSS18HnoOhEJxV1CTFldOPX+5+P3GvFSDu6iZNKQCbnX6YvKmmSKGBNy
         8+Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=dJ2otkbG;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=baW9LXwi;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id a12si195387vkm.1.2019.10.25.06.22.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 25 Oct 2019 06:22:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm2 header.b=dJ2otkbG;
       dkim=pass header.i=@messagingengine.com header.s=fm1 header.b=baW9LXwi;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id D456721C48;
	Fri, 25 Oct 2019 09:22:49 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Fri, 25 Oct 2019 09:22:49 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm2; bh=zaHU/TiESOOA02ysydYRdjPmTCh
	uDf+4yKrOr0Sba8k=; b=dJ2otkbGQLnQU1THLRIS5sJAP2sujVjpe5rktyUMko8
	AL9Zez6akDrJvRr+RyeM83RWFAxjEwXU1I5A3ki9H+5B15lIXNSpQUyCcY9LniEz
	VX7ewJrYKHBYXCQo2eNCFPgN21ntAPmTiT5Fm1aEp0lMtia3jgySghd9WVIqoyfh
	zQ9jYG/2Vz7aoejAlddcGvb5GIV6Ne+gg43dl7OmFHd/a1ZZHaodTZOosaeud6vB
	era0m0xbGLpFmRNnjznnEzlKeiUnSjo7vOPPddxeVM+9kFPvKbB3arlOkfCePgYP
	7jsZYV6AImOe0MkgiH+KB+k85EILdZKUd5TDtSe58eA==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm1; bh=zaHU/T
	iESOOA02ysydYRdjPmTChuDf+4yKrOr0Sba8k=; b=baW9LXwiYto9AaIafxiu/c
	ubHZDyQDtMOQegpHKQL36ibkLGA2IK27NLXEUWFMt3LFZlBsczeT/dzsUdrALFX/
	J+I3sn9g9ODKSKHC9wrXmVDvS2OqxNmx5zS1BR5qqb1zzCgitkl+MUEGYjUwbAM5
	G8KdJ6aeeN1u0LTYRSsKM4pNLTw+v604zdOcpKBTH4f2wEfzodCggbIYpsdvix/D
	owe0ZvHX4EOnmRSQW+g4Ku50FEs8A9U8QN4PmmTo/HpYYelTpG/xHXGYazUw35jh
	nkkrJ2rK5DIw+Lm3TkC/DScFWMEZwh9mw07VZCU5cCwZyWoHexVNltjF3k0rdv1A
	==
X-ME-Sender: <xms:KfeyXQCNKYjVyUMhw08f9RVdgHyjbZMskL3iIa6ADPedRSYu6FxfCw>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedufedrleefgdeigecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necukfhppeekledrvddthedruddvkedrgeeinecurfgrrhgrmhepmhgrihhlfhhrohhmpe
    hgrhgvgheskhhrohgrhhdrtghomhenucevlhhushhtvghrufhiiigvpedt
X-ME-Proxy: <xmx:KfeyXa6ho7SPvQri0EhikkiCGNq1E4rUcgBrnvx2nLkbH3Cs9WiVjg>
    <xmx:KfeyXVyDGgiU9ImfFG53sZUoyTwvQeR0LUnv_sl5bqRKMGajtyNMMw>
    <xmx:KfeyXenHfBcYGSQdTiB5iLTAZ-ktn8a6o7Z93yz6gHcCj12V3n-Jww>
    <xmx:KfeyXSNJVN_QDgWe6Ydnc_ZAfP3RqoYYktfx6BLA6otgpErZynRKTQ>
Received: from localhost (unknown [89.205.128.46])
	by mail.messagingengine.com (Postfix) with ESMTPA id 381D28005C;
	Fri, 25 Oct 2019 09:22:49 -0400 (EDT)
Date: Fri, 25 Oct 2019 09:20:53 -0400
From: Greg KH <greg@kroah.com>
To: Javier Arias <jarias.linux@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: rtl8723bs: Fix line over
 80 characters
Message-ID: <20191025132053.GA552416@kroah.com>
References: <cover.1571448899.git.jarias.linux@gmail.com>
 <eaa22be21885d04e47f1be2ad7be007182bf22bc.1571448899.git.jarias.linux@gmail.com>
 <alpine.DEB.2.21.1910190832180.2701@hadrien>
 <aebb6e6e-5415-4e97-95f5-f882ee01f88c@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <aebb6e6e-5415-4e97-95f5-f882ee01f88c@googlegroups.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Thu, Oct 24, 2019 at 10:49:06PM -0700, Javier Arias wrote:
> Hello again Julia,
> 
> I updated the patch but I didn't receive any feedback nor acceptance by 
> Greg. Is there something I'm doing wrong?

I have caught up with almost all outreachy patches, but not all.  Give
me another few days to do that.  If you have not heard back about a
patch within a week, feel free to resend it.

When I have caught up with everything, I will email the list letting
people know so that if they sent something and did not get a response,
they know to redo it.

thanks,

greg k-h

