X-GM-THRID: 6526024412200697856
X-Received: by 10.46.93.143 with SMTP id v15mr262227lje.1.1519459403934;
        Sat, 24 Feb 2018 00:03:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.83 with SMTP id t80ls913242lfe.0.gmail; Sat, 24 Feb
 2018 00:03:22 -0800 (PST)
X-Google-Smtp-Source: AG47ELujqs17E1z8ErAn4aqB99YpQUrSV2PFSHJ5avqQxam/UHOPkCp1poRRcqa6vNzpj/+k7aAY
X-Received: by 10.25.235.140 with SMTP id f12mr284357lfk.19.1519459402123;
        Sat, 24 Feb 2018 00:03:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519459402; cv=none;
        d=google.com; s=arc-20160816;
        b=u4Qur2y0NqTk4BPzERNn5kDXJl7/Bu/mKWQW95dglmBSdzwd/4Y+yioeJJChJnzEF/
         FV1Tn6bf9QsQQirOU73/tcMUja04y7uZxuNKvhWX0cPxoGiq7zd2EaxH1mGy+E3eoRnu
         tJnoHJc6CpV6Um8CSYtwXZsjP/tzfUmaoS0LfeIgEkocynGUCdnEaWqze87s0UM6fZyG
         6UOUxlJkGcOO8ewbRUoRc8WKqPsXpMSKBAxMAPsD3EzmlGeVzlw27iM+b5nvhs53EOBs
         6/EdZScReMPYRmtHBQOXefJfjzfFPXNrU0XU0/Mf3B9a7RLHhSPsT8JfY5YSJrH6RAi9
         AIUg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=Qa3177K+babGoUNuNEbYrOU3KoYqbTadRjBmJcahAzA=;
        b=RKNUshU0R4YO+yuZmYPrJwZd3YGRz7DnLXB0trWO7PtYNsLFs+VqrTV4jTp8EJTcDN
         AN73kH+0n4aEaTeSQq1mf4hyc5LiT+y5UAfci5XKAkjaFT12y8A6H5fFON+fCQIEmbHf
         9A1bhi+crq6CK1/LNKvZl7Nbe5b1d9ora/xYT1j7j2Lrlr//ukgyyHCIOuG8LZytsmDX
         2ibWJAAm4PvtGMVwWPPWunZBZOq6Zvfl+vZYZAs1BQfUH5aLsuLaNYoPV1GsSOr7IQ8R
         8TlZTpgvQn3aZBcGD5G1SKdqm1IJPFvISeaAmJDL3qRLsIsF/EqGf7FBTzSXmaLRBzFh
         9kew==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id w7si195689ljw.4.2018.02.24.00.03.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Feb 2018 00:03:21 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.47,386,1515452400"; 
   d="scan'208";a="255964942"
Received: from abo-3-110-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.110.3])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2018 09:03:20 +0100
Date: Sat, 24 Feb 2018 09:03:20 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: merge 'if' statements
 that test the same condition
In-Reply-To: <20180224074733.GA6487@gmail.com>
Message-ID: <alpine.DEB.2.20.1802240859300.16912@hadrien>
References: <20180224074733.GA6487@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 24 Feb 2018, Dafna Hirschfeld wrote:

> Merge the instructions of two 'if' statements that test the same
> condition and move a 'memcpy' instruction related to a different variable.
> Issue found with coccicheck.
>
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 8 +++-----
>  1 file changed, 3 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 621810d..f6f2c7f8 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -962,15 +962,13 @@ static int add_key(struct wiphy *wiphy, struct net_device *netdev, u8 key_index,
>
>  				priv->wilc_ptk[key_index]->key = kmalloc(params->key_len, GFP_KERNEL);
>
> +				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
>  				kfree(priv->wilc_ptk[key_index]->seq);

How about moving the memcpy up a line to be next to the kmalloc, and to be
separated by a blank line from the kfree, which is on a different
location.

These kmallocs should also have null tests to check for failure.  That
could be the first patch in the series with this patch being the second
one.  The missing null checks represent a small bug, and a bug should not
depend on a cleanup.

julia

>
> -				if (params->seq_len > 0)
> +				if (params->seq_len > 0) {
>  					priv->wilc_ptk[key_index]->seq = kmalloc(params->seq_len, GFP_KERNEL);
> -
> -				memcpy(priv->wilc_ptk[key_index]->key, params->key, params->key_len);
> -
> -				if (params->seq_len > 0)
>  					memcpy(priv->wilc_ptk[key_index]->seq, params->seq, params->seq_len);
> +				}
>
>  				priv->wilc_ptk[key_index]->cipher = params->cipher;
>  				priv->wilc_ptk[key_index]->key_len = params->key_len;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20180224074733.GA6487%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

