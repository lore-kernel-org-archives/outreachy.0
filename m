X-GM-THRID: 6809557952024805376
X-Received: by 2002:a4a:8e59:: with SMTP id z25mr11098864ook.86.1585605838381;
        Mon, 30 Mar 2020 15:03:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:4007:: with SMTP id m7ls7238607ote.5.gmail; Mon, 30 Mar
 2020 15:03:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vv6XM7oPVb/froCxq//z3E3vvEtPXs1rkG+wglvEFyPsssXWsK49qGAjFMW6daFDSFjI7jd
X-Received: by 2002:a9d:68c5:: with SMTP id i5mr11276998oto.266.1585605837475;
        Mon, 30 Mar 2020 15:03:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585605837; cv=none;
        d=google.com; s=arc-20160816;
        b=YwPXcOx4BX+Ak+oEuXeyMtqCY+wJrcw0DAp9VND6GOkB5W/839g2zOkyceIn1DXbu6
         N5ShN0G23IzsV34dZdv/XPdY9244IQQQVkTj8WVUL7eK9XX3e2VWX1x7DQsGeCAAgCTU
         sK4C8WC969FAYxZ5VTk5rtxO1JvL/AEUjPVLd8aRgMVX5fmsBHb9v4cATSZljFMSHw+Q
         zDHD5/38P8nG6qmcdp1oWmOzgp4Wr3CTO39acP7UfGKv+Pimplq5OW180ZvPnNaXOw6H
         dPcBTdKEgPHWpM2NdclFcZ5yXZUuLiHQ8deuXnrXgg4nb9n4pTHG6fo5l91xOk5RBNOA
         r/KA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=Fn5bbEwDKA1CjrL2t4+buEZ5DMdOn8ZLIb0ux0e5B3Q=;
        b=NydsAoSLclqbEBxiIqwzjegmK5dZfBu7Pq70O9Cu0/t5FTy8EJrlT8a+1j4pHIY4j2
         gHpzdCyB4bb6HbfQkH2YbmYX7yqBNlMJLGYZhdO6ELeNBQxoIGA3LthGSmX0/B42ZCRH
         Mv11JyRERCZjKZ2PfSWFiG95RqVQlRhefeWs/DSAKfofT48Ovg4aHFS3/tvGfUtzIL+6
         AEmE7mg9FroEgVjpmMEdnNlxA5v+arU+GJVHmZXts1OKJEn9CKhA6D3bDIWqBeFOD7Us
         Ib3FGu6awWbF9iNGkEcqvMEv4AE4nJFQ4v7FArlncuQp9YwOka5zodla3mgoqFgitDx+
         NQZw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QlDnJ+HX;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <jbwyatt4@gmail.com>
Received: from mail-pf1-x443.google.com (mail-pf1-x443.google.com. [2607:f8b0:4864:20::443])
        by gmr-mx.google.com with ESMTPS id o10si898763oic.1.2020.03.30.15.03.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Mon, 30 Mar 2020 15:03:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) client-ip=2607:f8b0:4864:20::443;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=QlDnJ+HX;
       spf=pass (google.com: domain of jbwyatt4@gmail.com designates 2607:f8b0:4864:20::443 as permitted sender) smtp.mailfrom=jbwyatt4@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x443.google.com with SMTP id h72so9307592pfe.4
        for <outreachy-kernel@googlegroups.com>; Mon, 30 Mar 2020 15:03:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=Fn5bbEwDKA1CjrL2t4+buEZ5DMdOn8ZLIb0ux0e5B3Q=;
        b=QlDnJ+HXQj0YHxnX8aX313kM6rHoKORnaNm2WYXDMn1aeXXbnF8UNEQ4VowdZeG4zl
         uV2sLQkwXOtnNAwFLkHNHrGIdHbHg2WXKZ+OCxvcK6XGQ4p7XyOtNEZguQcao8eEbZik
         jzhJzwgxyju9KgyIAO6AGWgfZzTJEGj7PCStu/3VWR74BEj6493pWtlmOVLr3PXjMy6j
         EvPvcs8zuq5fFUGMmdyzRW3LnvxqECq4R5074NxZe/sQXvq3wyUHonW+iSMHkNnpBI2D
         MA52ER9NNMOOvvHw75Dyrr3HHU19n2Cm6kVIde2BUnl4kJPuV5rqVxtOQP/DKfiUAQTz
         Rlnw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=Fn5bbEwDKA1CjrL2t4+buEZ5DMdOn8ZLIb0ux0e5B3Q=;
        b=SgzDjyOxsPKpwWzTBo+sD1qKJqKnYaK3ypD9VVWbJwxo+VATzi3zz59GuTr/l3abRy
         i7CqMuO0chSx+1kUaaLMMAlKy/KLBRdvWd/Qoqy2UWc5LWhUaC9cOJ6yO39ZG6gJeGfO
         nMVGckQ9veg0frNIA2FWdVRo6/m1y8FkUO2UB0r5QgnH7csh+7ZAPx1uSPIFaGgm19iK
         vfVkGdxcF6QLzm1jVOGGaiGtklrYFl3tKhcGRDb+EfOQ0mqfz8sanEh9tX3sEP71o06R
         VH1lJ51MLN58vVIxEHNow79ysXzLVXcMKNd3MHi/iSRlkIyhMxhvGLyS029/KTEaeQ/k
         B/0Q==
X-Gm-Message-State: AGi0PubljRJi3pD+d4A3JNw7PwQeJaTxBaB2sispdKuF0Rgy+Or1RwHy
	De4bKo2gtHAZrfhS6aeZc84=
X-Received: by 2002:a65:55c6:: with SMTP id k6mr1200130pgs.52.1585605836849;
        Mon, 30 Mar 2020 15:03:56 -0700 (PDT)
Return-Path: <jbwyatt4@gmail.com>
Received: from OptiPlexFedora ([47.144.161.84])
        by smtp.gmail.com with ESMTPSA id h4sm1230719pgg.67.2020.03.30.15.03.55
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Mon, 30 Mar 2020 15:03:56 -0700 (PDT)
Message-ID: <53befe00af657428b591200b31b5349a4a462eb1.camel@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: fbtft: Replace udelay with
 preferred usleep_range
From: "John B. Wyatt IV" <jbwyatt4@gmail.com>
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Julia Lawall <julia.lawall@inria.fr>, Soumyajit Deb
 <debsoumyajit100@gmail.com>, outreachy-kernel@googlegroups.com, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Payal Kshirsagar
 <payal.s.kshirsagar.98@gmail.com>,  dri-devel@lists.freedesktop.org,
 linux-fbdev@vger.kernel.org,  devel@driverdev.osuosl.org,
 linux-kernel@vger.kernel.org
Date: Mon, 30 Mar 2020 15:03:55 -0700
In-Reply-To: <20200330194043.56c79bb8@elisabeth>
References: <20200329092204.770405-1-jbwyatt4@gmail.com>
	 <alpine.DEB.2.21.2003291127230.2990@hadrien>
	 <2fccf96c3754e6319797a10856e438e023f734a7.camel@gmail.com>
	 <alpine.DEB.2.21.2003291144460.2990@hadrien>
	 <CAMS7mKBEhqFat8fWi=QiFwfLV9+skwi1hE-swg=XxU48zk=_tQ@mail.gmail.com>
	 <alpine.DEB.2.21.2003291235590.2990@hadrien>
	 <20200330194043.56c79bb8@elisabeth>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.34.4 (3.34.4-1.fc31) 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Mon, 2020-03-30 at 19:40 +0200, Stefano Brivio wrote:
> On Sun, 29 Mar 2020 12:37:18 +0200 (CEST)
> Julia Lawall <julia.lawall@inria.fr> wrote:
> 
> > On Sun, 29 Mar 2020, Soumyajit Deb wrote:
> > 
> > > I had the same doubt the other day about the replacement of
> > > udelay() with
> > > usleep_range(). The corresponding range for the single argument
> > > value of
> > > udelay() is quite confusing as I couldn't decide the range. But
> > > as much as I
> > > noticed checkpatch.pl gives warning for replacing udelay() with
> > > usleep_range() by checking the argument value of udelay(). In the
> > > documentation, it is written udelay() should be used for a sleep
> > > time of at
> > > most 10 microseconds but between 10 microseconds and 20
> > > milliseconds,
> > > usleep_range() should be used. 
> > > I think the range is code specific and will depend on what range
> > > is
> > > acceptable and doesn't break the code.
> > >  Please correct me if I am wrong.  
> > 
> > The range depends on the associated hardware.
> 
> John, by the way, here you could have checked the datasheet of this
> LCD
> controller. It's a pair of those:
> 	https://www.sparkfun.com/datasheets/LCD/ks0108b.pdf
> 

No I have not. This datasheet is a little over my head honestly.

What would you recommend to get familiar with datasheets like this?


