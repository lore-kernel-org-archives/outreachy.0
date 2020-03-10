X-GM-THRID: 6802456134444646400
X-Received: by 2002:a37:a0c1:: with SMTP id j184mr11724214qke.351.1583823311250;
        Mon, 09 Mar 2020 23:55:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a37:b8b:: with SMTP id 133ls641934qkl.0.gmail; Mon, 09 Mar
 2020 23:55:10 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvztwwqv9WiiaAaVHRWYp9LChsUSwzZg1jDQkAl/zlDdnJh5WtZRtTRWzevAfIi58XueZA3
X-Received: by 2002:a37:b89:: with SMTP id 131mr18126682qkl.199.1583823310082;
        Mon, 09 Mar 2020 23:55:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583823310; cv=none;
        d=google.com; s=arc-20160816;
        b=RhhMcXr10lfsvqS3mjvUpJpL4EetNW9u8zSPCsDT1iHbmNDlAaZTxehBbBzvP9Ik6+
         vYcVlkWbaxkMCB2zgeZk8Z72rIilyVtYygKErWzdBx+bP38YVgRIgcyeCr6jt1ERtuSx
         nBndD2QfTZX2+TASRCxN58Ry2YOoDeHl6Q3LCr1WDFSVQsoDrMO/ztq+/KuzP6OnMZLa
         tyRVpXx7hWBAESc6kRqNtAUJWQg0p9jVss7+xWMpRro7ZPKSsTaseUaaGO1a6Q8OfVcW
         QbHlGBuK4o9Qduo3LMICsKBufTwMoBfchu56JXVGc3UOLRUhxSWH9Cx7bytiO8fvcg+D
         mFwg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=gKgenWy95qtNrCcCcNm+j0wNWljs4IcyCX+zaPQ/ZxY=;
        b=kvfmSOz/CofQMMj4k3qg4gHiP9oR0m4KHir5vNrx/vwLv1a3rCf6RExTIT1KbRPNSZ
         ovvZG+W+P2JIq7FIG+L6cxY8GOgA5rfF9omrp2jpQ/8Usbp/s+QMfAE4hkD5yZkQ0DoJ
         FyPkYoPOj8jje/v5s1q9tO/TMsysc1mpO9aICtoTzmxjAt01PWPpaAP2S7A3vF3muvgO
         NqwFGC6drSkQvOOeFN5gQtNuKPlP5+wwjUr+f5DocxXJik7JTGbKMDNIe01Ll/FDHrBM
         sGboqaWYCDsHUmTaWm0UaNUrrhutjsKpeXt2SBmOu6d4ZvjOhMOacqjFtK2BKsf3gf0x
         oA1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=N08+wrOm;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=J3PxeMwx;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out4-smtp.messagingengine.com (out4-smtp.messagingengine.com. [66.111.4.28])
        by gmr-mx.google.com with ESMTPS id y5si224748qkl.6.2020.03.09.23.55.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 23:55:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) client-ip=66.111.4.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=N08+wrOm;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=J3PxeMwx;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.28 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute1.internal (compute1.nyi.internal [10.202.2.41])
	by mailout.nyi.internal (Postfix) with ESMTP id A0F1021FC2;
	Tue, 10 Mar 2020 02:55:09 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute1.internal (MEProxy); Tue, 10 Mar 2020 02:55:09 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=gKgenWy95qtNrCcCcNm+j0wNWlj
	s4IcyCX+zaPQ/ZxY=; b=N08+wrOmpX2DeGXqr/5125uCWhZEjMv8/K1E/TLRSbf
	DHOP3zMAxLlueUtm/zES/Bl3pIEf68n43IL+2rm08ccZCSpgoDmLA8PXDyVv8yB3
	IYrR4ng1/VH6+pg50xz+ocvRD9dqDnxODnITnujHmZThZGxMfbn6D1XpPUjkvUdi
	bktWh+aMtWPYF/fE/lSn9ycUcti6wx+E2Dwwk4qx34ltM1ngh17eDckbOPJOPGnr
	sHN7UjAJHSMAlaJ6OByYurgF9cpnzJfVFrOZu4dHVDIIWdE6skATSPnSuhUB/tRB
	GAAi3cblz4DKqKQAyyrJCEJJ24m+PxC8RFwrpR+FOlw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=gKgenW
	y95qtNrCcCcNm+j0wNWljs4IcyCX+zaPQ/ZxY=; b=J3PxeMwxocSISZDBdl6MJr
	2QugGXeGM9ZVF+sCKdrNagguAADBdUCeWXW6gn6cBZbLsLVhh+3Qde9YlXrb34nW
	aAlQm98S61YQzBXHG4FPr+s9d08iLzzTXFcvT0LbyyEESqsS9Uq9epTXB6kRame+
	B1FXWtPoI92VoO6TN1f7J6PiUz1ynnC8lZvXnm26SUEaqJWT0ssXrc3Cokv5CSd+
	6W643uGkdXiKktAb2jqw+DXjwJeNpUq+pyRVrryDY9IH28wZIoPkYwRFmLvWyLxC
	ohyKMmYz9UTU8KHCVX1N5AVyYFlSS3H8dDhPj9x0QPzvRGqyDp19XZdibf1smUVA
	==
X-ME-Sender: <xms:zTlnXtAPXRdZvu6A0Mt7ilDKQPIPseKz6nve0vWrnz_lCCOd1wHPkQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedugedrudduledguddtudcutefuodetggdotefrod
    ftvfcurfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfgh
    necuuegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjsehttd
    ertddttddvnecuhfhrohhmpefirhgvghcumffjuceoghhrvghgsehkrhhorghhrdgtohhm
    qeenucfkphepkeefrdekiedrkeelrddutdejnecuvehluhhsthgvrhfuihiivgeptdenuc
    frrghrrghmpehmrghilhhfrhhomhepghhrvghgsehkrhhorghhrdgtohhm
X-ME-Proxy: <xmx:zTlnXn2IP0SgQArOQesVxGZIqjGpcltxomf8ECPLMM1SmV6oUPFh1g>
    <xmx:zTlnXrV06GuJCMpGyNWMNAYNHy9zNAisU8WQ2GMuPDQHJGubV5EPvQ>
    <xmx:zTlnXpnuQzAGrF1QZMwljM5RdvvvMhWPWgbFASrNkFJZy0sJl0n4eg>
    <xmx:zTlnXthsryZKWvPafdYbMHuZwGO2G94kIC3GrHzYf7pjfA3hD6hK0w>
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id 124AA328005E;
	Tue, 10 Mar 2020 02:55:08 -0400 (EDT)
Date: Tue, 10 Mar 2020 07:55:07 +0100
From: Greg KH <greg@kroah.com>
To: Wambui Karuga <wambui.karugax@gmail.com>
Cc: Deepak Varma <mh12gx2825@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Need help locating octeon_usb driver
Message-ID: <20200310065507.GC1967668@kroah.com>
References: <c4964bf2-b011-41fd-b854-182e53fce120@googlegroups.com>
 <alpine.LNX.2.21.99999.375.2003100917001.24213@wambui>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.LNX.2.21.99999.375.2003100917001.24213@wambui>

On Tue, Mar 10, 2020 at 09:23:44AM +0300, Wambui Karuga wrote:
> Hi Deepak,
> 
> On Mon, 9 Mar 2020, Deepak Varma wrote:
> 
> > Hello all,
> > I made a clean up change to the octeon-usb driver file. I tried to correct a checkpatch warning of exceed 80 column. However, I am not able to locate this driver in the device driver list during "make menuconfig".
> > 
> > I have verified the driver dependencies. I am unable to understand the CAVIUM_OCTEON_SOC dependency. Its set to unknown. Is this something referred to as BROKEN???
> > 
> 
> I worked on the octeon driver during the last outreachy application period,
> and managed to break some things.
> 
> Please cross-compile this driver with the cavium_octeon_defconfig config
> file in arch/mips/configs/ to ensure that you don't do the same.
> 
> As far as I can tell though, this driver has been removed from the latest
> staging tree.

It was removed, but it's now back as people were relying on it :(

thanks,

greg k-h

