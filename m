X-GM-THRID: 6254188564975714304
X-Received: by 10.107.7.200 with SMTP id g69mr35860808ioi.3.1456257382310;
        Tue, 23 Feb 2016 11:56:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.165 with SMTP id g5ls267069igt.28.gmail; Tue, 23 Feb
 2016 11:56:21 -0800 (PST)
X-Received: by 10.107.11.23 with SMTP id v23mr34574340ioi.13.1456257381978;
        Tue, 23 Feb 2016 11:56:21 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id l85si1555150ywb.2.2016.02.23.11.56.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:56:21 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id y89so145234306qge.2
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:56:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=3d92RBYFoHfm9vUkdArNGUJHrtwej6iHZc1ZE3zBDZ8=;
        b=dGaZdC4Q7PwjIs4CAuec4TTY3CzCQHmU9+2juB63qO7rM8ytlf/hIQ9R7QHFieKIP9
         u8+0/qchbJdqNt6JnxbLhGKCXf7iggVu4YxMDcHP26MXo5nM2zNLmyApi9i4HuhC6/92
         ScWh8uD00lVbsNGNu9LCwQR611mqOxYLEAoFOjMrUnnhvEyYE1fCImAjDsHbH0SDghEQ
         KBXA+K+8lSxcUiClV2X1XTm6gnC2z0guVPkjPswNh2BYrL+vwget1ap/5tMI6eRq4Vy2
         08PvMRcBLIVJYW5L5g+kBEjXHjyk5te5fPHUDtxMnnA5j+cXqxQ5dQuMVMVgVqMAIYbL
         37eg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=3d92RBYFoHfm9vUkdArNGUJHrtwej6iHZc1ZE3zBDZ8=;
        b=MoZ4u7ixZ9s8sP2R3E6eAlorLSrGXiKPFSeOoFEoMRY+CaSGR9DwRtrhCumcuvUF1G
         MjbOyNKFeLqCDpoUOZKg5Q86cggoLC81Okmvng2X+E7Mt8uiZhLbYeJJwTiHYWKiYxMK
         i2KmAH566wNOfBPlhUMdNiOjI+kCOupZxz/eqApHCZDpjSLaPULfL2G2+lwKDTi8vbfi
         IfARtjmJawBlhR9qt7KTQ/BjiCvmHmdSP1EiT2Lun+7p3DCWqGS7ZscFzeu1O7naAWtX
         2C5t9iwGoudBWCC4KsGF3eSOiJIEh2SmcFKOXdIDfWNOgSD2VNSdmyFgzEDxzErlm2r1
         5jsA==
X-Gm-Message-State: AG10YOS+biynNHUdVIcNetrkcVC/qBDPS0PgiSjYJLNLZ4XHR0t6ynGdk56hYtt3Oc32JPi47RmWR5Vbia4y6w==
MIME-Version: 1.0
X-Received: by 10.140.23.81 with SMTP id 75mr43789726qgo.35.1456257381730;
 Tue, 23 Feb 2016 11:56:21 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 11:56:21 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232050240.2040@localhost6.localdomain6>
References: <20160222184544.GA29097@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6>
	<CA+5yK5GB29KPi7ScAXNf6m10fNm8vphE2pQGrocSot-Vm+RfEw@mail.gmail.com>
	<alpine.DEB.2.02.1602232050240.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 01:26:21 +0530
Message-ID: <CA+5yK5GP=H87SE2nLsn+QZifxwL0aGhTvkGBLEXBC1bFuOndiA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace
 pci_enable_device with pcim_enable_device
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 1:20 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>> >
>> I'll write a separate script for the latter, though a lot of people
>> have submitted patches for this change so there'll be less occurences
>> I think, nonetheless will write one.
>>
>> One of my previous patches that Greg accepted for switching to devm
>> functions had a similar thing so I thought it was okay. I can divide
>> the changes into 2 patches and send as a series separately if you
>> prefer.
>
> I think it would be better.  There is no relation to the devm issue.
>
> julia

Will do.

Amitoj

