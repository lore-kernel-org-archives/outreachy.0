X-GM-THRID: 6472784237919469568
X-Received: by 10.223.156.139 with SMTP id d11mr776576wre.17.1507128114538;
        Wed, 04 Oct 2017 07:41:54 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.159.4 with SMTP id i4ls2016290wme.3.gmail; Wed, 04 Oct 2017
 07:41:53 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBdFCOBExeQzSL1xEjnL9MFhuw2TEPgnn7BScAU/LnwX1+JgKDuUFPexCBe8OksUC6TjzsI
X-Received: by 10.28.15.72 with SMTP id 69mr2506230wmp.3.1507128113613;
        Wed, 04 Oct 2017 07:41:53 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1507128113; cv=none;
        d=google.com; s=arc-20160816;
        b=kYmj32oD80DADANr2NPk5hCS+eWHey6rNDUWmy1UpVCYLzo4YoiGRguhwlmthQwuqj
         3DxbS0neSY8N6FIlneN2drAsazVTtiuao73550mfTp7JJ6tus+qqL2cTKB0maeRjjMo9
         T6bC9sqAYxB6qPcPyygFMNkvXtI96MgpXX881QKRSpCUfeGBvxePAPXCHBN1GHQx/lZX
         GioQ1BRos/yXgA5P9iLkt6HLw6etu039T+05EUhIGC9DNrTdFAWNrsd13kOX6yXms/G3
         /CYX0VlBcxDQEbp8LZ3Z7sRBmG8pz2BfJtjcmPqcacwGs+PQeuGxF9XUU4u/s2082IYu
         QFxQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=IaAfFiE8xqR+9JIPZWj2iF40c373uZKZPTUILeev5Ag=;
        b=shS2R/rri1LsI63xtF6+NonWsIULk7TyEh+XhGyKQRIogozB4+T/oOJXWGN8sbTXpT
         RpTkd59LGZwKW70VG+Y1lgHl84i79IcjeKG4eh6P8qsaAylNQPwGrdT4qlhTaE3WNCL4
         fKO06c9rn/3hcm0fDloiClcfabY0CpCLgA2FYxhCMUodKwEs0JupGjrKulPBymgPfLfo
         kG05c4jwSg0GzN/+3D8jslhKWJ7cJEEM/GmgWUmGqp+Mp+VlPwGuqEd+PYDHuATrZaCR
         HlZRyGyc/a2emEeXZSZ/X1QM7HOxiWrCHJ4u6yMaTNNj7szTOiu6urY6KJr8udUDzN+4
         lKzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l133si1942067wmb.3.2017.10.04.07.41.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 04 Oct 2017 07:41:53 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,477,1500933600"; 
   d="scan'208";a="239734071"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Oct 2017 16:41:52 +0200
Date: Wed, 4 Oct 2017 16:41:50 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dan Carpenter <dan.carpenter@oracle.com>
cc: Julia Lawall <julia.lawall@lip6.fr>, devel@driverdev.osuosl.org, 
    gregkh@linuxfoundation.org, Srishti Sharma <srishtishar@gmail.com>, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: rtl8188eu: core: Use
 list_for_each_entry_safe
In-Reply-To: <20171004144012.jciztelhwjdyzpwg@mwanda>
Message-ID: <alpine.DEB.2.20.1710041641280.2815@hadrien>
References: <1507062512-9145-1-git-send-email-srishtishar@gmail.com> <20171004112103.cvu5ipkudfpz2adc@mwanda> <alpine.DEB.2.20.1710041537060.2815@hadrien> <20171004144012.jciztelhwjdyzpwg@mwanda>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 4 Oct 2017, Dan Carpenter wrote:

> On Wed, Oct 04, 2017 at 03:39:30PM +0200, Julia Lawall wrote:
> >
> >
> > On Wed, 4 Oct 2017, Dan Carpenter wrote:
> >
> > > On Wed, Oct 04, 2017 at 01:58:32AM +0530, Srishti Sharma wrote:
> > > > Use list_for_each_entry_safe when the list elements may get deleted
> > > > during traversal.
> > >
> > > This patch is fine as a cleanup but none of these are actually buggy.
> >
> > I'm not sure what you are getting at with the comment.  The commit doesn't
> > say that they were buggy.  Perhaps the commit message could have been more
> > verbose, like "Use list operators on list_head values.
> > List_for_each_entry_safe is needed because the list elements get deleted
>                            ^^^^^^^^^
>
> It is not *needed*, the original code works fine.  The problem with the
> original code, is that it's ugly as sin.
>
> > during the traversal"?
>
> The changelog needs to say *why* we're applying the patch.  At first I
> thought it was going to fix a use after free.  What I would prefer in
> the changelog is something like:  "This patch is a cleanup and doesn't
> change runtime behavior.  It changes an open coded list traversal to
> use list_for_each_entry_safe."

OK, Srishti, you can put that.  But change the subject lines too.

julia

>
> regards,
> dan carpenter
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171004144012.jciztelhwjdyzpwg%40mwanda.
> For more options, visit https://groups.google.com/d/optout.
>

