X-GM-THRID: 6669413684549255168
X-Received: by 2002:a7b:cf23:: with SMTP id m3mr546557wmg.21.1552844627366;
        Sun, 17 Mar 2019 10:43:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:f107:: with SMTP id p7ls1745631wmh.6.canary-gmail; Sun,
 17 Mar 2019 10:43:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzP7jUt41610EUVZXU0EpoTY/9BqYIKBOBwKr1ZH/AcgRR3uLHZ3NzhlLMIUHtLkCB2OO4x
X-Received: by 2002:a1c:c919:: with SMTP id f25mr738073wmb.15.1552844626633;
        Sun, 17 Mar 2019 10:43:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552844626; cv=none;
        d=google.com; s=arc-20160816;
        b=plMHyCXk6YYWFDqsxTJWAJIF9i2sZM81evHgzsSiS8eZWASpUUQQ/4m6sCEz5Lbh46
         2W7mufFHq8nBBJEpdbnl93EfnfAqOFYgoAuD+Wz26UqWDWa8HaEe6X5z+0xPGHt53Ffo
         CiuqT5o/ZoNoWLbFlgsnpRfyhKRUrk+mZzeFV5fHm5XlR9ULQWzn5UWekYgmf/snt8Zq
         AHDKVSxj8uiOvIIt8wPh15FTWRigr0dybYbY92UrT7eG2jg5BwJALEi6qCFOc5MSAMiv
         CdnwOO+uvp6nFBClz+7AcXXPceNHYu49KBXxC9LmysJqE1hwyvpvleP/IepSyXYXLWzm
         x4eg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=Ye/dCc67A7j6Yk+zY1EPmjzJb8Oukg8bjxZsFTmtMuA=;
        b=QZ99vbz5L+LdXHElzWgvNOx7dbjLxxqPYUPDuJu9wVGBz7Kg/8Rhu2mftSYaMGfKsS
         qrr3rt3AefMFVyGEXVI0ziU7Na2P/gLkysLQnUs638VN4L+7odqWHf527kGS0CATqeJy
         CcugzWXXfEo7na/otQgCOZgIL7BgZARWLKffFVOltvEUp2+cMFJZwwKHJ2elKplnf+gT
         o307K/OzP/0Um54x3mQVaSSkjNLMTKa4jhCPFedXj9YmgGs8wC0BY7xoKEtSEniXhxbQ
         7BQWbCsQ64cs3us9qAb2ygNzJVkwi5sJDPyxZPEoSxyQePWEiq+nXFR8bKU5W/65F1os
         Q5Pg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id y192si228258wmd.1.2019.03.17.10.43.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 10:43:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,490,1544482800"; 
   d="scan'208";a="374404868"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Mar 2019 18:43:46 +0100
Date: Sun, 17 Mar 2019 18:43:45 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: gasket: gasket_interuppt.c:
 Fix string split issue.
In-Reply-To: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903171842400.2434@hadrien>
References: <20190317173107.3814-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 17 Mar 2019, Sanjana Sanikommu wrote:

> Remove string " across the line.
> Issue found by checkpatch.pl semantic patch results for rtw_ap.c

You should put the whole string on a single line, even if it goes over 80
characters.  Then if someone sees the string in debugging output, they can
use grep to find where the issue occurred, without worrying about line
breaks.

julia

>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/gasket/gasket_interrupt.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/staging/gasket/gasket_interrupt.c b/drivers/staging/gasket/gasket_interrupt.c
> index ff61b782df30..da517c2990ea 100644
> --- a/drivers/staging/gasket/gasket_interrupt.c
> +++ b/drivers/staging/gasket/gasket_interrupt.c
> @@ -97,8 +97,8 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
>  		 * modify-write and shift based on the packing index.
>  		 */
>  		dev_dbg(gasket_dev->dev,
> -			"Setting up interrupt index %d with index 0x%llx and "
> -			"packing %d\n",
> +			"Setting up interrupt index %d with index 0x%llx and
> +			packing %d\n",
>  			interrupt_data->interrupts[i].index,
>  			interrupt_data->interrupts[i].reg,
>  			interrupt_data->interrupts[i].packing);
> @@ -120,8 +120,8 @@ static void gasket_interrupt_setup(struct gasket_dev *gasket_dev)
>  				break;
>  			default:
>  				dev_dbg(gasket_dev->dev,
> -					"Found interrupt description with "
> -					"unknown enum %d\n",
> +					"Found interrupt description with
> +					unknown enum %d\n",
>  					interrupt_data->interrupts[i].packing);
>  				return;
>  			}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190317173107.3814-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

