X-GM-THRID: 6663442013681090560
X-Received: by 2002:a50:a499:: with SMTP id w25mr1183856edb.3.1551508259055;
        Fri, 01 Mar 2019 22:30:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:358c:: with SMTP id o12ls389684ejb.0.gmail; Fri, 01
 Mar 2019 22:30:58 -0800 (PST)
X-Google-Smtp-Source: APXvYqxK+En4cqnBul3RSnvpLqzaaPnWwb+XU2SLfREVWM6CNRpznk5JyOvG60PeQuppoFQKVlmd
X-Received: by 2002:a17:906:1959:: with SMTP id b25mr361309eje.16.1551508257874;
        Fri, 01 Mar 2019 22:30:57 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551508257; cv=none;
        d=google.com; s=arc-20160816;
        b=K8llI7nsuLGu0nejysbMMial71BYHUNYeDvT0+Ld7zykR5CkZJQLr82qE8slUR+dd7
         N5aNyZ7TuCcy2zdhe4BzCcWT9eG1rpQfYr6bqBWsbMsnz884gPqFVsYPBBqrLhamlMv/
         SgiN0LQZLI2zmAT00Vl30iwFYWVR64OzQjHuCdYDiX8pR2OC72WLKLgQt+xPX7q7qrTk
         VS46UdTYlFTkvZD871bcNEAhg/ut3Dq11D2haf8Etw31bFJLVmIN8JBEOtawYwO86M86
         K9s2dgHnBAciR8u2mactyGacurjyLk91mCO5vCMaUsVtzqWY1trRfGrsCXsetnMFhRPq
         Gn3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=HZUpihsN3kNukyJh5fmLFbKHF+2ze89/DPS+IR8OJE0=;
        b=rM9F1es4WLwNMrgd+22Y4Rwr/qZY8H5GSgT5lIKmzM7ccC7h3cni6BaRHA98mfV6pH
         KM81gNCYJA/+T0fUlzNVLHrRNFyFPEJStp9WUX44ElnVbfTHZoaXJpjA12Ug+xkq5y49
         mBm9z8BommpnypCphoeRcSKLgtejXVGBRxO3CtBDWQMxa19FvqMdflf/gbkul5ld+Iw/
         sWNwsZvGNWp+Hurjo1SS3lSdEzmOypjJuusLzRDj+ltMboCpq6RAoBHrlTfD3ngZDWUI
         HpWgDEyEk8PA1Yi2SAcIQz3wZKW3vYIajYVOrMu/XzDTkNHncMb1VTw24WPf7i5xRpkS
         M0Xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q1si7752edd.5.2019.03.01.22.30.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 22:30:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,430,1544482800"; 
   d="scan'208";a="371595155"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Mar 2019 07:30:57 +0100
Date: Sat, 2 Mar 2019 07:30:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Octave <jbi.octave@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH 1/2] staging: mt7621-dma: add SPDX
 GPL-2.0 or later version license identifier
In-Reply-To: <CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.1903020729430.2572@hadrien>
References: <20190301151801.7886-1-jbi.octave@gmail.com> <20190301151801.7886-2-jbi.octave@gmail.com> <20190301153935.GA3877@kroah.com> <CAOuULM6W1PtuaysLX7=z+nXhXnM35Wyz65Gx++urmrLJcbGe2w@mail.gmail.com> <20190301200104.GA19353@kroah.com>
 <CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-982267489-1551508257=:2572"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-982267489-1551508257=:2572
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sat, 2 Mar 2019, Jules Octave wrote:

> Thanks . I have just changed it. I take good note.

Greg told you not to top post.  But you are top posting again.  Please
move down to the thing that you are responding to and put your response
right under it, like I have done in this message.

julia

>
> Jules
> ..
> BCS West Yorkshire Secretary
> Positive action combined with positive thinking results in success - Shiv Khera
>
>
> On Fri, 1 Mar 2019 at 20:01, Greg KH <gregkh@linuxfoundation.org> wrote:
>       A: http://en.wikipedia.org/wiki/Top_post
>       Q: Were do I find info about this thing called top-posting?
>       A: Because it messes up the order in which people normally read text.
>       Q: Why is top-posting such a bad thing?
>       A: Top-posting.
>       Q: What is the most annoying thing in e-mail?
>
>       A: No.
>       Q: Should I include quotations after my reply?
>
>
>       http://daringfireball.net/2007/07/on_top
>
>       On Fri, Mar 01, 2019 at 05:38:58PM +0000, Jules Octave wrote:
>       > Some people say  GPL-2.0+ has deprecated (
>       > https://www.drupal.org/project/lightning/issues/2938910 ) but I will
>
>       That is drupal, not the kernel.
>
>       > change it to GPL-2.0+.
>       > I tried looking  on  https://spdx.org/licenses/
>
>       That's a nice place to read as well, but we are using an "older" version
>       of spdx.
>
>       Always read the in-kernel documentation, we write it for a reason :)
>
>       Look at Documentation/process/license-rules.rst please, it shows that
>       you should use the "GPL-2.0+" marking.
>
>       thanks,
>
>       greg k-h
>
>       --
>       You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>       To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>       To post to this group, send email to outreachy-kernel@googlegroups.com.
>       To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190301200104.GA19353%40kroah.com.
>       For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOuULM6csFS6UCZMfefDZhOdraTspMBKrXT5JiL3Gi2EOqAyXw%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-982267489-1551508257=:2572--

