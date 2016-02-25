X-GM-THRID: 6255226926229618688
X-Received: by 10.66.163.97 with SMTP id yh1mr6459650pab.11.1456409105114;
        Thu, 25 Feb 2016 06:05:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls335413qga.11.gmail; Thu, 25 Feb
 2016 06:05:04 -0800 (PST)
X-Received: by 10.129.159.131 with SMTP id w125mr40484193ywg.26.1456409104696;
        Thu, 25 Feb 2016 06:05:04 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id q187si495455ywf.4.2016.02.25.06.05.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 06:05:04 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22a.google.com with SMTP id y89so40139259qge.2
        for <outreachy-kernel@googlegroups.com>; Thu, 25 Feb 2016 06:05:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=RZdJh/0/Up6wC6LfsSZ/jwh5YwLjbL+JYmm+MJcS1z8=;
        b=IpkEx1MIERSGs5mRa0ugLz3T7h67rb8y7xigCPaVF7GK8YZA/hQjMFBSzL8SYCW3nz
         fqcAQ51CyCmhWJCBUSaj630nfIzIwU3i82uis+Np/vJZbe9P549kzNmZo6toPsqqbQn2
         /mlSD0lagau2KK9LB1L5trmhbdlb+ZHd6gEIiwf0kW/ITMOfTo9NFZYGV02Y22LnHRlh
         j3RQL43/386cT8K2P46gt8DqIwXKLSdXTNmy/GZ5T+vUKR5m69P4FibahAdf6CLiZ5E2
         pFgmBysTk3zkevHIv9hZ+9vH7Gruzvu9ejMxP9yk1DDTWBfevsvDgrAAt7TIR6gnq9zu
         Zu4A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=RZdJh/0/Up6wC6LfsSZ/jwh5YwLjbL+JYmm+MJcS1z8=;
        b=HIIIs7+pFaZyr9aKpFGFrfFwt59aDaLZPG3lipwN4tBV3SiM4EnaOW+HAfhoa8Yb5p
         r2zBkdmdFDhdLoGwJvXqovXL+hfH55mfsZydavixWMRtn789rOnTF1lfKE1F9+/tNtG1
         eq2tIEWecMHs9DR6iUx2Z/HoLjF4DizkW1oppk7EJ03Zw4tmKlDuJEEJl7hTcgkANlEL
         WpaVyCv7iXJMmockO8hHm19JGqd7bH5qgaJmEhYa9eR/YIvO3AxmiAlmz95XWA9FUb7v
         qWQZw4oFDX6lkefmckIyUCWVXU+qN+ZRgp/6QLaAijr++/ot3n6a2UVOCsGZQI2NP7tG
         Uk8A==
X-Gm-Message-State: AG10YOSBUtc3iGyG/pbTeMd6Yb9PjCUSW32RIM81Qy1TIl5+UH2P52YgS4lp47AaMSlD6IubbLP77FIkUJx+mQ==
MIME-Version: 1.0
X-Received: by 10.140.143.134 with SMTP id 128mr25330905qhp.25.1456409104516;
 Thu, 25 Feb 2016 06:05:04 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Thu, 25 Feb 2016 06:05:04 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602251455550.2708@hadrien>
References: <20160225135504.GA25593@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1602251455550.2708@hadrien>
Date: Thu, 25 Feb 2016 19:35:04 +0530
Message-ID: <CA+5yK5G_H2ZvOZ2cXmOJwVmguxnN+tdnSk=gJ+A=4fasfwwfJA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: android: ion: tegra: Use
 devm_kcalloc instead of devm_kzalloc
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Feb 25, 2016 at 7:26 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>       idev = ion_device_create(NULL);
>>       if (IS_ERR_OR_NULL(idev))
>
> Here's another IS_ERR_OR_NULL.  You could look into whether it is really
> necessary.
>
> julia

ion_device_create() function returns an ERR_PTR in two cases, one on
failure of kzalloc() and the other if it fails to register the device
i.e. failure of misc_register(). Other than that it is returning a
ion_device pointer which can be NULL.

I think we can make the change since the return type of
ion_device_create() is a structure which should return NULL on failure
ideally.

What do you think? Should I go for making the change?

Amitoj

