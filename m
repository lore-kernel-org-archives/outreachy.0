X-GM-THRID: 6614920129411022848
X-Received: by 2002:a5d:4a0a:: with SMTP id m10-v6mr3858184wrq.27.1540160071043;
        Sun, 21 Oct 2018 15:14:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8b97:: with SMTP id o23-v6ls6824747wra.15.gmail; Sun, 21
 Oct 2018 15:14:30 -0700 (PDT)
X-Google-Smtp-Source: ACcGV62yAyltAW8Lg4QbuoNTAqWr3WT9C4oaqy3ILs8cCBaIDdNJNwOVysXqmthtAUKZ+fwwotrO
X-Received: by 2002:a5d:6112:: with SMTP id v18-v6mr3205830wrt.30.1540160070374;
        Sun, 21 Oct 2018 15:14:30 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540160070; cv=none;
        d=google.com; s=arc-20160816;
        b=TUEX8Q9OdVqr/K8w6WXkdaqHf8dR+6pErTO+Et2tEUFrlk8vO2ogaoZaEHS24bF3NJ
         I+nH/pflnA/Bc3wCo7CUrwt+yod7AQRYBAGAPHh8Bpl87B/dicfN+bBqg1nFT93LQ2FF
         fKvVLXKlfdfo+DqPFsHA37Y6sL+YeSwpmI9ufYV7qlHBhuo1nGNpe4P4zDpqoYA5LVV+
         jxIwQAev7l4Ai6zXvjjXCIBdF2MssISSU5h7mpaYkbqR1ahr3Nwo4b65d7zp5zjedZud
         /t2OcPQDTPj2G28lIKnOZNtUFlgK2ONwOqAcNf+gteoYbkTH/DNVxdw2/vWlsbGBiW0B
         X54A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qULE7LKUNetjBFw+3rgD77cDD60JEAIDgjHNjc2boRI=;
        b=VcGY8hWhWFDPraqa7Gs2rCpCVrRRen8Bjc50bAbjY5n5WbK2WOF/o5zyKaRhJlPGev
         8Baib5z142oQ4vLoo5h6ISvvdds8Zg/J4XWu1Afz15Jskrk/SdZbMp5X8JQpxJvtwv5a
         0eCse3PBb3xgh+qN8Nm3SBSJwD6lIBB9Bzc/xjFWiS6z8YJIIlhed/vZ0HAE+82SWKzY
         ZjX1Zq1Pp4KhnMeqWyv/nvBXSKwrQj/3fXyEHadUqnWlfS9PNBR0Mpvi2nZD8ATCoLjB
         hQBG2OT/KZy+dDqlyIF0NUpT8Ir+gFPCh0LVCctl8ftb+D1Md7azg79bZ0YtCelnIetV
         e7Jg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u13-v6si352588wrn.3.2018.10.21.15.14.30
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 21 Oct 2018 15:14:30 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,409,1534802400"; 
   d="scan'208";a="352130348"
Received: from 30.9-255-62.static.virginmediabusiness.co.uk (HELO [172.16.7.66]) ([62.255.9.30])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Oct 2018 00:14:30 +0200
Date: Sun, 21 Oct 2018 23:14:28 +0100 (BST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: netlogic
In-Reply-To: <cover.1540152794.git.code@wizofe.uk>
Message-ID: <alpine.DEB.2.21.1810212314190.2402@hadrien>
References: <cover.1540152794.git.code@wizofe.uk>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

It looks like this would be 0/2?

julia

On Sun, 21 Oct 2018, Ioannis Valasakis wrote:

> Ioannis Valasakis (2):
>   staging: netlogic: replace old kconfig with new syntax
>   staging: netlogic: Cleanup parenetheses
>
>  drivers/staging/netlogic/Kconfig        |  2 +-
>  drivers/staging/netlogic/platform_net.c | 16 ++++++++--------
>  2 files changed, 9 insertions(+), 9 deletions(-)
>
> --
> 2.19.1
>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1540152794.git.code%40wizofe.uk.
> For more options, visit https://groups.google.com/d/optout.
>

