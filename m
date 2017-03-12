X-GM-THRID: 6396655727339896832
X-Received: by 10.129.106.70 with SMTP id f67mr13726274ywc.108.1489339440762;
        Sun, 12 Mar 2017 10:24:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls1137973otb.26.gmail; Sun, 12 Mar
 2017 10:24:00 -0700 (PDT)
X-Received: by 10.129.112.73 with SMTP id l70mr13125791ywc.45.1489339440434;
        Sun, 12 Mar 2017 10:24:00 -0700 (PDT)
Return-Path: <gs051095@gmail.com>
Received: from mail-io0-x243.google.com (mail-io0-x243.google.com. [2607:f8b0:4001:c06::243])
        by gmr-mx.google.com with ESMTPS id e196si824472itc.2.2017.03.12.10.24.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:24:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) client-ip=2607:f8b0:4001:c06::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of gs051095@gmail.com designates 2607:f8b0:4001:c06::243 as permitted sender) smtp.mailfrom=gs051095@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x243.google.com with SMTP id f84so11405033ioj.0
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:24:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iXwJpaaMyzLSQWcUCVi3zmkhHkJ7/vfnnWxIrYy5fIA=;
        b=H/atH7CO2ETWmMjJvQncu2NQo1oLv/gLpcNlx/rWpO2b/aSzF23oMjFzShJBb0BHW3
         L7NCFTSQO+jsIJm4XJs7XlCDfNnMv/f3lP/hidWihcMXuHlIZ9OMzRe3nmvOaONuBJ0l
         jpL4kGpbjwz366FbH7xVCn4peghxtYyzSjHT1wBKZl+dZF2WvmEW5jQ930i3rnK16yDb
         DKG7ckcxnq2DlhElaS0VLUYU93MIoUc2oZK3oMXx5sORmCWrcqbzHCnRXQpbkWt+4lJ7
         uWXT1yx8YkDg+yzoJJenTDu0rhw6Y5LmbRmUoTzkSbt5+B8vjeC2PaI0830dAh5lLyfW
         6UOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iXwJpaaMyzLSQWcUCVi3zmkhHkJ7/vfnnWxIrYy5fIA=;
        b=CaHbloO8pkXqMaKQvvG6yR1qvDyL/V4uwQmJ0kn4I56tJ+OHxUHxiFBRNrMWHFUo0K
         k6vNXNJLegEq2GYKdkkQr+FtPOweH4hzjEl+fxadKe3N6nZVkFnEMJCfqgAUh+fhQRBu
         L/nFyuI2VLSCJMr323LTEL4HAV8Y7CebQViRigEmYfqrORUT3kRMCCIj5IYEqvE8j1Ku
         9KXJ5cVuRyOvyWtfF2wx9dpl0A/ysvXYBIDM9fnAhSrRmzD2on7/ea2Zfi0Sggllaj1w
         E9o/iw9dy8U//M1957PfitOrQqPlZZNs5m6L1PTkRVTTMmqZN+t2p4NpNeMbftleMfij
         OhTw==
X-Gm-Message-State: AMke39ka3CQ3Qc/4KdL6TDkFL6QRUbaFlYno2KFYjfNyqd9AfnYINSld5JMHAkJJkcTVt3MpWo/KexG7NZ/A1w==
X-Received: by 10.107.137.226 with SMTP id t95mr24880216ioi.79.1489339440186;
 Sun, 12 Mar 2017 10:24:00 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.36.103.141 with HTTP; Sun, 12 Mar 2017 10:23:29 -0700 (PDT)
In-Reply-To: <20170312171954.GA3711@d830.WORKGROUP>
References: <CAOCi2DHxiahL=K9y6PzytK9wok7nDbOCW6ir4hy9g3ii9oyWxg@mail.gmail.com>
 <20170312171954.GA3711@d830.WORKGROUP>
From: Gargi Sharma <gs051095@gmail.com>
Date: Sun, 12 Mar 2017 22:53:29 +0530
Message-ID: <CAOCi2DF5e4sDAs7q5TVDvC8KdVDBOTSNYimEXZ+MmMfVK_5iZw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Gargi Sharma
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sun, Mar 12, 2017 at 10:49 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> On Sun, Mar 12, 2017 at 10:20:39PM +0530, Gargi Sharma wrote:
>> Hi,
>>
>> Please grant edit priveleges.
>>
>> Thanks!
>> Gargi
>
> Is that "Gargi Sharma" or "GargiSharma" ?

Gargi Sharma, I'm assuming the user name is the same as login name.

Thanks!
Gargi
>
>>
>> --

