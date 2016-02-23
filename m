X-GM-THRID: 6254188564975714304
X-Received: by 10.129.145.193 with SMTP id i184mr33352532ywg.32.1456256615055;
        Tue, 23 Feb 2016 11:43:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.33.134 with SMTP id j6ls2553381qgj.88.gmail; Tue, 23 Feb
 2016 11:43:33 -0800 (PST)
X-Received: by 10.140.217.17 with SMTP id n17mr6173634qhb.30.1456256613387;
        Tue, 23 Feb 2016 11:43:33 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id i133si1819123ywe.7.2016.02.23.11.43.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 23 Feb 2016 11:43:33 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id y9so146809125qgd.3
        for <outreachy-kernel@googlegroups.com>; Tue, 23 Feb 2016 11:43:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=LvNaxGEcN2PuajrgTlcQksiwAYN/eeu15UKQAXMMCRQ=;
        b=FkSdY+fDGl0/Uja9A8HaHAVcOttosd3/N8vFJLgUVPrESD10bY2P9N//h8IzbX+nXl
         EEfLWELttz1jAZVM/WqUMBpuOYBNY77VMWLpMkYer1bbWjKoITEeA1QtRZJjzjZBUF7h
         nk7dVzAp0T7GE0wpDp8J77pbp7zbo/yXikm2Ey3uBZEDI007TYTdeXpC5gMz+8VHO2IW
         9W9AMDXRD4JwwP9GS6oW9yjK1ogJW8dIEx/JI1bNVqTT8zjj+g14p+XdSFe30IgsmPBH
         ccAlWSMKq8U9/HtxpBKY3qhaAT1dBWpXetKb233ZsbcRpEj3I/IndTxa4ztag8EYvZSq
         dXZg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=LvNaxGEcN2PuajrgTlcQksiwAYN/eeu15UKQAXMMCRQ=;
        b=WRz427aCXOL1ddIZAwkmD3JZaoIsuukg5XO9xMtXUL33o/TYl384JEbDMILCvLtFDJ
         9RK4xeBxgsweHyZl6jWJtAdylVtrWvtvzH8LHjQPOkP/bdho9lUakBkyCUv6vrkNutOF
         6eUq6J912FKCYIyB+wo1zG2GOrkrJujOWyKJQR9ltujVn7bQZkzNUGYPxx7e+VIC72+b
         PnTuPzt5Ji3BGZufAH+ttEvM1vZCOHsLlpfaS8ZlJe9zARVi++tXaife3PGc+jhxWVVt
         UkOrXaBTCdjSetAzF/CLO0KULqW4ERGtc1JX12KnogQuJZiCar43l5/9J7cNIdcgSYgo
         oqvg==
X-Gm-Message-State: AG10YORyzxwriOw3p8CrqCKaHPnVtRh82S5qnx8c6rMH6fVv8DMPybjoXZJHDgR8MPVkAWr5BDbRYhknEFMWEQ==
MIME-Version: 1.0
X-Received: by 10.140.143.134 with SMTP id 128mr12059002qhp.25.1456256613177;
 Tue, 23 Feb 2016 11:43:33 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Tue, 23 Feb 2016 11:43:33 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6>
References: <20160222184544.GA29097@amitoj-Inspiron-3542>
	<alpine.DEB.2.02.1602232037580.2040@localhost6.localdomain6>
Date: Wed, 24 Feb 2016 01:13:33 +0530
Message-ID: <CA+5yK5GB29KPi7ScAXNf6m10fNm8vphE2pQGrocSot-Vm+RfEw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rts5208: Replace
 pci_enable_device with pcim_enable_device
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 24, 2016 at 1:08 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Tue, 23 Feb 2016, Amitoj Kaur Chawla wrote:
>
>> Replace pci_enable_device with pcim_enable-device. Remove unnecessary
>> pci_disable_device and pci_release_regions from probe and remove
>> functions in rts5208 driver.
>>
>> Additionally, an unnecessary platform_set_drvdata() has been removed
>> since the driver core clears the driver data to NULL after device
>> release or on probe failure. There is no need to manually clear the
>> device driver data to NULL.
>
> Aren't these completely separate issues?  The latter could be good to
> automate.
>
> julia
>
I'll write a separate script for the latter, though a lot of people
have submitted patches for this change so there'll be less occurences
I think, nonetheless will write one.

One of my previous patches that Greg accepted for switching to devm
functions had a similar thing so I thought it was okay. I can divide
the changes into 2 patches and send as a series separately if you
prefer.

Amitoj

