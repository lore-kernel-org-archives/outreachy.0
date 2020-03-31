X-GM-THRID: 6810236750031486976
X-Received: by 2002:a17:906:a447:: with SMTP id cb7mr17674883ejb.341.1585685101815;
        Tue, 31 Mar 2020 13:05:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:bb02:: with SMTP id y2ls15645273ede.1.gmail; Tue, 31 Mar
 2020 13:04:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsuGr5nkYBtSehYgEdtDpSB4x76xq3pMdL+OA6GaUwGhZsDmD7MJKCRKSs9hHwSlWf9E1fH
X-Received: by 2002:a05:6402:13c8:: with SMTP id a8mr18647507edx.245.1585685099687;
        Tue, 31 Mar 2020 13:04:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585685099; cv=none;
        d=google.com; s=arc-20160816;
        b=AE53g84btFb6jbqznMgRmJsc51bk4Pu6Pb0SZbfOTmeA8do4Ct2OZ5QONOb03qIlq6
         /ldkkdbXim1keOoz2WvinHABg81wnLB1WHE60bffwzPJBe5J9hr8Y1ZGRTXMMV/+Hx8G
         oG8VexcRIOIpYra7/PZA9isLRrLLntGlC6weZgrLo1eFTrkzOA65+rMIcOleznauNQj8
         gNc23nMSjLAtvjVvi2F+FumJgpLC30hoh5GL5xw2MwhObt66ConOX1Hpgrm6TLaLrOKd
         XPgKUNEC/dIqBMZ57FQoLmv3Fhf7389aBrx/dKpVB7KCL7cxnfuP476wVQEyTJm2rxjV
         BmmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=iWq93D3MNsipfLQT2AHfaRki24mS+v1GSWFJ+JBuytA=;
        b=LeOpJ2nCzh9UW3od1qwP28O5nOaHCIk3zTOmDmORvh/0SSjM8eL52rQXY7i+EOedQ/
         WS7sGYHOL91/+zbiCRttt/z9x6AFdTqwiX8VlIzTEAl8k4JlklH3MeJY0kcUAh4PiY8N
         3DIp+xgpMG5jvrR666EHjnAkkIusisei2f6s9guPqsJU1o8SZ+xY56No//XX87Xtf4k8
         j7v+oVKiNIz8IdhXahn15mojQaJnczzFblL/Ab+2pBod5Y6AmJb/1uJScNRAwWvSPoSk
         SRIINHvcPSSt69faMp6N4mnIUIgVbUmjcaJGPWXab7q3A6f3fkq9IeQuJZh5xDLx/Fq4
         uBzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w13si801598edv.2.2020.03.31.13.04.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 31 Mar 2020 13:04:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.72,328,1580770800"; 
   d="scan'208";a="344508808"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2020 22:04:58 +0200
Date: Tue, 31 Mar 2020 22:04:58 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Briana Oursler <briana.oursler@gmail.com>
cc: Stefano Brivio <sbrivio@redhat.com>, gregkh@linuxfoundation.org, 
    forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
 functions that are never
In-Reply-To: <e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel@gmail.com>
Message-ID: <alpine.DEB.2.21.2003312204200.3188@hadrien>
References: <cover.1585630805.git.briana.oursler@gmail.com>  <20200331210823.50dbe9be@elisabeth> <e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 31 Mar 2020, Briana Oursler wrote:

> On Tue, 2020-03-31 at 21:09 +0200, Stefano Brivio wrote:
> > > Subject: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
> > > functions that are never
> >
> > never...? :)
> >
> It looks like my subject got cut off. Is it okay to just call it 'dead
> code' in the subject of my revision? As in: staging: vt6655: Remove
> dead code, leaving all the rest as is (outside of changes from other
> feedback I may receive).

To me, dead code is a branch that is never executed.  I think that saying
that the function is never called in the kernel would be clearer.

julia

>
> > On Mon, 30 Mar 2020 22:16:37 -0700
> > Briana Oursler <briana.oursler@gmail.com> wrote:
> >
> > > This patchset removes functions that are not called in the driver
> > > but
> > > are prototyped in card.h. Each commit limits its scope to one
> > > function
> > > definition and related documentation in code. References in the
> > > developer's initial changelog were left in place.
> >
> > What do you mean by this? Which references?
> >
> Apologies, that is a mistake. Their changelog does reference a deleted
> function elsewhere in the driver, but not in this file nor in the scope
> of this patch series. I confused myself there, sorry for that. I'll
> remove that reference from the cover letter.
>
> Thanks,
>
> Briana
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel%40gmail.com.
>

