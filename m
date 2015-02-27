X-GM-THRID: 195205005312
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,d9c8d97a359f39c0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.144.130 with SMTP id sm2mr1965827lbb.9.1425032588487;
        Fri, 27 Feb 2015 02:23:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.13.74 with SMTP id ew10ls86027wid.20.gmail; Fri, 27 Feb
 2015 02:23:08 -0800 (PST)
X-Received: by 10.194.221.65 with SMTP id qc1mr1933755wjc.7.1425032588106;
        Fri, 27 Feb 2015 02:23:08 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from mail-we0-x234.google.com (mail-we0-x234.google.com. [2a00:1450:400c:c03::234])
        by gmr-mx.google.com with ESMTPS id o3si79709wib.2.2015.02.27.02.23.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 27 Feb 2015 02:23:08 -0800 (PST)
Received-SPF: pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) client-ip=2a00:1450:400c:c03::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of mahfouz.saif.elyazal@gmail.com designates 2a00:1450:400c:c03::234 as permitted sender) smtp.mail=mahfouz.saif.elyazal@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-x234.google.com with SMTP id x3so19059315wes.6
        for <outreachy-kernel@googlegroups.com>; Fri, 27 Feb 2015 02:23:08 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=g1cVJa57+jnoU3d50IqZCJ38IOwNMq9xfhu0eBj3CKs=;
        b=wpu4puxIrysZqmMcdgaCkAbvOkmWt3aj2GYim5aK/ys+riPJTQlDolMhVqlfnMKwpc
         78GxK+ODjV/yfrrM6XzX5wahIDPILanlaHam97JZ452jTJZKVtD7aiX7ImygXWnyCal0
         MGL4wAjyQo0xe9NIJk0rMBDLUKpfIGL+P8Adnz1xg1gunHeGJmFhBlzQfkdvJCzT6UZr
         Fe657Z4jYI7QUmi0fux85fLsVl0iHyx8Y/4z5zQwwca+VQufeD2EDmT9CHZEUloyzetk
         Q/Cj0GvgLFkaZppai9MeumeC6tJx/ENliPYEdh2TUpSyJx4HhR3Gc4t1kdZhaZWZHd8i
         nj0Q==
X-Received: by 10.194.177.195 with SMTP id cs3mr25436876wjc.141.1425032587991;
        Fri, 27 Feb 2015 02:23:07 -0800 (PST)
Return-Path: <mahfouz.saif.elyazal@gmail.com>
Received: from localhost.localdomain ([196.205.192.222])
        by mx.google.com with ESMTPSA id vq9sm5316234wjc.6.2015.02.27.02.23.06
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 02:23:07 -0800 (PST)
Date: Fri, 27 Feb 2015 12:23:02 +0200
From: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com, Julia Lawall <julia.lawall@lip6.fr>,
	Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: vt6656: replace memcpy by
 ether_addr_copy
Message-ID: <20150227102302.GB23336@waves>
References: <20150217200055.GA11277@localhost.localdomain>
 <alpine.DEB.2.10.1502270644080.2709@hadrien>
 <20150227055349.GA22452@waves>
 <2558044.p0KZ9zyzql@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <2558044.p0KZ9zyzql@wuerfel>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 27, 2015 at 09:53:06AM +0100, Arnd Bergmann wrote:
> On Friday 27 February 2015 07:53:49 Aya Mahfouz wrote:
> > On Fri, Feb 27, 2015 at 06:45:35AM +0100, Julia Lawall wrote:
> > > > > It's usually just easiest to build the whole tree, you can do it quicker
> > > > > by doing:
> > > > >   make -j16
> > > > >
> > > > > replace the number with 2x the number of cpus you have, and you should
> > > > > be fine.
> > > > >
> > > > > good luck,
> > > > >
> > > > > greg k-h
> > > >
> > > > ok, Thanks!
> > > 
> > > I guess that the problem would have been seen by just compiling make
> > > foo/bar/file.o?
> > > 
> > Yup! works for me and my poor old CPU  Thanks!
> 
> It's also what I normally do, or for the whole directory
> 
> make foo/bar/
> 
> which will build all files that are turned on in the configuration.
> Using 'make foo/bar/file.o' will try to build that one file even
> if it is disabled in the configuration, which may or may not be what
> you want. The advantage is that you don't have to figure out how
> to enable it, but the downside is that it may fail to build in your
> current configuration because of some other configuration option
> rather than something you did.
>
Thanks Arnd! Yeah, I usually see that some symbols cannot be enabled
unless their dependencies are enabled too.
> 	Arnd

-- 
Kind Regards,
Aya Saif El-yazal Mahfouz

