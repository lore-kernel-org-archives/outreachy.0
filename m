X-GM-THRID: 6470342242879930368
Date: Thu, 5 Oct 2017 04:21:10 -0700 (PDT)
From: aastha.gupta4104@gmail.com
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <b42593bf-52c3-415c-8a1b-ccbd4229b639@googlegroups.com>
In-Reply-To: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
References: <1506493919-3189-1-git-send-email-aastha.gupta4104@gmail.com>
Subject: Re: [PATCH v4] staging: iio: adc: ad7192: use driver private lock
 to protect hardware state changes
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_10774_1656585680.1507202470223"
X-Google-Token: EKar2M4FXJ3JaKCxNPw0
X-Google-IP: 103.196.221.229

------=_Part_10774_1656585680.1507202470223
Content-Type: multipart/alternative; 
	boundary="----=_Part_10775_814066584.1507202470223"

------=_Part_10775_814066584.1507202470223
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Wednesday, September 27, 2017 at 12:02:29 PM UTC+5:30, Aastha Gupta 
wrote:
>
> The IIO subsystem is redefining iio_dev->mlock to be used by 
> the IIO core only for protecting device operating mode changes. 
> ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes. 
>
> In this driver, mlock was being used to protect hardware state 
> changes.  Replace it with a driver private lock. 
>
> Also, as there are state changes in the ad7192_ write_raw function, a lock 
> is added to prevent the concurrent state changes. 
>
> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com> 
> --- 
> changes in v4: 
>         - added comment for mutex 
>         - improved commit message 
>  drivers/staging/iio/adc/ad7192.c | 9 +++++++-- 
>  1 file changed, 7 insertions(+), 2 deletions(-) 
>
> diff --git a/drivers/staging/iio/adc/ad7192.c 
> b/drivers/staging/iio/adc/ad7192.c 
> index d11c6de..c1343ec 100644 
> --- a/drivers/staging/iio/adc/ad7192.c 
> +++ b/drivers/staging/iio/adc/ad7192.c 
> @@ -162,6 +162,7 @@ struct ad7192_state { 
>          u32                                scale_avail[8][2]; 
>          u8                                gpocon; 
>          u8                                devid; 
> +        struct mutex                        lock;        /* protect 
> sensor state */ 
>   
>          struct ad_sigma_delta                sd; 
>  }; 
> @@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev 
> *indio_dev, 
>          case IIO_CHAN_INFO_SCALE: 
>                  switch (chan->type) { 
>                  case IIO_VOLTAGE: 
> -                        mutex_lock(&indio_dev->mlock); 
> +                        mutex_lock(&st->lock); 
>                          *val = 
> st->scale_avail[AD7192_CONF_GAIN(st->conf)][0]; 
>                          *val2 = 
> st->scale_avail[AD7192_CONF_GAIN(st->conf)][1]; 
> -                        mutex_unlock(&indio_dev->mlock); 
> +                        mutex_unlock(&st->lock); 
>                          return IIO_VAL_INT_PLUS_NANO; 
>                  case IIO_TEMP: 
>                          *val = 0; 
> @@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev, 
>          switch (mask) { 
>          case IIO_CHAN_INFO_SCALE: 
>                  ret = -EINVAL; 
> +                mutex_lock(&st->lock); 
>                  for (i = 0; i < ARRAY_SIZE(st->scale_avail); i++) 
>                          if (val2 == st->scale_avail[i][1]) { 
>                                  ret = 0; 
> @@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_dev, 
>                                  ad7192_calibrate_all(st); 
>                                  break; 
>                          } 
> +                mutex_unlock(&st->lock); 
>                  break; 
>          case IIO_CHAN_INFO_SAMP_FREQ: 
>                  if (!val) { 
> @@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi) 
>   
>          st = iio_priv(indio_dev); 
>   
> +        mutex_init(&st->lock); 
> + 
>          st->avdd = devm_regulator_get(&spi->dev, "avdd"); 
>          if (IS_ERR(st->avdd)) 
>                  return PTR_ERR(st->avdd); 
> -- 
> 2.7.4 
>
> Any updates? 

------=_Part_10775_814066584.1507202470223
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Wednesday, September 27, 2017 at 12:02:29 PM UT=
C+5:30, Aastha Gupta wrote:<blockquote class=3D"gmail_quote" style=3D"margi=
n: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">The=
 IIO subsystem is redefining iio_dev-&gt;mlock to be used by
<br>the IIO core only for protecting device operating mode changes.
<br>ie. Changes between INDIO_DIRECT_MODE, INDIO_BUFFER_* modes.
<br>
<br>In this driver, mlock was being used to protect hardware state
<br>changes. =C2=A0Replace it with a driver private lock.
<br>
<br>Also, as there are state changes in the ad7192_ write_raw function, a l=
ock
<br>is added to prevent the concurrent state changes.
<br>
<br>Signed-off-by: Aastha Gupta &lt;<a href=3D"mailto:aastha.gupta4104@gmai=
l.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.href=3D&#39;m=
ailto:aastha.gupta4104@gmail.com&#39;;return true;" onclick=3D"this.href=3D=
&#39;mailto:aastha.gupta4104@gmail.com&#39;;return true;">aastha.gupta4104@=
gmail.com</a>&gt;
<br>---
<br>changes in v4:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- added comment for mut=
ex
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0- improved commit messa=
ge
<br>=C2=A0drivers/staging/iio/adc/<wbr>ad7192.c | 9 +++++++--
<br>=C2=A01 file changed, 7 insertions(+), 2 deletions(-)
<br>
<br>diff --git a/drivers/staging/iio/adc/<wbr>ad7192.c b/drivers/staging/ii=
o/adc/<wbr>ad7192.c
<br>index d11c6de..c1343ec 100644
<br>--- a/drivers/staging/iio/adc/<wbr>ad7192.c
<br>+++ b/drivers/staging/iio/adc/<wbr>ad7192.c
<br>@@ -162,6 +162,7 @@ struct ad7192_state {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0scale_avail[8][<wbr>2];
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0gpocon;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0devid;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct mutex=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>lock;=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* protect sensor state */
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ad_sigma_d=
elta=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>sd;
<br>=C2=A0};
<br>@@ -463,10 +464,10 @@ static int ad7192_read_raw(struct iio_dev *indio_=
dev,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case IIO_CHAN_INF=
O_SCALE:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (chan-&gt;type) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case IIO_VOLTAGE:
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>mutex_lock(&amp;indio_dev-&gt;mlock);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>mutex_lock(&amp;st-&gt;lock);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0*val =3D st-&gt;scale_avail[AD7192_CONF_<wbr>GAIN(st-&gt;conf)][0];
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0*val2 =3D st-&gt;scale_avail[AD7192_CONF_<wbr>GAIN(st-&gt;conf)][1];
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>mutex_unlock(&amp;indio_dev-&gt;<wbr>mlock);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
<wbr>mutex_unlock(&amp;st-&gt;lock);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>return IIO_VAL_INT_PLUS_NANO;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case IIO_TEMP:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0*val =3D 0;
<br>@@ -510,6 +511,7 @@ static int ad7192_write_raw(struct iio_dev *indio_d=
ev,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (mask) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case IIO_CHAN_INF=
O_SCALE:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D -EINVAL;
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_lock(&amp;<wbr>st-&gt;lock);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; ARRAY_SIZE(st-&gt;sca=
le_avail); i++)
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0if (val2 =3D=3D st-&gt;scale_avail[i][1]) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ret =3D 0;
<br>@@ -523,6 +525,7 @@ static int ad7192_write_raw(struct iio_dev *indio_d=
ev,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ad7192_calibrate=
_all(st);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0}
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_unlock(<wbr>&amp;st-&gt;lock);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case IIO_CHAN_INF=
O_SAMP_FREQ:
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (!val) {
<br>@@ -634,6 +637,8 @@ static int ad7192_probe(struct spi_device *spi)
<br>=C2=A0
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0st =3D iio_priv(i=
ndio_dev);
<br>=C2=A0
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0mutex_init(&amp;st-&gt=
;lock)<wbr>;
<br>+
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0st-&gt;avdd =3D d=
evm_regulator_get(&amp;spi-&gt;dev, &quot;avdd&quot;);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (IS_ERR(st-&gt=
;avdd))
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return PTR_ERR(st-&gt;avdd);
<br>--=20
<br>2.7.4
<br>
<br></blockquote><div>Any updates?=C2=A0</div></div>
------=_Part_10775_814066584.1507202470223--

------=_Part_10774_1656585680.1507202470223--

