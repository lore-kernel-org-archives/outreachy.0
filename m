X-GM-THRID: 6402897717905850368
X-Received: by 10.46.77.69 with SMTP id a66mr43045ljb.11.1490791260013;
        Wed, 29 Mar 2017 05:41:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.0.141 with SMTP id 135ls1617059lfa.3.gmail; Wed, 29 Mar
 2017 05:40:59 -0700 (PDT)
X-Received: by 10.25.32.142 with SMTP id g136mr47077lfg.12.1490791258900;
        Wed, 29 Mar 2017 05:40:58 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l138si525829wmg.0.2017.03.29.05.40.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 29 Mar 2017 05:40:58 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,241,1486422000"; 
   d="scan'208";a="218478048"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 29 Mar 2017 14:40:57 +0200
Date: Wed, 29 Mar 2017 14:40:56 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, 
    linux-iio@vger.kernel.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] iio: light: si1145: Replace
 ternary operator with min macro
In-Reply-To: <1490790791-5694-5-git-send-email-singhalsimran0@gmail.com>
Message-ID: <alpine.DEB.2.20.1703291440070.2989@hadrien>
References: <1490790791-5694-1-git-send-email-singhalsimran0@gmail.com> <1490790791-5694-5-git-send-email-singhalsimran0@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 29 Mar 2017, simran singhal wrote:

> Use macro min() to get the minimum of two values for brevity and
> readability.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/iio/light/si1145.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/iio/light/si1145.c b/drivers/iio/light/si1145.c
> index 096034c..e7ad6fb 100644
> --- a/drivers/iio/light/si1145.c
> +++ b/drivers/iio/light/si1145.c
> @@ -557,7 +557,7 @@ static int si1145_set_chlist(struct iio_dev *indio_dev, unsigned long scan_mask)
>  	data->scan_mask = scan_mask;
>  	ret = si1145_param_set(data, SI1145_PARAM_CHLIST, reg);
>
> -	return ret < 0 ? ret : 0;
> +	return min(ret, 0);

A similar change involving max was already rejected.  ret < 0 is a
standard way of detecting an error, so perhaps leaving that explicitly
present will be preferred.

julia

>  }
>
>  static int si1145_measure(struct iio_dev *indio_dev,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490790791-5694-5-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

