X-GM-THRID: 6663332445434150912
X-Received: by 2002:ac8:7003:: with SMTP id x3mr7333272qtm.56.1552817535531;
        Sun, 17 Mar 2019 03:12:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:acb6:: with SMTP id m51ls5505729qvc.1.gmail; Sun, 17 Mar
 2019 03:12:14 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxXoMYkUc0F45Qt/AsAX35Xtxn9f5IDG9cba3lp/kLGRxzBmmdDgeiZtt9XRiikhs0KcC5U
X-Received: by 2002:a0c:92d3:: with SMTP id c19mr2725295qvc.38.1552817534960;
        Sun, 17 Mar 2019 03:12:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552817534; cv=none;
        d=google.com; s=arc-20160816;
        b=zPsRGpUvSRfcwgSY37fE4XAqH9EfUeJ2B0EiUpsneFSDGwoHqCKLH20PO2dThlFmOR
         4lvGMOBGEE8hIAZM27Z5bN8cZ1bwud2JR72svvgXGSi/ECgZLZM6Wi1nblLeFrvSiPa2
         zw2XBfYXY/nO+xBVyij1Qn4fo7cIXScgVwpg8/99xiIj+u7BxAD6lOcbV2/j5rTpbrdc
         Rd+bU7bZ1VED+iRdKOBp3rM6t6CmQHUpXpZmxCr7vQHzPMkcfAgw8zOvNF6cCCwsK9gE
         7jRZN02+X0udZ5KfYQtOXmgC9F82nTwClDyuoyPCLXWrk7QtEQ+Z4PuJw/Rpd0GLTCIx
         5qlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature:dkim-signature;
        bh=wYHrcrbDHqomatWjElM0Z0J2Z+tIZEBoZoSVfWrNkm8=;
        b=JUAkEO+q72yw8FDT8d/EI8fGrSfu5kCxILJY/YQT0WTZnwsh5H63MaiSe1ejqNgWDU
         /CNJpOpgUM9N/3DYdyh0nLN4RDMv/51df+fGwm5Vi4h5qfprmUiZlosytRyCYdZiywOk
         PEIHEdj+9cVSUEl/LcWH7eMY/+rIU3VLZv+vnocq9vL/XLg/x5dCl23xnINpHO+hhGOz
         RmOVLxBWqZMuv9dh1JDSEm89MakCpb6fk18Tdd8P5/sMZP2y+pPnD/xuqJP1rFaO9ShP
         +z6XzuMtBl8l1I5RQKkOfrJhSzTYe8ok21FAw5PUvOJCkf+lRG1Hso/3vMTb9QfRct5g
         o7lA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=eA7h7ysS;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=peMnp9RX;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Return-Path: <greg@kroah.com>
Received: from out2-smtp.messagingengine.com (out2-smtp.messagingengine.com. [66.111.4.26])
        by gmr-mx.google.com with ESMTPS id 27si476709qtp.1.2019.03.17.03.12.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 03:12:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) client-ip=66.111.4.26;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kroah.com header.s=fm3 header.b=eA7h7ysS;
       dkim=pass header.i=@messagingengine.com header.s=fm2 header.b=peMnp9RX;
       spf=pass (google.com: domain of greg@kroah.com designates 66.111.4.26 as permitted sender) smtp.mailfrom=greg@kroah.com
Received: from compute6.internal (compute6.nyi.internal [10.202.2.46])
	by mailout.nyi.internal (Postfix) with ESMTP id 8E1F121909;
	Sun, 17 Mar 2019 06:12:14 -0400 (EDT)
Received: from mailfrontend1 ([10.202.2.162])
  by compute6.internal (MEProxy); Sun, 17 Mar 2019 06:12:14 -0400
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=kroah.com; h=
	date:from:to:cc:subject:message-id:references:mime-version
	:content-type:in-reply-to; s=fm3; bh=wYHrcrbDHqomatWjElM0Z0J2Z+t
	IZEBoZoSVfWrNkm8=; b=eA7h7ysSl3JTUtdMLko8tG77aCRchPCyeqTYvhzAEou
	N0Nh5wKEpIH0TDUX4Zt4icMUEZf5ATDJV0v+ytYhB+8bKNV1eANOSKf4pOLmvPIY
	DAioO/YhXnfHWbt4F/ud/cpFBW8QVTWX4EbxhYd1zsJJGtTA5YdS48G1LStjL4l2
	DbCfupSclz6Hh5Fh0A4vAbh2/4NOBCBRiTqpBguKuzx/BSv9GNPD3I8FvP7KCM3u
	m6lRES8Zr96gFiEmZ0kPHlGosFQU1qBtEMCJsihBjFCF9nXVciqt5LVU+l6CAzzb
	pl8hoP5q7cHxETXc8G1zD9pVwzurVDnrpcte/8S+fmw==
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=
	messagingengine.com; h=cc:content-type:date:from:in-reply-to
	:message-id:mime-version:references:subject:to:x-me-proxy
	:x-me-proxy:x-me-sender:x-me-sender:x-sasl-enc; s=fm2; bh=wYHrcr
	bDHqomatWjElM0Z0J2Z+tIZEBoZoSVfWrNkm8=; b=peMnp9RX9RWR3NpTWludZE
	fmpZfj6b5qFVhmZxXqM2HGveW/x+UnQoj29T+SoDxwZojRnZplgOJPYnXmWSZELf
	EmTy2g9ZvgRTVdNuzLr/WE3y1vjPD/sBNHVZbqZEX5PhZz7I40zleOU1YTAh/ytS
	+od398BGJ+hBEX3efiZGhm6O2AOHVnQMKYOGGrNjo0neZWnZ/9UdY4uSj5+bZHsB
	RvKfJzByXh590A324UeR+Whd9pHv/sEiknIbyAgQ+jleRl5Zyx/gTT0EKqweIXGt
	hxKoq8Nkc1sIxTa6cOf/i0iqzKjCsA9BMTqfvkEjIj6R+2g7PYMZa2MyMdnwbWkA
	==
X-ME-Sender: <xms:fh2OXDis0MP2pURuAHCK8gW8z8-G39LXyqqCwgT-un8I04-aQi9KTQ>
X-ME-Proxy-Cause: gggruggvucftvghtrhhoucdtuddrgedutddrheelgddufecutefuodetggdotefrodftvf
    curfhrohhfihhlvgemucfhrghsthforghilhdpqfgfvfdpuffrtefokffrpgfnqfghnecu
    uegrihhlohhuthemuceftddtnecunecujfgurhepfffhvffukfhfgggtuggjfgesthdtre
    dttdervdenucfhrhhomhepifhrvghgucfmjfcuoehgrhgvgheskhhrohgrhhdrtghomheq
    necukfhppeekfedrkeeirdekledruddtjeenucfrrghrrghmpehmrghilhhfrhhomhepgh
    hrvghgsehkrhhorghhrdgtohhmnecuvehluhhsthgvrhfuihiivgeptd
X-ME-Proxy: <xmx:fh2OXPO-_v2mWI--_G67O6yBDiGZcXQjRtaz_RXH-l6DLkG6g8LL4Q>
    <xmx:fh2OXFwKO4TDWGRvRXD3CggF-PsAatKtPFE6_94tJcpqPLEHL4RWRA>
    <xmx:fh2OXJpKk3XMZhc8EpDkvaP5wViwr7beryTGwRuYIWr107bNdgKUbQ>
    <xmx:fh2OXO7by2ocDEdWCl_ggumku_yfcWYSX-p3Gx-VwUO1dQ5ByVsFFA>
Received: from localhost (5356596b.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	by mail.messagingengine.com (Postfix) with ESMTPA id DB56CE435E;
	Sun, 17 Mar 2019 06:12:13 -0400 (EDT)
Date: Sun, 17 Mar 2019 11:12:12 +0100
From: Greg KH <greg@kroah.com>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: gasket: Replace symbolic
 permissions with octal permissions
Message-ID: <20190317101212.GC26906@kroah.com>
References: <20190301081238.6440-1-etsai042@gmail.com>
 <20190301081903.GA7969@kroah.com>
 <389b7861-7a78-429f-a150-7b2987f0f123@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <389b7861-7a78-429f-a150-7b2987f0f123@googlegroups.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Wed, Mar 13, 2019 at 01:50:33AM -0700, Wentao Cai wrote:
> 
> 
> On Friday, March 1, 2019 at 12:19:07 AM UTC-8, gregkh wrote:
> >
> >
> > This is fun, it keeps coming up and no one looks in the archives to see 
> > why I keep rejecting it :) 
> >
> > This should be __ATTR_NULL(), but really, the whole macro can be deleted. 
> >
> > >                  .data.attr_type = 0,                                   
> >         \ 
> > >          } 
> > >   
> > > @@ -75,7 +75,7 @@ struct gasket_sysfs_attribute { 
> > >   
> > >  #define GASKET_SYSFS_RO(_name, _show_function, _attr_type)             
> >         \ 
> > >          {                                                               
> >        \ 
> > > -                .attr = __ATTR(_name, S_IRUGO, _show_function, NULL),   
> >        \ 
> > > +                .attr = __ATTR(_name, 0444, _show_function, NULL),     
> >         \ 
> >
> > __ATTR_RO() please. 
> >
> > Hi. I just submit a patch to fix the first __ATTR_NULL, but I have some 
> question about the latter one.
> I understand it is better to use read only attribute here, but by changing 
> __ATTR to __ATTR_RO, since the new macro does not need the _show_function  
> parameter:
> 
> > (linux/sysfs.h, line 115)
> > #define __ATTR_RO(_name) { \
> > .attr = { .name = __stringify(_name), .mode = 0444 }, \
> > .show = _name##_show, \
> > }
> 
> it seems to me that the second parameter in this macro should be deleted, 
> which means all other file which calls this macro should be revise. 
> I think it's a big code change, and don't know whether it's suitable to do 
> this. Could you give me some advice?

Yes, it is a big code change, and if you are not comfortable with it, I
would not recommend it at this point in time.

This is also why no one has done it yet :)

thanks,

greg k-h

