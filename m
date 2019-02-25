X-GM-THRID: 6662028123027013632
X-Received: by 2002:a50:ca07:: with SMTP id d7mr2317530edi.4.1551126536771;
        Mon, 25 Feb 2019 12:28:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:906:3e46:: with SMTP id t6ls2799193eji.8.gmail; Mon, 25
 Feb 2019 12:28:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZRGpbLfdW8Ntb7kJFVt1sDqZeBgaxd8wG8B/WhEMx9ozBGIpbPz7HuWc/U/9LDkZhE17yz
X-Received: by 2002:a17:906:d541:: with SMTP id gk1mr2111983ejb.0.1551126535973;
        Mon, 25 Feb 2019 12:28:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551126535; cv=none;
        d=google.com; s=arc-20160816;
        b=q6rcvpVn51big+3HMDmkT+ACFItNK5bvWnTTz72BhPRuSYrS0wg4TowCG1h+3ZacyY
         l6AYnYtjahahR1DnijFIHb0G4tjXBJRUgcYMZJMT6eJrT1sE0CwaAAG/fMDtODfiKn0f
         v4cHAYdybq5N9vwJxmIuSc2tj0ZEUWxvJwiWXk8q8AMkoKGNjvUms66y1FZCrJcKA7+r
         NPyj2NaG6oa045JUMX8T6U6xjxOdQP+N7ULdRJ8B3/2BOVEoOAC/u3Tdgjv1Llen3uCt
         rwOP7vWf2UM2WvqzQSeGUgg8VxI5SbLcz0u3A3afi9tmYH6wNKrjHU1QoK2IUBzBHsKz
         Wyyg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=x7OFfdPRO3yzWg9GLj+GxPeWr02ybTbgp4XGXTx7jpA=;
        b=RrodyKUontT6x5UbVkeceSzKlrlY/o8Er0PFq7+30TBQsz2x5ziggvKMa7zziLUf4P
         WU2Vcn4lLSWabTbFz16Xeze2RI5SuEeb1++DjBRkq1CTfRsEhnDHMzWZjTxQUKCspfPb
         UpTSiZxwIiaLR/A3LypB8QLvthD0243Fyp6B1pE9T1KGDEEpYqG8TC6MTKxWPqvNnvTp
         NwMCzblHYAeqLToSgMXr7IW4ob7ZRTwU7SRhG0lC//lgGslPfPSorLlX6o90RtIwCk5x
         TSa2TABge7zwzT3t0BpPEU6AH1HNdQmPi14rLIhGxynrhBqrVa+vNvH8v2XcVAjHvnDk
         LqfA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id j6si402209edd.0.2019.02.25.12.28.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 12:28:55 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,412,1544482800"; 
   d="scan'208";a="370857617"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 21:28:55 +0100
Date: Mon, 25 Feb 2019 21:28:55 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-eth: add SPDX GPL-2.0
 license identifier --improved version
In-Reply-To: <20190225195044.6013-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1902252126010.2481@hadrien>
References: <20190225195044.6013-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

I'm not sure to understand the "improved version".  If you mean that this
is an improved version of your previous patch, you should put [PATCH v2]
and then explain under the --- how v2 is different than v1.

The complete subject line, after [PATCH], will be preserved in the git
history.  No one will understand improved version, because they won't see
the previous version.  That just exists in this mailing list.

julia

On Mon, 25 Feb 2019, Jules Irenge wrote:

> Add SPDX GPL-2.0 license to fix missing SPDX warning
>  reported by checkpatch.pl.
>
> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  drivers/staging/mt7621-eth/ethtool.h | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/mt7621-eth/ethtool.h b/drivers/staging/mt7621-eth/ethtool.h
> index 40b4cf011660..d0e97ae0d82e 100644
> --- a/drivers/staging/mt7621-eth/ethtool.h
> +++ b/drivers/staging/mt7621-eth/ethtool.h
> @@ -1,3 +1,4 @@
> +/* SPDX-License-Identifier: GPL-2.0 */
>  /*   This program is free software; you can redistribute it and/or modify
>   *   it under the terms of the GNU General Public License as published by
>   *   the Free Software Foundation; version 2 of the License
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225195044.6013-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

