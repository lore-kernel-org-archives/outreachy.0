X-GM-THRID: 6611156296380973056
X-Received: by 2002:a1c:84:: with SMTP id 126-v6mr655978wma.4.1539282184696;
        Thu, 11 Oct 2018 11:23:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:8323:: with SMTP id 32-v6ls1945649wrd.0.gmail; Thu, 11
 Oct 2018 11:23:03 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63mGXKDHxooWryHm+dIC05dRNMsMi/RbQYEM/i5Y+wGiWkyNM2+6wjg1Pb7TOssEdDrQyxg
X-Received: by 2002:a5d:6782:: with SMTP id v2-v6mr265579wru.11.1539282183627;
        Thu, 11 Oct 2018 11:23:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539282183; cv=none;
        d=google.com; s=arc-20160816;
        b=BdganUAFisX9vdojT+rUDH5FI2X2b6RWjr1czVgd1+EBpEtBUHJUoGYIR76XR9r7Vm
         SD29RvJpqdnJO/PNQywH/kUwY0R/bTA4k1ot5tZGa3msiyuynOQ7Pd1V0eyQJeVbIPCX
         ySLMWhB7/DjrnxXo6XVywYQdNXSEi4AhVKLWpXSMHnxGN5X0HkRIIdfth10bckwSe3gb
         Itp5dTmTiGb3xY1bSv7Xkvt/esMuovuBORN9MWDIB/PBCT18J5Jamesv28f1FFFfKGir
         9OhpIolR6/C0xZnXN76cbnzyH9smX+/ZuIf+/c1aAgNbCY1XMSyFVlilT7RFiwyBO9A9
         xGyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=uEGA8CxtRiKVQugCgAAUbRzCvw/tj2Ws6wV0xuFz7D4=;
        b=U/tGrKRi6cDuonDpg4a2uqD8fGSAk+YK2E+xMJQcMw44O7rLqrn977qC1suHK4brgd
         Cd9yxkTCHm8VgsGxpwXBKIjjZ2UCSL2FBWfq2vZIroHg+mvvOawn4b73G5VO5RBHKhmw
         ADenQMkOZvx4B7EGv0Q2Wo2csGwJYSmO9tGzptfNZPWiI9luUtaJns5ROcjPPFxBx2we
         Vx0KfSW98e5CvTel6+RRKbUnXDi6H2N1p3DuFGl/fiYOLr8O20g5AOw0v7H80tEQTdQX
         fTWZpmojgLad8tRjzrG5woBxDOjDuef09brwxAV80oe1FPX+Uz1j9yJyByBeABsAul4n
         a4xQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e5-v6si284677wru.1.2018.10.11.11.23.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 11:23:03 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,369,1534802400"; 
   d="scan'208";a="281827673"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Oct 2018 20:23:02 +0200
Date: Thu, 11 Oct 2018 20:22:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mamta Shukla <mamtashukla555@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org, 
    Larry.Finger@lwfinger.net, hadess@hadess.net, hdegoede@redhat.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging: rtl8723bs: os_dep: Fix
 coding style issues
In-Reply-To: <cover.1539278377.git.mamtashukla555@gmail.com>
Message-ID: <alpine.DEB.2.20.1810112022260.3392@hadrien>
References: <cover.1539278377.git.mamtashukla555@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 11 Oct 2018, Mamta Shukla wrote:

> This patch series fixes checkpatch issues such as:
> -Remove true and false comparison
> -Remove space after cast
> -Shift * to be adjacent to pointer name to conform kernel coding style.

Good jobs in cleaning these up, since the original code doesn't look very
nice at all :)

julia

>
>
> Mamta Shukla (3):
>   staging: rtl8723bs: os_dep: Remove true and false comparison
>   staging: rtl8723bs: os_dep: Remove space after cast
>   staging: rtl8723bs: os_dep: Shift * to be  adjacent to pointer name
>
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 30 +++++++++++++-------------
>  1 file changed, 15 insertions(+), 15 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1539278377.git.mamtashukla555%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

