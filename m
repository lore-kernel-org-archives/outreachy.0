X-GM-THRID: 6337746804060192768
X-Received: by 10.13.226.3 with SMTP id l3mr1041997ywe.75.1476192001664;
        Tue, 11 Oct 2016 06:20:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls1208704otg.30.gmail; Tue, 11 Oct
 2016 06:20:01 -0700 (PDT)
X-Received: by 10.31.254.1 with SMTP id l1mr982812vki.16.1476192001069;
        Tue, 11 Oct 2016 06:20:01 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id x14si460390vkd.3.2016.10.11.06.20.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 11 Oct 2016 06:20:01 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,329,1473112800"; 
   d="scan'208";a="240297774"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 11 Oct 2016 15:19:33 +0200
Date: Tue, 11 Oct 2016 15:19:31 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: gregkh@linuxfoundation.org, sudipm.mukherjee@gmail.com, 
    teddy.wang@siliconmotion.com, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3] staging: sm750fb: Replace
 printk() with pr_info().
In-Reply-To: <20161011002907.GB16781@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610111519080.2883@hadrien>
References: <20161011002907.GB16781@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 10 Oct 2016, Elise Lennion wrote:

> In-Reply-To: <alpine.DEB.2.10.1610090748050.3134@hadrien>
>
> >
> > Maybe the information is available in a function that calls this one, and
> > you can add an extra parameter?
> >
> > julia
> >
>
> You're right, the function that calls it has the device pointer.
>
> It already passes 3 attributes of the device by value, I could pass
> a fourth one to use it with dev_info().
>
> I think that passing a copy of the whole device struct makes the code
> clearer, is there any great drawback of doing that instead of
> passing only the 4 used attributes?

A priori, it seems like a good idea.

julia

>
> thank you,
>
> elise
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161011002907.GB16781%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

