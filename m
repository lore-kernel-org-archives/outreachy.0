X-GM-THRID: 6530656197776769024
X-Received: by 10.46.115.15 with SMTP id o15mr1856665ljc.16.1520543825693;
        Thu, 08 Mar 2018 13:17:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:be15:: with SMTP id o21-v6ls646442lff.8.gmail; Thu, 08
 Mar 2018 13:17:04 -0800 (PST)
X-Google-Smtp-Source: AG47ELtYbRWZenku7uxdKM80Hq86ZNDwyn7bbuL6U5F7BF6w8vJ11dE335t/aBNeeVzpH2N/dh6E
X-Received: by 10.25.78.9 with SMTP id c9mr2007463lfb.24.1520543824201;
        Thu, 08 Mar 2018 13:17:04 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520543824; cv=none;
        d=google.com; s=arc-20160816;
        b=zDpXTp26VPisQKw/NK9afJMR6neVCDauSWVINaL576y6R2LLOyw8UlVG66Jvk+qHLI
         tCALYPIzFThLGe1MO9WlbJRRyhyT5So+Qw46cFSuzZk7IxsxcVOH2DFa6xo88/o4ljfp
         R7aBGv0B6z3fphnP/KDnEpAqvo5ysby3sbCMyf/TVFDBzyYl9WtgZukj5LRF+LO7vT0C
         96lid9kBVrE5jsvRz7h0OeVq1iSQVjs+FNpdXrdgT0Gbvu07Iymv1UlCT9ZcO59z8/aQ
         K9y3Wwj9BAV4TIGxDwPEzMw92HpY93kUiMa39F8b006Z0f5EWRrvvk5Qfm50dU0SGEqf
         IzRQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:organization:in-reply-to:content-disposition
         :mime-version:references:message-id:subject:cc:to:from:date
         :arc-authentication-results;
        bh=zPKiHbexQ4MhIWRG8WlBnRsza74FraSyHvCMHIIYTyU=;
        b=gUDyJvhOBS++eudlmrWcKSLqHTEWMlNz79A7QUHPg3pEHA7VW/TXKIS4Cgcqu6uGWl
         yOGqg6DA2OVp2km6i/SveZTJ+zMNY+JTBU98su7w5FdhSK2ig+NY0zg/ykTvxK163hPl
         95WOPIxM6kHWr1OlbhoTflzyw/bRuNBONUkdRI8VUXh6KmTj8CvgRWRmc4L19ZC5LTpT
         t/VNz2+fSNKTOYAR/y0R/mqqv8ugPLNE8H+oYb9+B5Vndj9Nr4p/ebR5dFu3P/mPj3s6
         7zUe+iM4nOW4Yn4wyN2pLdn2xzG7QOqfYYPB8bjHEIf6OSzJIfvJ1jD3Cx9b4fy5hK4f
         uTdQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Return-Path: <samuel.thibault@ens-lyon.org>
Received: from hera.aquilenet.fr (hera.aquilenet.fr. [185.233.100.1])
        by gmr-mx.google.com with ESMTPS id j4si816350lja.1.2018.03.08.13.17.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Mar 2018 13:17:03 -0800 (PST)
Received-SPF: neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) client-ip=185.233.100.1;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 185.233.100.1 is neither permitted nor denied by domain of samuel.thibault@ens-lyon.org) smtp.mailfrom=samuel.thibault@ens-lyon.org
Received: from localhost (localhost [127.0.0.1])
	by hera.aquilenet.fr (Postfix) with ESMTP id 9FDB8120BC;
	Thu,  8 Mar 2018 22:17:02 +0100 (CET)
X-Virus-Scanned: Debian amavisd-new at aquilenet.fr
Received: from hera.aquilenet.fr ([127.0.0.1])
	by localhost (hera.aquilenet.fr [127.0.0.1]) (amavisd-new, port 10024)
	with ESMTP id 34ysAdavOOVa; Thu,  8 Mar 2018 22:17:01 +0100 (CET)
Received: from var.youpi.perso.aquilenet.fr (static-176-158-111-12.ftth.abo.bbox.fr [176.158.111.12])
	by hera.aquilenet.fr (Postfix) with ESMTPSA id E4A32120B5;
	Thu,  8 Mar 2018 22:17:00 +0100 (CET)
Received: from samy by var.youpi.perso.aquilenet.fr with local (Exim 4.90_1)
	(envelope-from <samuel.thibault@ens-lyon.org>)
	id 1eu2uJ-0004Ng-SQ; Thu, 08 Mar 2018 22:16:59 +0100
Date: Thu, 8 Mar 2018 22:16:59 +0100
From: Samuel Thibault <samuel.thibault@ens-lyon.org>
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
	William Hubbs <w.d.hubbs@gmail.com>,
	Christopher Brannon <chris@the-brannons.com>, kirk@reisers.ca
Subject: Re: [PATCH] staging: speakup: Replace simple_strtoul with
Message-ID: <20180308211659.bikbthic6hi35rf3@var.youpi.perso.aquilenet.fr>
References: <20180308195332.2hao4ys737ubr275@var.youpi.perso.aquilenet.fr>
 <1520539425-16513-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
 <20180308204847.2bmei7z43tdqvsgg@var.youpi.perso.aquilenet.fr>
 <CAC4++KCd3fAuzm3Pbz5oZEF=N9amgAd3tsBRgPzT1d39CGLF6A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAC4++KCd3fAuzm3Pbz5oZEF=N9amgAd3tsBRgPzT1d39CGLF6A@mail.gmail.com>
Organization: I am not organized
User-Agent: NeoMutt/20170113 (1.7.2)

Nishka Dasgupta, on ven. 09 mars 2018 02:45:18 +0530, wrote:
> On Fri, Mar 9, 2018 at 2:18 AM, Samuel Thibault
> <samuel.thibault@ens-lyon.org> wrote:
> > Nishka Dasgupta, on ven. 09 mars 2018 01:33:45 +0530, wrote:
> >> While we are on the topic of speakup, should I also stay clear of the
> >> checkpatch warnings in keyhelp.c:102 and keyhelp.c:743 to add a
> >> KERN_<LEVEL> signifier in the printk() commands on those lines?
> >
> > That should be fine.
> 
> What Kernel message should I include within the printk statements, if
> any? KERN_DEBUG,
> KERN_EMERG, KERN_ALERT, KERN_CRIT, KERN_ERR, KERN_WARNING, KERN_NOTICE,
> or KERN_INFO?

That depends on the message.

Samuel

