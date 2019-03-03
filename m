X-GM-THRID: 6664078765132349440
X-Received: by 2002:a5d:4908:: with SMTP id x8mr666706wrq.5.1551629601339;
        Sun, 03 Mar 2019 08:13:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8241:: with SMTP id 59ls2954086wrb.5.gmail; Sun, 03 Mar
 2019 08:13:20 -0800 (PST)
X-Google-Smtp-Source: APXvYqwGrQq1WyNHXGZcgtF4Jyi1tqVFV/1YYJwi+bRyKtPyYsszWdpZxQcwM+zIo/W7v8UAJgaG
X-Received: by 2002:adf:8121:: with SMTP id 30mr698128wrm.22.1551629600485;
        Sun, 03 Mar 2019 08:13:20 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551629600; cv=none;
        d=google.com; s=arc-20160816;
        b=ZzYX2Hv1OZiravuufW8PJxpJHsLQo1avMrx7ZYJmnojljH9UPBtRNF8eRSdh32Jx3S
         mJ9Rq9DYpAjtx+oonj2oriKGSsakBm2GstqBpZa8x2+b8sCqGcRv/iX149f/8Qt1mTXU
         BKMmtFOTkjPUUEg1DJS/JYSh0Y3uCHT5lFjS9pUnHzuLfGYdCY2q7xaByFYYrblSD+Ph
         hg0YJyb0C2/5e1fHwAclThlWgTiOEiJa4f+Apr64s7Ububb1Nu+YMu1DgcsG8xeqFKHu
         CklcxAjLzv7U+h1rYF1bDULRXs/j/kZQzIFxgj71qmsDRq0umTFXZtUkY+eXXoJHP1O2
         fEPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qmejj57XKVgiMwjfzsowO1mk1BIYsu1EK8gVHSlS8zU=;
        b=sUBwaam8OWGlsBFZZi8bM46YxQb557ZEn/Y6dhbOuOZiw3743voP7YnBgA3Dkc2SUI
         x5ghFkd0tplifeo99g6vBqJBx9DCd01ws0MPbd7vv/Fg2zZsoF5zUALV9DhmpADXs2aj
         BREn4IZRqz8FBaHcGlUTCB8sWPQ3VFlsFKyY2Q8beVrBbVjJ3/TNfnYcZjfZoMIZH+LU
         oBkc6WuWTfxUpBZKzbjt8JXVYKvqZI2SrrsrzKwr+uWaAjX1gKFBi6JTeaYxEiP729eo
         5+1vU6zQila7XnIkPZMDKGSJGsCHFEcsWLTgskciEaoqAjDyrVnPjaCaPxXw675UUvjf
         zhhw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t22si220383wmj.2.2019.03.03.08.13.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Mar 2019 08:13:20 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,436,1544482800"; 
   d="scan'208";a="371684388"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 03 Mar 2019 17:13:04 +0100
Date: Sun, 3 Mar 2019 17:13:03 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Replace udelay to
 usleep_range
In-Reply-To: <CAOMPgji0B8yCzT8gsF+PPEeCxdxSWOAX=cf+6rwQ+wHMLXyXqA@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903031712280.2543@hadrien>
References: <20190303082902.GA16698@bhagyashri-Lenovo-G570> <20190303083430.GA30460@kroah.com> <CAOMPgjgN1WroEoqpDA-s1t5NVDrDJDtKCMDD=_JgAEeHh7g6dw@mail.gmail.com> <20190303142737.GA30271@kroah.com>
 <CAOMPgji0B8yCzT8gsF+PPEeCxdxSWOAX=cf+6rwQ+wHMLXyXqA@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2144033075-1551629584=:2543"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2144033075-1551629584=:2543
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 3 Mar 2019, Bhagyashri Dighole wrote:

> I got the point.

You have top posted again.  You need to put your response under the text
that it refers to, as I have done here.

julia

>
> Thanks
>
> On Sun, Mar 3, 2019 at 7:57 PM Greg Kroah-Hartman
> <gregkh@linuxfoundation.org> wrote:
>
>       A: http://en.wikipedia.org/wiki/Top_post
>       Q: Were do I find info about this thing called top-posting?
>       A: Because it messes up the order in which people normally read
>       text.
>       Q: Why is top-posting such a bad thing?
>       A: Top-posting.
>       Q: What is the most annoying thing in e-mail?
>
>       A: No.
>       Q: Should I include quotations after my reply?
>
>       http://daringfireball.net/2007/07/on_top
>
>       On Sun, Mar 03, 2019 at 07:46:55PM +0530, Bhagyashri Dighole
>       wrote:
>       > Hi,
>       > I have gone through "Documentation/timers/timers-howto.txt",
>       It is
>       > mentioned that we can put 10us-20us gap between min_range and
>       max_range. In
>       > above situation `udelay(20)` our min_range is 20 and max_range
>       is 30.
>
>       That type of delay range can be set, yes, but what are you
>       helping here?
>       Also, can the hardware really support this type of longer
>       delay?  Some
>       hardware types can not as it is trying to rely on some sort of
>       semi-regular delays.  Or could the delay be shorter?  It's
>       really hard
>       to know without knowing what the hardware is expecting and being
>       able to
>       test it.
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
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/CAOMPgji0B8yCzT8gsF%2BPP
> EeCxdxSWOAX%3Dcf%2B6rwQ%2BwHMLXyXqA%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2144033075-1551629584=:2543--

