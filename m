X-GM-THRID: 6668944264527872000
X-Received: by 2002:a7b:c18d:: with SMTP id y13mr524126wmi.2.1552738493505;
        Sat, 16 Mar 2019 05:14:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:2d06:: with SMTP id t6ls1463318wmt.10.gmail; Sat, 16 Mar
 2019 05:14:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqykKq0y1FN5WnvD6Z6sKml6j7PCElWw61wafXUcbvHZnwRuBVSmGrtRZb1mMJ6JbrH53gWz
X-Received: by 2002:a1c:7503:: with SMTP id o3mr521564wmc.9.1552738492802;
        Sat, 16 Mar 2019 05:14:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552738492; cv=none;
        d=google.com; s=arc-20160816;
        b=gyTSIBIX1zASJR0h8OQmoy3oHEMorf7iTBPL2+k+TFAizbpiguPzqh4O5FFNvrYyuP
         9nBnNkABfQQK4YhJN5B3V89NePZRb2pSXSQpQaVG5mN5onqX8zPJHK1n7UrlnUMgVheR
         ZXfJs8d2Mftdns3Upvgd+HkE/kNPixsJzQVcYrxBWaxzi/2ZcsO6uxqj8/MRoGXIlCTK
         cjjTy04Ta8w460VDH0oaNu/l4fhzwjMDEl0jgSWX+Kb7TWC2V2Tkdwcrlgcv3RPikTk8
         No1G3eigdYpaghcgLeMH7nfkYVXDPsTc6PhgRVs7DHVPnYvdm78t6Mqw7J8UGvYkCnrm
         TFQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=v7GDLQ1wU4W7/VsSqjErW9OlyPsRKWPb3qNc5eHmC+M=;
        b=uIKmn/iKyznjz3T64117mbolWZkjZjdjql+Ui3Sr2OZ/u3c/rKGUckHacxipk7l2Cu
         YG/sVoH5JZtk91RXr4YOr/tlJPwTQ2YnKR3vs/zgD/LgLcleysaW/ZrDqyOBJJ6DgMso
         6UhpE8aMmtR2Uo6iZGKCkrT53ne2i/ETJwbMmGmajD4a19WwXx+cgFdHDZNhdRCpLtq7
         ooM+Qrk15/yRV5V7MGSpkAe8cSPJlruUFWsvYuo+KlIC6nbkQbMm4/mohyfNRGJhxJ/6
         tBp2c9t7r7315fU/Zm/jxHXRAG5o29QZIZYLBVlU4jxneGn38pFKCF0FEGG4OCwAOpYN
         XSYg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y84si297201wmd.0.2019.03.16.05.14.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Mar 2019 05:14:52 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,485,1544482800"; 
   d="scan'208";a="373991655"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Mar 2019 13:14:52 +0100
Date: Sat, 16 Mar 2019 13:14:52 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/3] staging:rtl8723bs: hal: Remove
 comparision to NULL
In-Reply-To: <20190316102759.20272-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.21.1903161313530.2487@hadrien>
References: <20190316102759.20272-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Mar 2019, Himadri Pandya wrote:

> - This patchset removes comparision to NULL in various files of
> drivers/staging/rtl8723bs/hal/ .
>
> - The changes are broken into 3 separate patches to keep the length of
> each patch below/near 100 lines for convinient reviewing.
>
> - All patches have the same subject line as they all do the exact same thing.
>
> Himadri Pandya (3):
>   staging: rtl8723bs: hal: Remove comparision to NULL
>   staging: rtl8723bs: hal: Remove comparision to NULL
>   staging: rtl8723bs: hal: Remove comparision to NULL

While it's a good thought to limit the patch size, you also have to come
up with different subject lines for each patch.

julia

>
>  drivers/staging/rtl8723bs/hal/hal_btcoex.c     |  8 ++++----
>  drivers/staging/rtl8723bs/hal/hal_com.c        |  8 ++++----
>  drivers/staging/rtl8723bs/hal/hal_com_phycfg.c | 18 +++++++++---------
>  drivers/staging/rtl8723bs/hal/rtl8723b_cmd.c   |  8 ++++----
>  drivers/staging/rtl8723bs/hal/rtl8723bs_xmit.c |  6 +++---
>  5 files changed, 24 insertions(+), 24 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190316102759.20272-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

