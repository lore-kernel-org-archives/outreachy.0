X-GM-THRID: 6674500883205586944
X-Received: by 2002:a2e:2c07:: with SMTP id s7mr1387734ljs.17.1554028497758;
        Sun, 31 Mar 2019 03:34:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2443:: with SMTP id k64ls557221lfk.1.gmail; Sun, 31 Mar
 2019 03:34:56 -0700 (PDT)
X-Google-Smtp-Source: APXvYqw1Ka7REjG0IvJppfmdkFSkvWDz3KpuYwoTOxL5Rh9VW/QDuANyw8AsALnjhF5sJzB1pakw
X-Received: by 2002:ac2:5632:: with SMTP id b18mr1516500lff.5.1554028496966;
        Sun, 31 Mar 2019 03:34:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554028496; cv=none;
        d=google.com; s=arc-20160816;
        b=sJer8z1In0wduzpatSr0Y3+mGYh/Vso7OPV+6lBK6wAtXFhwgwYz0WeEf0KMFZ7Pld
         AI0qOe/hUjvXMKrQH1+cWT/x9d+enAsPyPA+2idm0uNKJ2ZtH2fh1BuL23WcfKatqE8/
         GnRwPcWtmYNXAm3rVaVXeIiODcpSSIjOmh9cS3tGaAMLPbOtEVTHhHdlvN2Xl1bL+jHV
         9ydJPWsBx1f4mLwkOWzgaJKnapY7BcjjxIlqs9Jyb4YMySclNeHWM+cYwBOwYm5fPCyt
         C9xekkolKMTZ/kiNjhbSjBzqt7yaw13tshyG+wflLHkkuVVlmsliFnlx8IBemITdYhUv
         B6Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=YFJIRKJojHzKI2Wzo9fwWqculms+kXn5/VKBKcGh0Hk=;
        b=iSybmWXenMu9mO7Sety8YWA8rpUQKLW8iBpv6VLPz216gJgGyxgA435R8HfyhyV5y9
         Lll/SGtWh2MMtu38NYVy7XsUJVW64Xon/PMQQPJMX1UvUMOlQcFmi32plAcxO03LEGkZ
         lHsVU15UTyk7tOAB+mKqsqm1M2qpld+C4sUKLLpz/bZbM27gJndUG3aTZMBqUm5SXwBl
         qbKrGngX7jGNoS1APmTLDdSwLwiVqAgR3qNAMXfLJtXPiIrmZZyXmRzWDIZYbBnHN7yi
         L9+4bvN+Ri9E3sqYywAMIpr4IsvKFz4YRzOOvzkE1ZawUdqbEujZS8iGuPWoGxoaNNiB
         1p0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y1si428374lfe.1.2019.03.31.03.34.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 03:34:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,292,1549926000"; 
   d="scan'208";a="301289284"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 31 Mar 2019 12:34:55 +0200
Date: Sun, 31 Mar 2019 12:34:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: comedi: Prefer using
 BIT macro in various files.
In-Reply-To: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903311234110.2578@hadrien>
References: <20190331103204.21358-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Sanjana Sanikommu wrote:

> This patchset does the following.
> 1. Replace bit assignment with macro
>
> Sanjana Sanikommu (6):
>   staging: comedi: das08: Prefer using the BIT macro
>   staging: comedi: Prefer using the BIT macro
>   staging: comedi: Prefer using the BIT macro
>   staging: comedi: Prefer using the BIT macro
>   staging: comedi: Prefer using the BIT macro
>   staging: comedi: Prefer using the BIT macro

Each patch needs to have a different subject line.

Since the changes seem to be fairly small, maybe it can just be one patch.

julia

>
>  drivers/staging/comedi/drivers/amplc_pci230.c  | 2 +-
>  drivers/staging/comedi/drivers/das08.c         | 4 ++--
>  drivers/staging/comedi/drivers/dyna_pci10xx.c  | 2 +-
>  drivers/staging/comedi/drivers/ni_at_ao.c      | 2 +-
>  drivers/staging/comedi/drivers/ni_daq_700.c    | 2 +-
>  drivers/staging/comedi/drivers/ni_mio_common.c | 4 ++--
>  6 files changed, 8 insertions(+), 8 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190331103204.21358-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

