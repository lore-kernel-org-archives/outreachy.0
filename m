X-GM-THRID: 6529093465723109376
X-Received: by 10.25.208.19 with SMTP id h19mr842883lfg.10.1520178949601;
        Sun, 04 Mar 2018 07:55:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.82 with SMTP id v79ls1466485lfa.11.gmail; Sun, 04 Mar
 2018 07:55:48 -0800 (PST)
X-Google-Smtp-Source: AG47ELsGTNcmAUnFXAtmCB8PrnlsGCHPylISU0fharwZBQPFII0iae/PNoqys1t/ECJkdlvERd4y
X-Received: by 10.25.215.23 with SMTP id o23mr876386lfg.25.1520178948877;
        Sun, 04 Mar 2018 07:55:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1520178948; cv=none;
        d=google.com; s=arc-20160816;
        b=wvd8c5DRg0ZyUaarQrz4ks+i6Y2pNWomRP9bTe7JL9pnIT3l9+Idrr59jBYsxNI+X7
         z902JxXzfTR7bsp88JbqxYHNwlXiIrnaPhnN5lKZnu0L2W3Z4nNm5WzrF3Nq1aorzZOz
         Jd4/aLbhqRh3C3sgbqljhX810hPObWAdik3ZUVF290sHJpx8kOfaZxXQ5FebwLhb7EvB
         WYS9DNtDmRlyIAxz4MYRTZCZ6sBwFdUkLCbZXkEbuyOesAO6/kQjPJ1BVBEOKwe20u5G
         3uXbUf/Uw269XyhCE1lT02pufuYyNDfBx5QlWDccGr9iI+YL+iP4IVtSCaLfcUi7Y5aw
         y0IA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=z2bChMzWfSawa8c191aw8vrW3DZRUzVqIWsJceXXtaI=;
        b=JMCJRbFgMUMmqjp1LGzMteotaitpRI+6H8hb/AtdFp61xf9pnaomeL+Q95vKR3l81D
         Dlo/awzeq4oIhiv/dG8/mh5AbKf3/D5Ri4PjlikZGAC3wH1wuWd54HqlxiRZVPFY9BuQ
         E6XD7OlLhtCuVUG0J+XybV90Y+A7VzNK4X2cAz5jkYKXuQv2vTdMpm6E43i+oH5Qu5UQ
         H4tpRBtZztgQHkVylcD6o8XG60tWlNa89B+i8BHJkTS5opeM3HvQETCHMVAGTUoy6mb4
         ZUMEPU2z8Fihgf6qpjOZFRZ4ELkxkvKeciVHHx+GrQLXxz2+UAofszsh9qPMvVBnC7R3
         MjVA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s26si382789lfi.1.2018.03.04.07.55.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Mar 2018 07:55:48 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,423,1515452400"; 
   d="scan'208";a="316312033"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Mar 2018 16:55:39 +0100
Date: Sun, 4 Mar 2018 16:55:39 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: oleg.drokin@intel.com, andreas.dilger@intel.com, jsimmons@infradead.org, 
    gregkh@linuxfoundation.org, lustre-devel@lists.lustre.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: lustre: cleanup
In-Reply-To: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>
Message-ID: <alpine.DEB.2.20.1803041655150.2182@hadrien>
References: <1520172968-17448-1-git-send-email-arushisinghal19971997@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Mar 2018, Arushi Singhal wrote:

> Spellcheck the comments.
> Remove the repeated, consecutive words with single word.
>
> Arushi Singhal (3):
>   staging: lustre: Replace "be be" with "be"
>   staging: lustre: Replace "to to" with "to"
>   staging: lustre: Replace "dont" with "don't"

For the series:
Acked-by: Julia Lawall <julia.lawall@lip6.fr>

>
>  drivers/staging/lustre/lnet/libcfs/debug.c             | 2 +-
>  drivers/staging/lustre/lustre/fld/fld_cache.c          | 2 +-
>  drivers/staging/lustre/lustre/include/cl_object.h      | 2 +-
>  drivers/staging/lustre/lustre/include/lprocfs_status.h | 2 +-
>  4 files changed, 4 insertions(+), 4 deletions(-)
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1520172968-17448-1-git-send-email-arushisinghal19971997%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

