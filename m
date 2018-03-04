X-GM-THRID: 6529117174550757376
X-Received: by 10.46.29.133 with SMTP id w5mr776542lje.26.1520178855931;
        Sun, 04 Mar 2018 07:54:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.67.82 with SMTP id m18ls1465656lfj.9.gmail; Sun, 04 Mar
 2018 07:54:14 -0800 (PST)
X-Google-Smtp-Source: AG47ELud7uTQ2ah1RUeoqnRGiPw/P5D7wPQ+ui0Dzbbxve1oI8IlNiWmpxsYyEC6WecOtX6pgD0+
X-Received: by 10.25.22.20 with SMTP id m20mr837610lfi.3.1520178854184;
        Sun, 04 Mar 2018 07:54:14 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520178854; cv=none;
        d=google.com; s=arc-20160816;
        b=ZKrgu2/sbQ5BmGTw44EWJW89GS0+z3zyEWZ+K29vCGGdqqkJhsqVqSf/ZMWuhiRfZl
         66EriPhO41CYQT0n8kX5SlmUOkMcfxcyoTDaJBsU44mmAh0gPgzP12lcWUGLSt7ek93n
         dduqHEoY0n79QMyKTBl+m8Wa0YhicxjVys92V5/6+OBqu2P+Yn/WjBUUeeS/2dq5Tiy4
         lI/cfLSiibttOTQO6IFGcuF4ShSkvb0rb3i1IFKsKLlmg+ZGUKXgITRqStC08rNR9V7K
         kaGejIYs2a1OKOSv0rYAI09RsXYuRUBINa8+0xtRkmRymMoeBvamhTj4bU99IFIEPW+B
         ADGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=DlW6IWk+sK+bSPkBM4SQwXBZxcw5/kRFhUGA7MbmYPc=;
        b=tTd6dGyDFY4rsJUchQTwc4InnQmcPCN8JAmtPR9ZE4d2BjOc5i1cdnVjqaBaRMEGw6
         /DvfdAC0MQ5dOJ9HZ8kSM5ixotuIe5joJo/kmon4P9V7/br2s1eTfVjzH+KohYUsyXUj
         xpLafhj4LkjNQRcQ69T3kKdNMf1RJa2dcsgLEeWkdL3JP8WmJ0Tj04HLM82I8/YUgOfY
         bT4OrC+Sgw1jBXmOJmkC5tUv7pg0VaHaHibO4d1Cb0OxR/lTw0RMKKIzBbVdIIF9+cXV
         rEmxxKMPla5zIbkXVhpKZi48MoolgnNk4TU///BGWc5jl6yq8C/NGOHUH0v3FkAyKVuN
         pGWg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s12si447078lje.3.2018.03.04.07.54.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 07:54:14 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,423,1515452400"; 
   d="scan'208";a="316311983"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 16:54:13 +0100
Date: Sun, 4 Mar 2018 16:54:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: alan@linux.intel.com, sakari.ailus@linux.intel.com, mchehab@kernel.org, 
    gregkh@linuxfoundation.org, linux-media@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: media: cleanup
In-Reply-To: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1803041653350.2182@hadrien>
References: <1520178507-25141-1-git-send-email-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Arushi Singhal wrote:

> Spellcheck the comments.
> Remove the repeated, consecutive words with single word.

For the series:
Acked-by: Julia Lawall <julia.lawall@lip6.fr>

But please look out for things to change in the code, not just in the
comments.

julia


>
> Arushi Singhal (3):
>   staging: media: Replace "be be" with "be"
>   staging: media: Replace "cant" with "can't"
>   staging: media: Replace "dont" with "don't"
>
>  drivers/staging/media/atomisp/pci/atomisp2/css2400/ia_css_pipe_public.h | 2 +-
>  drivers/staging/media/atomisp/pci/atomisp2/mmu/isp_mmu.c                | 2 +-
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c                    | 2 +-
>  3 files changed, 3 insertions(+), 3 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520178507-25141-1-git-send-email-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

