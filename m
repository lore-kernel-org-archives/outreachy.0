X-GM-THRID: 6889706616955863040
X-Received: by 2002:adf:c04d:: with SMTP id c13mr8631712wrf.27.1604137025056;
        Sat, 31 Oct 2020 02:37:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a544:: with SMTP id j4ls1384252wrb.3.gmail; Sat, 31 Oct
 2020 02:37:03 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwDLuTI7j+Ral0CrsrdlwdZ30achoPxJ4VPla9Y9GB4KOu2pTHXnOmAiby/5lzViuYv7uSj
X-Received: by 2002:a5d:6cc9:: with SMTP id c9mr9049653wrc.276.1604137023147;
        Sat, 31 Oct 2020 02:37:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1604137023; cv=none;
        d=google.com; s=arc-20160816;
        b=t5r8Co8K4vSu8/FZPLgxxUS04KJHDaZNpgzDOwltKuS6RbjhwhUcOVolknPx4ckLTf
         Fn9a6pdlu/LGUcqoPLv384ch1hIWJwrx/RcKJ8/beaLH7QN1ajUfq5sGE1GD2hbvTD6C
         ELL309fVnYN1hJW4okTSAdG+F/PLNMFy4fcBZUb/RO0wU1S4CMhV9fXjrJtaaLQykkPz
         oUN1/8SSl26QS7BIn3ULMGNEhX/6usL5R7h38O0qanYkDi9fhllAPTM+zTm/dpOOGj3z
         Qv1ei5plLDa6QGANRfCjq+vX+TJhHo0o5GOk/+XMzFHzJFzHdYslLiT0l9sNqtINm1S0
         Afyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=TsA+Ez8heyRaFXeosTu4KAn92UFi1MESyJXwEsP0ZKU=;
        b=Q3/yDcF8RMVvvlkINGz63LqM2AWBAXna/fDsUzHMOA2qC/ZBfImK65BVfCnQP2wbMi
         6Tx068GZj6xQDwTTJCQmnLU+LdlHxAPBOpXaUZh5GTNMdw+hhzovMXeLNVrcuCs8JFd6
         ddXK3CyoO9Wu8/pX5JVYxI8ht66RDdcbQBHJ1qIsGiCiW+5biHJW9SxvqmebCl4Rv6Fa
         4grhfrrQ+HS00VkTSVEX8McjAJz4CC5H/NCAr/+HrFxVixw/lSiQYDxI2WbqOF0mMCnp
         RWdrqPCVdgKVryGBkmxllYVlsniO24I8QL0peqEGwC8Yn1YSJwkNfZt62vmvmyt/UPt8
         twYQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 207si139704wme.0.2020.10.31.02.37.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 31 Oct 2020 02:37:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.77,437,1596492000"; 
   d="scan'208";a="363244142"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Oct 2020 10:37:02 +0100
Date: Sat, 31 Oct 2020 10:37:02 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Marcos Antonio de Jesus Filho <mdejesusfilho@gmail.com>
cc: Forest Bond <forest@alittletooquiet.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: vt6655: Remove else
 after return
In-Reply-To: <cover.1604133727.git.mdejesusfilho@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2010311036290.2733@hadrien>
References: <cover.1604133727.git.mdejesusfilho@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 31 Oct 2020, Marcos Antonio de Jesus Filho wrote:

> This patchset removes multiples useless else statements after return statements. Reported by check patch.
>
> Observation
> -----------
>
> After cleaning up the code I noticed that the code from 530 to 548 repeats at 551,569 and that it can be removed and one of the conditional statements can be simplified.
>
> Marcos Antonio de Jesus Filho (3):
>   staging: vt6655: Remove useless else
>   staging: vt6655: Remove useless else
>   staging: vt6655: Remove useless else

The patches need different subject lines.

julia

>
>  drivers/staging/vt6655/rxtx.c | 99 ++++++++++++++++++-----------------
>  1 file changed, 51 insertions(+), 48 deletions(-)
>
> --
> 2.28.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1604133727.git.mdejesusfilho%40gmail.com.
>

