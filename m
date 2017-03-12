X-GM-THRID: 6396667328901152768
X-Received: by 10.46.80.1 with SMTP id e1mr4758812ljb.10.1489342469175;
        Sun, 12 Mar 2017 11:14:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.1.83 with SMTP id 80ls1375000ljb.20.gmail; Sun, 12 Mar 2017
 11:14:28 -0700 (PDT)
X-Received: by 10.25.157.14 with SMTP id g14mr3819839lfe.28.1489342468726;
        Sun, 12 Mar 2017 11:14:28 -0700 (PDT)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x22a.google.com (mail-lf0-x22a.google.com. [2a00:1450:4010:c07::22a])
        by gmr-mx.google.com with ESMTPS id p144si471234wme.2.2017.03.12.11.14.28
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 11:14:28 -0700 (PDT)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) client-ip=2a00:1450:4010:c07::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::22a as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22a.google.com with SMTP id a6so56256725lfa.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 11:14:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=zk63EOA+A2m8LiLA/nij3D6OtFHn00bGHOPn6nipGzs=;
        b=GEKql4bPi19AoQqC1nDdqtAk2Z0MbAqxs1lTaEfKBFe9LBbvZV/BJ0UjE+hRHBFidw
         y0GUIn2YWVRiY9z0ami+F6aiPFTdZQAjGTc8yHImhEQKXwjRjrXzUc+u72iSzspEpq8d
         A251sP21Raq/y/Io5WkDpuxpz02nfyTZSXJ+pmcKFs+Qt1zd1NU04Yx1R1GpJP6QaoCP
         1H/CHgSzOFcEGlBEBUTb9XRXAD0Jp/V9DaIC/KLTWN9/p0GoTqvpXjCEUkHphFGOaAgN
         rEcvCOKZnyInGlVDfSEJ+83ki1BvGHc528IKbNsy1qkSWUMIHUAHWSgWgMdEuEID16/T
         9ifQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=zk63EOA+A2m8LiLA/nij3D6OtFHn00bGHOPn6nipGzs=;
        b=IXPTuZv7nK0pFtg/+gKjTD/fzGMEFUmGFwdDVQh1ouxYp+AT4CCwmENU8eC3s8KnMa
         Gg7I8Z/8g6WjBT5IeBo76Vh/K6jIK0tl8nBeG4m29WaddvzNAYJiC2/1GpsthDM0vQKS
         NCszVJN0YKS0E+7wgr/ihar5D2iNsG3I+C7sjNzsi4WG7Rnv/iNOgdutyPWEznmIFHmQ
         IbiDvFmnEdarCev3/HEjZZAcpeRf3vTmmm67c1evQ3Mftscd5/sXjes2WZUADuEXlwMy
         rtiSlZI4Poszfs5r668uq/q7i8UdXe+MYTzCkM2sN7ZyaOXAarB3QQkczGM/zi3u+Ecz
         p4ng==
X-Gm-Message-State: AMke39l/NoDho0oE7Sj4i3/l0XsBGTxs+BYWzdgGPZ/T5I2z2f/REoxLVgGq9tFf9Pjllt/E27ja7BHrw2XUQg==
X-Received: by 10.46.20.85 with SMTP id 21mr6877386lju.19.1489342468475; Sun,
 12 Mar 2017 11:14:28 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Sun, 12 Mar 2017 11:14:28 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1703121907340.7649@hadrien>
References: <4356b92a-36b0-48b6-b4eb-f1d1df878262@googlegroups.com>
 <20170312174439.GC3711@d830.WORKGROUP> <CALrZqyMST31oTsi0zJDoG3PZsvQGRDmc46F2hFgOe7g1vzv9Kw@mail.gmail.com>
 <alpine.DEB.2.20.1703121907340.7649@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Sun, 12 Mar 2017 23:44:28 +0530
Message-ID: <CALrZqyOKL2h6Tj6k9XL3=F5Oub_xiZ0Rb8g33TWb5wCVKMZqgg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] simran singhal
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Alison Schofield <amsfield22@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 11:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 12 Mar 2017, SIMRAN SINGHAL wrote:
>
>> On Sun, Mar 12, 2017 at 11:14 PM, Alison Schofield <amsfield22@gmail.com> wrote:
>> > On Sun, Mar 12, 2017 at 10:36:10AM -0700, SIMRAN SINGHAL wrote:
>> >> Hi,
>> >>
>> >> I want edit privileges.
>> >
>> > Done. Let me know if it doesn't work.
>> >
>> >
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4356b92a-36b0-48b6-b4eb-f1d1df878262%40googlegroups.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >
>>
>> For sending the patches regarding Coding Task 2, we have to send
>> them normally on outreachy mailing list or follow the instructions given on:
>> https://kernelnewbies.org/IIO_tasks
>
> Follow the instructions, which include the Outreachy mailing list.
>
> You can use the get_maintainer command in the tutorial, but drop the --nol
> (no lists) argument.  Then check that all of the people mentioned on the
> IIO_tasks page are included.
>
> julia

Julia, thanks!
So, for Coding Task 2, we can cc  Outreachy mailing list,
And other maintainers.

