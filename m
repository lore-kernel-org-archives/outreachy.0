X-GM-THRID: 6748167848535785472
X-Received: by 2002:a2e:2901:: with SMTP id u1mr24705790lje.78.1571202832157;
        Tue, 15 Oct 2019 22:13:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:7102:: with SMTP id m2ls1846863lfc.15.gmail; Tue, 15 Oct
 2019 22:13:51 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxHnYN6pjl8lm0hnIN3nuG0Q4sxCa818N83cTWg+dX6XdzCmBkRLz9os4JsSs17LVPjLUJq
X-Received: by 2002:ac2:5468:: with SMTP id e8mr4746591lfn.12.1571202831430;
        Tue, 15 Oct 2019 22:13:51 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1571202831; cv=none;
        d=google.com; s=arc-20160816;
        b=0dk3qwOGgRdW3AIzsCbU3fJsKsZ+hGFYzd+l5u3HklMDA5RiM5pCoojy3CQfSVJnM5
         GiWdM/tfOWJQMNR8kK7iJr59enCMsO8qR1G+Z5sVmzZ4jQjs1uPtvIv6YhE0ajWH0fN/
         y6O1tNSu6HhLQiZxFnzglLoGxFx5w4smuhxv5LR1ZOVH/IpYRXEgdDXEcoRywTMOx9Oi
         58SJokaL7hqCrKn6pNY2ePg9d2XHZjy2oCGBsQPvGtYPL/14RlYxkj6VVcEJ0r3STra+
         3CJJUCv8lbT305HXgOvM7mwgHzOxs0c6b2YkAtL5RJlIdKWnxWtu4reBrlSjWCB+2m5X
         AwPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=pDmU6G4FTNKg8CDar3nGWGVJIHVMPfr7BGD48cu/klg=;
        b=wumnUPClaW08Xw1qd995lg1ZvSK+RyBVoj0qimxkiLATpFWWrt6AYxDKAdkfwno8C1
         E2PzrNW6Z9zuFPM/Rjdkl0TtiZAdAGtiLalPQwWrLvKGiRLtyYdl8vKdlJH7AZCOIQsU
         sPxlxcH9pCNLQoz9yxyTwutHKs9WFuZeXVGjmAXFGgtigHdeEssF77ct87ZX0nOmApKn
         8WqGqmzIxEcH+m9ONfZr0r0q8OqN5rlcNeIu6J3gl+JVf8c+7tltW15vR7guB7/yvubY
         1aSBHyW1upTdkEYxyxTFnhPTlTL9UHpBLR+M4Pe4G4NaUh59R/rm5zx0qQ1fx4g507+R
         8opQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id z4si1530760lfe.4.2019.10.15.22.13.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 15 Oct 2019 22:13:51 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.67,302,1566856800"; 
   d="scan'208";a="406361704"
Received: from ip-121.net-89-2-166.rev.numericable.fr (HELO hadrien) ([89.2.166.121])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Oct 2019 07:13:50 +0200
Date: Wed, 16 Oct 2019 07:13:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, eric@anholt.net, wahrenst@gmx.net, 
    gregkh@linuxfoundation.org, bcm-kernel-feedback-list@broadcom.com, 
    linux-rpi-kernel@lists.infradead.org, linux-arm-kernel@lists.infradead.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: fix line over
 80 characters checks warning
In-Reply-To: <20191015225716.10563-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1910160713140.2732@hadrien>
References: <20191015225716.10563-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

>  #ifndef VCHI_BULK_GRANULARITY
>  #   if __VCCOREVER__ >= 0x04000000
> -#       define VCHI_BULK_GRANULARITY 32 // Allows for the need to do cache cleans
> +#	define VCHI_BULK_GRANULARITY 32 // Allows for the need of cache cleans
>  #   else
>  #       define VCHI_BULK_GRANULARITY 16
>  #   endif

The branches should be indented to the same degree.

julia

