X-GM-THRID: 6523882080322977792
X-Received: by 10.28.247.5 with SMTP id v5mr1880683wmh.12.1518960088333;
        Sun, 18 Feb 2018 05:21:28 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.170.1 with SMTP id t1ls1004514wme.7.gmail; Sun, 18 Feb 2018
 05:21:27 -0800 (PST)
X-Google-Smtp-Source: AH8x227YXE7WfRV43WO3NntRg/w1Q6mrg4QNZiRBjERjHGGJblbqdeiXESrKlLw+MFGlhmkuCh/q
X-Received: by 10.28.241.15 with SMTP id p15mr1875110wmh.5.1518960087567;
        Sun, 18 Feb 2018 05:21:27 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518960087; cv=none;
        d=google.com; s=arc-20160816;
        b=FKDxofVAtYMf97lNDYvoPMYE1l1tdEiyV/lpV3PCwuNestH/hVpFbSPKBIXCC9I+HY
         BozvXih+gsKmCgYj0lFF/vUP4BqhupYO33RwchkCPZbP5TMYdipr02Qz9PlBSyR/M3Pk
         iYtomVWm4Vn/4raLEmj5RMaIEfqRWyqkTwmbdOR1LoNd9RAGx09/5SSI/pREHqA+7+Vz
         6cZMJL+NYGZFYrKTRQECuEKWpdU/OEFN/W03VypmbmFkoZwiwHdbu08Ci1FIYczO+7oZ
         5d/gR7ZFXewWoGjtGXVNVZ2jNhHWma0Q3mP94neNtFb2fOZbyUex4LqKoZo+uhBFpnaX
         0OzQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=7GMHDwQAZSoge2CYRwR5LP49/P2mukl3oYHQZMjjZcg=;
        b=pKoZArBYDp2KG1WytaT7RE3JWH5JTeUznkpLWtFuvSnNzuOxKPO88ynIUhtDPOc2Wh
         9ko6D5dMXaCQ5KWqw+TiltNDR4rjh8ULbH//JZeaF9nK6nNf7G+Nq1COCwBqANWlR96H
         dy/iDsX3HXWiP7gAdqo4PIvCnHton6AHhmGrR46zLvlAIdq7Ke3yP+lKvWv8jJSfTRnj
         6GQUeogPqCCAEKQP2xNsBeLbbPGYXA/6ARIYEU8x4EXoCrvU/mg5X+0EokYQY5tYDJoy
         FT4E5UBidPb51MpYuMAftS1IltO4xzqbR/ozSrVHRsfRwas6SM/fnOsj+6zhlqAFCNv4
         vi5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id r20si696943wmg.0.2018.02.18.05.21.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Feb 2018 05:21:27 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,530,1511823600"; 
   d="scan'208";a="314118202"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 18 Feb 2018 14:21:27 +0100
Date: Sun, 18 Feb 2018 14:21:26 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [SETUP] Difficulty with dmesg
In-Reply-To: <fca3a604-4d70-4feb-b7d2-2903b82f2c08@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1802181420580.2777@hadrien>
References: <fca3a604-4d70-4feb-b7d2-2903b82f2c08@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 18 Feb 2018, Nishka Dasgupta wrote:

> When I run dmesg | less, the file is blank and the error I get is "dmesg:
> klogctl failed: Function not implemented". Writing to the kmsg file has no
> effect. I can't modify dmesg_restrict either. I am running Ubuntu 14.04
> inside WSL (Windows 10). I would appreciate any assistance.

If you don't hear from anyone who has had this experience, perhaps this
link could be useful:

https://github.com/Microsoft/WSL/issues/1886

julia

>
> Thanking you,
> Nishka
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/fca3a604-4d70-4feb-b7d2-
> 2903b82f2c08%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>

