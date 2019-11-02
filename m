X-GM-THRID: 6754760383787958272
X-Received: by 2002:a1c:2d17:: with SMTP id t23mr15267016wmt.59.1572721214043;
        Sat, 02 Nov 2019 12:00:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:fa0f:: with SMTP id m15ls10316416wrr.13.gmail; Sat, 02
 Nov 2019 12:00:13 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyK1E+XEll4/ZLwTuyo28V6UcnrQxy53UCRscM4sTn3YSmXohhcVAEsVRC8MYsaXGVadU2M
X-Received: by 2002:a05:6000:1181:: with SMTP id g1mr2397321wrx.131.1572721213154;
        Sat, 02 Nov 2019 12:00:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572721213; cv=none;
        d=google.com; s=arc-20160816;
        b=ylp5hQXxYC3U7EgcQosOOxjyUB57Xub74xxu5Em3I/8o1mAS0RytkuWvdAUxbBWD4O
         /8Ifq1bmK9EvnjGD+A19kBoBfCkZXpMVWXdzHikb3sH67kJ29gcG1RPpNFK3Q5JNS1X+
         FMKuSPun81tQs+YQJT9kFhHsj3EWH4eK23BumFUSwecHkc9HtAP0v9CnjrBmBgn/EEhW
         8lpWkS4xUK69ovHCz15dg4kWi+bo8JyMigtcABEAm2gOshkZBbqGBoMNuo++jYrdGQgj
         2vTl/fGRwQr34Of0pMyhJb7YxIXjjt/6QjSzK5F4lfJNJGaJQCyAq8lAjy6JDRR2GJST
         wPkg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=AmPVUl+Xq9toND3326pIXmJ/MFwYPGMdkjRVbNtQNs4=;
        b=yam6noYS7lhayA/aL0ZfMSBeXME4/EPBjxeaFedpfpbG1+imCGeYgdTHHbF0GS/uXV
         wFVLP0NLH00vwTSRB30nKHgm+eUA/mOvjIB8q7LI8uQh/PZMz7kvW6qCe56Aq+sTVJaa
         S4xMsgYRLuUAkzT93ltWECAMvPIgYajaSoNMbJ0cXrK764Ax6XH9+lqyBvJErnN9bS4e
         7Ttm1vp+AtbCQUeiokAX5pKhXwdgxB3GwjkPeANtq0+qejoaatNyurpDg6yINl7PLpwY
         mfgKn5cwT1KCVs81O+HTNeFfifuWqrDsf/QEp6bVnt4LxbIUPli/kdtxr4I7NohOTNFz
         lrPQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s126si827437wme.1.2019.11.02.12.00.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 02 Nov 2019 12:00:13 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.68,260,1569276000"; 
   d="scan'208";a="410009120"
Received: from abo-45-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.45])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 02 Nov 2019 20:00:12 +0100
Date: Sat, 2 Nov 2019 20:00:12 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    julia.lawall@lip6.fr, Boqun.Feng@microsoft.com, jerome.pouiller@silabs.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] staging: wfx: fix warning of
 using plain integer
In-Reply-To: <20191102171950.24950-2-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1911021959210.2558@hadrien>
References: <20191102171950.24950-1-jbi.octave@gmail.com> <20191102171950.24950-2-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 2 Nov 2019, Jules Irenge wrote:

> Fix warning of using plain integer as NULL pointer.

This neither says what is done nor why it is done.  Replace 0 by NULL as
the return value of a pointer-returning function.

julia

> Issue reported by sparse tool.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/wfx/queue.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/wfx/queue.c b/drivers/staging/wfx/queue.c
> index ef3ee55cf621..5d29bce65f71 100644
> --- a/drivers/staging/wfx/queue.c
> +++ b/drivers/staging/wfx/queue.c
> @@ -565,7 +565,7 @@ struct hif_msg *wfx_tx_queues_get(struct wfx_dev *wdev)
>  		}
>
>  		if (ret)
> -			return 0;
> +			return NULL;
>
>  		queue_num = queue - wdev->tx_queue;
>
> --
> 2.21.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20191102171950.24950-2-jbi.octave%40gmail.com.
>

