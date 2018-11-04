X-GM-THRID: 6620100063939002368
X-Received: by 2002:a2e:2242:: with SMTP id i63-v6mr1634091lji.15.1541362467416;
        Sun, 04 Nov 2018 12:14:27 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:2d4f:: with SMTP id t15ls1686100lft.2.gmail; Sun, 04 Nov
 2018 12:14:26 -0800 (PST)
X-Google-Smtp-Source: AJdET5dR/6p/mePvqfqvKlAYZG5P2Poeif9luyaYndU3d9nZO7qDve6ylPiE4f5TlDMQ5kJ4gvl7
X-Received: by 2002:a19:9652:: with SMTP id y79mr1326767lfd.8.1541362466471;
        Sun, 04 Nov 2018 12:14:26 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1541362466; cv=none;
        d=google.com; s=arc-20160816;
        b=eQGG/iX7iCm24XfD6KGX28zzZ1Tl7ikPyvMrQLGEspSIhST2j4AsQ2GzuVqd1ZbsPz
         IxoQ09nCaJdCLg+0ECXc7VUqYqlUtMx0S+zyoYF5mHaEQUMmnqngA1cCRdMnqHRbBGEd
         pVcKZ23pEXGda2ju5lRxZxMkVVhcO4vog/ibs5xJnvujyyyg89mrioE3k6NXOP1fMO43
         rv1INa8yEtyQDaeBRoOFt6SbU5CvsmTaUhkxi3KpSqD1Fq754Jz8YdkXqiZqeEXCIw+F
         dwSs98Ux3sfUdVP6d6dfklCCYKnFv+7UZPBYSpAFjLSV9s++zPJYMnPfL0IB8Vxa5fEI
         3+DQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=0Nte4fvIbhhwL4gcUQeBzLE6MTfc4GM4EKykOgPNSW4=;
        b=RH/Ez3NygqpjjssmN+6+88kfG5IKRjH+lY0tUZqAsV05MMgHUj27wa4jZhnIT5isFL
         +nbbSyBonuXDfy60rnHi9r4OVJK7wfbP8X3KeHNGNxem9KM5aBUOE4CqiCoMtVEBKJRP
         jEDEBPuMj+HhnuQjLLseoC/tlSTO8fJFLUn+FCX66DL+tmsKplk9JDAHi3Rf7uHbGBCJ
         bovEJfVW6MMD/SmYCBY5E95l1darIo3Yq7249Jeln7iQFXez9MSEb/KNq+/lUY9eru8Y
         QjuYhKLjPOZWMVSg6HAGraONhA0xXFItfmqTRz3cIreIsdzVBBETTLWMUtn6Zsvm4IR/
         rvMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id w13-v6si1465478lfe.3.2018.11.04.12.14.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Nov 2018 12:14:26 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,465,1534802400"; 
   d="scan'208";a="354059474"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 04 Nov 2018 21:14:25 +0100
Date: Sun, 4 Nov 2018 21:14:25 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Ioannis Valasakis <code@wizofe.uk>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Coccinelle fails
In-Reply-To: <20181104200908.GA26807@kvasir.local>
Message-ID: <alpine.DEB.2.21.1811042112160.2360@hadrien>
References: <20181104200908.GA26807@kvasir.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 4 Nov 2018, Ioannis Valasakis wrote:

> Any idea why if I try to run coccinelle in report mode it fails? E.g.:
> make coccicheck MODE=report M=drivers/staging/speakup/
>
> coccicheck failed
> make: *** [Makefile:1650: coccicheck] Error 2

What version of Coccinelle do you have?  You can put DEBUG_FILE=cocci.err
on the command line, which should give some more information about the
problem.

julia

>
> Thank you
> ioannis
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181104200908.GA26807%40kvasir.local.
> For more options, visit https://groups.google.com/d/optout.
>

