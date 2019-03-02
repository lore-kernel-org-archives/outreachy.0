X-GM-THRID: 6663742329894993920
X-Received: by 2002:a1c:a8c1:: with SMTP id r184mr526680wme.4.1551547796349;
        Sat, 02 Mar 2019 09:29:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6582:: with SMTP id z124ls1017573wmb.10.gmail; Sat, 02
 Mar 2019 09:29:55 -0800 (PST)
X-Google-Smtp-Source: APXvYqxW84/6wIzZtUpECo8vwfJR5A2EzG9PiB0hSUvHq0phuSkJ/DHLUlJD0ZrGU0HhR39lAZiu
X-Received: by 2002:a1c:dc82:: with SMTP id t124mr685521wmg.0.1551547795544;
        Sat, 02 Mar 2019 09:29:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551547795; cv=none;
        d=google.com; s=arc-20160816;
        b=AOlNDxDORW8tt+q7RXTgvid1eSUqIiRY7V3wm4pko5Fy+wg4M0Wn93p270tAfjrg1m
         fXtV/Vmj5/J7eDPTxm9Roc5Ma3EqeXrYOIeO4nQzeHtmnY46Z1dhJlUfim/BmLcJCHTj
         EqwJjYmsjRgVAu5I62V/vzcJi8VjBsx9C+PQwoN1S8TE7dUJFNxM/R396lt8FFBUpAj8
         1eFQBrRTVL8kPd9lgt73+sqru14/jKVZivrVilYPqXXRVh9gANUi78HxNvKx9CGrDuOh
         HPOs/I4qMVXZqSJCLHtyv0MqnOBXD2mT2QH2LKF5HVcFvNLsEOSCrwSzqU3clL6Ybx8Z
         jL8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=ZAAajKAQ6Yjl9gJEhQEnTxXJzdyyv48QkbeP3AKGu1E=;
        b=FFXBw044cla7XIIO/gcDBlTew6Yk0bna7ilbFur59F4HfIkdxyGd8GkkxJPdGunj7i
         3T8TOwR3SEl7eUOXbiC4YzX15AO8SAbXe07IlVJm66ZREHRFjcyX+ItZPptfUjrWXnKF
         VhWeSIWAU5mxIpqdUKz1ShVg44Lk9ouIu0/IEbH6LqAmD3cJ8M53DlUr10cXFxJaSJzg
         I5+wniLXQe4jQ4Q5n9qUt8kvG0v4trJuL65twmw2iOpQiynPV0yQccZ4HZbWc0tRy0v4
         HtKbS+nXMlbx1WZCVtU8Hp5Rr5KtKbmkHGNbQOHqsao7Cg5kixssF6UhsT/y+EoVcTvS
         fc8w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id o184si47911wma.0.2019.03.02.09.29.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Mar 2019 09:29:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,432,1544482800"; 
   d="scan'208";a="371632214"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 18:29:55 +0100
Date: Sat, 2 Mar 2019 18:29:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Debleena Sen <idebleenasen@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] QUESTIONS REGARDING FIRST PATCH SUBMISSION
In-Reply-To: <CACw+u4G8gVJspyGn1=XaZ789q90sSLa-kyzOEBtxSZ6gQGYDtA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903021829310.11898@hadrien>
References: <CACw+u4G8gVJspyGn1=XaZ789q90sSLa-kyzOEBtxSZ6gQGYDtA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-1978972439-1551547795=:11898"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-1978972439-1551547795=:11898
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 2 Mar 2019, Debleena Sen wrote:

> Hi,
> I am an Outreachy applicant looking forward to work on the Linux Kernel
> Project.I had a few questions about the patches to be submitted on staging
> drivers.
>
> In the page Checkpatch_Tips it has been suggested to ignore warnings about
> lines longer than 80 characters and not to fix them and submit patches for
> them. I was working on wlan-ng driver and most of the warnings were of the
> above nature(WARNING: line over 80 characters). So should I not work on
> those warnings? I saw other Outreachy applicants submitting patches for that
> warning.
>
> I have another question. What should I do with the CHECKs(for e.g. CHECK:
> Alignment should match open parenthesis)? Are those valid issues to which I
> can submit patches or should I ignore 'CHECK' and only work on 'WARNINGS'?
>
> I'm sorry to ask such trivial questions but I'm new to Kernel development. 

Go ahead and fix these kinds of issues for your first patches.

julia

>
> Thank you
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CACw%2Bu4G8gVJspyGn1%3DX
> aZ789q90sSLa-kyzOEBtxSZ6gQGYDtA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1978972439-1551547795=:11898--

