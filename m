X-GM-THRID: 6667148493451165696
X-Received: by 2002:a2e:5bc9:: with SMTP id m70mr11365lje.18.1552316717526;
        Mon, 11 Mar 2019 08:05:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:ae0c:: with SMTP id f12ls1488027lfc.13.gmail; Mon, 11
 Mar 2019 08:05:16 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyjwNl4EmeMOXAYU2WUbzkOlMQMDCmE4uDxiewEtPqAU5wO1d11TguQEBCGxwQwq0veU7XD
X-Received: by 2002:ac2:4427:: with SMTP id w7mr1919076lfl.6.1552316716491;
        Mon, 11 Mar 2019 08:05:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552316716; cv=none;
        d=google.com; s=arc-20160816;
        b=YHDc6W2igMzSHkEku3ZWeeqSeiZrIZu6E7P/IWjxqc7796GKfctYvTq5BL/8H76fqi
         v332NbEWvVNC8czPnwOFdZJhmdL2EeqFinKqs/QOFUAujeOSvR3ID5XnOnpxhjDjx2yA
         N6yoEgdMmdSheq+g4Q9fTZCrVL4z0UodbTr86cEcPG89Fi7eq3wYb/e5RArpCWNjjCD7
         1e7CsJho40xRKUMIoXlO6mZgKfqFZztvHrz16Jhcqk9dM6yka3s26FyU68CGMAAbxuKx
         naxWACDhBMdpM3zPoyHEaqKaLj5EEzlHpg+vJfXHZPEl+DwTEkebOjo6K+/xCRux2SSr
         ySFQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=hni02WPLiXKkM1QaGXMcr6+zIUEXLKK/95uUdNLQe90=;
        b=bTh7h+m6jJtFFoehNDSzaEIB0mRNuF7CtOCVzvFb9Z1zGG7Xudas8o/h8IV6qbDd3f
         8ULBIcY5ry8cc5+Z8aAkGQFqeKCEEb/z1YAVsT2eyNmf5R8YMvtQxIIJTu/JI8JPrjo0
         BptpV2MfkGjqC5vBifGm75H0+LUKmI1ZW3I9W/w/aePK9P11S2UCDxwW5h7UkBZTikdB
         12XGpLoAjJoc3sTgnpWHdMx6l2BI/vwH28o+gTGCPgC8GCGHkZzPMLLNpbyyZYanSMAJ
         t4ThUODZqsqjU11vbShmNROWEeLeZu+jryxL+Eq2W8MKOePHeNaqHqSG86atP29daroH
         S4qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id x12si230837ljb.2.2019.03.11.08.05.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Mar 2019 08:05:16 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,468,1544482800"; 
   d="scan'208";a="298826769"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2019 16:05:14 +0100
Date: Mon, 11 Mar 2019 16:05:13 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Wentao Cai <etsai042@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Staging: most: Replace '--help--'
 in Kconfig file
In-Reply-To: <20190311150108.4717-1-etsai042@gmail.com>
Message-ID: <alpine.DEB.2.20.1903111603500.3491@hadrien>
References: <20190311150108.4717-1-etsai042@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 11 Mar 2019, Wentao Cai wrote:

> Replace '--help--' with 'help' to silence checkpatch.pl warning:
> WARNING: prefer 'help' over '---help---' for new help texts
>
> Wentao Cai (5):
>   Staging: most: cdev: Replace '--help--' with 'help'
>   Staging: most: i2c: Replace '--help--' in Kconfig
>   Staging: most: net: Replace '--help--' in Kconfig
>   Staging: most: sound: Replace '--help--' in Kconfig file
>   Staging: most: video: Replace '--help--' in Kconfig

I guess that you are doing the same thing in all cases.  So it wold be
reasonable for the subjects to all be the same.  You have the subdirectory
in each case to make them different.

It could also just be one patch, since the change is easy to understand in
each case.

julia

>
>  drivers/staging/most/cdev/Kconfig  | 2 +-
>  drivers/staging/most/i2c/Kconfig   | 2 +-
>  drivers/staging/most/net/Kconfig   | 2 +-
>  drivers/staging/most/sound/Kconfig | 2 +-
>  drivers/staging/most/video/Kconfig | 2 +-
>  5 files changed, 5 insertions(+), 5 deletions(-)
>
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190311150108.4717-1-etsai042%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

