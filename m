X-GM-THRID: 6663286701018841088
X-Received: by 2002:a1c:7910:: with SMTP id l16mr306291wme.8.1551439895212;
        Fri, 01 Mar 2019 03:31:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4141:: with SMTP id c1ls1900960wrq.4.gmail; Fri, 01 Mar
 2019 03:31:34 -0800 (PST)
X-Google-Smtp-Source: APXvYqztzN3u8KdAzg+XkbLr78H7PByB30C68p9UROf2LfFVZGxmZXsmnOvaDybP+iDOc7XGfGjv
X-Received: by 2002:adf:f08c:: with SMTP id n12mr247500wro.7.1551439894537;
        Fri, 01 Mar 2019 03:31:34 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551439894; cv=none;
        d=google.com; s=arc-20160816;
        b=0B/x4A41q75MSVTz39o4vzSObCFUxeppQOkqiHFdYrb1jTph7RRe0MFV9/jQD5skdJ
         frJW4bEq5b4wA7ocMnyjvJpO8+NrgcDAu9jeOTm5pyCPfREd1hHnUPD+n1zpK3iWasPL
         pql/8YljDuRbZm8g4rhLClea5UieHbDt5dv7p2g0ldjV9HNgZwa2/c9GzCoJ/TuTK/CV
         980vrMRKJ5BCwmFcYt1rv7U9snQQsn8gR1jhjT0EFMyhaFpC1FBCF/4ZeBXCUlOD2AtR
         9wHyb3nwEzYE7unIWjkmi10H36F78s01B1VpDdsGX2vs0PLsFYJY5aICiqfUZRP87cnl
         1mIg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=l40LzwXSD0sowpsxZpOiVWkiajVFfR11VUGhbgY+Hak=;
        b=CQ6qPGNwJ0nRX8xfkmgcRvtu6Dvf2ICkMv4p5h8zFmDYLyOQT9oVexS7BclRDcGNBg
         3mCiZUE0a8LonBPwbjDW5e7SCZSVtqFpD0rg0HSN91Qvruxpfo0/YH0j9FHiEjwAaTfe
         f+1t1P9X4VBsGPzMWzd/MH6BTjDUOIPM6prRiFQ8JDfwGGsvAXDBZCtvHY+zleLCYF6f
         nDKqmqhUlP1kWEBMwUzQ2SUCkQb7XDQv657CCTuTQ7D8PyhkCmXnwyL23RaNtPF8n9BD
         DHL7TJlGg/3ZRazA/D0pU0FXiUZsOsftXn51diUdNs3Sn2t4MkmV8hkke5vd/W2WYmfU
         SBkg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 109si823628wrb.0.2019.03.01.03.31.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 03:31:34 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.58,427,1544482800"; 
   d="scan'208";a="297780804"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Mar 2019 12:31:16 +0100
Date: Fri, 1 Mar 2019 12:31:11 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Himadri Pandya <himadri18.07@gmail.com>
cc: Larry.Finger@lwfinger.net, florian.c.schilhabel@googlemail.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/3] fix checkpatch warning: Avoid
 CamelCase
In-Reply-To: <20190301104842.75482-1-himadri18.07@gmail.com>
Message-ID: <alpine.DEB.2.20.1903011230560.6234@hadrien>
References: <20190301051505.55407-1-himadri18.07@gmail.com> <20190301104842.75482-1-himadri18.07@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 1 Mar 2019, Himadri Pandya wrote:

> This patchset renames following three variables of struct _adapter to
> fix checkpatch warning: Avoid CamelCase
>  - bDriverStopped -> driver_stopped
>  - bSurpriseRemoved -> surprise_removed
>  - bSuspended -> suspended
>
> v2:
>  - Change types of these variable to bool as they are used as boolean
>
> *** BLURB HERE ***

You could remove the *** BLURB HERE *** :)

julia

>
> Himadri Pandya (3):
>   staging: rtl8712: rename bDriverStopped to driver_stopped
>   staging: rtl8712: rename bSurpriseRemoved to surprise_removed
>   staging: rtl8712: rename bSuspended to suspended
>
>  drivers/staging/rtl8712/drv_types.h           |  6 ++---
>  drivers/staging/rtl8712/os_intfs.c            |  4 +--
>  drivers/staging/rtl8712/rtl8712_cmd.c         |  6 ++---
>  drivers/staging/rtl8712/rtl8712_io.c          |  4 +--
>  drivers/staging/rtl8712/rtl8712_led.c         |  6 ++---
>  drivers/staging/rtl8712/rtl8712_recv.c        | 16 ++++++------
>  drivers/staging/rtl8712/rtl871x_eeprom.c      | 23 ++++++++--------
>  drivers/staging/rtl8712/rtl871x_ioctl_linux.c | 16 ++++++------
>  drivers/staging/rtl8712/rtl871x_mlme.c        |  6 ++---
>  drivers/staging/rtl8712/rtl871x_pwrctrl.c     |  4 +--
>  drivers/staging/rtl8712/usb_intf.c            | 12 ++++-----
>  drivers/staging/rtl8712/usb_ops_linux.c       | 26 +++++++++----------
>  12 files changed, 64 insertions(+), 65 deletions(-)
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190301104842.75482-1-himadri18.07%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

