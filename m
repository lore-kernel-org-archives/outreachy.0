X-GM-THRID: 6470101655297720320
X-Received: by 10.46.84.12 with SMTP id i12mr787715ljb.27.1506439037690;
        Tue, 26 Sep 2017 08:17:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.223.138.131 with SMTP id y3ls3510695wry.5.gmail; Tue, 26 Sep
 2017 08:17:16 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBUSWk7pfgHKfQwTspHEYuuMJueafduATX1coFn8srJXU9UWgNipwn8sZs7tEgUbSSZmzCU
X-Received: by 10.28.21.65 with SMTP id 62mr397970wmv.22.1506439036032;
        Tue, 26 Sep 2017 08:17:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506439035; cv=none;
        d=google.com; s=arc-20160816;
        b=jM4d7ChmFa0VImKkKffPJpa0sE7OnM80aZDStG0cUn+RWFECuPJDd6dhDIsA9B6nt+
         dnAyrMOknwlrj4n5uJlHeDBnRFqwjzRhaA1wmNRmNje4tlbloS+h6qzbnoJdHNNF18kk
         hb2pkPZITWAZXeUB4kdajHw4W8SSHsC5llt6TbKiGih/vSG9VIfL/sDp+g98/IaQc94O
         KzDoh6LQFO24oGMHc+cIl7S3f4pk9EjSSn+3vK3fP/lqGHe8arFIZsmfVcX5Yui3fIvT
         NOrNcX78iXWg1ThdOlRLsnK08iiO7UXTxDZRWZAZAvyNh8RRyNKQ8pW3E6ZNCNAJV4+T
         e4fA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=ITqcK1Qyiqc9R5ItVzzgHQgJR15l+yTSauNhpXChL64=;
        b=qK8c4QUV9V4DP/KQWxu1YUOfolGTyLQFSGmHwIPfZSuJhRJcJGY0qIYTxKWqBIw7YS
         mKPbOrITWLDmwn2aVVj5crZ6yi1HerhmWpbvOdCfnkxqQr3v5ghESraN6FnQCOAk7Pvd
         FZ/lOOcnJMSi+w8LkhZTNyx1Qk3yUIYfKAnWLputlW6wGDZotPyVZkWcmQ5EvKOy15we
         nCRcWtLJki1IxTn/38ECwLbhG1kB1j3aQkSoCA3O9vqD8pxqWcHXOGK8W+BpYMXFgGA/
         n96S5yhAzXvL9HT+wHjTJMCqS6ZEikv+eqfaFj3tU76yqTip5VrJ7hduuUWLcUWioO/0
         /SfQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p200si196334wmg.4.2017.09.26.08.17.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 26 Sep 2017 08:17:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,441,1500933600"; 
   d="scan'208";a="238791829"
Received: from mx.artech.at (HELO hadrien.local) ([188.21.106.106])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 26 Sep 2017 17:17:15 +0200
Date: Tue, 26 Sep 2017 17:17:14 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, hennerich@blackfin.uclinux.org, 
    jic23@kernel.org, knaack.h@gmx.de, lars@metafoo.de, pmeerw@pmeerw.net, 
    linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: iio: adc: ad7192: add
 lock to protect hardware state changes
In-Reply-To: <1506437917-7219-3-git-send-email-aastha.gupta4104@gmail.com>
Message-ID: <alpine.DEB.2.20.1709261716480.2866@hadrien>
References: <1506437917-7219-1-git-send-email-aastha.gupta4104@gmail.com> <1506437917-7219-3-git-send-email-aastha.gupta4104@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 26 Sep 2017, Aastha Gupta wrote:

> In this driver, private driver lock is being used to protect hardware
> state changes.

Similarly, in this case, why is this the good lock to use, and why is this
the good place to put it?

julia

>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 2 ++
>  1 file changed, 2 insertions(+)
>
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index 096d29d..609a649 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -511,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>  	switch (mask) {
>  	case IIO_CHAN_INFO_SCALE:
>  		ret = -EINVAL;
> +		mutex_lock(&st->lock);
>  		for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++)
>  			if (val2 == st->scale_avail[i][1]) {
>  				ret = 0;
> @@ -524,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev,
>  				ad7192_calibrate_all(st);
>  				break;
>  			}
> +		mutex_unlock(&st->lock);
>  		break;
>  	case IIO_CHAN_INFO_SAMP_FREQ:
>  		if (!val) {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1506437917-7219-3-git-send-email-aastha.gupta4104%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

