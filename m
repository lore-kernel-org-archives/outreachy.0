X-GM-THRID: 6802337436932243456
X-Received: by 2002:a1c:2048:: with SMTP id g69mr458345wmg.187.1583824634369;
        Tue, 10 Mar 2020 00:17:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls1401894wmf.2.gmail; Tue, 10
 Mar 2020 00:17:12 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvbgXyI/UNG91HPY810jxtHYEcoYyWlDTol38jbIrWmBGMx5soViqzsYDbh9vBsMdxYq2cd
X-Received: by 2002:a7b:c0cf:: with SMTP id s15mr537648wmh.106.1583824632907;
        Tue, 10 Mar 2020 00:17:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583824632; cv=none;
        d=google.com; s=arc-20160816;
        b=uKxCFT9lkdeyMpFHgZQZzuVuVXlFavMjOPyOPzW7XOiE6eTEFY/XjufU5DNlgJNz1H
         Y1gYq9HwgqiGzILVIK7RkM0cZ2m5c+QUQxcYNR+4zsDcagU2YMzDUL4MvDj2odJoZWwx
         YH4j6iWLueerJ7unuPZFS0m5B9Ta2wrBtUCUv+ibB4OMC0gaqEuIcoVeehEr4poVdXhB
         BvwliI+Zha1rJgECC5xf6DGnszVvovCFGNYOUVUQegj4/AxzvXXTinSxaQnGc2yKKtnn
         7T9VWA3o/dLJswSoQlmowddasJQ+QmUO6GdPykxKuPUXG89DVpHFHokZ43mjhH4185Ch
         fN4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=3FhQ/cXygKz3EMQpTtDS81wzBQPJw5EsbTUMVproaco=;
        b=gYpwYyZt5sKZBkkGPW6bJV6zQCMnS33nIEffqvKCTMxmqiVsbSHE0js+j1fD7iJMXm
         OYR9FndcDDNj0DzpdpQ1j98bgwX2tlQMubT8S6pdSSQABb50J88EbQaOQOjJIecpyHHf
         s82jYHA7L/f3BTDdIovfqO2t//65Mne8N96H4lqsYZFCR8uyMb6R+9/x9VYhle4AQaI0
         /0DHW26IBJ0ezQY06tTsYrVZvcm6y1Eljq2EGcNkhmheASIO253a0T9uz6A1I/vAAl9/
         6/OzgP0s+u/+iV3xo87z6zpG/RKCPYMG2BA8njfZnT0V9dboo5BR1JWDZsCf/aSOUFIk
         I4JA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n7si92804wmc.1.2020.03.10.00.17.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 10 Mar 2020 00:17:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,535,1574118000"; 
   d="scan'208";a="439591174"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Mar 2020 08:17:12 +0100
Date: Tue, 10 Mar 2020 08:17:12 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kaaira Gupta <kgupta@es.iitr.ac.in>
cc: Ian Abbott <abbotti@mev.co.uk>, 
    H Hartley Sweeten <hsweeten@visionengravers.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Forest Bond <forest@alittletooquiet.net>, 
    =?ISO-8859-15?Q?J=E9r=F4me_Pouiller?= <jerome.pouiller@silabs.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/7] staging: comedi: remove comparison
 to bool
In-Reply-To: <20200309222313.GA5367@kaaira-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.21.2003100816340.2455@hadrien>
References: <20200309222313.GA5367@kaaira-HP-Pavilion-Notebook>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Tue, 10 Mar 2020, Kaaira Gupta wrote:

> The function route_register_is_valid already returns boolean datatype,
> hence remove uneccessary comparison of its return to bool.
>
> Signed-off-by: Kaaira Gupta <kgupta@es.iitr.ac.in>
> ---
>  drivers/staging/comedi/drivers/tests/ni_routes_test.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/comedi/drivers/tests/ni_routes_test.c b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> index 52df4b7c8d52..8387a9627325 100644
> --- a/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> +++ b/drivers/staging/comedi/drivers/tests/ni_routes_test.c
> @@ -499,13 +499,13 @@ void test_route_register_is_valid(void)
>  	const struct ni_route_tables *T = &private.routing_tables;
>
>  	init_pci_fake();
> -	unittest(route_register_is_valid(4, O(4), T) == false,
> +	unittest(!route_register_is_valid(4, O(4), T),
>  		 "check for bad source 4-->4\n");
> -	unittest(route_register_is_valid(0, O(1), T) == true,
> +	unittest(route_register_is_valid(0, O(1), T),
>  		 "find first source\n");
> -	unittest(route_register_is_valid(4, O(6), T) == true,
> +	unittest(route_register_is_valid(4, O(6), T),
>  		 "find middle source\n");
> -	unittest(route_register_is_valid(9, O(8), T) == true,
> +	unittest(route_register_is_valid(9, O(8), T),
>  		 "find last source");
>  }

Actually, for a unit test, maybe "== something" is nice, even if the
something is true or false.

julia

>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309222313.GA5367%40kaaira-HP-Pavilion-Notebook.
>

