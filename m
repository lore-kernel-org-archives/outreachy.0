X-GM-THRID: 6392835608825298944
X-Received: by 10.46.9.206 with SMTP id 197mr1821485ljj.12.1488453065634;
        Thu, 02 Mar 2017 03:11:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.69.198 with SMTP id s189ls699643lja.6.gmail; Thu, 02 Mar
 2017 03:11:04 -0800 (PST)
X-Received: by 10.46.5.136 with SMTP id 130mr1792797ljf.6.1488453064979;
        Thu, 02 Mar 2017 03:11:04 -0800 (PST)
Return-Path: <singhalsimran0@gmail.com>
Received: from mail-lf0-x242.google.com (mail-lf0-x242.google.com. [2a00:1450:4010:c07::242])
        by gmr-mx.google.com with ESMTPS id y19si122260wmd.0.2017.03.02.03.11.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 02 Mar 2017 03:11:04 -0800 (PST)
Received-SPF: pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) client-ip=2a00:1450:4010:c07::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of singhalsimran0@gmail.com designates 2a00:1450:4010:c07::242 as permitted sender) smtp.mailfrom=singhalsimran0@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x242.google.com with SMTP id r36so5453284lfi.0
        for <outreachy-kernel@googlegroups.com>; Thu, 02 Mar 2017 03:11:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=Aa2DXgLOW5T8HGRHnEIbsLsAjeoDst14xyra6HQPBww=;
        b=AnnwMZ+8mI5U98ur/CrkPj04JxIykQ6aETLUMMvwlBdlK0gKfCQfApI2FIjDDEFzJQ
         n/kyLOFPXn+b9Qv4LFnkTANT0XIlE/AVF9LkrZvFYBgVc4M2u2nZ9nayCfusKrbgjSTq
         zW22woZR/PqVNsItig103JOAXVBlD1hLLjCF7OYR++uylnvT101WYatWZufcgOzxCHC7
         4xYM22MlF/99tZklDaE5qzj6dh/jgTX4thC7ew5eUhsexIWDG7xuATSbPA+6R/7qyTPT
         v9iA4t4ixLNNWIFaSs00I9F8t1VUTmYjUD6kRbt9zOpacznkyHFQsrD4nq/kzUFx+c5O
         qsPA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=Aa2DXgLOW5T8HGRHnEIbsLsAjeoDst14xyra6HQPBww=;
        b=qHvaf+CA38vo28HQiQTf1CAIk2Nj85eeh2h1rt8iEZV144Yv1p1IStqBnjqMrhQDfd
         prwpuVVFuG1DswMdptB/UePRMKqnlRRvNTj7rfHTHVOcX7jnIkVrJe1Qnw22gAA9rCBa
         l3fa4bnRAN+HZggl4ZPIdDt5LZHqbsUQdadHmSkS+9CDuf1QWbFR/ctOhhEDzj3esW0O
         GhO/Vc1uZR1GD3ZFsLlaL+JVkCYbJto25K3HqwxNZSdMElsW0rYSdHZxNWq4tFcnLTq5
         kBRcHngbbYnm/KkQcQWYiH3Pg0OeyIp+AbcKWQUo6QO6z1njJKZdP61FzXpXVLmPca1u
         aYNA==
X-Gm-Message-State: AMke39nMTraQZUI8/DhPLwFdIhGKCRHvprVcs9XFHDRWWBW7W9QRUA7xGV1tTeqaC6SChLQg2berOs0ONtNa6g==
X-Received: by 10.25.233.201 with SMTP id j70mr4218108lfk.20.1488453064264;
 Thu, 02 Mar 2017 03:11:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.25.15.39 with HTTP; Thu, 2 Mar 2017 03:11:03 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1703021050020.3414@hadrien>
References: <1488448146-29452-1-git-send-email-singhalsimran0@gmail.com>
 <alpine.DEB.2.20.1703021047350.3414@hadrien> <alpine.DEB.2.20.1703021050020.3414@hadrien>
From: SIMRAN SINGHAL <singhalsimran0@gmail.com>
Date: Thu, 2 Mar 2017 16:41:03 +0530
Message-ID: <CALrZqyNGZcP8c9oeS65r-PRTPpwcn664iB2WvWdx3ccD5KRRLg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/6] staging: wlan-ng: Fix sparse
 warning of restricted __le16
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, devel@driverdev.osuosl.org, 
	linux-kernel@vger.kernel.org, sergio.paracuellos@gmail.com, 
	Juliana Rodrigues <juliana.orod@gmail.com>, thomas.petazzoni@free-electrons.com, 
	noralf@tronnes.org, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 2, 2017 at 3:20 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Thu, 2 Mar 2017, Julia Lawall wrote:
>
>>
>>
>> On Thu, 2 Mar 2017, simran singhal wrote:
>>
>> > This patch fixes the following sparse warning:
>> > warning: cast to restricted __le16
>>
>> You commit message should not say just fix X.  What have you done to carry
>> out the fix and why is this the correct approach?
>
> This comment applies to all of the patches in the series.
>
> julia
>
The changes and sparse warnings for them seems reasonable to me as
after doing the
change sparse was not showing error like cast to __le16 or something like this.
Also it compiled perfectly.
>>
>> julia
>>
>> >
>> > Signed-off-by: simran singhal <singhalsimran0@gmail.com>
>> > ---
>> >  drivers/staging/wlan-ng/prism2sta.c | 51 ++++++++++++++++++-------------------
>> >  1 file changed, 25 insertions(+), 26 deletions(-)
>> >
>> > diff --git a/drivers/staging/wlan-ng/prism2sta.c b/drivers/staging/wlan-ng/prism2sta.c
>> > index 984804b..82d3a70 100644
>> > --- a/drivers/staging/wlan-ng/prism2sta.c
>> > +++ b/drivers/staging/wlan-ng/prism2sta.c
>> > @@ -372,10 +372,9 @@ static int prism2sta_mlmerequest(struct wlandevice *wlandev,
>> >                     qualmsg->noise.status =
>> >                         P80211ENUM_msgitem_status_data_ok;
>> >
>> > -                   qualmsg->link.data = le16_to_cpu(hw->qual.cq_curr_bss);
>> > -                   qualmsg->level.data =
>> > -                           le16_to_cpu(hw->qual.asl_curr_bss);
>> > -                   qualmsg->noise.data = le16_to_cpu(hw->qual.anl_curr_fc);
>> > +                   qualmsg->link.data = hw->qual.cq_curr_bss;
>> > +                   qualmsg->level.data = hw->qual.asl_curr_bss;
>> > +                   qualmsg->noise.data = hw->qual.anl_curr_fc;
>> >                     qualmsg->txrate.data = hw->txrate;
>> >
>> >                     break;
>> > @@ -603,10 +602,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>> >     }
>> >
>> >     /* get all the nic id fields in host byte order */
>> > -   hw->ident_nic.id = le16_to_cpu(hw->ident_nic.id);
>> > -   hw->ident_nic.variant = le16_to_cpu(hw->ident_nic.variant);
>> > -   hw->ident_nic.major = le16_to_cpu(hw->ident_nic.major);
>> > -   hw->ident_nic.minor = le16_to_cpu(hw->ident_nic.minor);
>> > +   hw->ident_nic.id = hw->ident_nic.id;
>> > +   hw->ident_nic.variant = hw->ident_nic.variant;
>> > +   hw->ident_nic.major = hw->ident_nic.major;
>> > +   hw->ident_nic.minor = hw->ident_nic.minor;
>> >
>> >     netdev_info(wlandev->netdev, "ident: nic h/w: id=0x%02x %d.%d.%d\n",
>> >                 hw->ident_nic.id, hw->ident_nic.major,
>> > @@ -622,10 +621,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>> >     }
>> >
>> >     /* get all the private fw id fields in host byte order */
>> > -   hw->ident_pri_fw.id = le16_to_cpu(hw->ident_pri_fw.id);
>> > -   hw->ident_pri_fw.variant = le16_to_cpu(hw->ident_pri_fw.variant);
>> > -   hw->ident_pri_fw.major = le16_to_cpu(hw->ident_pri_fw.major);
>> > -   hw->ident_pri_fw.minor = le16_to_cpu(hw->ident_pri_fw.minor);
>> > +   hw->ident_pri_fw.id = hw->ident_pri_fw.id;
>> > +   hw->ident_pri_fw.variant = hw->ident_pri_fw.variant;
>> > +   hw->ident_pri_fw.major = hw->ident_pri_fw.major;
>> > +   hw->ident_pri_fw.minor = hw->ident_pri_fw.minor;
>> >
>> >     netdev_info(wlandev->netdev, "ident: pri f/w: id=0x%02x %d.%d.%d\n",
>> >                 hw->ident_pri_fw.id, hw->ident_pri_fw.major,
>> > @@ -648,10 +647,10 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>> >     }
>> >
>> >     /* get all the station fw id fields in host byte order */
>> > -   hw->ident_sta_fw.id = le16_to_cpu(hw->ident_sta_fw.id);
>> > -   hw->ident_sta_fw.variant = le16_to_cpu(hw->ident_sta_fw.variant);
>> > -   hw->ident_sta_fw.major = le16_to_cpu(hw->ident_sta_fw.major);
>> > -   hw->ident_sta_fw.minor = le16_to_cpu(hw->ident_sta_fw.minor);
>> > +   hw->ident_sta_fw.id = hw->ident_sta_fw.id;
>> > +   hw->ident_sta_fw.variant = hw->ident_sta_fw.variant;
>> > +   hw->ident_sta_fw.major = hw->ident_sta_fw.major;
>> > +   hw->ident_sta_fw.minor = hw->ident_sta_fw.minor;
>> >
>> >     /* strip out the 'special' variant bits */
>> >     hw->mm_mods = hw->ident_sta_fw.variant & GENMASK(15, 14);
>> > @@ -683,11 +682,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>> >     /* get all the Compatibility range, modem interface supplier
>> >      * fields in byte order
>> >      */
>> > -   hw->cap_sup_mfi.role = le16_to_cpu(hw->cap_sup_mfi.role);
>> > -   hw->cap_sup_mfi.id = le16_to_cpu(hw->cap_sup_mfi.id);
>> > -   hw->cap_sup_mfi.variant = le16_to_cpu(hw->cap_sup_mfi.variant);
>> > -   hw->cap_sup_mfi.bottom = le16_to_cpu(hw->cap_sup_mfi.bottom);
>> > -   hw->cap_sup_mfi.top = le16_to_cpu(hw->cap_sup_mfi.top);
>> > +   hw->cap_sup_mfi.role = hw->cap_sup_mfi.role;
>> > +   hw->cap_sup_mfi.id = hw->cap_sup_mfi.id;
>> > +   hw->cap_sup_mfi.variant = hw->cap_sup_mfi.variant;
>> > +   hw->cap_sup_mfi.bottom = hw->cap_sup_mfi.bottom;
>> > +   hw->cap_sup_mfi.top = hw->cap_sup_mfi.top;
>> >
>> >     netdev_info(wlandev->netdev,
>> >                 "MFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
>> > @@ -707,11 +706,11 @@ static int prism2sta_getcardinfo(struct wlandevice *wlandev)
>> >     /* get all the Compatibility range, controller interface supplier
>> >      * fields in byte order
>> >      */
>> > -   hw->cap_sup_cfi.role = le16_to_cpu(hw->cap_sup_cfi.role);
>> > -   hw->cap_sup_cfi.id = le16_to_cpu(hw->cap_sup_cfi.id);
>> > -   hw->cap_sup_cfi.variant = le16_to_cpu(hw->cap_sup_cfi.variant);
>> > -   hw->cap_sup_cfi.bottom = le16_to_cpu(hw->cap_sup_cfi.bottom);
>> > -   hw->cap_sup_cfi.top = le16_to_cpu(hw->cap_sup_cfi.top);
>> > +   hw->cap_sup_cfi.role = hw->cap_sup_cfi.role;
>> > +   hw->cap_sup_cfi.id = hw->cap_sup_cfi.id;
>> > +   hw->cap_sup_cfi.variant = hw->cap_sup_cfi.variant;
>> > +   hw->cap_sup_cfi.bottom = hw->cap_sup_cfi.bottom;
>> > +   hw->cap_sup_cfi.top = hw->cap_sup_cfi.top;
>> >
>> >     netdev_info(wlandev->netdev,
>> >                 "CFI:SUP:role=0x%02x:id=0x%02x:var=0x%02x:b/t=%d/%d\n",
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1488448146-29452-1-git-send-email-singhalsimran0%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1703021047350.3414%40hadrien.
>> For more options, visit https://groups.google.com/d/optout.
>>

