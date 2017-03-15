X-GM-THRID: 6396247239473233920
X-Received: by 10.129.160.83 with SMTP id x80mr1487919ywg.90.1489579037336;
        Wed, 15 Mar 2017 04:57:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls2151143otb.26.gmail; Wed, 15 Mar
 2017 04:57:17 -0700 (PDT)
X-Received: by 10.13.196.129 with SMTP id g123mr1510770ywd.140.1489579036974;
        Wed, 15 Mar 2017 04:57:16 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x22b.google.com (mail-io0-x22b.google.com. [2607:f8b0:4001:c06::22b])
        by gmr-mx.google.com with ESMTPS id t8si21293ith.0.2017.03.15.04.57.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 04:57:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) client-ip=2607:f8b0:4001:c06::22b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22b as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22b.google.com with SMTP id b140so18280778iof.1
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 04:57:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=bjYa3RoLRwiG55fC+ACYd+eu75kfd51E1nmkoYa3qkM=;
        b=ayVEFYl7YbSsQVoL26p7jFHMn+3pUebm0BZoi35YE5dQsMyw3qQx1DKyhcYl0DRIqJ
         p80SZUu9Tu6TIrkZqvQUUxaUFVBOSzgCvnfYE7a2AfNXVnfjYxyF0tNdWI4p13hy/EYv
         Fkqa9sY61/9D3382ZAXiyUZdiSxrg5mqhSsOT6pu7zTZZuCOqYdUp+oPrTOmsvlSurux
         X0n1By3T1LYzsUK5P+dZQT80KrZYXCN4P8zJxPMZBRwPLIn/pmtjUXcyLXEQIcSMmKCO
         LiQt91F+pN4zuBWEcklL//Az1JJS7ah1d1ZXMsEvU/ciecpOS9tbmalPVxsK3VpLLyrZ
         jowg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=bjYa3RoLRwiG55fC+ACYd+eu75kfd51E1nmkoYa3qkM=;
        b=L8OyH5kVmys1Ce24mhoipQKwOAU6WvmODLV4nFM6QGZgKdLLIoM2fIAxRsUL3YGTHW
         3q6ONZVpM+MLUhjFbJ9nmwjyimnDiJn/14rIDSAGsPtGqz1W1vRcng7R9ejP8CI2Ai3q
         mrcrRSHzRLEWFKyO4ZqrHk6wslWdodlcKMqDk9qB3e+u+R0u4ksQrZ1Rz7xl7HmGuNUU
         ATiiA3ZjCWnXE4T+O/+Z70/GlEby+z0fOD2TzfcAl5gzCacRUAv0n08NHFAjDcwFjnEw
         C67LHSm3j5WU6zKBXVAsB5t2GeDWq1MRFIptKw346drH3DEdfXNqLnL6o6mov61/H5wC
         2qOg==
X-Gm-Message-State: AFeK/H1yslE/B4IUsQ2KORHnmxKCM6d9jBr7M8z6jBootrZwlVJObcGNqVNf/GDj9I0OLDTFgXT4NeD9HuoF2w==
X-Received: by 10.107.35.129 with SMTP id j123mr4581503ioj.195.1489579036675;
 Wed, 15 Mar 2017 04:57:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Wed, 15 Mar 2017 04:57:16 -0700 (PDT)
In-Reply-To: <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com> <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Wed, 15 Mar 2017 13:57:16 +0200
Message-ID: <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

On Wed, Mar 15, 2017 at 4:07 AM, Varsha Rao <rvarsha016@gmail.com> wrote:
> Hello,
>
> I am again having issues with dummy modules compilation. I am unable to
> create sub directory after mounting.
>
>  $ sudo mount -t configfs none /config
>  $ sudo mkdir /config/iio/devices/dummy/my_dummy_device
>   mkdir: cannot create directory
> =E2=80=98/config/iio/devices/dummy/my_dummy_device=E2=80=99: Invalid argu=
ment
>
>  I have the following permissions set for the file.
>
>  drwxr-xr-x.  3 root root    0 Mar 15 07:06 .
>  dr-xr-xr-x. 19 root root 4096 Mar 14 23:55 ..
>  drwxr-xr-x.  3 root root    0 Mar 15 07:06 iio
>
>  I can create sub directory if the directory is not mounted.
>  I  also have iio files created in  /sys/kernel/config, even though I hav=
e
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
>
>  $ cat .config | grep IIO
> # CONFIG_SENSORS_IIO_HWMON is not set
> CONFIG_DVB_USB_FRIIO=3Dm
> # IIO staging drivers
> CONFIG_IIO=3Dm

My first thought on this is to compile everything related to IIO as Y
not m. Then we can see
if there is some module dependency etc.

After we make everything work with module compiled in kernel image (y)
we can go back and use your current config.

thanks,
Daniel.

