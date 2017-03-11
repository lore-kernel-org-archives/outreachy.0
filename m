X-GM-THRID: 6396325489451991040
X-Received: by 10.129.102.215 with SMTP id a206mr11353277ywc.141.1489264589617;
        Sat, 11 Mar 2017 12:36:29 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.124.6 with SMTP id a6ls748050itd.22.gmail; Sat, 11 Mar 2017
 12:36:28 -0800 (PST)
X-Received: by 10.99.54.79 with SMTP id d76mr12620621pga.148.1489264588703;
        Sat, 11 Mar 2017 12:36:28 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x22a.google.com (mail-io0-x22a.google.com. [2607:f8b0:4001:c06::22a])
        by gmr-mx.google.com with ESMTPS id z191si543502itc.0.2017.03.11.12.36.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 12:36:28 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) client-ip=2607:f8b0:4001:c06::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::22a as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x22a.google.com with SMTP id l7so65985565ioe.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 12:36:28 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+v4P6TeHdanA98nR0MOxdW0W2+2OvpUzU3ZWGeduqsw=;
        b=Uv+JjPO/Y55BYv7fwXVn/yjfwdbbX5P6+F7y7v7ckxpeSO2kajgyxcuxbTWujk4Y00
         B263ElDwlpUmJ2okEXF8rd6Lyb29RwXdfVTHeSeyDpMCWb/+o0ENeM4ht8XjPPlP6pls
         tscyLrI9cgmq1jVxghxmelm13S6LQjBwjGsWb8mrCbTeRcBMaM++rDeK4VJZ15X6k6Kj
         QfzeGw2vXZd8/EWE3cz/1LFSMINOzo9mrk0tW8lovKy1urBgSzijr1FpDMgwdSdYv/WR
         JttR3hvc0KaMXVz/oHpxoX0pO1ZfXAkH89U6TLVl8mq01IeYkvg+jECkPYkEgHu6wSmW
         jGVw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+v4P6TeHdanA98nR0MOxdW0W2+2OvpUzU3ZWGeduqsw=;
        b=Vod2Ot6V77WA2uZ3LnSKHp5zLOS0bAuCydH6QcOtkkdisRbneYCrn41qVOvfhh+hsc
         Kmu/A9Q8nbC+RcdopKwkTheW0XWHLVC51k4tHf29eJdGCwUfRHqu8rWYIfBG+gX+E0nM
         Xgz7wyscJ0Q9Q8bVVd2wxhkoOxGSc2KG8vhhVebQJUODZWvG7W5Jyaa7wc1AuOKD93HF
         27X0Ep4Y47co18WCJiK32ASf1rrXi0THXcb3i4G/iTe9BX0PfBkot/zR1JVQggTdETSi
         nYRdUyvV0fyIXXetJB7/kVJOBJTs8LLd8gGn1ri1/07KGVsYYNCKqiw+9kReKGoIfWZd
         85Ug==
X-Gm-Message-State: AMke39nR0k1voPQuPyVoy6r/Z5XON6Y0BqaMw51NtDV9nMNRBwAjIus1xy1HAczvseWOhtAoxext5m89ExplHg==
X-Received: by 10.107.19.222 with SMTP id 91mr16297115iot.211.1489264588485;
 Sat, 11 Mar 2017 12:36:28 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.26.201 with HTTP; Sat, 11 Mar 2017 12:36:28 -0800 (PST)
In-Reply-To: <20170311192931.GA3443@aishwarya>
References: <20170311192931.GA3443@aishwarya>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sat, 11 Mar 2017 22:36:28 +0200
Message-ID: <CAEnQRZDYBOhOpR7uo4sBGUuir7BVKL6Aw+etDzzrMAKT37boKQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [IIO Task1] Module load error
To: Aishwarya Pant <aishpant@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 9:29 PM, Aishwarya Pant <aishpant@gmail.com> wrote:
> Hi
>
> When I try to load the modules iio_dummy and iio_dummy_evgen, I see the
> following error in dmesg:
>
> iio_dummy_evgen: exports duplicate symbol iio_dummy_evgen_get_irq (owned
> by kernel)
>
> Looks like I've got a circular dependency, something that should have
> been added as a module (or not at all) is built-in by default. Here is
> the config I've got:
>
> #
> # IIO dummy driver
> #
> CONFIG_IIO_DUMMY_EVGEN=m
> CONFIG_IIO_SIMPLE_DUMMY=m
> CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
> CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> CONFIG_IIO_CONFIGFS=y
>
> Any leads for where the error is popping from?

Hi,

Is that the only error related to IIO in dmesg?

Can you please post the output from:


cat .config | grep IIO

and

dmesg | grep iio

