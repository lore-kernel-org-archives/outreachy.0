X-GM-THRID: 6522068226788032512
X-Received: by 10.223.169.133 with SMTP id b5mr175571wrd.8.1518537586480;
        Tue, 13 Feb 2018 07:59:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.187.9 with SMTP id r9ls4689393wrg.4.gmail; Tue, 13 Feb
 2018 07:59:45 -0800 (PST)
X-Google-Smtp-Source: AH8x227b9CMrYVkmL/Y9mveUHCfHI06l+v3yUVSeXP/D32UKo41ISe1XhC8/QAYuhlhN8ICbEv5D
X-Received: by 10.223.196.13 with SMTP id v13mr192589wrf.22.1518537585360;
        Tue, 13 Feb 2018 07:59:45 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1518537585; cv=none;
        d=google.com; s=arc-20160816;
        b=jCww3KoMvgha8Ry5x5VkaEsawVCcsfkauwKFyHxTXMujA93R3rSsKSXce82tRzjgdW
         RZcqHuGGPZifVXAIHqWhgqulYLj5bDG1UlblvWBZthaInbKiko1OHAfNweMwsymmMZjH
         fZX+pxGnU2igzH2gTzPEdbBb44/VOPm+B2+BXX3J8kWTxYwxY/pWCTHw3CRbcdA2PtEb
         CeFEFprdTVjrH/Bs3jfX3CbQOWMqBofFxn/JxP7YZJBpTTvkLuc08Rtx3yEMbjN81fM9
         kvQq6oGWSjpqFnt3YFBT1AODeNxANeS4V+22JHrBNuk76QOkjaUQuUVXoqFXR1MgCfpa
         Q6vw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=qS7ZUZKVIgm9RZeczJS1/zBFLT2kbmRJxlVUInQx8Qc=;
        b=DSJnTSqH35K9YbpchqHHiVwMw06gBXr7c313AjHyb8DemtQwxllWcum18y1Fq2b5gn
         a4DzXD2CaCs9FJu2QoFuyOWI69XOmy8YK92OgB4oqj6JqxfOqBO4myrOQybyFuwEQRkK
         wKXwYX0VpNS9uBnS3XYFzqF6L0J4YLdmB29e+kYJBjNDXKxSL3oT/qGQyHuodxEVkEfR
         fQWdp9VPtQIUuDGEXVkSzUynrg2W/FcLH+nEi/iuwPvj4hlUaTfCrM8agk3TTq/LiWns
         Xj1e88yO5HAUNQK5AzokTgHzEm6El84BGXNgPq3brtQY0cP4uPASysm0hBY2OpxUl2Z2
         Kdgg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id s5si692418wra.3.2018.02.13.07.59.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Feb 2018 07:59:45 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.46,507,1511823600"; 
   d="scan'208";a="313393747"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 13 Feb 2018 16:59:38 +0100
Date: Tue, 13 Feb 2018 16:59:35 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Shreeya Patel
In-Reply-To: <1518537328.28375.6.camel@gmail.com>
Message-ID: <alpine.DEB.2.20.1802131659200.31768@hadrien>
References: <1518537328.28375.6.camel@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-12055357-1518537575=:31768"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-12055357-1518537575=:31768
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Tue, 13 Feb 2018, Shreeya Patel wrote:

> Hi,
>
> Please grant me KERNEL NEWBIES ACCESS so that I can start claiming 
> tasks.
>
> Login name: Shreeya Patel

Done.

julia

>
> Thanks.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1518537328.28375.6.camel%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>
--8323329-12055357-1518537575=:31768--

