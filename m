X-GM-THRID: 6476280701205348352
X-Received: by 10.28.191.6 with SMTP id p6mr195747wmf.25.1507903285703;
        Fri, 13 Oct 2017 07:01:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.88.14 with SMTP id m14ls243254wmb.11.canary-gmail; Fri, 13
 Oct 2017 07:01:24 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCLkP8aNdsdarmqwI5Js4OGWn0+bBvLYyxd4dipoT2uj6kjqEoLLj2rHKDZj7L0eFxrgNMx
X-Received: by 10.28.215.198 with SMTP id o189mr219713wmg.11.1507903284708;
        Fri, 13 Oct 2017 07:01:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507903284; cv=none;
        d=google.com; s=arc-20160816;
        b=vPA7mrrdp/S1/yN4R8NUv6/8r8YD5x5meN18sJed2fKvUrOP8Yanp7AymyrTZfATkO
         ctPnmXx1IqLavAuBtiAfbuhPC+sen+dU2Jh55zXynexB53UeUqlxni24PpYcMpecML01
         JuVkBXOZUN2NB/cNaoR7+hBtOFcAdTiJ2hcuDzfUp9z/trsykq90/PVbAEtQAUJaMSxV
         MwLXHys/RYNBq2rD5ng06BDPVTw8Jahm6atFiepi7XPewOPqjuCsy3CnhiGpQPuCwk5J
         lM5QH5fmmKwGaq908RDJLopgDLAQDYWHGjjRnASGthEAugbLRjNkAr9u7L/zwJgoCkhd
         sSmQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=8wZAMtxRE1ewyYUw1wJg9LQuVVxpfzNxdru56BD4jms=;
        b=mq5LRXpgADOip1UReNpkRTi0gjhe/ldYBewI18qdpaiLmS3V899TIFx9cV+Cm3F19V
         ZJOSkq7yRWSBcjadS7jTZLThynIwm3tDQbHNKioMmFPrJnX5183aIVY6f7Yw3vbbpmkr
         bSQlissf4Ol8GYTVA6mKFGwy+rvDbG0hBQY7JpSAN/G77g05fonRdB453aK1XOWO5QkK
         RCFrS5J7I4TFPIALYho1zIXwY4ajTEV8OB8LzSsDHZPtr2nYGofwLH5lXDittDRqHJFY
         QST05Smpb4VYfk0AjQA9plvgRBvj7dg+f9V6XHUum2HsxWbLWPf6A/AzE0GYlE8O0qxr
         q2cw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id n82si43140wma.2.2017.10.13.07.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Oct 2017 07:01:24 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,371,1503352800"; 
   d="scan'208";a="240912947"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Oct 2017 16:01:24 +0200
Date: Fri, 13 Oct 2017 16:01:22 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: useless casts
In-Reply-To: <f0607bcb-b712-439d-b17d-afd4e3bc9830@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1710131600400.3242@hadrien>
References: <alpine.DEB.2.20.1710130823050.3147@hadrien> <f0607bcb-b712-439d-b17d-afd4e3bc9830@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Oct 2017, Georgiana Chelu wrote:

>
>
> On Friday, 13 October 2017 09:36:44 UTC+3, Julia Lawall wrote:
>       Hello,
>
>       In looking through some make coccicheck results, I see a bunch of useless
>       casts in the following file, if someone wants to clean them up :)
>
>       drivers/gpu/drm/amd/powerplay/hwmgr/vega10_processpptables.c
>
>
> Hi Julia,
>
> I could clean up the file. What are the coccichecks that should I focus on?

I'm not sure, since I just ran the whole thing and it doesn't print out
the rule name.  But you can just run make coccicheck on this file and see
what comes out.

julia

