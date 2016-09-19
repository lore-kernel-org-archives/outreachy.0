X-GM-THRID: 6331780203259363328
Date: Mon, 19 Sep 2016 02:20:36 -0700 (PDT)
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-Id: <1e48f61b-00d5-405d-8c2c-52b6645ce471@googlegroups.com>
In-Reply-To: <20160918210056.GA6241@fireworks>
References: <20160918210056.GA6241@fireworks>
Subject: Re: [PATCH] staging: iio: meter: Match alignment with open
 parenthesis
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_143_1227435407.1474276836301"
X-Google-Token: EOTb_r4FqzPQL3xi1M40
X-Google-IP: 84.117.92.113

------=_Part_143_1227435407.1474276836301
Content-Type: multipart/alternative; 
	boundary="----=_Part_144_1829555664.1474276836301"

------=_Part_144_1829555664.1474276836301
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

Hello!

Thank you for your responses. I will keep them in mind.


On Monday, 19 September 2016 00:01:00 UTC+3, Georgiana Chelu wrote:
>
> This patch fixes the following checkpatch.pl check: 
> CHECK: Alignment should match open parenthesis 
>
> Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com> 
> --- 
>  drivers/staging/iio/meter/ade7753.c | 43 
> ++++++++++++++----------------------- 
>  1 file changed, 16 insertions(+), 27 deletions(-) 
>
> diff --git a/drivers/staging/iio/meter/ade7753.c 
> b/drivers/staging/iio/meter/ade7753.c 
> index 4b5f05f..e3f6deb 100644 
> --- a/drivers/staging/iio/meter/ade7753.c 
> +++ b/drivers/staging/iio/meter/ade7753.c 
> @@ -42,8 +42,7 @@ static int ade7753_spi_write_reg_8(struct device *dev, 
>  } 
>   
>  static int ade7753_spi_write_reg_16(struct device *dev, 
> -                u8 reg_address, 
> -                u16 value) 
> +                                    u8 reg_address, u16 value) 
>  { 
>          int ret; 
>          struct iio_dev *indio_dev = dev_to_iio_dev(dev); 
> @@ -60,8 +59,7 @@ static int ade7753_spi_write_reg_16(struct device *dev, 
>  } 
>   
>  static int ade7753_spi_read_reg_8(struct device *dev, 
> -                u8 reg_address, 
> -                u8 *val) 
> +                                  u8 reg_address, u8 *val) 
>  { 
>          struct iio_dev *indio_dev = dev_to_iio_dev(dev); 
>          struct ade7753_state *st = iio_priv(indio_dev); 
> @@ -70,7 +68,7 @@ static int ade7753_spi_read_reg_8(struct device *dev, 
>          ret = spi_w8r8(st->us, ADE7753_READ_REG(reg_address)); 
>          if (ret < 0) { 
>                  dev_err(&st->us->dev, "problem when reading 8 bit 
> register 0x%02X", 
> -                                reg_address); 
> +                        reg_address); 
>                  return ret; 
>          } 
>          *val = ret; 
> @@ -79,8 +77,7 @@ static int ade7753_spi_read_reg_8(struct device *dev, 
>  } 
>   
>  static int ade7753_spi_read_reg_16(struct device *dev, 
> -                u8 reg_address, 
> -                u16 *val) 
> +                                   u8 reg_address, u16 *val) 
>  { 
>          struct iio_dev *indio_dev = dev_to_iio_dev(dev); 
>          struct ade7753_state *st = iio_priv(indio_dev); 
> @@ -99,8 +96,7 @@ static int ade7753_spi_read_reg_16(struct device *dev, 
>  } 
>   
>  static int ade7753_spi_read_reg_24(struct device *dev, 
> -                u8 reg_address, 
> -                u32 *val) 
> +                                   u8 reg_address, u32 *val) 
>  { 
>          struct iio_dev *indio_dev = dev_to_iio_dev(dev); 
>          struct ade7753_state *st = iio_priv(indio_dev); 
> @@ -123,7 +119,7 @@ static int ade7753_spi_read_reg_24(struct device *dev, 
>          ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers)); 
>          if (ret) { 
>                  dev_err(&st->us->dev, "problem when reading 24 bit 
> register 0x%02X", 
> -                                reg_address); 
> +                        reg_address); 
>                  goto error_ret; 
>          } 
>          *val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2]; 
> @@ -134,8 +130,7 @@ error_ret: 
>  } 
>   
>  static ssize_t ade7753_read_8bit(struct device *dev, 
> -                struct device_attribute *attr, 
> -                char *buf) 
> +                                 struct device_attribute *attr, char 
> *buf) 
>  { 
>          int ret; 
>          u8 val; 
> @@ -149,8 +144,7 @@ static ssize_t ade7753_read_8bit(struct device *dev, 
>  } 
>   
>  static ssize_t ade7753_read_16bit(struct device *dev, 
> -                struct device_attribute *attr, 
> -                char *buf) 
> +                                  struct device_attribute *attr, char 
> *buf) 
>  { 
>          int ret; 
>          u16 val; 
> @@ -164,8 +158,7 @@ static ssize_t ade7753_read_16bit(struct device *dev, 
>  } 
>   
>  static ssize_t ade7753_read_24bit(struct device *dev, 
> -                struct device_attribute *attr, 
> -                char *buf) 
> +                                  struct device_attribute *attr, char 
> *buf) 
>  { 
>          int ret; 
>          u32 val; 
> @@ -179,9 +172,8 @@ static ssize_t ade7753_read_24bit(struct device *dev, 
>  } 
>   
>  static ssize_t ade7753_write_8bit(struct device *dev, 
> -                struct device_attribute *attr, 
> -                const char *buf, 
> -                size_t len) 
> +                                  struct device_attribute *attr, 
> +                                  const char *buf, size_t len) 
>  { 
>          struct iio_dev_attr *this_attr = to_iio_dev_attr(attr); 
>          int ret; 
> @@ -197,9 +189,8 @@ error_ret: 
>  } 
>   
>  static ssize_t ade7753_write_16bit(struct device *dev, 
> -                struct device_attribute *attr, 
> -                const char *buf, 
> -                size_t len) 
> +                                   struct device_attribute *attr, 
> +                                   const char *buf, size_t len) 
>  { 
>          struct iio_dev_attr *this_attr = to_iio_dev_attr(attr); 
>          int ret; 
> @@ -384,8 +375,7 @@ err_ret: 
>  } 
>   
>  static ssize_t ade7753_read_frequency(struct device *dev, 
> -                struct device_attribute *attr, 
> -                char *buf) 
> +                                      struct device_attribute *attr, char 
> *buf) 
>  { 
>          int ret; 
>          u16 t; 
> @@ -402,9 +392,8 @@ static ssize_t ade7753_read_frequency(struct device 
> *dev, 
>  } 
>   
>  static ssize_t ade7753_write_frequency(struct device *dev, 
> -                struct device_attribute *attr, 
> -                const char *buf, 
> -                size_t len) 
> +                                       struct device_attribute *attr, 
> +                                       const char *buf, size_t len) 
>  { 
>          struct iio_dev *indio_dev = dev_to_iio_dev(dev); 
>          struct ade7753_state *st = iio_priv(indio_dev); 
> -- 
> 2.7.4 
>
>
------=_Part_144_1829555664.1474276836301
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">Hello!<br><br>Thank you for your responses. I will keep th=
em in mind.<br><br><br>On Monday, 19 September 2016 00:01:00 UTC+3, Georgia=
na Chelu  wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0;margin=
-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">This patch fix=
es the following <a href=3D"http://checkpatch.pl" target=3D"_blank" rel=3D"=
nofollow" onmousedown=3D"this.href=3D&#39;http://www.google.com/url?q\x3dht=
tp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x26usg\x3dAFQjCNGoRgUgHq29=
dhmk72L974NI3_mFug&#39;;return true;" onclick=3D"this.href=3D&#39;http://ww=
w.google.com/url?q\x3dhttp%3A%2F%2Fcheckpatch.pl\x26sa\x3dD\x26sntz\x3d1\x2=
6usg\x3dAFQjCNGoRgUgHq29dhmk72L974NI3_mFug&#39;;return true;">checkpatch.pl=
</a> check:
<br>CHECK: Alignment should match open parenthesis
<br>
<br>Signed-off-by: Georgiana Rodica Chelu &lt;<a href=3D"mailto:georgiana.c=
helu93@gmail.com" target=3D"_blank" rel=3D"nofollow" onmousedown=3D"this.hr=
ef=3D&#39;mailto:georgiana.chelu93@gmail.com&#39;;return true;" onclick=3D"=
this.href=3D&#39;mailto:georgiana.chelu93@gmail.com&#39;;return true;">geor=
giana.chelu93@gmail.com</a>&gt;
<br>---
<br>=C2=A0drivers/staging/iio/meter/<wbr>ade7753.c | 43 ++++++++++++++-----=
-----------<wbr>-------
<br>=C2=A01 file changed, 16 insertions(+), 27 deletions(-)
<br>
<br>diff --git a/drivers/staging/iio/meter/<wbr>ade7753.c b/drivers/staging=
/iio/meter/<wbr>ade7753.c
<br>index 4b5f05f..e3f6deb 100644
<br>--- a/drivers/staging/iio/meter/<wbr>ade7753.c
<br>+++ b/drivers/staging/iio/meter/<wbr>ade7753.c
<br>@@ -42,8 +42,7 @@ static int ade7753_spi_write_reg_8(struct device *dev=
,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int ade7753_spi_write_reg_16(<wbr>struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 reg_address,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 value)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0u8 reg_a=
ddress, u16 value)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev *i=
ndio_dev =3D dev_to_iio_dev(dev);
<br>@@ -60,8 +59,7 @@ static int ade7753_spi_write_reg_16(<wbr>struct devic=
e *dev,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int ade7753_spi_read_reg_8(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 reg_address,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 *val)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0u8 reg_address,=
 u8 *val)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev *i=
ndio_dev =3D dev_to_iio_dev(dev);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ade7753_st=
ate *st =3D iio_priv(indio_dev);
<br>@@ -70,7 +68,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D spi_w8r8(=
st-&gt;us, ADE7753_READ_REG(reg_address))<wbr>;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret &lt; 0) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(&amp;st-&gt;<wbr>us-&gt;dev, &quot=
;problem when reading 8 bit register 0x%02X&quot;,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0reg_address);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
reg_<wbr>address);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*val =3D ret;
<br>@@ -79,8 +77,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int ade7753_spi_read_reg_16(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 reg_address,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 *val)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 u8 reg_address=
, u16 *val)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev *i=
ndio_dev =3D dev_to_iio_dev(dev);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ade7753_st=
ate *st =3D iio_priv(indio_dev);
<br>@@ -99,8 +96,7 @@ static int ade7753_spi_read_reg_16(struct device *dev=
,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static int ade7753_spi_read_reg_24(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 reg_address,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 *val)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 u8 reg_address=
, u32 *val)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev *i=
ndio_dev =3D dev_to_iio_dev(dev);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ade7753_st=
ate *st =3D iio_priv(indio_dev);
<br>@@ -123,7 +119,7 @@ static int ade7753_spi_read_reg_24(struct device *d=
ev,
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ret =3D spi_sync_=
transfer(st-&gt;us, xfers, ARRAY_SIZE(xfers));
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (ret) {
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dev_err(&amp;st-&gt;<wbr>us-&gt;dev, &quot=
;problem when reading 24 bit register 0x%02X&quot;,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0reg_address);
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
reg_<wbr>address);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0goto error_ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*val =3D (st-&gt;=
rx[0] &lt;&lt; 16) | (st-&gt;rx[1] &lt;&lt; 8) | st-&gt;rx[2];
<br>@@ -134,8 +130,7 @@ error_ret:
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_read_8bit(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0char *buf)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 struct device_attribu=
te *attr, char *buf)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u8 val;
<br>@@ -149,8 +144,7 @@ static ssize_t ade7753_read_8bit(struct device *dev=
,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_read_16bit(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0char *buf)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0struct device_a=
ttribute *attr, char *buf)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 val;
<br>@@ -164,8 +158,7 @@ static ssize_t ade7753_read_16bit(struct device *de=
v,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_read_24bit(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0char *buf)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0struct device_a=
ttribute *attr, char *buf)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u32 val;
<br>@@ -179,9 +172,8 @@ static ssize_t ade7753_read_24bit(struct device *de=
v,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_write_8bit(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0const char *buf,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0size_t len)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0struct device_a=
ttribute *attr,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0const char *buf=
, size_t len)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev_at=
tr *this_attr =3D to_iio_dev_attr(attr);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>@@ -197,9 +189,8 @@ error_ret:
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_write_16bit(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0const char *buf,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0size_t len)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 struct device_=
attribute *attr,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 const char *bu=
f, size_t len)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev_at=
tr *this_attr =3D to_iio_dev_attr(attr);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>@@ -384,8 +375,7 @@ err_ret:
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_read_frequency(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0char *buf)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0s=
truct device_attribute *attr, char *buf)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0int ret;
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0u16 t;
<br>@@ -402,9 +392,8 @@ static ssize_t ade7753_read_frequency(struct device=
 *dev,
<br>=C2=A0}
<br>=C2=A0
<br>=C2=A0static ssize_t ade7753_write_frequency(struct device *dev,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0struct device_attribute *attr,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0const char *buf,
<br>-=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0size_t len)
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
struct device_attribute *attr,
<br>+=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 =
const char *buf, size_t len)
<br>=C2=A0{
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct iio_dev *i=
ndio_dev =3D dev_to_iio_dev(dev);
<br>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ade7753_st=
ate *st =3D iio_priv(indio_dev);
<br>--=20
<br>2.7.4
<br>
<br></blockquote></div>
------=_Part_144_1829555664.1474276836301--

------=_Part_143_1227435407.1474276836301--

