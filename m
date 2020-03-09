X-GM-THRID: 6802299057078272000
X-Received: by 2002:a2e:5ce:: with SMTP id 197mr2078507ljf.234.1583786005291;
        Mon, 09 Mar 2020 13:33:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:651c:3cd:: with SMTP id f13ls2011657ljp.4.gmail; Mon, 09
 Mar 2020 13:33:23 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvD17623rVnX3macHNlerfxV6YCVFNj+3OArEfqz5y1L5WwcaGDf+RJKD6ovLCDVMg12YUa
X-Received: by 2002:a2e:9b94:: with SMTP id z20mr976730lji.147.1583786003856;
        Mon, 09 Mar 2020 13:33:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583786003; cv=none;
        d=google.com; s=arc-20160816;
        b=hcoGyHx42jKJoiMCkwWUcGVgnnAz5QNjF8W2Sz5JEtW+lo0lSX+qM6pkbHM0+run2A
         9AgY1W3R+kdAtqkL6E3v27gPb9Mn9KytoMRFimIkx/A7pebtbhDDYKUSzfuQTXwDP3Xk
         Ib+D3RDJ2v86UXJw+4x1POFL4eHnI/FkM4clqwGfG3nRSJBtNgGXUl4i9CmyB1lnP/Lf
         CCye5r40cHO57G1uXOpwx9054ddDmF2tkGkfLy5jOtI1SMS+vVslpj8fcYFqIP6+G+RJ
         4/3kSnxKHF0yt8Yq43qbUEZBXIZNCN9X371LP94kn63J5YdkjpaCRDStpJ8pkb3HRClq
         3PLA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6z2C96rmNn65yWG1TlpaOLDpqnkgZi0yYR5rAEgZHak=;
        b=T9XO9OhssxrFSVIXP2yNVKCku/DDQPyCpoOOgdMb1AkQCGkK+UvRebpF+5oespkjJL
         AavhS+Uqig0dU3LmwJjHSARoK1D1btzp1yaPVT6ilD+gFr/PYxIjFjf9qxLxsyOQrunA
         GI/wjOiXVEG5HWhva/JJetuponu3TyFh/PS0u1MHKmoO/tmap1as5xzW43xUiXnm432P
         hAxEXhCML0DGASVsBU+SchDXPegNrKO3D8eeAP/bQvagfZMxg4C/mpn7KDAOvZ6cIyOw
         sjY97iK9mEbm11uTtlXLbpmQrHLaT10pFYybo+CS9mfI6xZF4uDSNcUAdMdPUhUSvHc8
         yp9Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u8si454489lfu.3.2020.03.09.13.33.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 13:33:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,534,1574118000"; 
   d="scan'208";a="439558090"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 21:33:23 +0100
Date: Mon, 9 Mar 2020 21:33:22 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Lourdes Pedrajas <lu@pplo.net>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Some questions about Outreachy
In-Reply-To: <20200309195423.GB6565@supernova>
Message-ID: <alpine.DEB.2.21.2003092130090.2324@hadrien>
References: <20200309195423.GB6565@supernova>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Mon, 9 Mar 2020, Lourdes Pedrajas wrote:

> I have some questions that are still unclear to me:
>
> In wiki it said that one have to make 10 patches and 2 patchsets. Is it
> 10 patches plus 2 patchsets, or 10 patches 2 of them are patchsets?

Since this is your first time applying, I think that 10 patches plus 2
series would be better.  But it depends on what you are doing.  Some
changes naturally lend themselves to a series.

In any case, the goal is to be able to send patches that conform to the
kernel coding style and are likely to be accepted.  Try to work in that
direction and don't worry too much about the nunbers.

>
> Linux kernel is accepting 2 interns. Is 2 interns for all sub-projects or
> 2 interns in every kernel sub-project?

Normally there is one intern per project.  I don't know about the number
of projects.

julia

> Thank you,
> Lourdes.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200309195423.GB6565%40supernova.
>

