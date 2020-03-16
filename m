X-GM-THRID: 6804610075497332736
X-Received: by 2002:a1c:4b18:: with SMTP id y24mr900160wma.149.1584391436056;
        Mon, 16 Mar 2020 13:43:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:660a:: with SMTP id a10ls343984wmc.0.gmail; Mon, 16 Mar
 2020 13:43:54 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvYaiIVnskFOglZl2mbpk6zzb9J9g3aGDsGsjgQHSfPcaNG3JdBLkU36Em5YodlsJC4bULi
X-Received: by 2002:a1c:cc06:: with SMTP id h6mr974899wmb.118.1584391434448;
        Mon, 16 Mar 2020 13:43:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584391434; cv=none;
        d=google.com; s=arc-20160816;
        b=Fk8PTTAiqjJXw9JS4ggDHIe+bRL5RL6xtGN3BdUIw4MW4b+luXnBqdEtASIXAVSGLa
         0embJurggkcS1os7D7RrrgmJXJX8gM0ikGYS+PU3mRmm+sv/4DxyRUoJ8NkM+reSzq7K
         APwhlpjwgVn8Oy6OQlXvyQkxNGUDmakHIvg8JfFwX0FX1uWivOBczp03fbIzU9DLVa+j
         yhUzvipSLFIPqFk2YOl+1D7pmkhwbLh+gr7BY6tQlR3KzGlhrzygWGmQzrIGQ5E0xGJh
         7oh6ZtkUE3Bq1iAf5zvN+6A58erCfn9rmgtgYmAHSc5/hE6JoyRi6CnGGLWVWhvIFkr+
         gC8w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=vT0BzapTdGO2tIg4inxMoFIzfPXoSuYbFlHoyCsXU9s=;
        b=Gwi4zxntVveSV0d5rFhEtVgiEqJy3m05jmdGHcaswTqyNbxPZTjK8IdpA5n9awmOYy
         2cEbwIvJepmt+kO7xyEPWzCSpMdfRXtW2M3U9Daw9GCZc/7aAYl/VS5VO3FcqH78vn02
         zRBNwRBY/ZWpNU2Zlyx+zUHquFbQgl/N7vPCsdpet2DF3dsWK2XoteIDFW4BfFqHXyc2
         Snm0h9MrpbrbwrdjA5fb5cpK7xn/FDuon1UGizKnj/zjK//IlL4BspJJXtzmQRA+6NPF
         bbPjjuOzrpJ5OecW+vKiFOKy91AoTbMcJ9Him5nRX5WWjQGgk8BUY6UhRBNHAFan7Ixh
         upwg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id n7si1018443wmc.1.2020.03.16.13.43.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 13:43:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,561,1574118000"; 
   d="scan'208";a="440633736"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2020 21:43:54 +0100
Date: Mon, 16 Mar 2020 21:43:53 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: John Wyatt <jbwyatt4@gmail.com>
cc: outreachy-kernel@googlegroups.com, Stefano Brivio <sbrivio@redhat.com>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [PATCH v2] staging: wlan-ng: Fix line going over 80 characters
In-Reply-To: <1f03af664ed57dca20821d59a4af282ec6f32001.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003162143170.5216@hadrien>
References: <20200316012148.1200745-1-jbwyatt4@gmail.com>  <20200316193723.1247875-1-jbwyatt4@gmail.com>  <alpine.DEB.2.21.2003162050510.5216@hadrien> <1f03af664ed57dca20821d59a4af282ec6f32001.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 16 Mar 2020, John Wyatt wrote:

> On Mon, 2020-03-16 at 20:51 +0100, Julia Lawall wrote:
> >
> > On Mon, 16 Mar 2020, John B. Wyatt IV wrote:
> >
> > > Add a newline before the second argument for style, readability,
> > > and
> > > consistency.
> > >
> > > Please note checkpath reports the third argument as being over 80
> > > characters, but not the second argument.
> >
> > checkpatch :)
>
> Thank you :)
>
> For v3 (v2 is also missing the [Outreachy kernel] tag - did I reference
> the previous email properly for a v2 patch?

The [Outreachy kernel] tag comeswhen you receive the message throughthe
mailing list.  Don't worry about it.

julia

