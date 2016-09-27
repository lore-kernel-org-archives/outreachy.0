X-GM-THRID: 6335076166751223808
X-Received: by 10.98.93.4 with SMTP id r4mr7641316pfb.38.1475007688971;
        Tue, 27 Sep 2016 13:21:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.34.233 with SMTP id y96ls3208954ota.3.gmail; Tue, 27 Sep
 2016 13:21:28 -0700 (PDT)
X-Received: by 10.157.18.211 with SMTP id g77mr2585933otg.43.1475007688522;
        Tue, 27 Sep 2016 13:21:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si1023146pfw.1.2016.09.27.13.21.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Sep 2016 13:21:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so1161512pfy.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Sep 2016 13:21:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=2yOrC1LgxseSReeE1V6ghiHva40OzD/pQ5LAV7HyfHM=;
        b=lMDNzlQ/ry3+GhROvOE9zFaalk/GukjXWtsoUoaNLRi7hn2TNku1kg612ZHCOk/b8p
         rneXwz/PCQI5P1YXMqPCUDfRXsfbgZ0UWYf6oTGb6uALTqDirS5LCwpGmEOpPbdNZF+V
         k8dqOUmDPf3nB8Irqi7dKjbbiwJUMKZB1BfmL+tFU2b9w7vb91INeKS5L6+rNL670Meb
         Q0M1LWQxy69LP6b6ZSsl9wg8IrNietjzG6/hMHuRzAUlJ5ZlIKPWjifiwxJ4DuEN5woY
         b8wc+xueLo0CucmYzmEbfeTG8C8QlXpGpR8LUjyZTlxWmkd/QrkZ3gqSOCfjO7NAl8WQ
         i48g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=2yOrC1LgxseSReeE1V6ghiHva40OzD/pQ5LAV7HyfHM=;
        b=K7qPmHerRI0foaNsyXqaEhUlP5BbciTly2bcaHg6h6bCDYRj9YqkdTerSsjkr4aOfU
         60S4KKrJcmMSV7/Y7um1zVYAIp4huQEcxmEMN/XcALeH870Ai5BpUMLnIcI2kkaacAti
         uaw4IlMfqqk7WU/nvO5CfL+zzlalhN7gJNXJaHSl28gqI56myqqnQvhYzf7rt5hVwGm4
         u3yxKMtrB+G84wTbFR4BGRsvhM7s3scdYY/2FNS4WnR/cUdwZgINKNBzIdmk+fDpQhQn
         DZufCFaE+MpaiqziiDYk/sTqC3b6Yx80zTSXZYV1C2cnqRmQ9VqXT0ue4QajCscXOBxr
         25kQ==
X-Gm-Message-State: AE9vXwNzirsEjV1Pc9B78bZ3VMYYjNOmTMTt4QVMTEZybxT7kuiwImUWJep5CUaYIYBDFQ==
X-Received: by 10.98.31.133 with SMTP id l5mr50862831pfj.178.1475007688324;
        Tue, 27 Sep 2016 13:21:28 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id r7sm6893332pfk.49.2016.09.27.13.21.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 27 Sep 2016 13:21:28 -0700 (PDT)
Date: Tue, 27 Sep 2016 13:21:19 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Matt Ranostay <mranostay@gmail.com>
Cc: sayli karnik <karniksayli1995@gmail.com>,
	outreachy-kernel@googlegroups.com,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Lars-Peter Clausen <lars@metafoo.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Subject: Re: [PATCH v3] iio: temperature: maxim_thermocouple: Replace
 unsigned int with __be16/__be32 to fix endianness warnings
Message-ID: <20160927202119.GB20525@d830.WORKGROUP>
References: <20160927181039.GA16272@sayli-HP-15-Notebook-PC>
 <CAKzfze8K65dar8LPkQscSy=ESU7M-P=PY3-VsFS4P_ufvz4fPg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKzfze8K65dar8LPkQscSy=ESU7M-P=PY3-VsFS4P_ufvz4fPg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Sep 27, 2016 at 01:03:00PM -0700, Matt Ranostay wrote:
> On Tue, Sep 27, 2016 at 11:10 AM, sayli karnik
> <karniksayli1995@gmail.com> wrote:
> > Fix following endianness warnings using sparse:
> > warning: cast to restricted __be16
> > warning: cast to restricted __be32
> > Use __be16 type for incoming read data when storage_bytes equals 2 and
> > __be32 when storage_bytes equals 4.
> > Also, the patch fixes the following bug:
> > Variable 'buf' which is an unsigned int (32 bits) points to a location where
> > only 2 bytes of data are placed during spi_read(). These 2 bytes go in the
> > upper bytes. be16_to_cpu() casts buf to 16 bits. When storage_bytes equals 2,
> > (for thermocouple chip-MAX6675) this will work on Little Endian systems but
> > will give invalid data on Big Endian systems. The patch fixes this bug existing
> > on Big Endian systems for chip MAX6675.
> > Additionally, the patch removes space after a type cast as suggested by
> > checkpatch.pl.
> 
> See comments inline.
> 
> >
> > Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> > Fixes: 1f25ca11d84a ("iio: temperature: add support for Maxim thermocouple chips")
> 
> 
> Please CC the linux-iio mailing list in the future :)
> 
> > ---
> > Changes in v3:
> > Updated the commit message
> > Updated the changelog to include explanation to the bug fix
> > Fixed the checkpatch issue: CHECK: No space is necessary after a cast
> > Added the fixes tag
> >
> >  drivers/iio/temperature/maxim_thermocouple.c | 16 +++++++++-------
> >  1 file changed, 9 insertions(+), 7 deletions(-)
> >
> > diff --git a/drivers/iio/temperature/maxim_thermocouple.c b/drivers/iio/temperature/maxim_thermocouple.c
> > index 39dd202..01cad6e 100644
> > --- a/drivers/iio/temperature/maxim_thermocouple.c
> > +++ b/drivers/iio/temperature/maxim_thermocouple.c
> > @@ -123,22 +123,24 @@ static int maxim_thermocouple_read(struct maxim_thermocouple_data *data,
> >  {
> >         unsigned int storage_bytes = data->chip->read_size;
> >         unsigned int shift = chan->scan_type.shift + (chan->address * 8);
> > -       unsigned int buf;
> > +       __be16 buf1;
> > +       __be32 buf2;
> >         int ret;
> >
> > -       ret = spi_read(data->spi, (void *) &buf, storage_bytes);
> > -       if (ret)
> > -               return ret;
> > -
> >         switch (storage_bytes) {
> >         case 2:
> > -               *val = be16_to_cpu(buf);
> > +               ret = spi_read(data->spi, (void *)&buf1, storage_bytes);
> > +               *val = be16_to_cpu(buf1);
> 
> Meh don't really like having buf1, and buf2 esp since they only used
> in one branch of the switch statement. And waste 2-4 byte of stack :).
> 
> I recommend something like:
> 
> case 2: {
>         __be16 buf;
>         ret = spi_read(data->spi, (void *)&buf1, storage_bytes);
>         *val = be16_to_cpu(buf1);
>         break;
> }
> case 4:
> ....
> 
> 
> Or one could also change "unsigned int buf" to "__be32 buf"
> And just do the following to fix the big endian system issue:
> 
> *val = be32_to_cpu(buf) >> 16;
> 
Thanks Matt!  (good reason for right cc lists)

Sayli -
What do you think of Matt's second option?  It types
the data as __be32 as it comes into the system (although the wrong
size) so that's better endian behavior.  The be32_to_cpu() is now done
on the correct type, so sparse should be happy.  I'll suggest a short
comment alongside that shift to say you are shifting to align a __be16
alisons

> >                 break;
> >         case 4:
> > -               *val = be32_to_cpu(buf);
> > +               ret = spi_read(data->spi, (void *)&buf2, storage_bytes);
> > +               *val = be32_to_cpu(buf2);
> >                 break;
> >         }
> >
> > +       if (ret)
> > +               return ret;
> > +
> >         /* check to be sure this is a valid reading */
> >         if (*val & data->chip->status_bit)
> >                 return -EINVAL;
> > --
> > 2.7.4
> >
> --
> To unsubscribe from this list: send the line "unsubscribe linux-iio" in
> the body of a message to majordomo@vger.kernel.org
> More majordomo info at  http://vger.kernel.org/majordomo-info.html

