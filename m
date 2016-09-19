X-GM-THRID: 6331780203259363328
X-Received: by 10.28.168.12 with SMTP id r12mr372693wme.12.1474263175241;
        Sun, 18 Sep 2016 22:32:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.74.78 with SMTP id x75ls1622693wma.4.gmail; Sun, 18 Sep
 2016 22:32:54 -0700 (PDT)
X-Received: by 10.28.55.205 with SMTP id e196mr196320wma.0.1474263174691;
        Sun, 18 Sep 2016 22:32:54 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id s6si478189wmb.1.2016.09.18.22.32.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 18 Sep 2016 22:32:54 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,361,1470693600"; 
   d="scan'208";a="193852626"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 19 Sep 2016 07:32:53 +0200
Date: Mon, 19 Sep 2016 07:32:52 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Alison Schofield <amsfield22@gmail.com>
cc: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: meter: Match alignment
 with open parenthesis
In-Reply-To: <20160919052122.GA2699@d830.WORKGROUP>
Message-ID: <alpine.DEB.2.10.1609190732010.4025@hadrien>
References: <20160918210056.GA6241@fireworks> <20160919052122.GA2699@d830.WORKGROUP>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sun, 18 Sep 2016, Alison Schofield wrote:

> On Mon, Sep 19, 2016 at 12:00:56AM +0300, Georgiana Rodica Chelu wrote:
> > This patch fixes the following checkpatch.pl check:
> > CHECK: Alignment should match open parenthesis
> >
> > Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
>
> Hi Georgiana,
> Nice patch.  I think there's a patch for this already in the IIO queue,
> so probably won't get taken.  In IIO, the driver name is typically
> mentioned in the Subject line - as in:
> staging: iio: meter: ade5933: ....

Always check using git log --oneline for the affected file what others
have done for the subject line.  While iio may follow this strategy, other
subsystems have other preferences.

julia

> alisons
>
> > ---
> >  drivers/staging/iio/meter/ade7753.c | 43 ++++++++++++++-----------------------
> >  1 file changed, 16 insertions(+), 27 deletions(-)
> >
> > diff --git a/drivers/staging/iio/meter/ade7753.c b/drivers/staging/iio/meter/ade7753.c
> > index 4b5f05f..e3f6deb 100644
> > --- a/drivers/staging/iio/meter/ade7753.c
> > +++ b/drivers/staging/iio/meter/ade7753.c
> > @@ -42,8 +42,7 @@ static int ade7753_spi_write_reg_8(struct device *dev,
> >  }
> >
> >  static int ade7753_spi_write_reg_16(struct device *dev,
> > -		u8 reg_address,
> > -		u16 value)
> > +				    u8 reg_address, u16 value)
> >  {
> >  	int ret;
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > @@ -60,8 +59,7 @@ static int ade7753_spi_write_reg_16(struct device *dev,
> >  }
> >
> >  static int ade7753_spi_read_reg_8(struct device *dev,
> > -		u8 reg_address,
> > -		u8 *val)
> > +				  u8 reg_address, u8 *val)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ade7753_state *st = iio_priv(indio_dev);
> > @@ -70,7 +68,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
> >  	ret = spi_w8r8(st->us, ADE7753_READ_REG(reg_address));
> >  	if (ret < 0) {
> >  		dev_err(&st->us->dev, "problem when reading 8 bit register 0x%02X",
> > -				reg_address);
> > +			reg_address);
> >  		return ret;
> >  	}
> >  	*val = ret;
> > @@ -79,8 +77,7 @@ static int ade7753_spi_read_reg_8(struct device *dev,
> >  }
> >
> >  static int ade7753_spi_read_reg_16(struct device *dev,
> > -		u8 reg_address,
> > -		u16 *val)
> > +				   u8 reg_address, u16 *val)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ade7753_state *st = iio_priv(indio_dev);
> > @@ -99,8 +96,7 @@ static int ade7753_spi_read_reg_16(struct device *dev,
> >  }
> >
> >  static int ade7753_spi_read_reg_24(struct device *dev,
> > -		u8 reg_address,
> > -		u32 *val)
> > +				   u8 reg_address, u32 *val)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ade7753_state *st = iio_priv(indio_dev);
> > @@ -123,7 +119,7 @@ static int ade7753_spi_read_reg_24(struct device *dev,
> >  	ret = spi_sync_transfer(st->us, xfers, ARRAY_SIZE(xfers));
> >  	if (ret) {
> >  		dev_err(&st->us->dev, "problem when reading 24 bit register 0x%02X",
> > -				reg_address);
> > +			reg_address);
> >  		goto error_ret;
> >  	}
> >  	*val = (st->rx[0] << 16) | (st->rx[1] << 8) | st->rx[2];
> > @@ -134,8 +130,7 @@ error_ret:
> >  }
> >
> >  static ssize_t ade7753_read_8bit(struct device *dev,
> > -		struct device_attribute *attr,
> > -		char *buf)
> > +				 struct device_attribute *attr, char *buf)
> >  {
> >  	int ret;
> >  	u8 val;
> > @@ -149,8 +144,7 @@ static ssize_t ade7753_read_8bit(struct device *dev,
> >  }
> >
> >  static ssize_t ade7753_read_16bit(struct device *dev,
> > -		struct device_attribute *attr,
> > -		char *buf)
> > +				  struct device_attribute *attr, char *buf)
> >  {
> >  	int ret;
> >  	u16 val;
> > @@ -164,8 +158,7 @@ static ssize_t ade7753_read_16bit(struct device *dev,
> >  }
> >
> >  static ssize_t ade7753_read_24bit(struct device *dev,
> > -		struct device_attribute *attr,
> > -		char *buf)
> > +				  struct device_attribute *attr, char *buf)
> >  {
> >  	int ret;
> >  	u32 val;
> > @@ -179,9 +172,8 @@ static ssize_t ade7753_read_24bit(struct device *dev,
> >  }
> >
> >  static ssize_t ade7753_write_8bit(struct device *dev,
> > -		struct device_attribute *attr,
> > -		const char *buf,
> > -		size_t len)
> > +				  struct device_attribute *attr,
> > +				  const char *buf, size_t len)
> >  {
> >  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
> >  	int ret;
> > @@ -197,9 +189,8 @@ error_ret:
> >  }
> >
> >  static ssize_t ade7753_write_16bit(struct device *dev,
> > -		struct device_attribute *attr,
> > -		const char *buf,
> > -		size_t len)
> > +				   struct device_attribute *attr,
> > +				   const char *buf, size_t len)
> >  {
> >  	struct iio_dev_attr *this_attr = to_iio_dev_attr(attr);
> >  	int ret;
> > @@ -384,8 +375,7 @@ err_ret:
> >  }
> >
> >  static ssize_t ade7753_read_frequency(struct device *dev,
> > -		struct device_attribute *attr,
> > -		char *buf)
> > +				      struct device_attribute *attr, char *buf)
> >  {
> >  	int ret;
> >  	u16 t;
> > @@ -402,9 +392,8 @@ static ssize_t ade7753_read_frequency(struct device *dev,
> >  }
> >
> >  static ssize_t ade7753_write_frequency(struct device *dev,
> > -		struct device_attribute *attr,
> > -		const char *buf,
> > -		size_t len)
> > +				       struct device_attribute *attr,
> > +				       const char *buf, size_t len)
> >  {
> >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> >  	struct ade7753_state *st = iio_priv(indio_dev);
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160918210056.GA6241%40fireworks.
> > For more options, visit https://groups.google.com/d/optout.
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160919052122.GA2699%40d830.WORKGROUP.
> For more options, visit https://groups.google.com/d/optout.
>

