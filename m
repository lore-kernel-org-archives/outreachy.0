X-GM-THRID: 6399268904363884544
X-Received: by 10.25.67.80 with SMTP id m16mr2936921lfj.27.1489946168456;
        Sun, 19 Mar 2017 10:56:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.14 with SMTP id l14ls1080835ljb.38.gmail; Sun, 19 Mar
 2017 10:56:07 -0700 (PDT)
X-Received: by 10.25.67.80 with SMTP id m16mr2936917lfj.27.1489946167092;
        Sun, 19 Mar 2017 10:56:07 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si657877wmg.3.2017.03.19.10.56.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Mar 2017 10:56:07 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,189,1486422000"; 
   d="scan'208";a="217270056"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2017 18:56:05 +0100
Date: Sun, 19 Mar 2017 18:56:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: simran singhal <singhalsimran0@gmail.com>
cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org, 
    Hartmut Knaack <knaack.h@gmx.de>, 
    Peter Meerwald-Stadler <pmeerw@pmeerw.net>, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-iio@vger.kernel.org, 
    devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: impedance-analyzer: ad5933:
 Remove unnecessary goto
In-Reply-To: <20170319175133.GA19710@singhal-Inspiron-5558>
Message-ID: <alpine.DEB.2.20.1703191854260.2094@hadrien>
References: <20170319175133.GA19710@singhal-Inspiron-5558>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Mar 2017, simran singhal wrote:

> Remove unnecessary goto.
>
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/iio/impedance-analyzer/ad5933.c | 10 ++++------
>  1 file changed, 4 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> index 297665d..c9ed2ac 100644
> --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> @@ -663,12 +663,12 @@ static void ad5933_work(struct work_struct *work)
>  		ad5933_cmd(st, AD5933_CTRL_START_SWEEP);
>  		st->state = AD5933_CTRL_START_SWEEP;
>  		schedule_delayed_work(&st->work, st->poll_time_jiffies);
> -		goto out;
> +		mutex_unlock(&indio_dev->mlock);

This is not correct.  The code at the end of the function implicitly does
a return, which has disappeared in the change.  You could add a return to
each place wher you have put a mutex_unlock, but I think that the code was
better off as it was.  It's microscopically less error prone to have this
cleanup code in only one place.

julia

>  	}
>
>  	ret = ad5933_i2c_read(st->client, AD5933_REG_STATUS, 1, &status);
>  	if (ret)
> -		goto out;
> +		mutex_unlock(&indio_dev->mlock);
>
>  	if (status & AD5933_STAT_DATA_VALID) {
>  		int scan_count = bitmap_weight(indio_dev->active_scan_mask,
> @@ -678,7 +678,7 @@ static void ad5933_work(struct work_struct *work)
>  				AD5933_REG_REAL_DATA : AD5933_REG_IMAG_DATA,
>  				scan_count * 2, (u8 *)buf);
>  		if (ret)
> -			goto out;
> +			mutex_unlock(&indio_dev->mlock);
>
>  		if (scan_count == 2) {
>  			val[0] = be16_to_cpu(buf[0]);
> @@ -690,7 +690,7 @@ static void ad5933_work(struct work_struct *work)
>  	} else {
>  		/* no data available - try again later */
>  		schedule_delayed_work(&st->work, st->poll_time_jiffies);
> -		goto out;
> +		mutex_unlock(&indio_dev->mlock);
>  	}
>
>  	if (status & AD5933_STAT_SWEEP_DONE) {
> @@ -703,8 +703,6 @@ static void ad5933_work(struct work_struct *work)
>  		ad5933_cmd(st, AD5933_CTRL_INC_FREQ);
>  		schedule_delayed_work(&st->work, st->poll_time_jiffies);
>  	}
> -out:
> -	mutex_unlock(&indio_dev->mlock);
>  }
>
>  static int ad5933_probe(struct i2c_client *client,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170319175133.GA19710%40singhal-Inspiron-5558.
> For more options, visit https://groups.google.com/d/optout.
>

