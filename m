X-GM-THRID: 6396247239473233920
X-Received: by 10.99.151.10 with SMTP id n10mr2343847pge.9.1489595542396;
        Wed, 15 Mar 2017 09:32:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.35.87 with SMTP id k23ls2579133otd.20.gmail; Wed, 15 Mar
 2017 09:32:22 -0700 (PDT)
X-Received: by 10.129.112.73 with SMTP id l70mr2042916ywc.45.1489595541987;
        Wed, 15 Mar 2017 09:32:21 -0700 (PDT)
Return-Path: <rvarsha016@gmail.com>
Received: from mail-io0-x229.google.com (mail-io0-x229.google.com. [2607:f8b0:4001:c06::229])
        by gmr-mx.google.com with ESMTPS id e196si93570itc.2.2017.03.15.09.32.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 15 Mar 2017 09:32:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) client-ip=2607:f8b0:4001:c06::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of rvarsha016@gmail.com designates 2607:f8b0:4001:c06::229 as permitted sender) smtp.mailfrom=rvarsha016@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x229.google.com with SMTP id f84so23829082ioj.0
        for <outreachy-kernel@googlegroups.com>; Wed, 15 Mar 2017 09:32:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=wifFoqCnWP6+QVnY0F2PEqzlGUnaTsjyikbQ0Tw6VIM=;
        b=h5yHqwBLJ5AYalMZSFY8cTqsN/R142vtbq340Q7/wD+7yL/icg9mzDxvOhJ8en7diQ
         N6JjdYw0niHFuAJNum45nkUepTYTULsZLAHOVJPa/p9Ro6tykPdwO9BFDcZ3XyCb0dNC
         gOhZ3+oDp8gTs5uWcluo0CG+RdaTTFH8zoDuMmC+kO3EkrM5kkKBFUEOhGnJeqFNBinx
         EIoIrXSAdG90T8YQRYTzf2sTaiT5vyZNXn9rdYzMjiklolUeIhAkruwsbFIbSyaiSoip
         k8Opr+wRy6jkjIg5XLStpvQAQ6asagHSyzgYwsNpZ2AyXZlDUlUcOQLt8H/2YH5nPlUk
         wbTQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=wifFoqCnWP6+QVnY0F2PEqzlGUnaTsjyikbQ0Tw6VIM=;
        b=TTEmpkYW2ebbZC1xUpyjxOwbeZ76B0b9Iamm0LafmCynX44bDd+kr9LLLoeFcNmhis
         l6G4gBjFl/lWJDEb+NXWHjTI1PyXPHlgzJFLNd4RtLzRuOAT7DEDlsXLoUpbRVrM738i
         +uFzmIbmtkPPd22iRuNz2nsLil7PyZGpO828Bvv3aI1NhSXShXsrGLQl+qBiKUuLNxwr
         6sVZ6uSNsCn3NtpSmIuHOSe7/QqmG0HFGsFCTJ+HPC14l4V6ZDumGwvt2DH0oEEbRTVU
         ybbsxxe44JWXIvFC5a/w21961PMd0mwGjlMwVITtXhAMI3pvF5CqeYjtc3ynC0ta8hRH
         ZztA==
X-Gm-Message-State: AFeK/H04+rSeaj8d77uYhXf/8zUAE1gNQpz61O53vYaS3i9tFQLrmh+IogtxONqmvJUMBdizkYDtqrcVGF4NzA==
X-Received: by 10.107.180.70 with SMTP id d67mr6684499iof.21.1489595541783;
 Wed, 15 Mar 2017 09:32:21 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.51.74 with HTTP; Wed, 15 Mar 2017 09:31:41 -0700 (PDT)
In-Reply-To: <CAEnQRZD5BS3VrgLb2y0OvOqrnGoxY3D6J57fCb_FgjF1ZYPPpQ@mail.gmail.com>
References: <1a480897-bdb9-4d3c-8143-d5347f67c2b6@googlegroups.com>
 <e64c8df1-dce6-42e3-b186-1c85380a2734@googlegroups.com> <CAEnQRZCyfGZh1AigeYW1UOn-ECvyQX1+HUiVp8OQ_rq2ZFWFFA@mail.gmail.com>
 <09641868-447c-4cfd-ab88-c33d932846ef@googlegroups.com> <CAEnQRZCjGJYSeO2TaeFGuRURMC2CRpinOTaBBiOrTuYXBGVGKQ@mail.gmail.com>
 <CAAFX7JSiXo-kLxc4xni0+nGahoCsDtRbWiFgmSQoKBDYUwNoxA@mail.gmail.com> <CAEnQRZD5BS3VrgLb2y0OvOqrnGoxY3D6J57fCb_FgjF1ZYPPpQ@mail.gmail.com>
From: Varsha Rao <rvarsha016@gmail.com>
Date: Wed, 15 Mar 2017 22:01:41 +0530
Message-ID: <CAAFX7JTDR9wrn4XdUCwADB5AoOQA_76U33sWgTA-AF5Fr9RMJw@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: Trouble with IIO dummy build.
To: Daniel Baluta <daniel.baluta@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello,
>>
>>   Kindly check the link.
>>   http://pastebin.com/pfuP4cgU
>
> Ok, so configfs is already mounted:
>
> configfs on /sys/kernel/config type configfs (rw,relatime)
>
> You should be able to see: /sys/kernel/config/iio and
> follow your work from here.

   It is mounted but it does not have iio file.
   $ ls -al /sys/kernel/config/
    total 0
   drwxr-xr-x.  2 root root 0 Mar 16  2017 .
   drwxr-xr-x. 11 root root 0 Mar 16  2017 ..

   The modules did not get loaded.
    As there was no output for $ lsmod | grep "iio"

    Thanks,
    Varsha

