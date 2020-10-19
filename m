X-GM-THRID: 6885049612383551488
X-Received: by 2002:a7b:c341:: with SMTP id l1mr17526262wmj.80.1603104076988;
        Mon, 19 Oct 2020 03:41:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:82ab:: with SMTP id 40ls7815496wrc.1.gmail; Mon, 19 Oct
 2020 03:41:15 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzCWQSDJKF8mlGM9zvncV22qO8M58kgt5Pxmg071JTbL/M+NCQsJqAm+6YaFi9YWexuA4+p
X-Received: by 2002:a5d:60c4:: with SMTP id x4mr7835583wrt.175.1603104075009;
        Mon, 19 Oct 2020 03:41:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603104075; cv=none;
        d=google.com; s=arc-20160816;
        b=Y4PRjw9nJXVIzvlE/8f/RkT3kKTIWjmNurT1MDoWeV9ez0MUtQiC3JDJ3LYQQC9Rsq
         tgV3q/2joqJhL+JUjggPL7WiZuTH5aHYa4JlvjdhhPuPj32Qi1gNBzghSfgHJIpQR1IU
         +mRX6mpKWJyx3q5CVm0eirrhhYye2xhLdjJf781PvNbtZLT2HppMbt6e/pyQG9INE7uD
         cA/V98g0D0JNOh3ZI+9ZplDsE3bDAq3n5NqnK8CBTCeTYob+IBXszzQZdS8jw84NRVrv
         zI7vvmLqvQaT6DN9twtWgAW71+gtXacDCs9gQbpRmHBWR8TxefFpTdFBdgDVUR3HF6BI
         6stw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AC557+aHRkQjtj/eWCa+Y1HEbhy2nOtZg+w+9wxa8H8=;
        b=ABXcnxpfrXFcy/xpzzwscqt8YrZOba1IcY+/jgt62bkUCiOl3EIOcExPTmD3YtJhxX
         Imd73r7WdBOsKrzfzOfgkayIVccrqRJLiiRkGR19XFnzZ9T9hniF5QROgVbuxqB8Bqoy
         6dakW1jaYMCIfVPU+pIqFaBHuJnlIXt5tRFKWZnJ/Bn77CLPleJqq2yvvVW4DuDUPpjB
         YTZ4F/lzKW2ocvijOUU5YbbKj+b5fP9X/N2Jr4qV06VFp8L8zaGNKaIpQ0iJqPYSOySw
         dOyr8qCmMgjasxgWnU3PJizQNBpEv57BgZrLXtFYLN+zrJhFAXOLDKIlCStt0iLQfKA5
         gkJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w62si208221wma.1.2020.10.19.03.41.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Oct 2020 03:41:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,394,1596492000"; 
   d="scan'208";a="473275141"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2020 12:41:14 +0200
Date: Mon, 19 Oct 2020 12:41:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Ian Abbott <abbotti@mev.co.uk>
cc: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    devel@driverdev.osuosl.org
Subject: Re: [Outreachy kernel] Re: [PATCH 2/2] staging: comedi: combine
 split lines for improved readability
In-Reply-To: <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
Message-ID: <alpine.DEB.2.22.394.2010191239360.2781@hadrien>
References: <0fbce7fd820c72b6dd6dc8964d4bdaf433e39540.1603050372.git.mh12gx2825@gmail.com> <7c30530bad3aba50805fc6be39461e11c0580952.1603050372.git.mh12gx2825@gmail.com> <f81a537c-c0fb-5133-52a3-825128814435@mev.co.uk>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 19 Oct 2020, Ian Abbott wrote:

> On 18/10/2020 20:49, Deepak R Varma wrote:
> > Instructions split on multiple lines can be combined on a single line
> > for improved readability of the code.
> >
> > Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> > ---
> >   .../staging/comedi/drivers/tests/ni_routes_test.c    | 12 ++++--------
> >   1 file changed, 4 insertions(+), 8 deletions(-)
> >
> > diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > index 7db83cf5e4aa..a3b1be623861 100644
> > --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> > @@ -499,14 +499,10 @@ void test_route_register_is_valid(void)
> >   	const struct ni_route_tables *T = &private.routing_tables;
> >     	init_pci_fake();
> > -	unittest(!route_register_is_valid(4, O(4), T),
> > -		 "check for bad source 4-->4\n");
> > -	unittest(!route_register_is_valid(0, O(1), T),
> > -		 "find first source\n");
> > -	unittest(!route_register_is_valid(4, O(6), T),
> > -		 "find middle source\n");
> > -	unittest(!route_register_is_valid(9, O(8), T),
> > -		 "find last source");
> > +	unittest(!route_register_is_valid(4, O(4), T), "check for bad source
> > 4-->4\n");
> > +	unittest(!route_register_is_valid(0, O(1), T), "find first source\n");
> > +	unittest(!route_register_is_valid(4, O(6), T), "find middle
> > source\n");
> > +	unittest(!route_register_is_valid(9, O(8), T), "find last source");
> >   }
> >     void test_ni_check_trigger_arg(void)
> >
>
> Is it worth breaking the 80-column limit for this?

Deepak,

It was much nicer before.

It can be awkward to break eg a + operation at the 80 character limit.
But function argument stand by themselves.

julia

>
> --
> -=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
> -=( registered in England & Wales.  Regd. number: 02862268.  )=-
> -=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
> -=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/f81a537c-c0fb-5133-52a3-825128814435%40mev.co.uk.
>

