X-GM-THRID: 7020448359173324800
X-Received: by 2002:a17:906:b1c3:: with SMTP id bv3mr22779304ejb.78.1634576505878;
        Mon, 18 Oct 2021 10:01:45 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:d39a:: with SMTP id x26ls17508759edq.2.gmail; Mon, 18
 Oct 2021 10:01:43 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx3cBs72CAT+pqAqBdLFcp9DGf8UEVIFG8fIUUxLWwIOix/p07/FpRV5JWfAN7JkNeAWOKE
X-Received: by 2002:a05:6402:1910:: with SMTP id e16mr47070920edz.176.1634576503614;
        Mon, 18 Oct 2021 10:01:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634576503; cv=none;
        d=google.com; s=arc-20160816;
        b=vIpSbnuFCBDNrg844aZk1H7UjpkVX+giJt7weCr/8SfYWV8Ib4tbLtorpMHYu8H4X4
         jif2dy2cFrz76ZsVD6G34wV4bD/ZnNa/x72+yeiCge8mFGmkAb5X48jlLy3slXHeGgze
         /fM9CUS1CADG6bG/tuRu7FWb7zn5jNjMUoNBlJrL654yjZD4+pJ9ziiixtCQhzoDIwt0
         coZb2saYR4oFsK0ELsu6E+s24lBOzQrtop/cCzO3fQIjKshzn29GSziXtEpuVF25wglr
         mu8FF5IyR04Y9RCQQR1U+qMW0BrNLmGTISiSDrKpr8E+6NSaSKdXTTxnKG5pvhJoGlmX
         N+BQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=iLs4AduXLpHHq68mroNtHQc6WXAIw2UA8lBaSOVtoDE=;
        b=TgTfSVJv+XjMAwD2+Uo0+Nq2hh4SZEs7g9XNRw4Cc3pKFghHS0HCJhBHwvO0EKuraE
         ngSi5CBgQR9qrx9m1XzhhMUXxcnZ9kcdFb+qf/04r0Vahvkm9F2WnbzHUtwy/rFEoCFS
         gLxd3YphIzDa6GiH0sIm8GY+/awNdfwpf6qEsICJs3kOnpBTWIKCWAJa4/8jVV0Vayyy
         /t0lcHVDP//Tw9JgDe0+bKSifu75N6fC0LaxSJCQB7SZpZZ9XTNbMkY6QtVF2dszC601
         s08+EdfO/tw/KkVxmN36SBrMm4rVme4rptJXomVtMuu/dvv21Ix5EGBEV1nOBTSNz53R
         0BJw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 14si693673edv.4.2021.10.18.10.01.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Oct 2021 10:01:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Ao74mYagtSloWCT3Hdzd0XrBra3BQXt0ji2hC?=
 =?us-ascii?q?6mlwRA09TyX4rbHLoB1173TJYVoqMk3I3OrgBEDiewK4yXcW2+ks1N6ZNWHbUS?=
 =?us-ascii?q?mTXeJfBODZrQEIdReTygcQ79YDT4FOTOy1N1R8gMrgiTPUL/8ryrC8n5yVuQ?=
 =?us-ascii?q?=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396288625"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Oct 2021 19:01:42 +0200
Date: Mon, 18 Oct 2021 19:01:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: sudipm.mukherjee@gmail.com, teddy.wang@siliconmotion.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    mike.rapoport@gmail.com, kushalkothari2850@gmail.com, 
    Kushal Kothari <kushalkothari285@gmail.com>, 
    Kushal Kothari <kushalkothari285@gmail.com>, Joe Perches <joe@perches.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: make pointers in
 array const
In-Reply-To: <163460335.XzdQGyDEVH@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2110181900410.3174@hadrien>
References: <20211018164431.26462-1-kushalkothari285@gmail.com> <163460335.XzdQGyDEVH@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 18 Oct 2021, Fabio M. De Francesco wrote:

> On Monday, October 18, 2021 6:44:31 PM CEST Kushal Kothari wrote:
> > Change the parameters of functions from const char *g_fbmode[] to
> > const char * const g_fbmode[]. This additional const is needed to
> > allow us to fix  checkpatch warning, as well as being good
> > programming practice.
> >
> > For the checkpatch warnings, if we have a set of command line
> > args that we want to check defined as:
> > 	static const char * g_fbmode[] = {NULL, NULL};
> >
> > checkpatch will complain:
> > 	WARNING: static const char * array should probably be static const
> char * const
> >
> > Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> > ---
> >  drivers/staging/sm750fb/sm750.c | 2 +-
> >  1 file changed, 1 insertion(+), 1 deletion(-)
> >
> > diff --git a/drivers/staging/sm750fb/sm750.c b/drivers/staging/sm750fb/
> sm750.c
> > index dbd1159a2ef0..3d9b4b0efcb1 100644
> > --- a/drivers/staging/sm750fb/sm750.c
> > +++ b/drivers/staging/sm750fb/sm750.c
> > @@ -33,7 +33,7 @@
> >  static int g_hwcursor = 1;
> >  static int g_noaccel;
> >  static int g_nomtrr;
> > -static const char *g_fbmode[] = {NULL, NULL};
> > +static const char * const g_fbmode[] = {NULL, NULL};
>
> You have introduced a logical change (g_fbmode[] entries cannot be assigned
> any more) and a build error (because there is code somewhere that assigns
> values to those slots).

I wonder if this warning makes much sense when the array elements are
NULL.  I don't know if checkpatch could easily detect that.

julia


>
> Please, build the code after you've changed it.
>
> Thanks,
>
> Fabio
>
> >  static const char *g_def_fbmode = "1024x768-32@60";
> >  static char *g_settings;
> >  static int g_dualview;
> > --
> > 2.25.1
> >
> > --
> > You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/
> outreachy-kernel/20211018164431.26462-1-kushalkothari285%40gmail.com.
> >
>
>
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/163460335.XzdQGyDEVH%40localhost.localdomain.
>

