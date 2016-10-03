X-GM-THRID: 6336586801480728576
X-Received: by 10.28.38.134 with SMTP id m128mr218949wmm.11.1475515395903;
        Mon, 03 Oct 2016 10:23:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.203 with SMTP id q194ls1009034wme.7.gmail; Mon, 03 Oct
 2016 10:23:15 -0700 (PDT)
X-Received: by 10.28.67.132 with SMTP id q126mr602420wma.22.1475515395331;
        Mon, 03 Oct 2016 10:23:15 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-lf0-x232.google.com (mail-lf0-x232.google.com. [2a00:1450:4010:c07::232])
        by gmr-mx.google.com with ESMTPS id w79si944236wmw.0.2016.10.03.10.23.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 03 Oct 2016 10:23:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) client-ip=2a00:1450:4010:c07::232;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4010:c07::232 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x232.google.com with SMTP id t81so95174022lfe.0
        for <outreachy-kernel@googlegroups.com>; Mon, 03 Oct 2016 10:23:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=EjWqU91ROuhSShKffWDRn+9sGzg8W4G6bJebRHDIGF0=;
        b=qiZR+rFBZZgIJnnsZDVgOyCAx0onbExTMsQNUJS0Y4LF24P0pV0NT3n0Jb5v66QESi
         Oj3n341+2+3CL6l5VrpLONy4Y6asPeJNVNnxCVwxnmEX4NWq6e979ofq+J7tgeTyunSU
         MvN79pXxto6iZ6p7AdQVFzU/SRVdpUpMhQn2jBU+oYl5T73BnB7+MFeO/2besrDGddX2
         aJPq64Dpbty1xP7RUxPoaolyje9DSOU9w4TcflrOV2MIDSM/5k535VO7gLuDoPLBgU/l
         O0NxZTDurzjziHuhBzPgQbmj80JZuMX2km5a1sepHooHgRAGi6ZbqGLK/Q5zfFgxqkJl
         8TaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=EjWqU91ROuhSShKffWDRn+9sGzg8W4G6bJebRHDIGF0=;
        b=PKTLKuvrMiQ4cDlBZxgyAeNMMwi+l3/+ssH9MWbYrGQWS6U87kFgkyNXrONeW1H8iG
         +USR8ihzTVdKPsAawauGGOyqClecKEXy0sX0ck4kQ3VPTnE5oQlQUR1RzSgQ9wRqkRDB
         WeVsSHNaSnjybHfh8rqP2iag+FDsWKxweSfzrWjzMXammHHpeCPWr7+NNFR0wuyBOJzj
         SHZOx/4ev9z9Yc3EZrMrHCbL5Nc8ygIXrevlU/6NoCHiv8llD3kE+XxYj0oeu81anLmM
         sDSja2KH3Tw67X3gG9Us0PjngOW9ATCdlrn82vCZzA7T2YkZe8qj8Am58U9bsE0m5Iec
         X/Vw==
X-Gm-Message-State: AA6/9RkEo2+HpK3R6i+6Ef4hPRfimosaU/Gf6jA4KQR2nq1vIUz0Ug5638FwtaGTyFvAEilZgenLReI+l2Wm0A==
X-Received: by 10.46.33.199 with SMTP id h68mr2739395lji.61.1475515395054;
 Mon, 03 Oct 2016 10:23:15 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.208.15 with HTTP; Mon, 3 Oct 2016 10:23:14 -0700 (PDT)
In-Reply-To: <CAKG5xWhDNtKrZuAKFjBPdj+VV=bPSZmCNM2_ySM0Nr_YHiiDbA@mail.gmail.com>
References: <20161001195259.GB12284@d830.WORKGROUP> <CAKG5xWhDNtKrZuAKFjBPdj+VV=bPSZmCNM2_ySM0Nr_YHiiDbA@mail.gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Mon, 3 Oct 2016 20:23:14 +0300
Message-ID: <CAEnQRZBHyH6WUgLFiJVH1aFjqOZCP+HgEzrrdtAi0r-OGHScpw@mail.gmail.com>
Subject: Re: [Outreachy kernel] IIO Experiment #1 Build Dummy Help
To: sayli karnik <karniksayli1995@gmail.com>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Mon, Oct 3, 2016 at 8:14 PM, sayli karnik <karniksayli1995@gmail.com> wrote:
> Hello,
> I encountered 'Invalid format error' while inserting the iio_dummy_evgen module.
>
> On Sun, Oct 2, 2016 at 1:22 AM, Alison Schofield <amsfield22@gmail.com> wrote:
>> If you have questions about building the modules in IIO Experimenting
>> Task #1, please post here.
>>
>
> I ran:
> sudo insmod drivers/iio/dummy/iio_dummy_evgen.ko
> I got:
> insmod: ERROR: could not insert module
> drivers/iio/dummy/iio_dummy_evgen.ko: Invalid module format
>
> dmesg output after insmod:
> [36856.453312] iio_dummy_evgen: no symbol version for module_layout
>
> What I learned so far:
> The error arises because the kernel booted in and the one the driver
> belongs to are different.
> A post on Google says this is because the vermagic strings don't match.
> ( 'modinfo' gives different vermagic strings for drivers in different kernels)
> So I tried copying my running kernel's Makefile into the driver's
> Makefile. But the error persists.
>
> I also tried:
> export KBUILD_SRC=<location of the running kernel's source>
> But that didn't help either.
>
> Any ideas?


Well, are you using a virtual machine? Can you update your kernel?

