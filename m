X-GM-THRID: 6254203377087938560
X-Received: by 10.107.12.99 with SMTP id w96mr17394683ioi.5.1456727846104;
        Sun, 28 Feb 2016 22:37:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.36.41 with SMTP id n9ls458696igj.32.canary; Sun, 28 Feb
 2016 22:37:25 -0800 (PST)
X-Received: by 10.66.145.232 with SMTP id sx8mr11227858pab.13.1456727845769;
        Sun, 28 Feb 2016 22:37:25 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22f.google.com (mail-qg0-x22f.google.com. [2607:f8b0:400d:c04::22f])
        by gmr-mx.google.com with ESMTPS id q187si1499081ywf.4.2016.02.28.22.37.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 22:37:25 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) client-ip=2607:f8b0:400d:c04::22f;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22f as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22f.google.com with SMTP id y89so108739528qge.2
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 22:37:25 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to;
        bh=uv43SufC/A1JRabiHVrE98u0kAkMHDiEH40kb/LKxZQ=;
        b=IhkZBh29AufgfBMpAPMC446VfprtRU6H50JpDmoxByR6yHZqkAnOn3Ky153eLwj9m0
         cn0rOgBfGauAsQMD7hk0jjQNObKW877kQ9/qRcREbubPKmG01g3HY+ZWDRNvnxjGqoR1
         8fC7M4u4IF/pZUlHZjZfpn2tI69eTS5C2X6aBuJzGsDDbseWBzdT/Xm2lP/1Ev+S0YiT
         L4F7c/eZi8ilWBXkzYm8JeUiGZ9DF+wL9n5N4aQ02zix0yGyst7uRKAC22ylHzmE1Edn
         EXUl4FdYMEzZigmXHc60R2eA5qk33uwLTYA88DmeN8dMWlCR5GpbJqr7SPiZOHgJ/fkf
         fFzA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to;
        bh=uv43SufC/A1JRabiHVrE98u0kAkMHDiEH40kb/LKxZQ=;
        b=PymekE6TvGWDf83VLVwvBpHh6JwgD7lpzFwfIKVqBoJefkkjS2qyJ2zfzH0XJRdt7U
         1w5BQoJk2D77EgTr971TjvZbYfRP1FqInWQtmG3MpVczwwfOSHMRYo4yLD7Zinwoas1I
         i/farIa8QhwRQdu0NRPDQhwmp2TlbGRaa8kctIA6KWRIhVgcVvXAFIirz8nrCM//y7J8
         iIL9kEBhBLW/u5UKwN2uOPIxygY/qDrEHBRBf+wk/lNbO9+IxlGufE8RnyvhJmP8vpOn
         YopSlaydalsODkkenMNI6VTdo0Tae4NfSb3gqbVFh6REA60fofvuk7kJV34dfws8Q7LQ
         wb6w==
X-Gm-Message-State: AD7BkJILAAE1Z0AflWdwmbmDiBKn67PVUkSXheEy0c/JOClpWAAHspWvOvpHNkbO0t/FITOPzy5I1+HQ2Ion6w==
MIME-Version: 1.0
X-Received: by 10.140.167.135 with SMTP id n129mr17371448qhn.73.1456727845560;
 Sun, 28 Feb 2016 22:37:25 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sun, 28 Feb 2016 22:37:25 -0800 (PST)
In-Reply-To: <20160222194313.GA9769@amitoj-Inspiron-3542>
References: <20160222194313.GA9769@amitoj-Inspiron-3542>
Date: Mon, 29 Feb 2016 12:07:25 +0530
Message-ID: <CA+5yK5HnB93_6PfEyZd23WMKEDJJn6G+P=y1ZZR1Z8yU-P+iMg@mail.gmail.com>
Subject: Re: [PATCH] staging: iio: accel: Replace iio_device_register with devm_iio_device_register
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 23, 2016 at 1:13 AM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> Devm_ functions allocate memory that is released when a driver
> detaches. Replace iio_device_register with the resource-managed
> version devm_iio_device_register. Subsequently, remove
> iio_device_unregister from probe and remove functions of this driver.
>
> Also, an unnecessary label was dropped.
>
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
This patch is incorrect and should be dropped.

Amitoj

