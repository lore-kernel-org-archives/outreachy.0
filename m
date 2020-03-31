X-GM-THRID: 6810236750031486976
X-Received: by 2002:a5d:4c87:: with SMTP id z7mr23805656wrs.39.1585686143379;
        Tue, 31 Mar 2020 13:22:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:6402:: with SMTP id y2ls1949738wmb.1.canary-gmail; Tue,
 31 Mar 2020 13:22:22 -0700 (PDT)
X-Google-Smtp-Source: APiQypK89pBlENHQlEDpVjl6e+41oc0jhaK0zbviUxpSqp4dtad7I9eQUI6o3OzfCqd2H9AocgPd
X-Received: by 2002:a7b:c205:: with SMTP id x5mr609725wmi.189.1585686142213;
        Tue, 31 Mar 2020 13:22:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585686142; cv=none;
        d=google.com; s=arc-20160816;
        b=imiVd3W9KO+eTKfbvDxUqunCLReA0qGM/jDVs+XUuQaECWg6JIjPDQWx5AYuE6k/K2
         mEmbHV6/iqdZYUMzgLNRgQABeChICSZAuISN1X6FlAXPKdRtxMn1t+8wwGNAB2mCNJkA
         Abgr9SDFtMULPOmu5Vp7V9hr0rS06fuNNmdam+yvO+MoRG0GQCkz2AUUiYThbDCjr4nI
         Qo2Z0Po0S4c9ExBh8gCnru25kU11dXtMVOyQMHDnohuYqlUfRDbacvl9Zg6eJmRoRhVc
         ArbuF6OsGsiWAeGa17ephYBwp7Z+L3dGLY9ghGjMtof0eUsP2qPP4L6fsTxgl3JRllQ6
         6/Tw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=MMueL9BCaOIDQprqqDiypiAvfGPWcfV4+reVsV/TOSA=;
        b=ojhxRCAUno+gR+zYZdo6bhZItoSDOI1ZJblSiUU2fKqrdWxHIHkbNu7pJpCSI2FuJN
         ecDigLWnIiSAvjvH6XmnpDGuclgZlIniiM9/hVnlFqoEa47bK0i8/FhiXsTkeRulPIXJ
         OelhoamTu4qpV8JM0/xuMCPsZJ6ZMe2kO08NEE+o32TkOPwxWDWL9Bv9SlBjrw+zb4Z5
         Djx6OIhhAN9Llk4a4+l4OXxL/lEomIZtnGHhVdwCo8ciyMlL+k3BwO0GK/TqXSPrJfeL
         LESyQSRb7qkNCozy2wYwpfBCXBonhFQt68vLU8dvr6Tdc6M4RBJmfqaxTx2rPlNpThR4
         uPsg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x204si189776wmb.3.2020.03.31.13.22.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 13:22:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,328,1580770800"; 
   d="scan'208";a="344510017"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 22:22:21 +0200
Date: Tue, 31 Mar 2020 22:22:20 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: Julia Lawall <julia.lawall@inria.fr>, Stefano Brivio <sbrivio@redhat.com>, 
    gregkh@linuxfoundation.org, forest@alittletooquiet.net, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
 functions that are never
In-Reply-To: <406c467b0d7a365405e5a628b75699e50d552581.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003312222050.3188@hadrien>
References: <cover.1585630805.git.briana.oursler@gmail.com>   <20200331210823.50dbe9be@elisabeth>  <e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel@gmail.com>  <alpine.DEB.2.21.2003312204200.3188@hadrien>
 <406c467b0d7a365405e5a628b75699e50d552581.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 31 Mar 2020, Briana Oursler wrote:

> On Tue, 2020-03-31 at 22:04 +0200, Julia Lawall wrote:
> >
> > On Tue, 31 Mar 2020, Briana Oursler wrote:
> >
> > > On Tue, 2020-03-31 at 21:09 +0200, Stefano Brivio wrote:
> > > > > Subject: [Outreachy kernel] [Patch v2 0/3] staging: vt6655:
> > > > > Remove
> > > > > functions that are never
> > > >
> > > > never...? :)
> > > >
> > > It looks like my subject got cut off. Is it okay to just call it
> > > 'dead
> > > code' in the subject of my revision? As in: staging: vt6655: Remove
> > > dead code, leaving all the rest as is (outside of changes from
> > > other
> > > feedback I may receive).
> >
> > To me, dead code is a branch that is never executed.  I think that
> > saying
> > that the function is never called in the kernel would be clearer.
> >
> > julia
>
> Okay, in that case I will leave the title as it was originally
> intended. I'll send it as soon as I can determine how to stop the title
> from cutting off.

Maybe remove dead functions would be ok.

julia

>
> Thanks,
>
> Briana
>
> > > > On Mon, 30 Mar 2020 22:16:37 -0700
> > > > Briana Oursler <briana.oursler@gmail.com> wrote:
> > > >
> > > > > This patchset removes functions that are not called in the
> > > > > driver
> > > > > but
> > > > > are prototyped in card.h. Each commit limits its scope to one
> > > > > function
> > > > > definition and related documentation in code. References in the
> > > > > developer's initial changelog were left in place.
> > > >
> > > > What do you mean by this? Which references?
> > > >
> > > Apologies, that is a mistake. Their changelog does reference a
> > > deleted
> > > function elsewhere in the driver, but not in this file nor in the
> > > scope
> > > of this patch series. I confused myself there, sorry for that. I'll
> > > remove that reference from the cover letter.
> > >
> > > Thanks,
> > >
> > > Briana
> > >
> > > --
> > > You received this message because you are subscribed to the Google
> > > Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it,
> > > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To view this discussion on the web visit
> > > https://groups.google.com/d/msgid/outreachy-kernel/e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel%40gmail.com
> > > .
> > >
>
>

