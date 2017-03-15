X-GM-THRID: 6396247239473233920
X-Received: by 10.157.34.137 with SMTP id y9mr497635ota.6.1489546458542;
        Tue, 14 Mar 2017 19:54:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.16.46 with SMTP id h43ls1057085ote.9.gmail; Tue, 14 Mar
 2017 19:54:17 -0700 (PDT)
X-Received: by 10.129.208.8 with SMTP id v8mr573893ywi.81.1489546457868;
        Tue, 14 Mar 2017 19:54:17 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id y90si79056pfa.6.2017.03.14.19.54.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 14 Mar 2017 19:54:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id j5so2414099pfb.2
        for <outreachy-kernel@googlegroups.com>; Tue, 14 Mar 2017 19:54:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=88U9ubZrmrJbBwdFt47J3RIhDi6mXdw06xD59/bBxOk=;
        b=IQDVTmIqeH8/A4kN+1Lz0xZZqyD6SlaUvzmNgd8wNa/auekwDLJHIlE69TZfKq9TFS
         vzZvdsFB1dxbfDbspK2XbvKpXYxfTYdPvNauLwR3PvhP2K2unLNwYQXrHJjW71ofq+h2
         xjOAcb/gDkUunJmYHKC3sfHe1g66x5wNTQ2zzoWLsFFGCD4zdx0rLnicEGzWbR9MxkwM
         XbVwkfwpARV4X5Rz+p8GaxNtrc0L1Bte0PwYjwywHMnEBHeRVesTsmqAg1H41JJWf2hQ
         2f9DDsax/OhefhGXUT0JMMautI55XMVqNHeLUmcUCl9otluXaoUC+YY180gvfKE2ZWud
         Gzuw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=88U9ubZrmrJbBwdFt47J3RIhDi6mXdw06xD59/bBxOk=;
        b=TKCFZbh66Pz8Go70vehMCm+6QmDp/9QF6iW+zHQwpSkxbAb1DheCNlYdnF45IMxb23
         gaWy3gMH9v/Fk0mJt2fEN6m+VvUDGPwz7JDYm3YS3lwdDC6bYIreP6nE3wTwR6q/6tcA
         r2q8K7PMSPx/dCIMMafeJ7cz3vgVxtaZd7aY1hBUZt39FYmsrfRX2g5XEYSRh+CG+Eog
         9RdwfWJZUxl61ME9O7uE0w/R8ZFiYrLDhi31hk0mDzHeDPRIRxVhlkeBzH9ZpGJ553hL
         qBbLcRpxs4ipJf3eqviYdaRSn25T2Lz8dup29nqmKQ5cgL8twBCyEOBmD7xkljt/l70Y
         7nAA==
X-Gm-Message-State: AFeK/H0D+7lr7/xcfQSXrEIEOcYxqWD1HNdIwyZinJb24qB++0t2TXFtbM6+79lp5N/1FA==
X-Received: by 10.84.136.34 with SMTP id 31mr1338592plk.52.1489546457582;
        Tue, 14 Mar 2017 19:54:17 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id g27sm516430pfk.95.2017.03.14.19.54.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 14 Mar 2017 19:54:16 -0700 (PDT)
Date: Tue, 14 Mar 2017 19:54:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
Message-ID: <20170315025412.GA5522@d830.WORKGROUP>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 14, 2017 at 07:07:54PM -0700, Varsha Rao wrote:
> Hello,
> 
> I am again having issues with dummy modules compilation. I am unable to 
> create sub directory after mounting.
> 
>  $ sudo mount -t configfs none /config
>  $ sudo mkdir /config/iio/devices/dummy/my_dummy_device
>   mkdir: cannot create directory 
> ‘/config/iio/devices/dummy/my_dummy_device’: Invalid argument
>  
>  I have the following permissions set for the file.
> 
>  drwxr-xr-x.  3 root root    0 Mar 15 07:06 .
>  dr-xr-xr-x. 19 root root 4096 Mar 14 23:55 ..
>  drwxr-xr-x.  3 root root    0 Mar 15 07:06 iio
> 
>  I can create sub directory if the directory is not mounted.
>  I  also have iio files created in  /sys/kernel/config, even though I have 
> not mounted it.  
>  $ ls -al /sys/kernel/config/
>   total 0
>  drwxr-xr-x.  3 root root 0 Mar 15 07:06 .
>  drwxr-xr-x. 11 root root 0 Mar 15 06:28 ..
>  drwxr-xr-x.  3 root root 0 Mar 15 07:06 iio
>  
>  As earlier these commands worked, don't know if this is causing the 
> problem.
>  I tried to mkdir in /config after unmounting  /sys/kernel/config, it did 
> not work.
>  $ cat /etc/mtab | grep "config"
>  configfs /sys/kernel/config configfs rw,relatime 0 0
>  none /config configfs rw,relatime 0 0
>  
>  I am able to run the following commands successfully.
>   sudo modprobe iio_dummy_evgen
>   sudo modprobe iio_dummy
>   sudo mount -t configfs none /config
>   ls -l /sys/bus/iio/devices/iio_evgen/
> 
>  I am using fedora 25 x86_64 with kernel version 4.11.0-rc1+.

Varsha, 

Do you still have the patch applied?
per Daniel's previous email:

 http://marc.info/?l=linux-iio&m=148907643001389&w=2
 if you use CONFIG_IIO_SW_DEVICE=m

 You can workaround the patch above if you select
 CONFIG_IIO_SW_DEVICE=y


alisons

>  
>  $ cat .config | grep IIO
> # CONFIG_SENSORS_IIO_HWMON is not set
> CONFIG_DVB_USB_FRIIO=m
> # IIO staging drivers
> CONFIG_IIO=m
> CONFIG_IIO_BUFFER=y
> CONFIG_IIO_BUFFER_CB=m
> CONFIG_IIO_KFIFO_BUF=m
> CONFIG_IIO_TRIGGERED_BUFFER=m
> CONFIG_IIO_CONFIGFS=m
> CONFIG_IIO_TRIGGER=y
> CONFIG_IIO_CONSUMERS_PER_TRIGGER=2
> CONFIG_IIO_SW_DEVICE=m
> CONFIG_IIO_SW_TRIGGER=m
> CONFIG_IIO_ST_ACCEL_3AXIS=m
> CONFIG_IIO_ST_ACCEL_I2C_3AXIS=m
> CONFIG_IIO_ST_ACCEL_SPI_3AXIS=m
> # Hid Sensor IIO Common
> CONFIG_HID_SENSOR_IIO_COMMON=m
> CONFIG_HID_SENSOR_IIO_TRIGGER=m
> # CONFIG_IIO_SSP_SENSORHUB is not set
> CONFIG_IIO_ST_SENSORS_I2C=m
> CONFIG_IIO_ST_SENSORS_SPI=m
> CONFIG_IIO_ST_SENSORS_CORE=m
> # IIO dummy driver
> CONFIG_IIO_DUMMY_EVGEN=m
> CONFIG_IIO_SIMPLE_DUMMY=m
> CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
> CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> CONFIG_IIO_ST_GYRO_3AXIS=m
> CONFIG_IIO_ST_GYRO_I2C_3AXIS=m
> CONFIG_IIO_ST_GYRO_SPI_3AXIS=m
> # CONFIG_IIO_ST_LSM6DSX is not set
> CONFIG_IIO_ADIS_LIB=m
> CONFIG_IIO_ADIS_LIB_BUFFER=y
> CONFIG_IIO_ST_MAGN_3AXIS=m
> CONFIG_IIO_ST_MAGN_I2C_3AXIS=m
> CONFIG_IIO_ST_MAGN_SPI_3AXIS=m
> # CONFIG_IIO_HRTIMER_TRIGGER is not set
> CONFIG_IIO_INTERRUPT_TRIGGER=m
> CONFIG_IIO_TIGHTLOOP_TRIGGER=m
> # CONFIG_IIO_SYSFS_TRIGGER is not set
> # CONFIG_IIO_ST_PRESS is not set
> 
>  Any ideas?
>  
>  Thanks,
>  Varsha
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e64c8df1-dce6-42e3-b186-1c85380a2734%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.


