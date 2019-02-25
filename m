X-GM-THRID: 6661965770833002496
X-Received: by 2002:a19:fc05:: with SMTP id a5mr139624lfi.5.1551110204401;
        Mon, 25 Feb 2019 07:56:44 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:3e16:: with SMTP id l22ls1632583lja.2.gmail; Mon, 25 Feb
 2019 07:56:43 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaKMhfD4Ssre55tS+R4Yo4CQtolPrZnmS4SkG5mtt0vTFKXvOjR9Q7k+8CPLt9MtOGSHu2Y
X-Received: by 2002:a2e:c41:: with SMTP id o1mr1029344ljd.19.1551110203679;
        Mon, 25 Feb 2019 07:56:43 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551110203; cv=none;
        d=google.com; s=arc-20160816;
        b=GYe6lY39VYiagkjS/rb8PdBO+917M6sLEtmDK+L896Tpku6zo+PmkHaY/f5DeLIRX/
         fkxiXCRXXrYzwSGEj7wEiX5x29eXl3siKCRu1GMI0Smof/8uOk5K4z3jkUKEtnYvkUR3
         xbafV+hUcyTrx5ewkgwfTvrAyo0UZJoaSljOfVNH5+VRzF+Sd4fXOdUVxATNpUcAR2mA
         LTLd+lyYm6XuSwG85l4lgybhMZczp2hfekF/ZuHz04FJ1wCskwD1uWJ1CF3Bs1N6Uzg0
         rwZRSA+kP6zET5nTGbphDBWaz/djwj2IaeOWOmZ5kb5J/Ei+HpHtkqzpDLN1Em5rN9oy
         No8g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=cN8QVeBSY9CBV+f8b6qWQkgZXrmycrXmUic/sz8Oz94=;
        b=O3ONUnU5TEfy2W1QnlpN6S71B1sf3eRCT9gqavwN221FZw4svLyWrhz+eYl3hNOrtE
         N9EcStF4p4hfwDJVpTqiNMK3vdj59f4LjfQDi+N2nEVqVNIGq3fgaARqxc8O9QlfRwCK
         /y7SBRQdEJgOqrqOxzll2IdXz1hnn2kChyZoHGZ3JWla9nfEYWVla3wHuFG9KCEhdXgW
         BkFzSUMRPSsVdYr1XkNqyWSVxXwgqvx+wLqRpwB6nYuebH/zxWbf+cbq4nOec/vg4Oct
         nHF9RsqrUqKsFhrnytgzD15rorbv9l3BDgXVJbijAwVKVTXG/pj1Z8/LVZVTQydRDTpR
         L9tg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id u21si499889lja.1.2019.02.25.07.56.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Feb 2019 07:56:43 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,411,1544482800"; 
   d="scan'208";a="370827148"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 25 Feb 2019 16:56:39 +0100
Date: Mon, 25 Feb 2019 16:56:37 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: mt7621-eth: add SPDX GPL-2.0
 license identifier
In-Reply-To: <20190225154857.13368-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.20.1902251654300.3474@hadrien>
References: <20190225154857.13368-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Mon, 25 Feb 2019, Jules Irenge wrote:

> adds SPDX GPL-2.0 license to clear missing or malformed SPDX warning

The log message should be written in he imperative, and should be a
well-formed sentence, ie beginning with a capital letter and ending with a
period.  So "Add...".  The purpose of doing something should also be more
than clearing a warning.  On the other hand, at the same time, it would be
nice to give credit to the tool that made that warning.

julia

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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190225154857.13368-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

