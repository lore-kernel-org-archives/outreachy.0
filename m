X-GM-THRID: 6665164528202809344
X-Received: by 2002:a67:7f48:: with SMTP id a69mr4093768vsd.34.1551855651709;
        Tue, 05 Mar 2019 23:00:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1f:4247:: with SMTP id p68ls100372vka.3.gmail; Tue, 05 Mar
 2019 23:00:51 -0800 (PST)
X-Google-Smtp-Source: APXvYqxFbqYO4pTNeejqYXLWLXgQ+KuscGzMsoHDB1TrvIfWEvqlRQJAkChwzfTE1pyK/S6+pvRB
X-Received: by 2002:a1f:4192:: with SMTP id o140mr3104761vka.17.1551855651034;
        Tue, 05 Mar 2019 23:00:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551855651; cv=none;
        d=google.com; s=arc-20160816;
        b=slIxOezaAeALgl4mJDGxc/FuZ9miH5SP6R+RZDqkixOTk+SbIByTpHT51Nmexe+m+1
         jgIW7XNWfHksmVTn5rWE0EBceIUYjcxWqgV54tfYjM9SvIxCWPQ2QI3mmonvIdtcF/G2
         InvwPy9mDtTKuszIUvvB85QREqFw8dcIj58X5rEZvjXnMgB+3NWg55zos8JHAaXxs5Rc
         ygai9Tfpj1ymomp0WBf3ArwvVGp6LwAKUlDOXymN+SA/1MOyG9r5eg1Mh22m6fsSxi2w
         TpaBvGC9qVMHCvojGhSdpE5M6Vu2la6gPDn00GC51PAjssxfEsGe01bZSAEwL+qunuOi
         +q5g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=oINU6eeCHDXjUclyC9VBetGa12mmEPez+PYlAMLxBVo=;
        b=DkPRUVamTTl8Nmc7lHOlC7ByO0CNZ/NgmqhYjLIb2gldlHdaQvPp9PwOEa+Xf98cpi
         4idcYfZDpA277tnFwOmMWNqTQ4VEpVogCuIQxWP6yM2cYrc/390SMbKroUZLQ7mndc73
         xuEknkS+h0YsKn/WATswPp+xh/V7fhkCkrPp43YiHiZFqPXIy9qu8vKFU1PxinE8EjlI
         59Bm8CvZHd70/nTCRAgQj22xLIkYgj+bGuXciITJbI1RyQLFO0uAiwXc7LhX8zy8nnKx
         R3gaMtgsJau+k3moSrVO5wY0GpEqDDSfvsgKKPyarcGym4TvDGxGKqjJctcys1ENQVP7
         ZvPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+fXhIkV;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <digholebhagyashri@gmail.com>
Received: from mail-qk1-x741.google.com (mail-qk1-x741.google.com. [2607:f8b0:4864:20::741])
        by gmr-mx.google.com with ESMTPS id b19si27407vkf.3.2019.03.05.23.00.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 05 Mar 2019 23:00:51 -0800 (PST)
Received-SPF: pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) client-ip=2607:f8b0:4864:20::741;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=r+fXhIkV;
       spf=pass (google.com: domain of digholebhagyashri@gmail.com designates 2607:f8b0:4864:20::741 as permitted sender) smtp.mailfrom=digholebhagyashri@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-qk1-x741.google.com with SMTP id m9so6212632qkl.4
        for <outreachy-kernel@googlegroups.com>; Tue, 05 Mar 2019 23:00:51 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=oINU6eeCHDXjUclyC9VBetGa12mmEPez+PYlAMLxBVo=;
        b=r+fXhIkVCXD9kfIr00AYx91RLUBZtnHA5gRw/53pYErCt9W1Opril4XXjjkjS/Nmx3
         qJzXFvYs4jCyz0ZcA7G+h9QcmoLKNG/76SBW4whzyOP0PD20jozsew1rY7ZtIXeZVsS3
         9GPde0c1iIUSaCbEW0zWOaXGrI2x0VKhNpc/jp2otoeohm4r6Xeq3BC49SnkuwM9ShpS
         kaowmHNRQITh/kpeSiJNRzQuylFiJ6Kup2oFIOpkbKlIFimeUIJITbYjJBvIs7uV46St
         EuzyNxd+B8G+zz+1acIAWmnOU7UMKPuBN/fLW4l1/mx4tJY+L1M21M/iXtvNk/1OzNES
         y8ig==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=oINU6eeCHDXjUclyC9VBetGa12mmEPez+PYlAMLxBVo=;
        b=E+pRcDSxWugtZpgaIsjt5YVflg+XuETb0DVL+uS9NNN1YZwR+/C0PuYvU/cNBx466W
         6jlSYGyUOMZifDZudVikH/J/Fz5ahE5F8YxDrnijInyeECSwzG7HcjE0OlHqz5dyffd/
         YsZ1jXtW/2J1fZZ61s4R+RAFQVGAydwMC7mJyjAzDFPNkA1BUC3rEf4p97pl2iPFBam4
         fi3cHT6LgnaXRx7rou8gSa2TBnmWJHQBPkjDPCW3+9EqWb9vZn6LhhSwI+QNn+z8QuqF
         W51oBrqT1ArE+LII0vdcgQxuJCuvokksqntGUtbY7zRRiqnrctL1FwXa/K64p6eubJuv
         AYaw==
X-Gm-Message-State: APjAAAUgUmYAID9ROvXKeyvKmqCPgRNrFU4nH2kgMT5clyrA4kVmVaF9
	dFwuITpqihIZYUMd31NHHMvS3MzKQrRYB9PKG0o=
X-Received: by 2002:a37:d6c6:: with SMTP id p67mr4474065qkl.329.1551855650619;
 Tue, 05 Mar 2019 23:00:50 -0800 (PST)
MIME-Version: 1.0
References: <CAOMPgjiqYU4Hwb26RjnN=JevCEgtc1wCMHq_EM5fDDq9mOYjmQ@mail.gmail.com>
 <alpine.DEB.2.21.1903060749330.2706@hadrien>
In-Reply-To: <alpine.DEB.2.21.1903060749330.2706@hadrien>
From: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Date: Wed, 6 Mar 2019 12:30:14 +0530
Message-ID: <CAOMPgjgkSKmCAnDjuET-d77ZidWpB=uXA9J2-2QWRfF_jMHjDw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Regarding unused macro.
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Wed, Mar 6, 2019 at 12:24 PM Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
>
> On Wed, 6 Mar 2019, Bhagyashri Dighole wrote:
>
> > Hi,
> > I am contributing on fbtft driver, As i see `+#define
> > define_fbtft_write_reg(func, buffer_type, data_type, modifier)` macro
> > is not in use. can i remove this macro to resolve `CHECK: Macro
> > argument reuse  possible side-effects issue?
>
> If I grep for the name of this macro, I find what looks like three uses.
> Why do you think it is not used?
>
> The macro is quite complex, so I haven't looked into what are the
> arguments that it considers to be used more than once.  But an interesting
> thing about this macro is that just from the usage sites, you can see that
> it has to be a macro and cannot be a function, because the arguments are
> names of types, and one of them is missing in some cases.  These things
> aren't possible with a function call.  On the other hand, if you look at
> the usage points, you can also see that using the arguments more than once
> will not result in re-execution of any code - they are just function names
> and type names.  So you can ignore the warning.

Thanks :)
>
> julia
>
>
> >
> > Thanks
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOMPgjiqYU4Hwb26RjnN%3DJevCEgtc1wCMHq_EM5fDDq9mOYjmQ%40mail.gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
> >
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.21.1903060749330.2706%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

