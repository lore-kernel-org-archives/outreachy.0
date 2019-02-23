X-GM-THRID: 6661151851808817152
X-Received: by 2002:adf:ce07:: with SMTP id p7mr472680wrn.24.1550928050522;
        Sat, 23 Feb 2019 05:20:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a7b:cd99:: with SMTP id y25ls1031531wmj.2.gmail; Sat, 23 Feb
 2019 05:20:49 -0800 (PST)
X-Google-Smtp-Source: AHgI3IbIlRo7KE2y+kZZKSjt402Bapq84WTvQnG8zgET+r+Syw9beUiI2RvGPGsb5+UhgQfvNUtx
X-Received: by 2002:a1c:10c:: with SMTP id 12mr544911wmb.8.1550928049613;
        Sat, 23 Feb 2019 05:20:49 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550928049; cv=none;
        d=google.com; s=arc-20160816;
        b=Ug16OlEOnJlwNnIuaZHCqoWaPBRWfHtqDD9K0DNMLtPeOuR87ewPgkKZIC9OtEJwCz
         EteXOVQ37Ug3ITKk2e7iwNS/ASlXqwbhrzNxCU2oMTWJY2d4saHvN55g1Lm3Knb03nKG
         YnGktEbt/HbUGKfBB+4pBdBIG33tJ1MdMLDzuwLN1/MaeIFkUBP/Rhc/JdZ0J9U+YOhd
         YPjLYVC8mVtT1pVEhhEUz4QeFlVRG3rEPjbNO9LhycgAFrGJyE+04cjwOeRIHa6I5X2k
         PYhGonaHPrrakRPrWIaixlK5JEexVgd3V+113QiHkokpKUv+ZARL608PbOW7jFneK3bl
         ZlZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=gZOIrmOVg2TOiSnJj3Owq1JEtNUcBcLEt7jBKs80KDk=;
        b=qM9P5tW7+M6d0GZpiQu9RJX/PHL+OxqbN+lOior7XpNUvx3sYtbdKP4v5x9OKxgFR7
         7NB86c5G209Q+XsNHewGyqOAWohiBKr9i2k2lvEJNOtaT2lXP++rR/IPbhTy5R+2GO+c
         hdWTOKkMQ6XJ2c3AFpLBx9K8coQDhKDsVcJz+JeTK4XCnoFP8cMR6locfB9Eu1k5YhFH
         hJV720dYhrIhiqazXkHp/nmmbZc/tla0bN4/RrYUDQERY5IbU5S5kXBgQsw6OMZScKRX
         SyyoBFEavRizf+SVLkMB9+fo801O+DB0wt1ZqGUsQGZvXEpdy9u88a2Kor/CQ1syyrb8
         L/Ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id t22si191249wmj.2.2019.02.23.05.20.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 23 Feb 2019 05:20:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,403,1544482800"; 
   d="scan'208";a="297103391"
Received: from abo-58-107-68.mrs.modulonet.fr (HELO hadrien) ([85.68.107.58])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 23 Feb 2019 14:20:48 +0100
Date: Sat, 23 Feb 2019 14:20:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Jules Irenge <jbi.octave@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] net: ax25: Add SPDX License to fix
 missing License warning
In-Reply-To: <20190223111100.13983-1-jbi.octave@gmail.com>
Message-ID: <alpine.DEB.2.21.1902231419330.2551@hadrien>
References: <20190223111100.13983-1-jbi.octave@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

For the outreachy application period you should work on drivers/staging.
If you want to work on something else, you shouldn't CC the mailing list,
and you take the risk that your change won't be applied before th end fo
the application period.

julia

On Sat, 23 Feb 2019, Jules Irenge wrote:

> Signed-off-by: Jules Irenge <jbi.octave@gmail.com>
> ---
>  net/ax25/af_ax25.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/net/ax25/af_ax25.c b/net/ax25/af_ax25.c
> index 5d01edf8d819..5048790a75f6 100644
> --- a/net/ax25/af_ax25.c
> +++ b/net/ax25/af_ax25.c
> @@ -1,3 +1,4 @@
> +// SPDX-License-Identifier: GPL-2.0
>  /*
>   * This program is free software; you can redistribute it and/or modify
>   * it under the terms of the GNU General Public License as published by
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190223111100.13983-1-jbi.octave%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

