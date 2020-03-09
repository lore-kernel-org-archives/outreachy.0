X-GM-THRID: 6801966173715955712
X-Received: by 2002:a1c:f319:: with SMTP id q25mr89531wmq.142.1583771889209;
        Mon, 09 Mar 2020 09:38:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4d42:: with SMTP id a2ls6140882wru.9.gmail; Mon, 09 Mar
 2020 09:38:08 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vt07DGq9cWnyVFhDohdpmJwKLES5QcY5YVyP3PfAXpP5/quQrQVRVokM5VqLC/EA+AkPwBJ
X-Received: by 2002:adf:e447:: with SMTP id t7mr1162451wrm.374.1583771887936;
        Mon, 09 Mar 2020 09:38:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583771887; cv=none;
        d=google.com; s=arc-20160816;
        b=Uj/o4ehoQCjVrTgJd/xBAqu5jv21Zy0kLS9gOMATUQGH1G3R1qzSSriY43eG/o2zFC
         LVroZdLGTwU1kU3lah8tGCLdVZj+crXDBu0WGvSimv7OtOBXU5917FmLALi08ccai/XC
         e4lPTTcTiefTu575+RmbGtR1CkWZMkDer9/prxuz/QeNCSQwPH8pk0qOnni8JFq/h2zX
         Dc9ZunTaNjmoNHfxLy1MiQNks3k5Oc0dftRK7cSzhohlwsuc6MHbCiL+9GGLOH7miWjG
         +hVerV4HfLTDZCshhXFjDiDYXtXbCPGjVuW0UHTXAchcFXDRmgs6bY6IBceO7j22yLL2
         DwcA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=Idwn/i9QMWcWycFcJHuRSsf1y57NhhoxhVktS/tsmyA=;
        b=pAw3HtPeId9re20iHphHdNs/wTrJMsnFSkfaTgxCdLpGEXlAk0qvqN6HEbxPuGfeJ5
         J2x052FwhmJaIej+4rUZkooVrxylMn1ICKb+jh0/FITOk9DZ+A4t73NDnf3WApECa0da
         C8qAL5y704+j6xuO0s/xOEHuZHVPWtNOCqyIEbOyWbNxTDUa3ObilC8oEXdpRB2qoY0d
         toIpX2cOWThCMgmvcftWWoR4P4mXSWrlpzrZZcMu0BtNKtS135aOJ+XSDr1rk4V6fJKM
         remgbr2WFV4WrjHcrOEm2/7HdYdWgOmIGy7LWP2rLEB0iPdkb3dwDSN6n4vLuoNUcUG1
         WT9g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=DrasKv+V;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Return-Path: <lu@pplo.net>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id l13si534359wrp.2.2020.03.09.09.38.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 09 Mar 2020 09:38:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@pplo.net header.s=google header.b=DrasKv+V;
       spf=pass (google.com: domain of lu@pplo.net designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=lu@pplo.net
Received: by mail-wr1-x442.google.com with SMTP id n15so12040052wrw.13
        for <outreachy-kernel@googlegroups.com>; Mon, 09 Mar 2020 09:38:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=pplo.net; s=google;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=Idwn/i9QMWcWycFcJHuRSsf1y57NhhoxhVktS/tsmyA=;
        b=DrasKv+V885JcdsEEgrf/yOmB73cbzYfnsf37HCnEtwtJi6RdXzaIgKKjJu1iDtOow
         WGjlTrGNVT1+P03GKcMAHFB1nOCc738diCvsZ9KEraNt+A6BM/r8xPHaTVCVmsh8dcAt
         m2d1Q1LP+0UlOhNoI6mtz3oKOMYaGnLjFce1M=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=Idwn/i9QMWcWycFcJHuRSsf1y57NhhoxhVktS/tsmyA=;
        b=GSh+MAp1SC0vzVjvDYGTMZ0Y5I8ssMV6OspQ4iO8b7OpJ2Wf/+NKgxG7pCFmFVc3vU
         3dd53Ws2mwD2fZ2RhwSgOQtZr47k7l6i4yDXsMuWcb9/+RxW8+Hrs8WnmQ2AqLja6DFj
         wJWyXLHrflQJK5VTqwl8/BaZR9OeeQgbY8u6CIowS0tsa6Rm032y8xrl+wrtt9uPz6tU
         mP+RmgZT1neIWzLj1JdNiegdTIPI4fnhZG3kQ/vkxiUoPZPQDzqRVn2j01/+iy+zlW86
         P/RRSG9nJYqc2mAXvRlg/Tw6BoHbyIivHb/AOn/nPdAXaWatnTgtJbC9VVxam8Q/3fS4
         /MbA==
X-Gm-Message-State: ANhLgQ2VjZj1G5iL+kcqIxshFhl8m9Gl9eU8dilLWzOa1sLnzAwufWAY
	PLS816Gadsg90gnV1fQMDfjEYw==
X-Received: by 2002:adf:979b:: with SMTP id s27mr12598781wrb.134.1583771887615;
        Mon, 09 Mar 2020 09:38:07 -0700 (PDT)
Return-Path: <lu@pplo.net>
Received: from supernova (85.251.42.187.dyn.user.ono.com. [85.251.42.187])
        by smtp.gmail.com with ESMTPSA id a7sm143950wmj.12.2020.03.09.09.38.06
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 09 Mar 2020 09:38:07 -0700 (PDT)
Date: Mon, 9 Mar 2020 17:38:04 +0100
From: Lourdes Pedrajas <lu@pplo.net>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, outreachy-kernel@googlegroups.com,
	gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: greybus: remove commented
 out function
Message-ID: <20200309163804.GB3949@supernova>
References: <20200308222218.16031-1-lu@pplo.net>
 <20200309125327.422a1807@elisabeth>
 <20200309162655.GA3949@supernova>
 <alpine.DEB.2.21.2003091729360.4721@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.21.2003091729360.4721@hadrien>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Mon, Mar 09, 2020 at 05:30:25PM +0100, Julia Lawall wrote:
> 
> 
> On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:
> 
> > On Mon, Mar 09, 2020 at 12:53:27PM +0100, Stefano Brivio wrote:
> > > On Sun,  8 Mar 2020 23:22:18 +0100
> > > Lourdes Pedrajas <lu@pplo.net> wrote:
> > >
> > > However, you should at least Cc: the maintainers returned by
> > > get_maintainer.pl.
> > >
> > Yes, I was about to ask because I read somewhere in kernelnewbies wiki that
> > Outreachy paths hould no be CCd to everyone in the get_maintainer.pl list,
> > but I was wondering if this was really correct. So thank you for the hint!
> 
> Please search for get_maintainer in the tutorial and follow the
> instructions there.  It gives some options that will get your patch to the
> main people who are responsible for the file.
> 
> julia

Yes, if is not too much spam I will resend the patches including
them, thank you!

