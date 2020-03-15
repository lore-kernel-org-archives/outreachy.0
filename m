X-GM-THRID: 6804387940747182080
X-Received: by 2002:a1c:a70f:: with SMTP id q15mr23292328wme.66.1584291122909;
        Sun, 15 Mar 2020 09:52:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:bd82:: with SMTP id n124ls4937023wmf.2.gmail; Sun, 15
 Mar 2020 09:52:01 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvWVtc7C9XXA0dn46LQAFuD+gVimlXAJ8UmNnfnuIqKu7fZxH2YHkxFZ7N5xLxitSCk1C64
X-Received: by 2002:a1c:1fc9:: with SMTP id f192mr23420074wmf.4.1584291121545;
        Sun, 15 Mar 2020 09:52:01 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584291121; cv=none;
        d=google.com; s=arc-20160816;
        b=MCx+CxMdtUvJoih8H/guo8VQbE0cAaVZZ1wL2gjKCxfufxscXnIUtVN4t7TzOz0vEc
         lwny28MebdfCcGiJJRI0Od1Vy2CxFTYd9F3hx5u7Gq4DPZLTdqi+X4L5VkFWFNm3QclA
         HTHAn8StbUCWqGOcn8rtppqzqonH66QwLQTz8L2s2chaxtAnLCq+x9t61u1UASZV+9q7
         DzPOG/PjiXmnQYaOv4GbQno3V4U/y83qXGnva0mLok1FYZL/d8nY2Pg+gsg4etrX7nRx
         KSIUrd5C8P3ZvigEqriOq7Z9Lq6gVUQKyjKF2qG90YKubml3j0MWTtzLbWF+MEAwQLZy
         2/tQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:cc:to:subject:message-id:date:from
         :in-reply-to:references:mime-version:dkim-signature;
        bh=/iNvjj9Dl/o6PzBDuke/jatZ23ILYKh/QPfL4SstxL8=;
        b=fjOoSwHKwpg/VSkj4N9mkXyVrkCo1wOpEVK1Rq7ZfXXNIspJ/ctRnbcNGa/2npMewT
         fvotvb2Pe4TMTE6h/F9wnQBflfbSsoP4nPlppLbTPh0VeHtR6HOH4IzZQR+cNfKf/ZYF
         ZqTNKBbOjP6xd44X4PuUk4yyW0z4K/CFiMwpvCTzXYHD6NrZXBw8l/dIDWJdt+b7ZEqX
         yxYBj8Q+rxE/xlguq+z/VVbKiv6Lf1RfJ3TORwAb+OatlLpEi/H/Mea5628nYVOw+wNp
         Yl7ApGR6JFOH2hAFA4OUQ0M47IrJ0seuV280ekp2TWyFuSrsWI39Be4OxFxm+0bBfuGu
         mSzA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jA1LlyG4;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wm1-x32f.google.com (mail-wm1-x32f.google.com. [2a00:1450:4864:20::32f])
        by gmr-mx.google.com with ESMTPS id c187si536686wme.1.2020.03.15.09.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sun, 15 Mar 2020 09:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) client-ip=2a00:1450:4864:20::32f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=jA1LlyG4;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:4864:20::32f as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wm1-x32f.google.com with SMTP id t13so9084359wmi.3
        for <outreachy-kernel@googlegroups.com>; Sun, 15 Mar 2020 09:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc:content-transfer-encoding;
        bh=/iNvjj9Dl/o6PzBDuke/jatZ23ILYKh/QPfL4SstxL8=;
        b=jA1LlyG4ojQWaBEnyumgvpSTY8DugBTZD3oXhriTtINzHpsZ3xkrPxtMomh34eC+C0
         cMIhdmOGZIlYk9XyzLHpt/vnLVpV34FNoX7bRswRnHg9oULixJRGUlxuQZ4P6FlU/T7/
         zBgTZgwOyxaf+JItoiFTwdr50AxOwKYc96UL6fHIvISMOam5zdIVCD+rCBIiDhMcPR8b
         4MqqPe7bhhv85ZarP4rxEgy2p03nYTo1WRdwgl1XvaaTV7g/KrgQskRis2yyDgvQAAUO
         TSpXfY90hCqiwrsJwpc1j1DPVByhxLE5gtggHP3j/7m8EXLPVdAKR2wh8XSM4k4uA6sk
         iz9Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc:content-transfer-encoding;
        bh=/iNvjj9Dl/o6PzBDuke/jatZ23ILYKh/QPfL4SstxL8=;
        b=QqMc+q6ohhuHoo5JWN4KjQobA/Uqt3ujf+JFaMM7c2Z/R0y8Au/20jalekC7auQkpx
         W15PEDMA52uTodwnCsovOdCddiOiRGbW/8rTt3MxljdrYPLUpSIUfuFGLL5FizYQm6uA
         EVrZoC0LdMOaBqNepw3PU3VSDvQ/kx4Qu9n4yOsmaqurncbaHRU4zqvfBIOAv4TIKxwu
         6IJU0riQXWJ9ZS6i+uK8bVyvQjgi2EZxyBAduTGf+LKg0rcXOK4AzBPSWbE7w2QqgbRC
         IVqfrMtmbSN7EihbKbgCBo2nswoQXEOIhEDVTbXQT3NXmzii9BYPHT4wV7OmU0n9ZfjE
         GrfQ==
X-Gm-Message-State: ANhLgQ1wbGB5fuFF6dR8a3vtSiSBo21xFQb+D2SLl+OwX0MXG/cC46uT
	JWk6AU+eTfNYR5o3bQvr+Ao7pBaQrFSoB9CUZqU=
X-Received: by 2002:a1c:7508:: with SMTP id o8mr18253519wmc.141.1584291121307;
 Sun, 15 Mar 2020 09:52:01 -0700 (PDT)
MIME-Version: 1.0
References: <CAJyzNhntw7NH6rvzAwgjx59wxQ5A1PoF09fR3q2PD4wGFSyepw@mail.gmail.com>
 <baa5f75c45c44b7337ba629c2cc5e20876f3f038.camel@gmail.com>
In-Reply-To: <baa5f75c45c44b7337ba629c2cc5e20876f3f038.camel@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Sun, 15 Mar 2020 18:51:49 +0200
Message-ID: <CAEnQRZDyuE-MoZ_nVtFGCcEFK0LCr7cZyGz_W5Jwx5LRA_Gkqw@mail.gmail.com>
Subject: Re: Project related HELP!
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"
Content-Transfer-Encoding: quoted-printable

On Sun, Mar 15, 2020 at 1:30 PM Payal Kshirsagar
<payalskshirsagar1234@gmail.com> wrote:
>
> On Sun, 2020-03-15 at 16:30 +0530, Payal Kshirsagar wrote:
> > Hello,
> > I am interested in =E2=80=9CImprove Sound Open Firmware debugging suppo=
rt=E2=80=9D
> > project 3 of Linux kernel, I am following
> > https://thesofproject.github.io/latest/getting_started/build-guide/buil=
d-from-scratch.html
> >  this tutorial.
> > I am not understanding what to do in "Copy the config files to
> > .config and build the cross compiler for your target platforms." step
> > means from where do I copy into .config
> > I am sending some screenshots of the task.
> > Please help!
>
> Solved it!

Good to hear that.

