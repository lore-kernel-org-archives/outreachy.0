X-GM-THRID: 6336450754880995328
X-Received: by 10.200.48.167 with SMTP id v36mr4076750qta.65.1475384437470;
        Sat, 01 Oct 2016 22:00:37 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.18.201 with SMTP id g67ls8758211otg.26.gmail; Sat, 01 Oct
 2016 22:00:36 -0700 (PDT)
X-Received: by 10.237.32.33 with SMTP id 30mr4191999qta.24.1475384436008;
        Sat, 01 Oct 2016 22:00:36 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id 7si6214998par.0.2016.10.01.22.00.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 01 Oct 2016 22:00:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id cd13so4891301pac.3
        for <outreachy-kernel@googlegroups.com>; Sat, 01 Oct 2016 22:00:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=3VMr/NPNL1ZibKH2barNzDGWgg78vDXLDlTx2wXdxeU=;
        b=PA8o6Qx6NL427Ye8GuIf7ZstImKtgxQ7ey3PYnIQ1Vz1zElTOE56vQ4Bg0J2BzAEFX
         /iReHBjK/vvW53wD0lYBAx7lTgkhP1Mi2kDUCFgOuXcmtCLvrA3ihv+OxzbLmpHkte54
         BEe9Oymyr5hGefPezVe7WYW8+NMKNb9RgvuU4pLE44lvKPrcmo7P07QG4MO26mX/eJO8
         4fpGm49nc9J9d3K0i83y35QeWRPK1ekwc/eucNCaIGJQTrrZSQMcz+s+wCl9kd+VpfGt
         GHZX8r2vS1r65MKxUy+GV5KNs9ytKxk5yJHJTHoW+xjaM0D8owk1DkWcZ7GnhHz/xYt0
         q32Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=3VMr/NPNL1ZibKH2barNzDGWgg78vDXLDlTx2wXdxeU=;
        b=eNOkouMXn6MSi8x0q4bAgUo9Ent6bhmeZzExuJ7FobUlfnR3Xzf/J8zjOM5grRYcSo
         WGMMOUievlk5DzuOH880DfAPjdYTB3vg0P9NKJAyFUkjoYdRZEtElAcoxl6Ps8nG2UBH
         5V2Ogdca+BoSTgOgJ9/IaKS3kqEpHV+muq+76PIa1AnO9aM1V9SPBXpL+oh0e6n2ddJj
         JYyLZj+kI6AGOs1kXrW1iY0DHI2LvYrZPBCqSKhRC+xwSZbzl+9zZ+rNYd1iJadmWY/U
         a7BmoHd1SUrJofltit0QoFgPrVBrYsA3g4bksW9FNHfKLn4BM+r09Quf9ALvrMLxOnuk
         JZ0A==
X-Gm-Message-State: AA6/9Rm6PbZxF1MA+Z0i4PpR7CS8mCT3AB72GFLxis3UhQ6zn/B2shfnSLbeEMhyWYYfKw==
X-Received: by 10.66.173.145 with SMTP id bk17mr26306292pac.8.1475384435806;
        Sat, 01 Oct 2016 22:00:35 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id i7sm38087595paf.9.2016.10.01.22.00.34
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 01 Oct 2016 22:00:35 -0700 (PDT)
Date: Sat, 1 Oct 2016 22:00:33 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] iio: imu: bmi160: bmi160_core: Fix
 sparse warning
Message-ID: <20161002050032.GA14117@d830.WORKGROUP>
References: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161001110418.GA25515@sayli-HP-15-Notebook-PC>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Oct 01, 2016 at 04:34:18PM +0530, sayli karnik wrote:
> Fix the following sparse warning due to incorrect type in assignment:
> drivers/iio/imu/bmi160/bmi160_core.c:411:26: warning: incorrect type
> in assignment (different base types)
> 
> drivers/iio/imu/bmi160/bmi160_core.c:411:26: expected signed short
> [signed] [short] [explicitly-signed] <noident>
> drivers/iio/imu/bmi160/bmi160_core.c:411:26: got restricted __le16
> [addressable] [usertype] sample
> 
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>

Hi Sayli,

Please claim this via the outreachy task page - section endianness coding
task.  Perhaps you can update the commit msg & changelog with the cosmetic
vs bug impact statement as in your earlier patch. 

question inline below

> ---
>  drivers/iio/imu/bmi160/bmi160_core.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/iio/imu/bmi160/bmi160_core.c b/drivers/iio/imu/bmi160/bmi160_core.c
> index e0251b8..5355507 100644
> --- a/drivers/iio/imu/bmi160/bmi160_core.c
> +++ b/drivers/iio/imu/bmi160/bmi160_core.c
> @@ -398,7 +398,8 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
>  	struct iio_poll_func *pf = p;
>  	struct iio_dev *indio_dev = pf->indio_dev;
>  	struct bmi160_data *data = iio_priv(indio_dev);
> -	s16 buf[16]; /* 3 sens x 3 axis x s16 + 3 x s16 pad + 4 x s16 tstamp */
> +	__le16 buf[16];
> +	/* 3 sens x 3 axis x __le16 + 3 x __le16 pad + 4 x __le16 tstamp */
>  	int i, ret, j = 0, base = BMI160_REG_DATA_MAGN_XOUT_L;
>  	__le16 sample;

Wondering about this option below.  Data was read into an __le16, so that
was good diligence on drivers part.  Seems we can use le16_to_cpu() for the
conversion into the buf.

--- a/drivers/iio/imu/bmi160/bmi160_core.c
+++ b/drivers/iio/imu/bmi160/bmi160_core.c
@@ -408,7 +408,7 @@ static irqreturn_t bmi160_trigger_handler(int irq, void *p)
 				       &sample, sizeof(__le16));
 		if (ret < 0)
 			goto done;
-		buf[j++] = sample;
+		buf[j++] = le16_to_cpu(sample);
 	}
 
 	iio_push_to_buffers_with_timestamp(indio_dev, buf,


alisons

>  
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161001110418.GA25515%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.

