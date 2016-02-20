X-GM-THRID: 6253287344425664512
X-Received: by 10.25.18.227 with SMTP id 96mr2436174lfs.4.1455975830599;
        Sat, 20 Feb 2016 05:43:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.210.210 with SMTP id j201ls118467wmg.33.gmail; Sat, 20 Feb
 2016 05:43:50 -0800 (PST)
X-Received: by 10.28.225.8 with SMTP id y8mr208182wmg.7.1455975830017;
        Sat, 20 Feb 2016 05:43:50 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h73si482280wme.0.2016.02.20.05.43.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 20 Feb 2016 05:43:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,476,1449529200"; 
   d="scan'208";a="203906270"
Received: from unknown (HELO hadrien.lan) ([162.212.89.130])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 20 Feb 2016 14:43:48 +0100
Date: Sat, 20 Feb 2016 08:43:46 -0500 (EST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rdma: hfi1: Use
 DIV_ROUND_UP
In-Reply-To: <CA+5yK5HpAQVmcOMtyto_qdU=sMtrTHodKqX-54GzsZkMrJx-pQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.10.1602200843340.4083@hadrien>
References: <20160220082827.GA14902@amitoj-Inspiron-3542> <alpine.DEB.2.10.1602200833090.4083@hadrien> <CA+5yK5HpAQVmcOMtyto_qdU=sMtrTHodKqX-54GzsZkMrJx-pQ@mail.gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 20 Feb 2016, Amitoj Kaur Chawla wrote:

> On Sat, Feb 20, 2016 at 7:03 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >> // <smpl>
> >> @@
> >> expression n,d;
> >> @@
> >> (
> >> - (n + d - 1) / d
> >> + DIV_ROUND_UP(n,d)
> >> |
> >> - (n + (d - 1)) / d
> >> + DIV_ROUND_UP(n,d)
> >> )
> >
> > If you put parentheses around n and d in the above rules, then you won't
> > need the two rules that come after.
> >
> > julia
>
> Like this?
>
> // <smpl>
> @@
> expression n,d;
> @@
> (
> - ((n) + d - 1) / (d)
> + DIV_ROUND_UP(n,d)
> |
> - ((n) + (d - 1)) / (d)
> + DIV_ROUND_UP(n,d)
> )
> // </smpl>

Yes.

julia

>
> Amitoj
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CA%2B5yK5HpAQVmcOMtyto_qdU%3DsMtrTHodKqX-54GzsZkMrJx-pQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

