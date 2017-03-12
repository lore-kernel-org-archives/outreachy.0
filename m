X-GM-THRID: 6396325489451991040
X-Received: by 10.99.111.11 with SMTP id k11mr13287794pgc.38.1489292862627;
        Sat, 11 Mar 2017 20:27:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.35.193 with SMTP id j184ls3450643ioj.1.gmail; Sat, 11 Mar
 2017 20:27:41 -0800 (PST)
X-Received: by 10.99.6.212 with SMTP id 203mr13211034pgg.166.1489292861652;
        Sat, 11 Mar 2017 20:27:41 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from mail-pg0-x243.google.com (mail-pg0-x243.google.com. [2607:f8b0:400e:c05::243])
        by gmr-mx.google.com with ESMTPS id a3si2541329pfb.2.2017.03.11.20.27.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 20:27:41 -0800 (PST)
Received-SPF: pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) client-ip=2607:f8b0:400e:c05::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aishpant@gmail.com designates 2607:f8b0:400e:c05::243 as permitted sender) smtp.mailfrom=aishpant@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x243.google.com with SMTP id 25so14598904pgy.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 20:27:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SQlUEsitTOFonhjtYFxUECo8MaiHdel3fjTukjVISkc=;
        b=h5nhaIoC59Lm8kmKzkM46jGJm094pz20xRqesD79nC7wa6/PN1/b9N2MYXSE3DjStR
         d2+eO+1gM02F0TM+0AS3mHtCdD/8H0Bsrb1jzdqmi85dv/IY/ksL5T17kf0//dDJ0Xnu
         RwmAN9lb7I27qT8MKwgdaaFpm+PEHzVfz3JBEuobotx78qLpT7/RkJP9PuBHTBgGLlHz
         ybD4NSLPxXSYPmwRVr2OptWQGV7Gy5RxUMlD4lueujXQ47wcTUn7tIUjt9/0ky62ZUc3
         +VjnmJ0ZND7QsVMfhO+NXyIyeJlfKNNgsa3RByZHMoKkNIO2hKgUr3wbcF+7fUj+004d
         R5ww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SQlUEsitTOFonhjtYFxUECo8MaiHdel3fjTukjVISkc=;
        b=e5jjHZJMFH+KkwPB8iV+SXDqTBSi5JGGYqs/D0pPMAgenIGTIZFQEh/tNUp4y7PXO9
         C1/gmaPj7RxWHSYbqjR5VilJGqSPQYXRKXGpcrDsUXTR3czMD59gxIH4qzXyRHFJ6e8F
         z+4yNGcQMIB6fWiQYubhD/az4Qo/fwoekMRxYJP9n1BDovZ6pJvBON+84Njgh7CIGu+P
         7yGmG3rbBV8kAHgSFM0gUyF1RvYSNvcg/0z1Ub4iJqX/Lon9oQPWaKd/EkjY+iaOeNhV
         mLQPPLrHqRiBVvyLz5baeZYKnLWEYQ2iK4X7CV3Msr2drP2cCi6y/JtBZXVtBxI0q7ZC
         0vMw==
X-Gm-Message-State: AMke39nH52LAxMU0l7RGuCuBrSuBlnv80Rz8fqdgxMYQp31MC4ryAGRCVs6hwVEbo5W2fg==
X-Received: by 10.99.2.139 with SMTP id 133mr29207706pgc.168.1489292861227;
        Sat, 11 Mar 2017 20:27:41 -0800 (PST)
Return-Path: <aishpant@gmail.com>
Received: from aishwarya ([61.0.218.134])
        by smtp.gmail.com with ESMTPSA id h14sm26770831pgn.41.2017.03.11.20.27.39
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 20:27:40 -0800 (PST)
Date: Sun, 12 Mar 2017 09:57:35 +0530
From: Aishwarya Pant <aishpant@gmail.com>
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [IIO Task1] Module load error
Message-ID: <20170312042735.GA3109@aishwarya>
References: <20170311192931.GA3443@aishwarya>
 <CAEnQRZDYBOhOpR7uo4sBGUuir7BVKL6Aw+etDzzrMAKT37boKQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZDYBOhOpR7uo4sBGUuir7BVKL6Aw+etDzzrMAKT37boKQ@mail.gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Mar 11, 2017 at 10:36:28PM +0200, Daniel Baluta wrote:
> On Sat, Mar 11, 2017 at 9:29 PM, Aishwarya Pant <aishpant@gmail.com> wrote:
> > Hi
> >
> > When I try to load the modules iio_dummy and iio_dummy_evgen, I see the
> > following error in dmesg:
> >
> > iio_dummy_evgen: exports duplicate symbol iio_dummy_evgen_get_irq (owned
> > by kernel)
> >
> > Looks like I've got a circular dependency, something that should have
> > been added as a module (or not at all) is built-in by default. Here is
> > the config I've got:
> >
> > #
> > # IIO dummy driver
> > #
> > CONFIG_IIO_DUMMY_EVGEN=m
> > CONFIG_IIO_SIMPLE_DUMMY=m
> > CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
> > CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> > CONFIG_IIO_CONFIGFS=y
> >
> > Any leads for where the error is popping from?
> 
> Hi,
> 
> Is that the only error related to IIO in dmesg?
> 
> Can you please post the output from:
> 
> 
> cat .config | grep IIO
# CONFIG_SENSORS_IIO_HWMON is not set
CONFIG_IIO=y
CONFIG_IIO_BUFFER=y
# CONFIG_IIO_BUFFER_CB is not set
CONFIG_IIO_KFIFO_BUF=m
CONFIG_IIO_CONFIGFS=y
CONFIG_IIO_TRIGGER=y
CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
CONFIG_IIO_SW_DEVICE=y
CONFIG_IIO_SW_TRIGGER=m
# CONFIG_IIO_ST_ACCEL_3AXIS is not set
# Hid Sensor IIO Common
CONFIG_HID_SENSOR_IIO_COMMON=y
CONFIG_HID_SENSOR_IIO_TRIGGER=y
# IIO dummy driver
CONFIG_IIO_DUMMY_EVGEN=m
CONFIG_IIO_SIMPLE_DUMMY=m
CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
# CONFIG_IIO_ST_GYRO_3AXIS is not set
# CONFIG_IIO_ST_LSM6DSX is not set
# CONFIG_IIO_ST_MAGN_3AXIS is not set
# CONFIG_IIO_HRTIMER_TRIGGER is not set
# CONFIG_IIO_INTERRUPT_TRIGGER is not set
# CONFIG_IIO_TIGHTLOOP_TRIGGER is not set
# CONFIG_IIO_SYSFS_TRIGGER is not set
# CONFIG_IIO_ST_PRESS is not set
> 
> and
> 
> dmesg | grep iio
[  217.380166] iio_dummy_evgen: exports duplicate symbol
iio_dummy_evgen_get_irq (owned by kernel)
[  228.650871] iio_dummy_evgen: exports duplicate symbol
iio_dummy_evgen_get_irq (owned by kernel)

Nothing else just iio_dummy module load error.

