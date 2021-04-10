X-GM-THRID: 6949457058068430848
X-Received: by 2002:adf:f303:: with SMTP id i3mr23175719wro.310.1618059762568;
        Sat, 10 Apr 2021 06:02:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6000:162d:: with SMTP id v13ls410766wrb.1.gmail; Sat, 10
 Apr 2021 06:02:41 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzRIjn+RWIoKdt/u0i83GAnMgxbtkX1tlgjofNV5OLS6K9v6Oxc+cqOr8rEUAMjFRVQ/zEZ
X-Received: by 2002:adf:f186:: with SMTP id h6mr6089366wro.89.1618059761273;
        Sat, 10 Apr 2021 06:02:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618059761; cv=none;
        d=google.com; s=arc-20160816;
        b=d3omonNFRW3KAry6hjf8s5daqppHV6O5aCybiW4N2xR4VubUyi8W7mfgIjl7n8Pc88
         p87iwnODhaySK4XJSifiU2E4qCEsJJyq3ERGnp6ouGkS5V8thZpCA4thXZ/EZbnd5iph
         zQY7NhhOouuzCZ+0qkTT2pibR/SbFZp35SKDjjrdAtrjqa1yS19YMmQsQzJi6yA/dKDU
         XmxHBWzxcYLb209sQdXbmOfLuvusjJ/kZzNR+d6fGJygGRz0feLGwdMXTv11nTLW3CKL
         CIP+Yw33b0o9xT4zCS2Pn/ofzSL8GVvJ+9JiUnMjBUyVytJdYy4fQJu0VLyYsnmZsrhG
         ubCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:references:in-reply-to
         :message-id:date:subject:cc:to:from:dkim-signature;
        bh=Do6TOYC7++a6IT3LFrIbNRxGi7wBbVzvSmX3FLO0FdM=;
        b=WwFhdzc9+56BKmEzgec1cn+63B8RKLBI6/AHPOEkQm3drgHhWIU5V8kU+O1Ky7FTOv
         6zizWv8x9bj0KGwSqsjxosjO6OvoYXBTU2K7RWEixVLaA4PHc9j7kP7Bxh70Getu61uI
         gRzp4dQtYYWGee7qgGdPjdQcyTYZECUkXbT+l/ekFVlobSiXv3UgnM3oaeXg/RfNDWrR
         EKMwVBYU1CnYpTydmsd3P78RtUcChg40SkBoqhio4vnSN4mA814lqcGGGTjGt22zXRAC
         aMxJPRORggZlH+Il2ki7lOt/2PqDhaflfE9Dd+Cz2vzjY11uOdo0Iw1nUMjXel5PrC5C
         BEDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HU+wWxvi;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <fmdefrancesco@gmail.com>
Received: from mail-ed1-x52b.google.com (mail-ed1-x52b.google.com. [2a00:1450:4864:20::52b])
        by gmr-mx.google.com with ESMTPS id p65si1147253wmp.0.2021.04.10.06.02.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Sat, 10 Apr 2021 06:02:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) client-ip=2a00:1450:4864:20::52b;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=HU+wWxvi;
       spf=pass (google.com: domain of fmdefrancesco@gmail.com designates 2a00:1450:4864:20::52b as permitted sender) smtp.mailfrom=fmdefrancesco@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ed1-x52b.google.com with SMTP id m3so9645876edv.5
        for <outreachy-kernel@googlegroups.com>; Sat, 10 Apr 2021 06:02:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=from:to:cc:subject:date:message-id:in-reply-to:references
         :mime-version:content-transfer-encoding;
        bh=Do6TOYC7++a6IT3LFrIbNRxGi7wBbVzvSmX3FLO0FdM=;
        b=HU+wWxvizyxRF+Ep5QdHxWya1Iq41OOSwWEAJ3CM/e50CLK5mj0KZzaidwqcU4gjK9
         Y2ipiTZ7bLwqlshB9tPJRoxlrCeaS/kyi2vuNjhnLNYtlro+v4fPFIy8sIapQ/hjSxgh
         aGQ1N0ZgVqXQ1YBJPHsoerNgrFIzvlhGZ0+4gGt+UDBfZnN9hUE37O+Qx23GbeLGjotU
         s14JGPwH2fO4KHJNPV/lOfuD8hgPYjQN1JnsEjuBKVVKHRp7K3QZARoPI7c2JSH8stPU
         EGmqx3RnE3HpWTN85ZzS7wGjuOeYiQ/nV2DV3GBRGbdqyMOgVzqCmhWJL9/ikThAXw08
         OO6g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
         :references:mime-version:content-transfer-encoding;
        bh=Do6TOYC7++a6IT3LFrIbNRxGi7wBbVzvSmX3FLO0FdM=;
        b=WECMkpHu6LJ/dxUQcQHZ6zmsRwU68zsjwbfO11QaB7QmB9F/PFokClk823tUc+wobX
         /IjvHvaSSl+fHkm85xV4Xa8C6MLJr5y2pMMyfqFrt9mMJb1ZapnW9j8G55Ll1pMP2pcb
         eaFnN9ImqvNDvscNbMX6E5tfvqk/5xjmSxtBf9imge8n67xdes6xCx0cq5X6RnaghYPe
         is0aiUMbW2QtO3e9/2lcrFO3LMc8F45oCdNtdIJKTiFIBZhVzt+GGXqWzj77g+WaQFNv
         GTG4Kv1ujTUOBJFBgCEnxx9ygnuptXRG9XK5m+FwDTLWBddHMIoEqdL1f6rcaMgTVIjl
         pmWw==
X-Gm-Message-State: AOAM530RDMPLHjnIKtB9g51/wyQWwScH23L3uIECghNbHSstqWvWMMGS
	vEV2Oh+RksXWQ/bihVWosys=
X-Received: by 2002:a05:6402:614:: with SMTP id n20mr21433069edv.58.1618059761100;
        Sat, 10 Apr 2021 06:02:41 -0700 (PDT)
Return-Path: <fmdefrancesco@gmail.com>
Received: from localhost.localdomain (host-95-237-55-30.retail.telecomitalia.it. [95.237.55.30])
        by smtp.gmail.com with ESMTPSA id bf14sm3081490edb.67.2021.04.10.06.02.40
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Sat, 10 Apr 2021 06:02:40 -0700 (PDT)
From: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
To: Julia Lawall <julia.lawall@inria.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the type and use of a variable
Date: Sat, 10 Apr 2021 15:02:39 +0200
Message-ID: <2186059.xkuF2sVEJi@localhost.localdomain>
In-Reply-To: <alpine.DEB.2.22.394.2104101410350.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <2763630.ZYQqkGPH9U@localhost.localdomain> <alpine.DEB.2.22.394.2104101410350.2975@hadrien>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="US-ASCII"

On Saturday, April 10, 2021 2:12:28 PM CEST Julia Lawall wrote:
> On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:
> > On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > > > That variable has global scope and is assigned at least in:
> > > What do you mean by global scope?  None of the following look like
> > > references to global variables.
> > > 
> > > julia
> > 
> > I just mean that fw_current_in_ps_mode is a field of a struct in a .h
> > file included everywhere in this driver and that the functions whom
> > the following assignments belong to have not the "static" type
> > modifier.
> OK, but a field in a structure is not a variable, and this is not what
> scope means.
>
You're right, a field in a structure is not a variable.
> 
> int x;
> 
> outside of anything is a global variable (global scope).
> 
> int foo() {
>   int x;
>   ...
> }
> 
> Here x is a local variable.  Its scope is the body of the function.
> 
> int foo() {
>   if (abc) {
>     int x;
>     ...
>   }
> }
> 
> Here x is a local variable, but its scope is only in the if branch.
>
And you're right again: I needed a little refresh of my knowledge of C.

I've searched again in the code for the purpose of finding out if that 
struct is initialized with global scope but I didn't find anything. I 
didn't even find any dynamic allocation within functions that returns 
pointers to that struct.

Therefore, according to Greg's request, I'll delete that stupid 'if' 
statement in the patch series v2 that I'm about to submit.

I've really appreciated your help.

Thanks,

Fabio
> 
> julia
> 
> > Thanks,
> > 
> > Fabio
> > 
> > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> > > > pwrpriv->fw_current_in_ps_mode = false;
> > > > 
> > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> > > > pwrpriv->fw_current_in_ps_mode = true;
> > > > 
> > > > drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> > > > adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> > > > 
> > > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> > > > pwrctrlpriv->fw_current_in_ps_mode = false;





