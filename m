X-GM-THRID: 6205566056947253248
X-Received: by 10.180.35.132 with SMTP id h4mr5859754wij.5.1444846163959;
        Wed, 14 Oct 2015 11:09:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.85 with SMTP id d82ls61966lfb.47.gmail; Wed, 14 Oct 2015
 11:09:23 -0700 (PDT)
X-Received: by 10.112.63.165 with SMTP id h5mr1126175lbs.18.1444846163268;
        Wed, 14 Oct 2015 11:09:23 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si951230wif.2.2015.10.14.11.09.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 11:09:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,682,1437429600"; 
   d="scan'208";a="182811817"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Oct 2015 20:09:23 +0200
Date: Wed, 14 Oct 2015 20:09:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: lustre: Remove useless
 cast on void pointer
In-Reply-To: <cover.1444845733.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.10.1510142008470.2421@hadrien>
References: <cover.1444845733.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Oct 2015, Amitoj Kaur Chawla wrote:

> This patchset fixes multiple useless casts on void pointers.
>
> The semantic patch used to find this is:
>
> @r@
> expression x;
> void* e;
> type T;
> identifier f;
> @@
>
> (
>   *((T *)e)
> |
>   ((T *)x)[...]
> |
>   ((T *)x)->f
> |
> - (T *)
>   e
> )
>
>
> Amitoj Kaur Chawla (6):
>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>   staging: lustre: ptlrpc: Remove useless cast on void pointer
>   staging: lustre: ptlrpc: Remove useless cast on void pointer

The patches haven't arrived in my mailbox yet, but it looks like you will
have four with the same subject?

julia

>   staging: lustre: mgc: Remove useless cast on void pointer
>   staging: lustre: osc: Remove useless cast on void pointer
>
>  drivers/staging/lustre/lustre/mgc/mgc_request.c | 6 +++---
>  drivers/staging/lustre/lustre/osc/osc_request.c | 7 +++----
>  drivers/staging/lustre/lustre/ptlrpc/pinger.c   | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/sec_bulk.c | 3 +--
>  drivers/staging/lustre/lustre/ptlrpc/sec_gc.c   | 2 +-
>  drivers/staging/lustre/lustre/ptlrpc/service.c  | 6 +++---
>  6 files changed, 12 insertions(+), 14 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1444845733.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

