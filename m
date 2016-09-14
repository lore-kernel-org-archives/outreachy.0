X-GM-THRID: 6329987466337976320
X-Received: by 10.36.253.202 with SMTP id m193mr3026788ith.11.1473870619722;
        Wed, 14 Sep 2016 09:30:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.46.169 with SMTP id u41ls515698iou.49.gmail; Wed, 14 Sep
 2016 09:30:19 -0700 (PDT)
X-Received: by 10.107.12.71 with SMTP id w68mr2279666ioi.0.1473870619179;
        Wed, 14 Sep 2016 09:30:19 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x244.google.com (mail-pa0-x244.google.com. [2607:f8b0:400e:c03::244])
        by gmr-mx.google.com with ESMTPS id si10si1539321pab.1.2016.09.14.09.30.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 09:30:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) client-ip=2607:f8b0:400e:c03::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x244.google.com with SMTP id pp5so949233pac.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 09:30:19 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=u7v3xGj0AyPkhINBui/rL/yoHFtuACKmmoQI6wCrm0I=;
        b=jOS+6C4M6rr2bSSDGiCHTj05Mtd+0ij5VQTf37M6pwi6dn08vjDJw0itGkKsvvTdG6
         SwuBr4ed9Mh5CsqYFCyeJA6NCFXm/NhB4BgJOwYY6Kae0WGzERbCF2a4Pt3tBk+OmGbP
         h4IzjCrIZ6nwGjZbeAOXZRcBHshDqW8IxOpul4zfY6WBi53mXu8mMArDgku5589o5feO
         yoH+Pkszi1bAjxUth2I89BQ66eqDzmnCSKT4oQlB89asVvIvi0etPRCrvQ1rrqFDPe/j
         SptArwIf/tphTIt1lC9dYpeeSvVICZ/vWSBAM6QJuJCM4D5hyZrJ58jW0Z5Fp8zUlaPC
         fgEg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=u7v3xGj0AyPkhINBui/rL/yoHFtuACKmmoQI6wCrm0I=;
        b=eHLEm3AZyEgZxCpNKITxl1i92F/1BCClUJ/OR1BoF5sDqk0msLJrN/CXSBWfmKff28
         RBMi9b4hqQXtvZOizS/1rPPoP8iz0MBk2ofFWxdl5B4VmzN6D6ZD2Bi8yfbfiYwQZ1Ss
         5nSD09dzRz5ryK/WVw7qY2NgYYgQWlfwL5NgKn50B3l6wwmfCKmjZBYl43K+fcJDJlvE
         gExz2biJFGDxn+bu+95PTWjuxb9bFn5VyEMQeR/ELArWIOPgQd09SqQ+rnLjcLusZ2l1
         PRWeM4mRRy5v11NLiRxRKj9Vymhn7rSPuXtZ7E0ghtr1eAZ2lv5EU3R4+8UMSW6LkUSx
         9mNw==
X-Gm-Message-State: AE9vXwOcCR00sHWtVHzZ8ZDO0za56so6PiMKb3G8ehn56V6CqBJDfM1StyNBXH2W7eAPpw==
X-Received: by 10.66.123.79 with SMTP id ly15mr6113779pab.157.1473870618859;
        Wed, 14 Sep 2016 09:30:18 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id p73sm28248433pfj.35.2016.09.14.09.30.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Sep 2016 09:30:17 -0700 (PDT)
Date: Wed, 14 Sep 2016 09:30:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Katie Dunne <kdunne@mail.ccsf.edu>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	michael.hennerich@analog.com, jic23@kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: iio: ad5933: align arguments
 on new line with open parenthesis
Message-ID: <20160914163013.GA2299@d830.WORKGROUP>
References: <20160914010414.GA441@katie-Inspiron-5748>
 <20160914051142.GA7205@d830.WORKGROUP>
 <20160914141041.GA2039@katie-Inspiron-5748>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160914141041.GA2039@katie-Inspiron-5748>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 14, 2016 at 07:10:42AM -0700, Katie Dunne wrote:
> On Tue, Sep 13, 2016 at 10:11:43PM -0700, Alison Schofield wrote:
> > On Tue, Sep 13, 2016 at 06:04:14PM -0700, Katie Dunne wrote:
> > > knaack.h@gmx.de, pmeerw@pmeerw.net 
> > > Bcc: 
> > > Subject: [PATCH] staging: iio: ad5933: align arguments on new line with open parenthesis
> > > Reply-To: 
> > 
> > Hi Katie,
> > Something odd happened just above here...with the cc list and subject
> > repeating. 
> 
> Thanks Alison. Something weird happened with mutt where the subject
> disappeared so I had type it twice. I will try to figure out what went
> wrong.
> 
> > It looks like some of these can be pulled into less lines.  If it fits
> > within 80 chars, it's fine on one line.  See below.
> 
> I wasn't sure if I could do this in the same patch, but that makes
> sense. 
> 
> I will send a v2.

Katie,
Your comment is good, because that is a question we keep asking: should
something be a separate patch?  In this case, as you go to realign the
function arguments and as a side effect remove some line wrap, it's all
part of the realignment.  
alisons

> 
> Katie
> 
> > 
> > > 
> > > Issue found by checkpatch: "Alignment should match open parenthesis"
> > > 
> > > Signed-off-by: Katie Dunne <kdunne@mail.ccsf.edu>
> > > ---
> > >  drivers/staging/iio/impedance-analyzer/ad5933.c | 34 ++++++++++++-------------
> > >  1 file changed, 17 insertions(+), 17 deletions(-)
> > > 
> > > diff --git a/drivers/staging/iio/impedance-analyzer/ad5933.c b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > > index 24c348d..2307b4d 100644
> > > --- a/drivers/staging/iio/impedance-analyzer/ad5933.c
> > > +++ b/drivers/staging/iio/impedance-analyzer/ad5933.c
> > > @@ -157,7 +157,7 @@ static const struct iio_chan_spec ad5933_channels[] = {
> > >  };
> > >  
> > >  static int ad5933_i2c_write(struct i2c_client *client,
> > > -			      u8 reg, u8 len, u8 *data)
> > > +			    u8 reg, u8 len, u8 *data)
> > 
> > think this one fits on one line....
> > static int ad5933_i2c_read(struct i2c_client *client, u8 reg, u8 len, u8 *data)
> > some others may do same or at least pull into less lines.
> > 
> > 
> > >  {
> > >  	int ret;
> > >  
> > > @@ -172,7 +172,7 @@ static int ad5933_i2c_write(struct i2c_client *client,
> > >  }
> > >  
> > >  static int ad5933_i2c_read(struct i2c_client *client,
> > > -			      u8 reg, u8 len, u8 *data)
> > > +			   u8 reg, u8 len, u8 *data)
> > >  {
> > >  	int ret;
> > >  
> > > @@ -269,7 +269,7 @@ static int ad5933_setup(struct ad5933_state *st)
> > >  	dat = cpu_to_be16(st->settling_cycles);
> > >  
> > >  	ret = ad5933_i2c_write(st->client,
> > > -			AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> > > +			       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> > >  	if (ret < 0)
> > >  		return ret;
> > >  
> > > @@ -294,8 +294,8 @@ static void ad5933_calc_out_ranges(struct ad5933_state *st)
> > >   */
> > >  
> > >  static ssize_t ad5933_show_frequency(struct device *dev,
> > > -					struct device_attribute *attr,
> > > -					char *buf)
> > > +				     struct device_attribute *attr,
> > > +				     char *buf)
> > >  {
> > >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > >  	struct ad5933_state *st = iio_priv(indio_dev);
> > > @@ -322,9 +322,9 @@ static ssize_t ad5933_show_frequency(struct device *dev,
> > >  }
> > >  
> > >  static ssize_t ad5933_store_frequency(struct device *dev,
> > > -					 struct device_attribute *attr,
> > > -					 const char *buf,
> > > -					 size_t len)
> > > +				      struct device_attribute *attr,
> > > +				      const char *buf,
> > > +				      size_t len)
> > >  {
> > >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > >  	struct ad5933_state *st = iio_priv(indio_dev);
> > > @@ -357,8 +357,8 @@ static IIO_DEVICE_ATTR(out_voltage0_freq_increment, S_IRUGO | S_IWUSR,
> > >  			AD5933_REG_FREQ_INC);
> > >  
> > >  static ssize_t ad5933_show(struct device *dev,
> > > -					struct device_attribute *attr,
> > > -					char *buf)
> > > +			   struct device_attribute *attr,
> > > +			   char *buf)
> > >  {
> > >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > >  	struct ad5933_state *st = iio_priv(indio_dev);
> > > @@ -399,9 +399,9 @@ static ssize_t ad5933_show(struct device *dev,
> > >  }
> > >  
> > >  static ssize_t ad5933_store(struct device *dev,
> > > -					 struct device_attribute *attr,
> > > -					 const char *buf,
> > > -					 size_t len)
> > > +			    struct device_attribute *attr,
> > > +			    const char *buf,
> > > +			    size_t len)
> > >  {
> > >  	struct iio_dev *indio_dev = dev_to_iio_dev(dev);
> > >  	struct ad5933_state *st = iio_priv(indio_dev);
> > > @@ -451,7 +451,7 @@ static ssize_t ad5933_store(struct device *dev,
> > >  
> > >  		dat = cpu_to_be16(val);
> > >  		ret = ad5933_i2c_write(st->client,
> > > -				AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> > > +				       AD5933_REG_SETTLING_CYCLES, 2, (u8 *)&dat);
> > >  		break;
> > >  	case AD5933_FREQ_POINTS:
> > >  		val = clamp(val, (u16)0, (u16)511);
> > > @@ -545,8 +545,8 @@ static int ad5933_read_raw(struct iio_dev *indio_dev,
> > >  			goto out;
> > >  
> > >  		ret = ad5933_i2c_read(st->client,
> > > -				AD5933_REG_TEMP_DATA, 2,
> > > -				(u8 *)&dat);
> > > +				      AD5933_REG_TEMP_DATA, 2,
> > > +				      (u8 *)&dat);
> > >  		if (ret < 0)
> > >  			goto out;
> > >  		mutex_unlock(&indio_dev->mlock);
> > > @@ -705,7 +705,7 @@ static void ad5933_work(struct work_struct *work)
> > >  }
> > >  
> > >  static int ad5933_probe(struct i2c_client *client,
> > > -				   const struct i2c_device_id *id)
> > > +			const struct i2c_device_id *id)
> > >  {
> > >  	int ret, voltage_uv = 0;
> > >  	struct ad5933_platform_data *pdata = dev_get_platdata(&client->dev);
> > > -- 
> > > 2.7.4
> > > 
> > > -- 
> > > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160914010414.GA441%40katie-Inspiron-5748.
> > > For more options, visit https://groups.google.com/d/optout.

