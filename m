X-GM-THRID: 6527220059011547136
X-Received: by 10.80.138.132 with SMTP id j4mr5413763edj.4.1519819533847;
        Wed, 28 Feb 2018 04:05:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.80.158.236 with SMTP id a99ls2091407edf.7.gmail; Wed, 28 Feb
 2018 04:05:32 -0800 (PST)
X-Google-Smtp-Source: AG47ELvnxsusXyDSHSTl1ezS9nz7K+agVk64kf38XpfoTa77+FzjX6OFneDmV6dNOyFpCtMbjtIV
X-Received: by 10.80.232.139 with SMTP id f11mr3679333edn.5.1519819532193;
        Wed, 28 Feb 2018 04:05:32 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519819532; cv=none;
        d=google.com; s=arc-20160816;
        b=Bv1HCvyYJ3dqhMJ6/aSfS5UEK0EVkDN8bUT3ZjVmTxLTd89FnJDF+JqW1e4mufF/o1
         /hkvkCYr1+WQN00iCH8+W4x9X2qs+hDEFHqBiN+5E33Sf7J6KzEq3UwNw6u03mTbZ6mq
         QiIOVBj9dd9P0+TvPlmevq0PVyZAVphzfJ2ChuQ/iDIXrAbkhbuz7VpgBewmIE2er08r
         DDuUKR2Gqgd5PyYcBiCM8f11iPtk2YIotRkfX7zMW4hIrm+rakjKQ40xCMcLMPTtN+9G
         dZ4uhoePH2pIxmd39rVRLQhKX396dHgHcaccHTkwSdVJVaydkxoUFHzvlIGLL6STSCio
         WI9Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=yklLe13yw4MwJV/6iGu3YpK4sAapbqiBerVJDFAe5yk=;
        b=ShKcrBRce0ft4R3f2vqq7Q7wsOT27nr1/KfoHWSyEuVrwXwK0xUj63pjqa02+3j8WS
         75C2gJUiX0LxeJQjDvJgO+pgSb/5imJrUgCuvryfRV64ydt3CMgeGDJgq08FpLFRHMJp
         rB21u603OeLN8C1n/cYhVPgXjglGJtr8e+9NJVgTBIXdBL8mrBk3Vq3dAJu65XW3epSz
         Jku8meI476xfIFo5Q6mDvMhpvbgqSc2b+XNFgvFUVZfqfbesxVfhhQ+F0bo7qpKKqgSr
         U0T+l+kkmQ+IT5o7uHI4nWrm/FckEDDTGnwNBN4fsESe576xv4jzI3l2TJsQSTtMLeCw
         t55Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f24si106098edc.0.2018.02.28.04.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Feb 2018 04:05:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,405,1515452400"; 
   d="scan'208";a="315649057"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Feb 2018 13:05:31 +0100
Date: Wed, 28 Feb 2018 13:05:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Nishka Dasgupta <nishka.dasgupta_ug18@ashoka.edu.in>
cc: outreachy-kernel@googlegroups.com
Subject: Re: Re: [Outreachy kernel] Dificulty with git email
In-Reply-To: <1519819051-124-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
Message-ID: <alpine.DEB.2.20.1802281305230.3308@hadrien>
References: <20180227183929.GH20601@kroah.com> <1519819051-124-1-git-send-email-nishka.dasgupta_ug18@ashoka.edu.in>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 28 Feb 2018, Nishka Dasgupta wrote:

> Thank you for the advice! I think I know how to do it now. Should I resubmit my patches (as version 2) with the correctly formatted commit messages?

That would be good.

julia

>
> Thanking you,
> Nishka Dasgupta
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1519819051-124-1-git-send-email-nishka.dasgupta_ug18%40ashoka.edu.in.
> For more options, visit https://groups.google.com/d/optout.
>

