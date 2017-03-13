X-GM-THRID: 6396335157434908672
X-Received: by 10.25.216.154 with SMTP id r26mr4628569lfi.7.1489426764058;
        Mon, 13 Mar 2017 10:39:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.68 with SMTP id 4ls872448ljv.54.gmail; Mon, 13 Mar 2017
 10:39:22 -0700 (PDT)
X-Received: by 10.46.83.76 with SMTP id t12mr5980848ljd.26.1489426762986;
        Mon, 13 Mar 2017 10:39:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e72si753964wma.0.2017.03.13.10.39.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 13 Mar 2017 10:39:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,160,1486422000"; 
   d="scan'208";a="216588787"
Received: from pd95b94e4.dip0.t-ipconnect.de (HELO hadrien.intern) ([217.91.148.228])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2017 18:39:00 +0100
Date: Mon, 13 Mar 2017 18:38:04 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Eric Anholt <eric@anholt.net>
cc: Gargi Sharma <gs051095@gmail.com>, outreachy-kernel@googlegroups.com, 
    swarren@wwwdotorg.org, lee@kernel.org, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: vc04_services: Replace
 typedef with struct
In-Reply-To: <87a88pyup9.fsf@eliezer.anholt.net>
Message-ID: <alpine.DEB.2.20.1703131837460.3531@hadrien>
References: <1489310493-22530-1-git-send-email-gs051095@gmail.com> <alpine.DEB.2.20.1703121319180.2174@hadrien> <87a88pyup9.fsf@eliezer.anholt.net>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 13 Mar 2017, Eric Anholt wrote:

> Julia Lawall <julia.lawall@lip6.fr> writes:
>
> > On Sun, 12 Mar 2017, Gargi Sharma wrote:
> >
> >> Using typedef for a structure type and upper case struct names is not
> >> suggested in Linux kernel coding style guidelines. Removed occurences
> >> of typedefs and converted struct names to lowercase. Used grep to
> >> ensure that all occurences have been removed. The module compiles
> >> without any warnings or errors.
> >
> > Actually, the bcm people have requested not to be CCd on patches.  I'm
> > leaving them on this one, though, because they might have some useful
> > input.
> >
> > It's always suspicious when you change a type name and it only affects a
> > header file.  And in this case, it only affects a function prototype.  I
> > don't see any definition of the function.  Can the whole thing (type and
> > prototype) go away?
>
> It's dead even in the downstream tree, so let's kill it.

Thanks for the feedback.

julia

