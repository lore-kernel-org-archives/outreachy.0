X-GM-THRID: 6208887489417969664
X-Received: by 10.50.43.170 with SMTP id x10mr19284994igl.8.1445924942490;
        Mon, 26 Oct 2015 22:49:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.12.69 with SMTP id w66ls1718284ioi.58.gmail; Mon, 26 Oct
 2015 22:49:02 -0700 (PDT)
X-Received: by 10.50.176.225 with SMTP id cl1mr19224554igc.7.1445924942133;
        Mon, 26 Oct 2015 22:49:02 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id sm2si2568647pab.0.2015.10.26.22.49.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 22:49:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 33F9A898;
	Tue, 27 Oct 2015 05:49:01 +0000 (UTC)
Date: Tue, 27 Oct 2015 14:48:58 +0900
From: Greg KH <gregkh@linuxfoundation.org>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: iio: dummy: add the
 timestamp buffer to the scan index enum
Message-ID: <20151027054858.GA4490@kroah.com>
References: <cover.1445891339.git.amsfield22@gmail.com>
 <9ba0ccaa230b9f32a76b8b5437d2cde8246ab69c.1445891339.git.amsfield22@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <9ba0ccaa230b9f32a76b8b5437d2cde8246ab69c.1445891339.git.amsfield22@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Mon, Oct 26, 2015 at 01:49:35PM -0700, Alison Schofield wrote:
> Replace the hard coded buffer index for IIO_CHAN SOFT_TIMESTAMP with
> an entry in the scan index enum.
> 
> Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> ---
>  drivers/staging/iio/iio_simple_dummy.c        | 6 +++---
>  drivers/staging/iio/iio_simple_dummy.h        | 2 ++
>  drivers/staging/iio/iio_simple_dummy_buffer.c | 1 +
>  3 files changed, 6 insertions(+), 3 deletions(-)
> 
> diff --git a/drivers/staging/iio/iio_simple_dummy.c b/drivers/staging/iio/iio_simple_dummy.c
> index 70a82cd..2749746 100644
> --- a/drivers/staging/iio/iio_simple_dummy.c
> +++ b/drivers/staging/iio/iio_simple_dummy.c
> @@ -230,10 +230,10 @@ static const struct iio_chan_spec iio_dummy_channels[] = {
>  		},
>  	},
>  	/*
> -	 * Convenience macro for timestamps. 4 is the index in
> -	 * the buffer.
> +	 * Convenience macro for timestamps.
> +	 * DUMMY_INDEX_TIMESTAMP is the index in the buffer.
>  	 */
> -	IIO_CHAN_SOFT_TIMESTAMP(4),
> +	IIO_CHAN_SOFT_TIMESTAMP(DUMMY_INDEX_TIMESTAMP),
>  	/* DAC channel out_voltage0_raw */
>  	{
>  		.type = IIO_VOLTAGE,
> diff --git a/drivers/staging/iio/iio_simple_dummy.h b/drivers/staging/iio/iio_simple_dummy.h
> index b9069a1..89fb650 100644
> --- a/drivers/staging/iio/iio_simple_dummy.h
> +++ b/drivers/staging/iio/iio_simple_dummy.h
> @@ -102,6 +102,7 @@ iio_simple_dummy_events_unregister(struct iio_dev *indio_dev)
>   * @DUMMY_INDEX_DIFFVOLTAGE_1M2:   first differential channel
>   * @DUMMY_INDEX_DIFFVOLTAGE_3M4:   second differential channel
>   * @DUMMY_INDEX_ACCELX:            acceleration channel
> + * @DUMMY_INDEX_TIMESTAMP:         timestamp channel
>   *
>   * Enum provides convenient numbering for the scan index.
>   */
> @@ -110,6 +111,7 @@ enum iio_simple_dummy_scan_elements {
>  	DUMMY_INDEX_DIFFVOLTAGE_1M2,
>  	DUMMY_INDEX_DIFFVOLTAGE_3M4,
>  	DUMMY_INDEX_ACCELX,
> +	DUMMY_INDEX_TIMESTAMP,
>  };
>  
>  #ifdef CONFIG_IIO_SIMPLE_DUMMY_BUFFER
> diff --git a/drivers/staging/iio/iio_simple_dummy_buffer.c b/drivers/staging/iio/iio_simple_dummy_buffer.c
> index cf44a6f..eea3e76 100644
> --- a/drivers/staging/iio/iio_simple_dummy_buffer.c
> +++ b/drivers/staging/iio/iio_simple_dummy_buffer.c
> @@ -31,6 +31,7 @@ static const s16 fakedata[] = {
>  	[DUMMY_INDEX_DIFFVOLTAGE_1M2] = -33,
>  	[DUMMY_INDEX_DIFFVOLTAGE_3M4] = -2,
>  	[DUMMY_INDEX_ACCELX] = 344,
> +	[DUMMY_INDEX_TIMESTAMP] = 50,

You just increased the size of this structure, why?


