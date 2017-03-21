X-GM-THRID: 6400052199989182464
X-Received: by 10.13.201.65 with SMTP id l62mr9931564ywd.75.1490132657961;
        Tue, 21 Mar 2017 14:44:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.89.216 with SMTP id u24ls336170otg.40.gmail; Tue, 21 Mar
 2017 14:44:17 -0700 (PDT)
X-Received: by 10.157.54.9 with SMTP id w9mr15144714otb.122.1490132657575;
        Tue, 21 Mar 2017 14:44:17 -0700 (PDT)
Return-Path: <karniksayli1995@gmail.com>
Received: from mail-yw0-x22a.google.com (mail-yw0-x22a.google.com. [2607:f8b0:4002:c05::22a])
        by gmr-mx.google.com with ESMTPS id y63si2791030ywe.5.2017.03.21.14.44.17
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 14:44:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) client-ip=2607:f8b0:4002:c05::22a;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of karniksayli1995@gmail.com designates 2607:f8b0:4002:c05::22a as permitted sender) smtp.mailfrom=karniksayli1995@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x22a.google.com with SMTP id i203so4293617ywc.3
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 14:44:17 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Yo7JURsy+L4iLsexVKOMSlAOe4YoAU86GhsZW/MMPwE=;
        b=JwENIDL+gfTW5KHzXEGEDw2zHsOigculGAdfAeWlRq5VuykXtTO+VKuqG1+Vy2+7aG
         dijwMtwFpaOaf+ackcGLC57urUzolg4Mn4CbY7aIKEAx6WzcfJUypKtzX3DnF1wtleD6
         MFH5tL9zhg8/EspySVTRUPg2A6kvjxPC8vxZZb/AsP7j8hRJOrxc/XqBilNfYJ3J5hsN
         I9891KHTUQdJPfeyeIyuY+BHc9W2wPeebCM4pYBQVfrq/TxjBa0xwdyZCAX2PHrJj4BQ
         A6OYkb1SmlWW1s+GyUciKXYfhvL2TIkz69EriThZg1RMOaPUFpFHRe3DGNbOZOanpzPN
         xSYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Yo7JURsy+L4iLsexVKOMSlAOe4YoAU86GhsZW/MMPwE=;
        b=IUZoHrkmS4bGfDEkI3hKN80ymbx2vkoQ3PKZygjSwaU4M2DT/mF2XMrsjSHG3X7BPI
         Z6zCfYRutxC42O97m+CLDI4CgLF3StbBFVrqjvpNJ5kiGommzBqo0n9X+UGJl7A/+wmZ
         2lXGoZ49/nYAAzl5Y5LocH5frNQgmC235aIexXt+i320wPffDVwuyYioGeV+x7nlcr27
         3yJjl90KFA5DiBWaASVBPGEqfSNFvLUg5siWFtDkn6PMpzDBNmRbecYC89dh8W0alqDz
         cutfiCdl8SjFQJJUQmOkxQqF7fl5R5sulJhIPdk9UpGo5iISmIxLk75Gt9z2SCTnJK8z
         mbpQ==
X-Gm-Message-State: AFeK/H2qxOxLwzxFATFS/MyIPA1vcf3+tqgbYaTJqJ2ROqECT1QyTegtTIFqA4KTtustg6BwfdwLmMaEP5Qs9Q==
X-Received: by 10.13.234.215 with SMTP id t206mr20577520ywe.150.1490132657210;
 Tue, 21 Mar 2017 14:44:17 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.37.173.10 with HTTP; Tue, 21 Mar 2017 14:43:36 -0700 (PDT)
In-Reply-To: <20170321203110.GB12475@d830.WORKGROUP>
References: <20170321203110.GB12475@d830.WORKGROUP>
From: sayli karnik <karniksayli1995@gmail.com>
Date: Wed, 22 Mar 2017 03:13:36 +0530
Message-ID: <CAKG5xWh3cd9PLBz_ey3Az-7wN7q4aGCWgVGXv7iTam80nb+odw@mail.gmail.com>
Subject: Re: iio meter patches - same!
To: Alison Schofield <amsfield22@gmail.com>
Cc: arushisinghal19971997@gmail.com, Gargi Sharma <gs051095@gmail.com>, 
	singhalsimran0@gmail.com, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 22, 2017 at 2:01 AM, Alison Schofield <amsfield22@gmail.com> wrote:
> Simran, Gargi, Sayli, Arushi,
>
> With respect to these...
>
> meter/ade7753.c: simran singhal
> meter/ade7754.c: Gargi Sharma
> meter/ade7758_core.c: Sayli Karnik
> meter/ade7759.c: ArushiSinghal
>
> They are all near identical and therefore should have near identical
> solutions.  You could work together, or follow one another, but, in
> the end we don't want to see 4 different flavors of the solution.
> That makes it harder to maintain.
>
> Also - if 'we' can get one reviewed/ACK'd/applied, then we make the
> reviewers and maintainers life easier when we follow it with 3
> similar patches.
>
> Here's where I think you all dancing around...
> You have Lars' feedback from ade7753:
>> It might make sense to reuse the existing lock which currently
>> protects the
>> read/write functions. You can do this by introducing a variant of
>> ade7753_spi_{read,write}_reg_16() that does not take a lock and use
>> these to
>> implement the read-modify-write cycle in a protected section.
>
> I'll add to that:
> They were all using mlock to try to protect the spi read followed by
> write operation.  I don't think the lock was actually doing that.
> I don't see a guarantee that another spi write could not intervene,
> So perhaps there was no real protection.
>
> I'm thinking one function that locks the existing transaction lock, does
> the read, does the write, unlocks.
>
So if I'm not wrong, an ade7758_spi_read_write_reg_8() to do read
followed by write. The ade7758_spi_read_reg_8() stays as is, but with
the lock removed since the write has it's own read code and does not
require a lock?

> Can you all coordinate that please.  This way the next patch we see on
> this is agreed upon by all four.  Once that is applauded ;), the others
> can follow easily!
>
Sure, that'll be better!

thanks,
sayli

> thanks,
> alison
>
>
>

