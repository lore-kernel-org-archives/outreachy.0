X-GM-THRID: 6949457058068430848
X-Received: by 2002:a5d:4fc7:: with SMTP id h7mr1455558wrw.23.1618056751276;
        Sat, 10 Apr 2021 05:12:31 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:5348:: with SMTP id t8ls315092wrv.2.gmail; Sat, 10 Apr
 2021 05:12:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJy/HVWRn+PiAt4lR7M2uoWEL7M4VMSpG4GBxYIKcDXvr196JdIYE8c8s3bkJ5xZdmdGfBzB
X-Received: by 2002:a05:6000:251:: with SMTP id m17mr22558057wrz.171.1618056749916;
        Sat, 10 Apr 2021 05:12:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618056749; cv=none;
        d=google.com; s=arc-20160816;
        b=hLj6a+DvS5Z0V820cQfxIq+JsRbSXJ0eVCsiGHZc/jbRnwa1Umy3qrSw73o67ILlXA
         e5rgp3sEVB5OUrlhkeda3p/PO/DaZS2RCN6S3hVWj1DYorjMwuMZ8hv7zCII6w4iiKnQ
         illv6HeaZZxSTldRSRZSiWvahTJKJZcw+91LCYrby/CdTP7llx1ba9yS+GBCD6KKdnCr
         VIXcyPA29RIUZJhWvcCpzs/oJ6hgn2Ybq3m84P1M3uPBwJxn+pZpWG9SEq+4RASg5zX4
         TqTuZc1qHfyLLi0rhC3VCjVY7/khTzZKK/SMwYVGwBIDLMbH9iS57HvFS4iuV3nLuwn3
         nPIw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=jWmZMUKDlBn3lvhWbkxRNzphul4z4aLLI5BOo4l2gN4=;
        b=IZyw9RFz6FlDlTRjpBKiNv1iriIc6utcQAqF4Qrl0vBhbld8A5xV/9upbhsvjx8Sa0
         /p2P0ACAMX6RWo4B+t4S1K6oMH8Yx8vPrwL0xlGRjfPxDpStZblC0MgBbBLj7o0REXes
         IOKCgFzD0obezXxA3leFZIN07aioFgTEAikPXddnDg+rYnvVyxmXvZ+CMCEkZuzNZTdg
         4WL6DAnzmVNxEn4eL1LU55GpFKXYcgP/PFrnDGGEHwiXCWrgyZXoecm3Wvy9VWeuZQ71
         zRbKPD2mKdkI5WQcUXDtNolKrLKeW+99ny1AsQp3CyCQ3H6zfB76kICIOTB+L+EeAyB1
         6HDQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id i16si360367wmq.2.2021.04.10.05.12.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 10 Apr 2021 05:12:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3Akl16mapN9b9TyCOZpprLQYcaV5rzeYIsi2QD?=
 =?us-ascii?q?101hICF9WMqeisyogbAnxQb54QxhO00ItNicNMC7K0/02oVy5eAqUIuKeCnDlC?=
 =?us-ascii?q?+WIJp57Y3kqgeBJwTb+vRG3altN4hyYeefMXFAgcz34Ba1Hr8bqbHtzImSif7a?=
 =?us-ascii?q?3zNRS2hRB51I1RtzCQqQDyRNJTVuOJxRLvWh2vY=3D?=
X-IronPort-AV: E=Sophos;i="5.82,210,1613430000"; 
   d="scan'208";a="378283903"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 10 Apr 2021 14:12:29 +0200
Date: Sat, 10 Apr 2021 14:12:28 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: rtl8723bs: Change the
 type and use of a variable
In-Reply-To: <2763630.ZYQqkGPH9U@localhost.localdomain>
Message-ID: <alpine.DEB.2.22.394.2104101410350.2975@hadrien>
References: <20210410092232.15155-1-fmdefrancesco@gmail.com> <10115279.QsZogQpAqX@localhost.localdomain> <alpine.DEB.2.22.394.2104101334190.2975@hadrien> <2763630.ZYQqkGPH9U@localhost.localdomain>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 10 Apr 2021, Fabio M. De Francesco wrote:

> On Saturday, April 10, 2021 1:37:30 PM CEST Julia Lawall wrote:
> > > That variable has global scope and is assigned at least in:
> > What do you mean by global scope?  None of the following look like
> > references to global variables.
> >
> > julia
> I just mean that fw_current_in_ps_mode is a field of a struct in a .h file
> included everywhere in this driver and that the functions whom the
> following assignments belong to have not the "static" type modifier.

OK, but a field in a structure is not a variable, and this is not what
scope means.

int x;

outside of anything is a global variable (global scope).

int foo() {
  int x;
  ...
}

Here x is a local variable.  Its scope is the body of the function.

int foo() {
  if (abc) {
    int x;
    ...
  }
}

Here x is a local variable, but its scope is only in the if branch.

julia

>
> Thanks,
>
> Fabio
> >
> > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:368:
> > > pwrpriv->fw_current_in_ps_mode = false;
> > >
> > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:380:
> > > pwrpriv->fw_current_in_ps_mode = true;
> > >
> > > drivers/staging/rtl8723bs/hal/rtl8723b_hal_init.c:433:
> > > adapter_to_pwrctl(padapter)->fw_current_in_ps_mode = false;
> > >
> > > drivers/staging/rtl8723bs/core/rtw_pwrctrl.c:981:
> > > pwrctrlpriv->fw_current_in_ps_mode = false;
>
>
>
>
>

