X-GM-THRID: 6253702006622388224
X-Received: by 10.13.226.84 with SMTP id l81mr8502934ywe.16.1456660744883;
        Sun, 28 Feb 2016 03:59:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.101.34 with SMTP id t31ls2373335qge.98.gmail; Sun, 28 Feb
 2016 03:59:04 -0800 (PST)
X-Received: by 10.31.153.75 with SMTP id b72mr8687944vke.0.1456660744277;
        Sun, 28 Feb 2016 03:59:04 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x22d.google.com (mail-qk0-x22d.google.com. [2607:f8b0:400d:c09::22d])
        by gmr-mx.google.com with ESMTPS id q187si1305307ywf.4.2016.02.28.03.59.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 28 Feb 2016 03:59:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) client-ip=2607:f8b0:400d:c09::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::22d as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x22d.google.com with SMTP id s5so47528932qkd.0
        for <outreachy-kernel@googlegroups.com>; Sun, 28 Feb 2016 03:59:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=v7eoZrHsz140XP2susbhaiKhbyUoE7mxiP6QF25eXaA=;
        b=OXfkRF5/rSmhoUCmE8i1AN7/cDgYid3BZzX6lj6CcLqwy78RWwxfn4+WjEx8jwOgFm
         9EYRngFEEuk3r6OE3gcILlbqYsPITNi3q4Yavi53bTV6GhqvWENTlq0FQBlDS3Ioj08D
         9ViwRWlPe7+Wgr+RX2HlBU9t17wGpzCMnp7TCziFB83ZoG/gL3GKKISg2Ulf++lpJ3IT
         2GSWW3l1EIkTzMn3mOg1IKrBM4x7Q9DKo2GGqHbPCwL2f98Lmji3ZsDFBlXMW9ju1UKf
         rUxWFOu3SakWFdli5DXyBGfStM/TiqfmTMsnsaa8DFHMIOXFFRCg2MPoupxj/sPrYJJV
         Y/KA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=v7eoZrHsz140XP2susbhaiKhbyUoE7mxiP6QF25eXaA=;
        b=koVNnmVkmqC/6O9F7dvyxHCTRuRQCWNLPXI3QlREspp0iexcYbpKoyHOls3ZFFD8xu
         MmjyRlhIekR52eUwYiYzRO3ze3gAjQtPDBBzrxi7kURE++f5wjxifevhDdX12XyVzjN7
         chp4uvZXEcAttL0HTCYNMM9Re6rDHCmJ2ND4pkrAu7fpK70UyGrBDA5L5f121t6IN6te
         Zoi63lu+PZzJojHA0TWOLy8kYCu5FMcRex0xqq2sKPzgEOge7lzuzzPkimjPlArSExxL
         YhHK8YOcwG8DpjYncFUADKqC6rlVuW0EzeaIQardGeZvOxFsdWlHerKdCG+cRNuXejKX
         OnSA==
X-Gm-Message-State: AD7BkJL5ZTt2XzcRAvZ7nkwsEiFviNXB0Zu2SKy5XF7guaKm+tDJuONNVmzBLZ4lLnpw9SaPY/ed15uY+Sq4yQ==
X-Received: by 10.55.81.2 with SMTP id f2mr12784137qkb.87.1456660744101; Sun,
 28 Feb 2016 03:59:04 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.217.215 with HTTP; Sun, 28 Feb 2016 03:58:24 -0800 (PST)
In-Reply-To: <20160226063712.GA19628@kroah.com>
References: <20160221111815.GA27645@Karyakshetra> <20160226063712.GA19628@kroah.com>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Sun, 28 Feb 2016 17:28:24 +0530
Message-ID: <CAFNHFT81VUpYV32eVQuG-xO=du+Pbu4zZriGUKPNV75Odq-QMw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: libcfs: Prefer
 kmalloc_array over kmalloc
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Greg,

I have re-sent all my lustre patches with the typo fixed. Please have a look.

Thanks,
Bhaktipriya

On Fri, Feb 26, 2016 at 12:07 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Sun, Feb 21, 2016 at 04:48:15PM +0530, Bhaktipriya Shridhar wrote:
>> Use kmalloc_array instead of kmalloc for arrays to prevent integer
>> overflows.
>> This was done using Coccinelle:
>>
>> @@
>> expression e1, e2;
>> constant C;
>> type t;
>> @@
>> (
>> - kmalloc(sizeof(e1)*e2, C)
>> + kmalloc_array(e2, sizeof(e1), C)
>> |
>> - kmalloc(e2*sizeof(e1), C)
>> + kmalloc_array(e2, sizeof(e1), C)
>> |
>> - kmalloc(e2*sizeof(t), C)
>> + kmalloc_array(e2, sizeof(t), C)
>> |
>> - kmalloc(sizeof(t)*e2, C)
>> + kmalloc_array(e2, sizeof(t), C)
>> )
>>
>> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
>> ---
>>  drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
>>  1 file changed, 3 insertions(+), 2 deletions(-)
>
> You have sent a bunch of "lustre" patches with a typo in the subject
> line, making my filter miss them, so I've applied a bunch of other
> patches from other developers, and most of these don't apply anymore :(
>
> Can you please fix this up, rebase any outstanding patches you have made
> for this part of the kernel tree (drivers/staging/lustre/) and resend
> them?
>
> thanks,
>
> greg k-h

