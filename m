X-GM-THRID: 6803328043405279232
X-Received: by 2002:a7b:c4d6:: with SMTP id g22mr14352wmk.79.1584023914612;
        Thu, 12 Mar 2020 07:38:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a5c6:: with SMTP id o189ls2712921wme.2.canary-gmail;
 Thu, 12 Mar 2020 07:38:33 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvJq6cqm54/gom7SVALsGD93k1K0LEeW7kBy32azsMtemmnND6zw5LTjEiOC4gp7BwAMaQf
X-Received: by 2002:a1c:6146:: with SMTP id v67mr5355599wmb.78.1584023913152;
        Thu, 12 Mar 2020 07:38:33 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584023913; cv=none;
        d=google.com; s=arc-20160816;
        b=OLR1QtucaANmTzKHfvc4YbAaSVt8KH/WMzzMQaG3eqE0MHxjTzyB+G5+LISGz1yXmu
         3Df9gs9oqh1540fkj2H6qwWahXK8kGIPzMFbaio50+lo1P1cjFyM4/fuA6QMofZNgAQz
         N6y3UVn2eOZe3PsLzd77n/HHHyJeNn1B6ohq64O9/b15cgpGnHTyV6q2BbbwjRdwd95W
         2lU6vNPPWuionFOoTLL1W4Q99xpEjWoKglopd35O4QN5iC1wW0os0La/T3crblUiBD58
         JJzdKoiynR2t5wYLSMgVoHiNFewd9OlF4SMlYhgMGjUDJVtuYbDhI9GrwGa8LcY7elo7
         Ntlw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=LwwUihgi11jfLeqr3d06ZvCb6NuAyU0Y/evtogtLFtE=;
        b=BSfH2uhRBc/rJuJBSfEIgnt0dDYcuRr1zEGKjFn7HZuBmJWjQyttC8tpuMaar5dNx9
         wlMPW31sHtvGUWkmQsWaZD0T7HgnPrlNf4nzKFo5HJu0vLAzKPpWlDgcFNOBAEp49vTN
         GokvCvMj7jPQ8VGEARKbAdFhecEdcOeQitpBDsoJDO23IsRVlEGZL3qBIGFer9X9CyUS
         Pvwwglp0UNFNk+zKsu4JbeCSet/mgNehVvTZG/CQUH5U99yLfusEc9UekXE4Ec5JFV7f
         FqNnhmFyph3ogFfhZ8qAt2vSZHHh1OxUFBWFTG94L1ucpWwgTfalfkAgDeqgjR0QxCI9
         +yxA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id d14si211894wru.1.2020.03.12.07.38.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 07:38:33 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,545,1574118000"; 
   d="scan'208";a="342154099"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 12 Mar 2020 15:38:32 +0100
Date: Thu, 12 Mar 2020 15:38:31 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Enrique Vargas <jevargas@seas.upenn.edu>
cc: Lars-Peter Clausen <lars@metafoo.de>, 
    Michael Hennerich <Michael.Hennerich@analog.com>, 
    Stefan Popa <stefan.popa@analog.com>, Jonathan Cameron <jic23@kernel.org>, 
    Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: iio: adc: align multi-line
 function argument with open parenthesis
In-Reply-To: <20200312142721.GA2748@evX1>
Message-ID: <alpine.DEB.2.21.2003121536280.2418@hadrien>
References: <20200312142721.GA2748@evX1>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 12 Mar 2020, Enrique Vargas wrote:

> Eliminate WARNING found with checkpatch.pl for argument split in two
> lines not matching coding conventions identation.

The message seems a bit obscure.  There is no argument that is split in
two lines, although it is the case that the argument list is split in two
lines.

For the subject line, maybe "reduce parameter indentation"

And then for the log message:

"Align function parameter with the right side of the open parenthesis
starting the parameter list, to follow kernel coding style.  Problem found
using checkpatch."

julia


>
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/staging/iio/adc/ad7192.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 51b1cd3ad1de..5f65d084e320 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -477,7 +477,7 @@ static ssize_t ad7192_set(struct device *dev,
>  }
>
>  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> -						    int *freq)
> +					     int *freq)
>  {
>  	unsigned int fadc;
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200312142721.GA2748%40evX1.
>

