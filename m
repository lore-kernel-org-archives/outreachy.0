X-GM-THRID: 6258546120721432576
X-Received: by 10.31.169.130 with SMTP id s124mr9461646vke.1.1457182651742;
        Sat, 05 Mar 2016 04:57:31 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.43.227 with SMTP id e90ls484363qga.74.gmail; Sat, 05 Mar
 2016 04:57:31 -0800 (PST)
X-Received: by 10.140.101.242 with SMTP id u105mr9637684qge.12.1457182651162;
        Sat, 05 Mar 2016 04:57:31 -0800 (PST)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22e.google.com (mail-qg0-x22e.google.com. [2607:f8b0:400d:c04::22e])
        by gmr-mx.google.com with ESMTPS id y131si562983ywc.0.2016.03.05.04.57.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 05 Mar 2016 04:57:31 -0800 (PST)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) client-ip=2607:f8b0:400d:c04::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22e as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x22e.google.com with SMTP id u110so64282922qge.3
        for <outreachy-kernel@googlegroups.com>; Sat, 05 Mar 2016 04:57:31 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=wN7TKFoSpzHpGSV3Z9HS3FzEVvX1Nln+sWiC97h5J7E=;
        b=UP8NE8Iyc9N1WySWJ2vAV7DUHE83Pa9r5vIqiEouQY4Fd66jWLsSMsx8tHXc5pd5wi
         ncGJdam0hgI47VnLBrJTL6Jcp21w+7M0Idq993k+aFvAoFDTdQ3EKKxtgl9ZPiHeHc97
         1EwzAhfRp4sFy7lzL1UP4RHJvSvCTez7KPsmPowLka3wX3nsWiB6rNXnOq0tzVMQsU5E
         xkhg5b93vAUFG27ko2BimAQLzhuvxItAb2BpJTKH+Cx/9TM+uL0ZEg4V3egZPk7Z6P8R
         kB2tWLdyasbcnZ8YL92DnBw+rp5vR9kGP3UK4W/Ni+zXJD+Gl+WbctoXCD6cSLJY7GwL
         BmDA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=wN7TKFoSpzHpGSV3Z9HS3FzEVvX1Nln+sWiC97h5J7E=;
        b=O18sC0NjNoxmHwphfxxxrKHX8/dSMvaTTSlGNVUkDOeWDwR1eZrobEico1byEteTGx
         AIbtvDSKYe3rr300guums40N7xeXiCJoQZSN9ZMun8mQMgW6VxkZwmyxazY4JFhe5gxs
         c3DsQLAMWUZqbmzTyQA9ZMZyDXkDT6Ve3mi7waEE7T0+yMhcNJcCTxWZSDqi/TZ8B4O6
         ldyboXJNht/2arlxutwPqccWLnKFtAvheTkaO32QH3VvMdna89ptaUl6pTksXN2R6o+j
         /0LZITpek3SwtGiLZcebNhWYLqJHU2VHM63Fg403G2Wtkod1L9t5IZ/jaiblFXpxgzxy
         2rKA==
X-Gm-Message-State: AD7BkJJKrc95y5M/k29mvgpyQCI3bnW67G/CX+PNEYMLrBE+8m6uXOyhij31j4bmlkzD6cxxWxliI+9FBHX6xw==
MIME-Version: 1.0
X-Received: by 10.140.93.166 with SMTP id d35mr16353613qge.29.1457182650969;
 Sat, 05 Mar 2016 04:57:30 -0800 (PST)
Received: by 10.140.44.99 with HTTP; Sat, 5 Mar 2016 04:57:30 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1603052137020.2670@hadrien>
References: <20160305123517.GA11630@amitoj-Inspiron-3542>
	<alpine.DEB.2.10.1603052137020.2670@hadrien>
Date: Sat, 5 Mar 2016 18:27:30 +0530
Message-ID: <CA+5yK5F8Ng3KaiAFVHzYHobC=ZDj=LDOOwc-efX72FNwjEv43g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: speakup: Replace del_timer
 with del_timer_sync
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 5, 2016 at 6:07 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sat, 5 Mar 2016, Amitoj Kaur Chawla wrote:
>
>> Use del_timer_sync to ensure timer is stopped on all CPUs before
>> the driver exists.
>
> I think that you need to give more information about the need for this.
> When would the change not be needed, for example?
>
> julia
>

Mention the fact that the timer is not called from a interrupt context
so it is safe to switch to del_timer_sync?

Amitoj

