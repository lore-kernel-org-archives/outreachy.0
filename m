X-GM-THRID: 6810236750031486976
X-Received: by 2002:aca:574a:: with SMTP id l71mr464241oib.148.1585685403047;
        Tue, 31 Mar 2020 13:10:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a4a:2741:: with SMTP id w1ls2163405oow.9.gmail; Tue, 31 Mar
 2020 13:10:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuk02Wy8dzkvJyHJHaNYeXKr+8M3rhofR6YQPLzqXVJVs4q9QoRc8GbXMr62I5hTdciMBh7
X-Received: by 2002:a4a:8926:: with SMTP id f35mr12503776ooi.97.1585685401628;
        Tue, 31 Mar 2020 13:10:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585685401; cv=none;
        d=google.com; s=arc-20160816;
        b=DBAG7Xi+JtU30JPnBpdhsCogXZ0Ar/24KANyIdK1+XOzN0BdfKzgkE7gRcCQDHjugK
         Dv4m3pkPceLxa7dH32D19c3ZjWbPFPIwD91sDli5qZuRPfLgL+K/J3dIK2DNvmOMztYf
         KsOyAbemx4wzCs9cU3rGlACX3gZY7qCFVfpFObu3tB1LgQdRon5nKdromZr+ico67mpi
         mD5ty+MjQgwWLp5ckhRECvSt+NdQEcKEJQtNo1SDDy0dojV1lyUTH5P001+oF7HD3eWL
         wK1pL7BD4XG392dT/Zjyso0YsfQFHLN+Bqmg9G9D+ziZS5VGpEgNKEgkfQb4i8s2AXud
         wZEA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:user-agent:references
         :in-reply-to:date:cc:to:from:subject:message-id:dkim-signature;
        bh=wq96Y+FZBAgk6Y+WqHb3/u7SMq9VzQyr3x6xNrVZOQc=;
        b=m/dBAf+w2CEZEvZz1pggP4AsC0qb+np/wBskko1yfl+Ftu/ZzxrV3wNTu7fiWg1+kh
         3z3oEcEjE0aRj33S4BuAEgH6raDBvlbmgXyXJkNE9ZzJp+N6E/oLXjjPm495IsStlT43
         jTtjFiyImjtSsxHEDa8mz/Tw1QKSqRqg8BS3INmCojfeo55DWj0pYjAfjaCt7ZHAeNeY
         fbCBr2geK7rymoZjmUKZBCQY3vz15CQ5+AW77JUWDJwo2Ktq/u53MFyAxST1t+G6/JP6
         KarzWUvuPlZwxxPnSqpsuTRjqmdSUZ6ER4eQRRzSxhcjMsm97/xKyPXtPep97LEZ+6Qm
         lcqw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/PKdBbk";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <briana.oursler@gmail.com>
Received: from mail-pf1-x444.google.com (mail-pf1-x444.google.com. [2607:f8b0:4864:20::444])
        by gmr-mx.google.com with ESMTPS id t81si1275106oie.5.2020.03.31.13.10.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 31 Mar 2020 13:10:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) client-ip=2607:f8b0:4864:20::444;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="Y/PKdBbk";
       spf=pass (google.com: domain of briana.oursler@gmail.com designates 2607:f8b0:4864:20::444 as permitted sender) smtp.mailfrom=briana.oursler@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x444.google.com with SMTP id 23so10899551pfj.1
        for <outreachy-kernel@googlegroups.com>; Tue, 31 Mar 2020 13:10:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :user-agent:mime-version:content-transfer-encoding;
        bh=wq96Y+FZBAgk6Y+WqHb3/u7SMq9VzQyr3x6xNrVZOQc=;
        b=Y/PKdBbkX4tYhK/JC4poE7XeSHNAMnqO/VJBs4aaIh1ST+mC4QpfhxiFMxHeKw51Wd
         d5EPAWp7k12Lq7Z4/TNgX4IuD7REhf/kJRpAszerGr83gcxBXVeRIytBOblNcxUH62kH
         p5IDOfXYBAF9xqL0G4lEkZFVYJHX+z3CTyCQ6dgGz+Rl2xcaeAh0X9DOTIAAK2+bed2z
         uslZv6tdWl7rTpuC+H3bcHR4X8CmsUkkXJ3GHMi/Kq51H3tFF41x8X8knN1Tf3oxUjEO
         y6UhP+5PYd/UJNcmjRTI4vMDzfGgwxEZRorryZE73oreOPeki2763ujNEiuYg0RnwaRA
         cF7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:cc:date:in-reply-to
         :references:user-agent:mime-version:content-transfer-encoding;
        bh=wq96Y+FZBAgk6Y+WqHb3/u7SMq9VzQyr3x6xNrVZOQc=;
        b=CzWBWtKpOwxSutsfjCdzxAb0jzoyEHnqvZQVyW6r0WyXKclpz5TQi/5TBFLUPYHYYw
         zPwWhzTidCcqOfePq9OT2Gm+WQnVO8p5Vs7MO0Vt7RS9RrR3EE6nzJvo+Ofx8/Er3p3t
         5Ihg/ru8ngd4xfCPOvMcDcO0TZA57FnmhiWidZj5oiYNuRWWgZ/L8ZgII2wrQHC05Axl
         Pk8kpQcsQ9PCd6lY7EvPnF+YUPijQV1myWUvUqN0cm8Y+CVNnYejyShtSkt4kH1d4Cok
         sEUG4Q194AzQiu827T3X0yWRE85yyUa46efSkNdME0FOBIu4gP0irdsA26NKSmlZUSgk
         gqoA==
X-Gm-Message-State: ANhLgQ05OKqCR2yi2RPbGy3gvE8lXLj/DvN/3NmFKMOUiIdF00ItMnx5
	0CCUt1PWUWSmewiJXdiic/2/8sJACVge+Q==
X-Received: by 2002:a65:5ccb:: with SMTP id b11mr18784482pgt.387.1585685400712;
        Tue, 31 Mar 2020 13:10:00 -0700 (PDT)
Return-Path: <briana.oursler@gmail.com>
Received: from ?IPv6:2601:1c0:5400:122:2697:be21:1d90:fb7a? ([2601:1c0:5400:122:2697:be21:1d90:fb7a])
        by smtp.gmail.com with ESMTPSA id t188sm12247593pfb.102.2020.03.31.13.10.00
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 31 Mar 2020 13:10:00 -0700 (PDT)
Message-ID: <406c467b0d7a365405e5a628b75699e50d552581.camel@gmail.com>
Subject: Re: [Outreachy kernel] [Patch v2 0/3] staging: vt6655: Remove
 functions that are never
From: Briana Oursler <briana.oursler@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Stefano Brivio <sbrivio@redhat.com>, gregkh@linuxfoundation.org, 
	forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Date: Tue, 31 Mar 2020 13:09:59 -0700
In-Reply-To: <alpine.DEB.2.21.2003312204200.3188@hadrien>
References: <cover.1585630805.git.briana.oursler@gmail.com>
	  <20200331210823.50dbe9be@elisabeth>
	 <e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel@gmail.com>
	 <alpine.DEB.2.21.2003312204200.3188@hadrien>
Content-Type: text/plain; charset="UTF-8"
User-Agent: Evolution 3.32.5 
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit

On Tue, 2020-03-31 at 22:04 +0200, Julia Lawall wrote:
> 
> On Tue, 31 Mar 2020, Briana Oursler wrote:
> 
> > On Tue, 2020-03-31 at 21:09 +0200, Stefano Brivio wrote:
> > > > Subject: [Outreachy kernel] [Patch v2 0/3] staging: vt6655:
> > > > Remove
> > > > functions that are never
> > > 
> > > never...? :)
> > > 
> > It looks like my subject got cut off. Is it okay to just call it
> > 'dead
> > code' in the subject of my revision? As in: staging: vt6655: Remove
> > dead code, leaving all the rest as is (outside of changes from
> > other
> > feedback I may receive).
> 
> To me, dead code is a branch that is never executed.  I think that
> saying
> that the function is never called in the kernel would be clearer.
> 
> julia

Okay, in that case I will leave the title as it was originally
intended. I'll send it as soon as I can determine how to stop the title
from cutting off. 

Thanks,

Briana

> > > On Mon, 30 Mar 2020 22:16:37 -0700
> > > Briana Oursler <briana.oursler@gmail.com> wrote:
> > > 
> > > > This patchset removes functions that are not called in the
> > > > driver
> > > > but
> > > > are prototyped in card.h. Each commit limits its scope to one
> > > > function
> > > > definition and related documentation in code. References in the
> > > > developer's initial changelog were left in place.
> > > 
> > > What do you mean by this? Which references?
> > > 
> > Apologies, that is a mistake. Their changelog does reference a
> > deleted
> > function elsewhere in the driver, but not in this file nor in the
> > scope
> > of this patch series. I confused myself there, sorry for that. I'll
> > remove that reference from the cover letter.
> > 
> > Thanks,
> > 
> > Briana
> > 
> > --
> > You received this message because you are subscribed to the Google
> > Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it,
> > send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To view this discussion on the web visit 
> > https://groups.google.com/d/msgid/outreachy-kernel/e78323c6c6a7429ad084149b66a4cd025b9dbb15.camel%40gmail.com
> > .
> > 


