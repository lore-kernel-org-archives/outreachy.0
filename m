X-GM-THRID: 6396325489451991040
X-Received: by 10.129.131.133 with SMTP id t127mr13977539ywf.171.1489340234105;
        Sun, 12 Mar 2017 10:37:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.30.168 with SMTP id n37ls12570215otn.25.gmail; Sun, 12 Mar
 2017 10:37:13 -0700 (PDT)
X-Received: by 10.157.20.196 with SMTP id r4mr13211375otr.137.1489340233788;
        Sun, 12 Mar 2017 10:37:13 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id c123si2718910pfa.4.2017.03.12.10.37.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:37:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id v190so16560031pfb.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:37:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=P2YKCx0+rag0JlPmCCUyd+F3PfETMZKPyyotxRWPT4k=;
        b=mrGSKBVrPmXdLlNVKj8cLKfx1nLIkvu1L1yPh5bvz1X+uk86AyEXZicOQ1Y8Pw33Gt
         o/F3GiG24TjLiRbNDzy5MjuoUJnt91F1927vQ+nUfy58boGR8JDIiLiD5GdFCGshczgS
         MbTTkPoW76fXb0RLy3gskwWLvqt2KqPNe9QCugXpjCz8C3hb94GhufhL8re8/PbHBb0U
         O9jRZobT88a8gAjLwspf6OE+iNl5IONZERy9zdtt/RZSZC9AnRjinWBkOZulHZO1bJyU
         wxTb9JAmDEuqtPLMMpZN/FjH0HY1dWofDXIiW8rbCuUkFmAgkp+95R68BZDEo0c26/Nt
         qmOg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=P2YKCx0+rag0JlPmCCUyd+F3PfETMZKPyyotxRWPT4k=;
        b=V6NDpaU1GTiFPNN8h14+v2fFvAvzZEHwygcOUVeaFMXNu0xBfohpRKqdpxsEJOSLre
         AVow8PSdmMK/BdlZeghSEPZ4uNcIwUWBGmB+d+3mL0vde8+7OVAZx+Sz1O/0cboCzzkx
         YRtrurGf08sXCSFDS7Mp0NcT4xurAIDzheo8MqmZ6a9dLka6dTNZf8N8JCL+3iHBbBkN
         Pk4GZRfc0p1HUKqPjHJr43fQB2Ypbvjkde9McaBR6LvCK17uNs7l7kz9fDe4y3E6+G2p
         l4t5NOjjuBCtXZO8nxeJrBz7hTbc88PNGmJ/J/4kJwgTr7DfVsdvqGKtESto4eeJCJlp
         ujsg==
X-Gm-Message-State: AMke39n40bf53NNGJYSy7Q3TWZowxyds+TL0oLIyiI0+XXIhJl8AnHEbo/oe1W4oG++YEQ==
X-Received: by 10.99.96.130 with SMTP id u124mr31978951pgb.216.1489340233485;
        Sun, 12 Mar 2017 10:37:13 -0700 (PDT)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([49.35.14.30])
        by smtp.gmail.com with ESMTPSA id w20sm658554pgc.18.2017.03.12.10.37.10
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:37:13 -0700 (PDT)
Date: Sun, 12 Mar 2017 23:07:01 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [IIO Task1] Module load error
Message-ID: <20170312173701.GA3783@aishwarya>
References: <20170311192931.GA3443@aishwarya>
 <CAEnQRZDYBOhOpR7uo4sBGUuir7BVKL6Aw+etDzzrMAKT37boKQ@mail.gmail.com>
 <20170312042735.GA3109@aishwarya>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312042735.GA3109@aishwarya>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sun, Mar 12, 2017 at 09:57:35AM +0530, Aishwarya Pant wrote:
> On Sat, Mar 11, 2017 at 10:36:28PM +0200, Daniel Baluta wrote:
> > On Sat, Mar 11, 2017 at 9:29 PM, Aishwarya Pant <aishpant@gmail.com> wrote:
> > > Hi
> > >
> > > When I try to load the modules iio_dummy and iio_dummy_evgen, I see the
> > > following error in dmesg:
> > >
> > > iio_dummy_evgen: exports duplicate symbol iio_dummy_evgen_get_irq (owned
> > > by kernel)
> > >
> > > Looks like I've got a circular dependency, something that should have
> > > been added as a module (or not at all) is built-in by default. Here is
> > > the config I've got:
> > >
> > > #
> > > # IIO dummy driver
> > > #
> > > CONFIG_IIO_DUMMY_EVGEN=m
> > > CONFIG_IIO_SIMPLE_DUMMY=m
> > > CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
> > > CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> > > CONFIG_IIO_CONFIGFS=y
> > >
> > > Any leads for where the error is popping from?
> > 
> > Hi,
> > 
> > Is that the only error related to IIO in dmesg?
> > 
> > Can you please post the output from:
> > 
> > 
> > cat .config | grep IIO
> # CONFIG_SENSORS_IIO_HWMON is not set
> CONFIG_IIO=y
> CONFIG_IIO_BUFFER=y
> # CONFIG_IIO_BUFFER_CB is not set
> CONFIG_IIO_KFIFO_BUF=m
> CONFIG_IIO_CONFIGFS=y
> CONFIG_IIO_TRIGGER=y
> CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
> CONFIG_IIO_SW_DEVICE=y
> CONFIG_IIO_SW_TRIGGER=m
> # CONFIG_IIO_ST_ACCEL_3AXIS is not set
> # Hid Sensor IIO Common
> CONFIG_HID_SENSOR_IIO_COMMON=y
> CONFIG_HID_SENSOR_IIO_TRIGGER=y
> # IIO dummy driver
> CONFIG_IIO_DUMMY_EVGEN=m
> CONFIG_IIO_SIMPLE_DUMMY=m
> CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
> CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> # CONFIG_IIO_ST_GYRO_3AXIS is not set
> # CONFIG_IIO_ST_LSM6DSX is not set
> # CONFIG_IIO_ST_MAGN_3AXIS is not set
> # CONFIG_IIO_HRTIMER_TRIGGER is not set
> # CONFIG_IIO_INTERRUPT_TRIGGER is not set
> # CONFIG_IIO_TIGHTLOOP_TRIGGER is not set
> # CONFIG_IIO_SYSFS_TRIGGER is not set
> # CONFIG_IIO_ST_PRESS is not set
> > 
> > and
> > 
> > dmesg | grep iio
> [  217.380166] iio_dummy_evgen: exports duplicate symbol
> iio_dummy_evgen_get_irq (owned by kernel)
> [  228.650871] iio_dummy_evgen: exports duplicate symbol
> iio_dummy_evgen_get_irq (owned by kernel)
> 
> Nothing else just iio_dummy module load error.


This is solved thanks. I had an issue with module dependencies.



