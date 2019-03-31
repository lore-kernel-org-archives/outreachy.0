X-GM-THRID: 6674230099683835904
X-Received: by 2002:a1c:9645:: with SMTP id y66mr782044wmd.3.1554031320838;
        Sun, 31 Mar 2019 04:22:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:b154:: with SMTP id a81ls815327wmf.14.gmail; Sun, 31 Mar
 2019 04:21:59 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzUSasa0HqsNXvxvgNWpgr5ejX2fY52kDye3MnfUM3LFAxWzvaOOBSIWB0GprxXbeyUZMPs
X-Received: by 2002:a1c:c507:: with SMTP id v7mr931557wmf.9.1554031319676;
        Sun, 31 Mar 2019 04:21:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554031319; cv=none;
        d=google.com; s=arc-20160816;
        b=NGZd8+gOSGfuVoGjm0gVbYwIU/o4x8blQfv+0WuuEEUH/PbS7cYGFH60UEXOdHAMPo
         PgdTmKDmxJOiCupaOa8OcA9sbyWo8I1mLREVk0PLMs8P4qBR5lY2z8bs4OtehwICJwTo
         trR9RUWEptTi4wYl8De+VuXoeTaDDHnuZ7NlfUlSDFBdbn+4Gc4XaBv/MICcQy2F8Quy
         VwzppcYnNSZlT3cxoLogn5XxiHCXsDDcP30ROAfI7h1TqDoI0gNrAbLaGwCrd+ew792P
         cOhuTzECV+ES133WU//BdyG1mFUIBy/mshPIyr/qHTgOl71tTZLTjHzQVH1k/4H7s9S3
         W2dg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Pgs4j1yNnPE5eAtn7tqp9cBrBs1uIdD1ybial4GNsZc=;
        b=Ob+jSl4HMW8K7gJG6TutfD+ITauxQuZhsGwLRBTMDW1z0XAGaAambS3bwjsI32a15i
         ZwVJG++TbpIQzulaFX6aACYW7JpDz5w9gMI3pECXwg4zVAa5XotQD6GttOw6Qih1H359
         KmrWcZTZeRbP73yVCzjeV/dpSFOVsB7tnjF4CFbK6jAQqfOzS+wqzQJd3V7nAACSX5hs
         Fic077z2mn+VTTIOpXdeWIkTINEal2T1QOaD/WCm2uMMZ/BaNL/pEfg/UQoKiB1SU5nP
         8RkoT8iPPdBWtuMBIukNckqe4AzVeYQtHkZrfp+cE2GYRT7YPKoPhDDYeKCJnzaS99Ml
         MOcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s8si355034wme.0.2019.03.31.04.21.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 04:21:59 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="301290964"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 13:21:59 +0200
Date: Sun, 31 Mar 2019 13:21:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sanjana99reddy99@gmail.com
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: [PATCH v4 2/2] staging: wilc1000:
 host_interface.c: Modify return statement.
In-Reply-To: <9d78f23f-4105-4dd7-ab9e-05faa57f23fb@googlegroups.com>
Message-ID: <alpine.DEB.2.21.1903311321350.2578@hadrien>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com> <20190330173836.5404-1-sanjana99reddy99@gmail.com> <20190330193727.GA2651@kroah.com> <9d78f23f-4105-4dd7-ab9e-05faa57f23fb@googlegroups.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2106338650-1554031319=:2578"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2106338650-1554031319=:2578
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 31 Mar 2019, sanjana99reddy99@gmail.com wrote:

>
>
> On Sunday, March 31, 2019 at 1:09:44 AM UTC+5:30, gregkh wrote:
>       On Sat, Mar 30, 2019 at 11:08:36PM +0530, Sanjana Sanikommu
>       wrote:
>       > Challenge suggested by coccinelle.
>       > Remove return variable and directly return the value
>       > Issue found using ret.cocci
>       >
>       > Signed-off-by: Sanjana Sanikommu <sanjana9...@gmail.com>
>
>       Are you sure this isn't already in the tree?  It does not apply.
>
>  
>    Changes are made in drivers/staging/wilc1000/
>    I don't know where it went wrong.

Perhaps you need to do git pull?

julia


>    Thank you
>     Sanjana  
>
>       thanks,
>
>       greg k-h
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/9d78f23f-4105-4dd7-ab9e-
> 05faa57f23fb%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2106338650-1554031319=:2578--

