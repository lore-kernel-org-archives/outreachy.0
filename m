X-GM-THRID: 6660410187282644992
X-Received: by 2002:a2e:9d93:: with SMTP id c19mr2361862ljj.25.1550748591082;
        Thu, 21 Feb 2019 03:29:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:5501:: with SMTP id n1ls205316lfe.3.gmail; Thu, 21 Feb
 2019 03:29:50 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZpMe1Jdbm5y71cEed5yoOTuVZklRr8wKrTm9t+S1KRCByTrrkguruyUvnGP4fUohOhSOtq
X-Received: by 2002:ac2:53b4:: with SMTP id j20mr976367lfh.12.1550748590200;
        Thu, 21 Feb 2019 03:29:50 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550748590; cv=none;
        d=google.com; s=arc-20160816;
        b=fLv/UdpbGlzcWQteB/tNvqr9lNGtQnxP/cyjWC9IVfonk4Sb5q9EzWAOz3nKHa8kRD
         S+z10GFwIh5rP5hjPuunvUtffG9wNL1PkyIzXl4te3DEVm3RHruAy/RkS7YzzBaWbQ6H
         MtkhhySK3EVKPpfoD7qc4ItEWCfHDDBfUC9cq2y+Np4hdNAtMThe5hh6wI+aMjWBzeSv
         YShdzziC+EBFQlQrOvtbkHC9DUVqFAVMh15rqYH2fxTy0HBbx6F8HBVivWMpLr0qFVFh
         HZWXhCWiHYGiyDFpAo7czvSNK23L0dd6HlDwybSn0wceD3iJ6qJUG+6HrXZli5bxxJvk
         fu5w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=6kIefvjvkMWEx2FiRM1uoNu7d1RatjgKdnuPF6/BaRs=;
        b=qPw4b0+oGHmYrWBdJbH7SjLvEuTTNwh5wyDTUVld0w0zajGd5MlXzzeE+NTJRSu/O5
         iU1ZEGSJXSoAxwjW86LvtmLhvL1bxq+MJf/GLPdFtguBxxLCgmxpHRmbo7NFlHqirIsA
         uvVORu5fo0Fj5WWnA3QNY/0eFVXkbRk0epaOhdcGCezumWCoLKbwvntUO76TPtRoPhkJ
         2y/nLPvPsGvUFhelAagIvx6Q+lLE+GOf6pFZV9XXOPqHWlQiM/VAL+0zW2Io7l5duPej
         vRDUX7nmgsZAgOWyixj32Zrjyke9B6sNBopO6QzkXl81+dxiG56mClrOsGL0M3LO9G3A
         iizA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id m16si854883lfl.0.2019.02.21.03.29.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 21 Feb 2019 03:29:50 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,395,1544482800"; 
   d="scan'208";a="370317515"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 21 Feb 2019 12:29:49 +0100
Date: Thu, 21 Feb 2019 12:29:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Add SPDX License Identifiers
In-Reply-To: <20190221111304.GA29010@bhanusree-MacBookAir>
Message-ID: <alpine.DEB.2.20.1902211228470.3798@hadrien>
References: <20190221111304.GA29010@bhanusree-MacBookAir>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 21 Feb 2019, Bhanusree Pola wrote:

> This series cleans the following checkpatch.pl issues in various files:
>
> "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
>
> Bhanusree Pola (4):
>   staging: netlogic: Add SPDX license Identifier
>   Staging: netlogic: Add SPDX License Identifier
>   Staging: netlogic: Add SPDX License Identifier
>   Staging: netlogic: Add SPDX License Identifier

You should also not have multiple patches with the same subject line.  If
the files and the change are closely related you could put them all in one
patch.  Otherwise, you need to find some way to make the subject lines
unique.

julia

>
>  drivers/staging/netlogic/platform_net.c | 1 +
>  drivers/staging/netlogic/platform_net.h | 1 +
>  drivers/staging/netlogic/xlr_net.c      | 1 +
>  drivers/staging/netlogic/xlr_net.h      | 1 +
>  4 files changed, 4 insertions(+)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190221111304.GA29010%40bhanusree-MacBookAir.
> For more options, visit https://groups.google.com/d/optout.
>

