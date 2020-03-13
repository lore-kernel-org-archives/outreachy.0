X-GM-THRID: 6803716874412490752
X-Received: by 2002:a05:6512:1109:: with SMTP id l9mr9572687lfg.50.1584127619290;
        Fri, 13 Mar 2020 12:26:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac2:4207:: with SMTP id y7ls1608551lfh.5.gmail; Fri, 13 Mar
 2020 12:26:57 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsZWtIQG2XZR9XMUa5W/8iiRoR83UpZjXyFSvNsWu0pdcxFmM6lclc6Guiy4lGktcp4USMu
X-Received: by 2002:ac2:59de:: with SMTP id x30mr9034319lfn.144.1584127617679;
        Fri, 13 Mar 2020 12:26:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584127617; cv=none;
        d=google.com; s=arc-20160816;
        b=OANohDxMTAPC937h7jxw9yIcutK9yYl2E/TFg/OIJQnyttN9eJH+t+mDJfexmkGGYN
         jbLeCrVRn1Ai70MqNxcnaqzLQo6QI0b1oWXPHEgpUw1rvlA/fDPqufuJ7jfVfyRrwRcj
         zTy25J4ay3EnYt0BHvMBEG/3nuoxthARkqDhn97J/F36GqkCn7mZpiaqfzQHX/vyqZfL
         oEZnc46d/1ZhMWrp/EGsoSj4w6rCwrxd8RBhSXsXDFMVLiwKFVTeZUpsqE/Z9J16a7lZ
         a1yyujdXkykqDEircYOFvqgPJ5DyCt9DCkPbakZpGkK+P+CJg3xDkRX9JF8KTa8ho4AA
         9lHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=GQE6XWh4N3Vx2h21foGA5K7G/8NFamha64/JnnnBdLY=;
        b=q8uM7erNjF/W3lDrdAVgwU1FiUJfW2Ew9EwqD4wef/XS+gYLnsTJekL//KUP2p4PKc
         RVh27HdL4zv+i7nIwq3HbaZGcQrk9OGgt86sWXtfQxYrtY+JQ0TCWfJ0O4AsSKEJbagm
         HZtxQgAEt2pL/CPx6cDP2jhbWAzupvfkfgKCTTGn/7s0sankwP98FyD2zOlVxFqEDEe7
         CuE9LgtYrqeuW0tiK0S8TWgPCQnl36kaCtq1bRsqrLN/HUFx4qLVbL5/ZQ+n49EJGSIO
         pwVBlcm0J8/FwYd0Ph/rwEA938ITkEthxpkibokuUAfxnLZhIDYlzqjVwx52pGw3s83E
         q2LA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id j11si388131lfe.4.2020.03.13.12.26.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 13 Mar 2020 12:26:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,549,1574118000"; 
   d="scan'208";a="342321273"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Mar 2020 20:26:26 +0100
Date: Fri, 13 Mar 2020 20:26:26 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: remove unneeded
 local variables
In-Reply-To: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
Message-ID: <alpine.DEB.2.21.2003132025350.2355@hadrien>
References: <cover.1584113084.git.payalskshirsagar1234@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 13 Mar 2020, Payal Kshirsagar wrote:

> Remove unneeded variables and their declarations from the files of
> staging/rtl8723bs directory.
>
> Payal Kshirsagar (3):
>   staging: rtl8723bs: hal: hal_com.c: remove unneeded variable
>   staging: rtl8723bs: core: rtw_io.c: remove unneeded variables
>   staging: rtl8723bs: core: rtw_pwrctrl.c: remove unneeded variable

The subject lines should be created according to what others have done for
these files.  In any case, there should not be .c

julia

>
>  drivers/staging/rtl8723bs/core/rtw_io.c      | 9 ++-------
>  drivers/staging/rtl8723bs/core/rtw_pwrctrl.c | 7 +------
>  drivers/staging/rtl8723bs/hal/hal_com.c      | 5 +----
>  3 files changed, 4 insertions(+), 17 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1584113084.git.payalskshirsagar1234%40gmail.com.
>

