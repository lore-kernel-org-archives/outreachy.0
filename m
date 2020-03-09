X-GM-THRID: 6802195878840893440
X-Received: by 2002:a2e:80c3:: with SMTP id r3mr9645061ljg.105.1583759924781;
        Mon, 09 Mar 2020 06:18:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:8647:: with SMTP id i7ls1756479ljj.11.gmail; Mon, 09 Mar
 2020 06:18:43 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vthUU0OZr+77P1k9zQ7wNWDxIhJW65xlnU2epQeD/0aPfxzqASAFLvut48nvW7/zwRqMl3p
X-Received: by 2002:a2e:b5ca:: with SMTP id g10mr9792271ljn.123.1583759923225;
        Mon, 09 Mar 2020 06:18:43 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583759923; cv=none;
        d=google.com; s=arc-20160816;
        b=OxwhE8xGcNS7+7h5LHPfUNGls/hw62MegHfyxQHtH78cOwnc9KwKAorbqP9+dvq2YQ
         kTDI5EJxUYNGEndjBNJeQBkIYbRpi8q8puEKizIZsbI9vnhXGYOm269uTVtdZ/czPRSS
         ODsyvrVqTye1R9gGXY03iEcNfOMcmq7C82w4WX5jCCeo6r4WDGpPPFrnlaRWJAl6FGhK
         B/QbsWSUA5r3wZ/mHb2F/0P8lx9oyjrv6/zkjvFK+t7wUDp1S8jBVHmTMFJyPmsY+XQE
         KxQ82sNcQOdRUqGRrQakgpUuEEUgcng8V9DKhhjIZI9egztCTcs7jZWXAR2BHZF5sPAG
         S60A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=JxHZ6qYbYdcmMxmIOuTmCiXluQeei7UzyrqXgAWeK8U=;
        b=ba6Mdm15bj0sm6i1H6jffpKqSsJSIXWAwsSYiJEhptnriK1sKB72qVj5QWHoCA2mdv
         t3YRmBY5ip0c0YJn43CktFdc5R80KbEkqr+Snx/IUA16HGDYbZWE8ON15BCyPi08jFfo
         Pvvge/QgYAUv775WBm9TiA57GqWCC2Vgy4eIT8nO+HNqTtKQjvrTq4iutkceA2Z1pyMH
         SxfU5WLXv6V9+yw9KgBOZlCcDr7ZElE9ZuSBezVQZLXzZWSIVThPJdyNwBabH6uKILgW
         x7DTTieTgxxLpxsvEuNkcwY8od/s5LQbJzV6h7ge3SOa6wOyBf1XZO9GSrrhTxjJQqfK
         a2rw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s6si552942ljm.3.2020.03.09.06.18.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 09 Mar 2020 06:18:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,533,1574118000"; 
   d="scan'208";a="439490233"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 09 Mar 2020 14:18:41 +0100
Date: Mon, 9 Mar 2020 14:18:41 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: manishc@marvell.com, GR-Linux-NIC-Dev@marvell.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    linux-usb@vger.kernel.org
Subject: Re: [PATCH 0/3] [Outreachy kernel] staging: qlge: qlge.h: cleanup
 suggested by checkpatch
In-Reply-To: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003091417490.4721@hadrien>
References: <cover.1583759118.git.payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 9 Mar 2020, Payal Kshirsagar wrote:

> Cleanup suggested by checkpatch for the file drivers/staging/qlge/qlge.h.
>
> Payal Kshirsagar (3):
>   [Outreachy kernel] staging: qlge: remove spaces before tabs and align
>     code
>   [Outreachy kernel] staging: qlge: qlge.h: add spaces around operators
>   [Outreachy kernel] staging: qlge: qlge.h: remove excess newlines

It's strange that the information about the location is different in the
first case than in the other two cases, if they are all touching the same
file?

julia

>
>  drivers/staging/qlge/qlge.h | 69 ++++++++++++++++++-------------------
>  1 file changed, 33 insertions(+), 36 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1583759118.git.payalskshirsagar1234%40gmail.com.
>

