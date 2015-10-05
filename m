X-GM-THRID: 6200341306580926464
X-Received: by 10.66.227.166 with SMTP id sb6mr24563722pac.0.1444022238307;
        Sun, 04 Oct 2015 22:17:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.99.197 with SMTP id es5ls1255440obb.80.gmail; Sun, 04 Oct
 2015 22:17:17 -0700 (PDT)
X-Received: by 10.182.28.100 with SMTP id a4mr24631144obh.20.1444022237860;
        Sun, 04 Oct 2015 22:17:17 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x235.google.com (mail-pa0-x235.google.com. [2607:f8b0:400e:c03::235])
        by gmr-mx.google.com with ESMTPS id el2si3433302pbb.0.2015.10.04.22.17.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Oct 2015 22:17:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) client-ip=2607:f8b0:400e:c03::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::235 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by pablk4 with SMTP id lk4so164355646pab.3
        for <outreachy-kernel@googlegroups.com>; Sun, 04 Oct 2015 22:17:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=R6/22nOGXdLjE/U2Eg19CVfHmVYlnGBxN/ownYVF0Tc=;
        b=IGvh0cpX1q0o/v+8JXKhvRZBcxjm036eRs+l3bCpRMHzh6kcqAjCTYy6SNO/s/hqvT
         On76XXCMRmaKWjL3W09LMKU26v3eGJ32wNaQzsu83OtzoewJYpAWGT6AshEItBimbYK4
         0JSL+6tFjcP9FkHod2Ec87GCkZ6z4CLltQAtcnzoTQLnWAe2PxpNwON6XLFXZSDC6N9N
         Y+NfxSCsVFb9+omrf4R9mE8oEMRBCkAK3SW8EzjhaTRBrSC3nWSxilzZgiOD3+JMN/FW
         PXpJ0ry1O2yNy16HJcxheAlLwItOIc+S/b5usv+Ubt16X4TcrQ6jpO3bLVn8VHRdil34
         XT8Q==
X-Received: by 10.68.202.9 with SMTP id ke9mr37820174pbc.85.1444022237649;
        Sun, 04 Oct 2015 22:17:17 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id bs3sm24876357pbd.89.2015.10.04.22.17.15
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Sun, 04 Oct 2015 22:17:17 -0700 (PDT)
Date: Mon, 5 Oct 2015 10:47:05 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: Ksenija =?utf-8?Q?Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>,
	y2038@lists.linaro.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [Y2038] [PATCH v2] Staging: fbtbt:
 Replace timespec with ktime_t
Message-ID: <20151005051705.GA20276@sudip-pc>
References: <1443629449-12352-1-git-send-email-ksenija.stanojevic@gmail.com>
 <4117012.VUd9JF0oa2@wuerfel>
 <CAL7P5jL8Y5EORR4pvZHEhc9nKJuh7p+v_k_Kcjy8dXidiBq7Bg@mail.gmail.com>
 <5548451.nrtKaPCYPk@wuerfel>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <5548451.nrtKaPCYPk@wuerfel>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Sun, Oct 04, 2015 at 09:34:40PM +0200, Arnd Bergmann wrote:
> On Saturday 03 October 2015 21:15:46 Ksenija Stanojević wrote:
> > On Thu, Oct 1, 2015 at 10:05 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> > > On Thursday 01 October 2015 19:44:46 Ksenija Stanojević wrote:
> > >>
> > >> In my local repository I modified my .config file so that CONFIG_64BIT
> > >> is not set,
> > >> and after that I recompiled all directory, but I don't get any errors/warning at
> > >> compile-time.
> > >> Also I separetly compiled this specific file but still no warnings
> > >> My .config  looks something like this:
> > >>
> > >> . . .
> > >>
> > >> Should I change my working kernel or .config file is just enough?
> > >
> > > I think the problem is that you only compiled that directory but did
> > > not attempt to do a full rebuild of the kernel and modules, which is
> > > required to catch link-time errors.
> > >
> > > The compiler does not know at this point that the 64-bit division function
> > > is undefined in the kernel, you only get a warning at the 'make vmlinux'
> > > link stage (for built-in drivers) or the 'make modules' modpost stage
> > > afterwards.
> > 
> > I rebuilded my repository with:
> > make vmlinux
> > make modules
> > but I still don't get any warnings.
> > Do you have any other suggestion on what I'm doing wrong?
> 
> I just tried it on my machine and I get (for an ARM build)
> 
> $ make -skj30   
> ERROR: "__aeabi_ldivmod" [drivers/staging/fbtft/fbtft.ko] undefined!
> 
> Two possible explanations why you don't get it:
> 
> - your .config file got changed back to CONFIG_64BIT being enabled
> - you don't have CONFIG_FB_TFT enabled in this build.

After modifying manually .config file use make oldconfig and then make
prepare.
I think i missed the beginning of the thread. Are you saying that fbtft
build fails on 32 bit arch?

regards
sudip

