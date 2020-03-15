X-GM-THRID: 6804387940747182080
X-Received: by 2002:a9d:d36:: with SMTP id 51mr19061669oti.308.1584271861225;
        Sun, 15 Mar 2020 04:31:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6830:2425:: with SMTP id k5ls2520253ots.2.gmail; Sun, 15
 Mar 2020 04:30:59 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsG6tipiFO4teovVWCKfde0g4G9jU6LEGoflEpjIQrRrEA4Q7qEwONX3sNXcZYanjQSyAV+
X-Received: by 2002:a9d:6ac6:: with SMTP id m6mr1538200otq.198.1584271859891;
        Sun, 15 Mar 2020 04:30:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584271859; cv=none;
        d=google.com; s=arc-20160816;
        b=zrZL/KJm/I5MsnzxdDLm8GcMMRndW+1EDKR6qH8zgSZDT09JSZ9DeQ862+XuImcpKI
         zKFO3MFaihQ3HugaUtPlaSiKaeXVhe+Wd4gE+urR0tnYaRJ+LXGQs5424P6hGb93IFzA
         IFJUvhf2aiYeC0VHKWIHcZuSTaP0juctI4UkXCn3CgapIhlI68Ro8CMkGp2H19J0BSu3
         Jdwm/21gkRkCahRcHD9S0uFXIGxK40TQV1Bfbv7CLi5BNZ6PvG3i9B2tABMPI5E3VVEj
         srpF0/8V+Z79+VgSljqMxO2CUudhAhG6tCKejFF+cVT8yRBZemH90xfjJlMR3LPTXSrS
         y5lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to:date
         :to:from:subject:message-id:dkim-signature;
        bh=HysnkbpVl/Ig3OF4ADxie4U5X0gFMRB6k3/Yxofi6TU=;
        b=SjmEWbdmAEdeoX0GVvy3vHG2MkEw5VXxIc0KiiMFpBDwj9uz4uTFYB0F4nWheZqNg8
         9bbi5GUYqSesGl9i7qnfl+lLcZB+xSp/oX7htEupmkBKGb1JbB0P4Tc1DHG96drJUnHE
         WlIVU0KeOCm0za4T8QnDtk+3NSKVDsQQwBnJ9I/HD2YI9f6B9d4/CJ+dYGmTPYWpQJPY
         N4bQPAXn3ON3bsGiankvyOHFs8Gr+bsuALr5+mCeCOx8Laim/TC/MkVGpjiwnX9Unpp3
         c3f5mzJ2NSKG3fYLGZjZdUBmghqbrrsa/J1oSZcaz3kYKTOMBTGgp7ym/MKyagCkXs4Y
         HVCA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jzxcp4Ek;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pl1-x631.google.com (mail-pl1-x631.google.com. [2607:f8b0:4864:20::631])
        by gmr-mx.google.com with ESMTPS id o11si903791otk.0.2020.03.15.04.30.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 04:30:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) client-ip=2607:f8b0:4864:20::631;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Jzxcp4Ek;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::631 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x631.google.com with SMTP id g6so6545294plt.2
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 04:30:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=message-id:subject:from:to:date:in-reply-to:references:mime-version
         :content-transfer-encoding;
        bh=HysnkbpVl/Ig3OF4ADxie4U5X0gFMRB6k3/Yxofi6TU=;
        b=Jzxcp4EkvWSPn28IyVUlaOtQ37o3grsXVWYDUVccffsrYRuVbomKTOfwyngghv20QM
         GTo/EFY2bCR6zhPkXRJanENM0oaJKPeNnWXXg8CDeYiQhBtDEgQaH0+h+tvuUgVCeMoB
         t9H/LMmLbKj0CNt4X+4E9uTK6INT/+b9dRZxQFv1Do++s3bi2uG3TmtqowBMMtivntoO
         qZugC0fecCn3CnEzPjkPL9ohz8zgc2pjTUg2r/ZzVJy0fs2q9vTXRZYUkR5Lpomt5boM
         6CiFxpxO1IzpJQ3+KNUQguStBvQhDV8qWcq2ns8kVrfaZ2MGi9+r+yU46VNYyUYtidjL
         pTiw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:message-id:subject:from:to:date:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=HysnkbpVl/Ig3OF4ADxie4U5X0gFMRB6k3/Yxofi6TU=;
        b=NUsx1ix6PONPmNSYbcfMmzO/S+R3tJTEEkEvM0S9Nnov44BBR9RKZX9T9mMIZunDkd
         vJBWPKkqEmubC+xDZzWPdDjlT4FibfmtJeJhZgiL2alt2iky29GTTH9yeEwz7SgP/uv2
         TMmOSpOqO5O8f1OkEjGnd284RAmPaGRwlPrMS4IB4/XCoI1B7tr7vFPaFpNc3HbA+FYG
         Eyc6szlWVQ8S+jA/Ngb0tod55iHTJJTmu00cocTn4YkZ/0rYIJdWWa/XDXrUzSQtccbn
         B5Nb0TK50LgeBxVV9J2L0+WIq90LOiOYBBwI9AlOhZQn/HLqFFPvxj56/t8usGY3zAqh
         v16A==
X-Gm-Message-State: ANhLgQ0wbEINJ9sGNPFiKGVn/2+xnlHxYWhhFw4vI1BwvTZdqAPqzAE+
	8AJVxNC/64EEgV8w/+sqUonnw/wY
X-Received: by 2002:a17:90a:c715:: with SMTP id o21mr20204528pjt.160.1584271859095;
        Sun, 15 Mar 2020 04:30:59 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from payal-desktop ([49.35.232.185])
        by smtp.googlemail.com with ESMTPSA id e204sm11259272pfh.199.2020.03.15.04.30.51
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Sun, 15 Mar 2020 04:30:58 -0700 (PDT)
Message-ID: <baa5f75c45c44b7337ba629c2cc5e20876f3f038.camel@gmail.com>
Subject: Re: Project related HELP!
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
To: outreachy-kernel@googlegroups.com, daniel.baluta@gmail.com
Date: Sun, 15 Mar 2020 17:00:45 +0530
In-Reply-To: <CAJyzNhntw7NH6rvzAwgjx59wxQ5A1PoF09fR3q2PD4wGFSyepw@mail.gmail.com>
References: 
	<CAJyzNhntw7NH6rvzAwgjx59wxQ5A1PoF09fR3q2PD4wGFSyepw@mail.gmail.com>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.28.5-0ubuntu0.18.04.1 
Mime-Version: 1.0
Content-Transfer-Encoding: 8bit

On Sun, 2020-03-15 at 16:30 +0530, Payal Kshirsagar wrote:
> Hello,
> I am interested in “Improve Sound Open Firmware debugging support”
> project 3 of Linux kernel, I am following 
> https://thesofproject.github.io/latest/getting_started/build-guide/build-from-scratch.html
>  this tutorial.
> I am not understanding what to do in "Copy the config files to
> .config and build the cross compiler for your target platforms." step
> means from where do I copy into .config
> I am sending some screenshots of the task.
> Please help!

Solved it!

> Thanking payal


