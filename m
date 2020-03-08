X-GM-THRID: 6801796609244921856
X-Received: by 2002:adf:b601:: with SMTP id f1mr15696588wre.103.1583667538487;
        Sun, 08 Mar 2020 04:38:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a1c:a98b:: with SMTP id s133ls5001517wme.3.gmail; Sun, 08
 Mar 2020 04:38:56 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvKqURQrmQMQu1/Ub6kdEiJb+DtN/IFZh9yESdNHXMQG0ND90zltdtPS8hINnf6VaH4wuZm
X-Received: by 2002:a1c:41c3:: with SMTP id o186mr14621227wma.27.1583667536887;
        Sun, 08 Mar 2020 04:38:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583667536; cv=none;
        d=google.com; s=arc-20160816;
        b=N/4X1f8I4KrNF6kEnzbP6W9yTzL0Q1IYbFyq4392/aD8fAYDajK0/DfMubaJNwFS85
         XFfUoPfatXe5GSMrIbIMKyOCF6mxRimOfGR/+tNUIJbmvmwNwNVqtGUaB81p3Z4BhENx
         +oNujwaqlRD7S5/KUMgfjBHWTwH8g57YlMVkDT8GSFUtC8M4Cp2lyAIybrNy8xcI8D7n
         D/E6YT+/jw1mtF4qv0l0Hsh+3ih2jVRCbApoONzb7Ut6t/SC3SNnNS8S30QMHsQnJ4mv
         o4LavnfzyclYipD6opD+pwogijYlgWyewktwkzE8MyOvmKubHHv1qwRM1po2REJNBEyf
         48wQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=//U7d4xn/tSE1mc5GA4ukCtV+n+l8RFZMY8GXrZbXFs=;
        b=nPVpMP+Nb8Mu4thtyqpxzdK4z6QYjCLZLBzXjfDOS056n9FTx6keqbk10CtaxXZWR/
         Tfi7voDB821cxrafM6ZylB5TJG33koTJVkKGq7585yh3/h0fvKt2ayZp19tdxVsEMPFp
         ReRfZF+9EAP0B8x4xuj1CbalZUMLTJohcxklRbA27ircI2ou9x+NsWgVaCmaM1O8uHAr
         dlrKGp+kELUNV7W879h5b7hoO4l5DMFfbwDdy+ewdj5X3HPuvKxd1ZfMEoRoYc6vRbDL
         OL02B/sJIVx74Y7WYh3afFkMq7ErUsasIIlH8epJt9ISJmkrpcRrmOTaFBHYtYDZF3Bc
         ma8A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id i16si365623wrs.5.2020.03.08.04.38.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 04:38:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.83 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,529,1574118000"; 
   d="scan'208";a="439360683"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 08 Mar 2020 12:38:56 +0100
Date: Sun, 8 Mar 2020 12:38:56 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Shreeya Patel <shreeya.patel23498@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Vaishali Thakkar <vthakkar@vaishalithakkar.in>, helen@koikeco.de, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: Using 4.18.0-rc7+ kernel
In-Reply-To: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.2003081232330.2400@hadrien>
References: <CAND3PyeWnvf4Zu87m_kOBw6Vz7MOwJfpR7wHUyh_udvEDvpJdw@mail.gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Sun, 8 Mar 2020, Shreeya Patel wrote:

> Hi,
> I am currently using 4.18.0-rc7+ custom kernel so to start with my
> contributions is it recommended to compile the latest kernel or it will be
> fine to just update it using the following commands.
> git fetch origin
> git rebase origin/staging-testing
> Since the compilation process is very lengthy and takes a lot of time I
> would like to know if it is just fine to update the kernel rather than
> always upgrading it.

-----------------------------------

You should be able to follow the instructions in the tutorial.  Clone
Greg's staging tree:

https://kernelnewbies.org/OutreachyfirstpatchSetup

Then use the revision control system called git to clone Greg
Kroah-Hartman's staging tree repository:

git clone -b staging-testing
git://git.kernel.org/pub/scm/linux/kernel/git/gregkh/staging.git

-----------------------------------

I'm not sure to understand what you mean by updating and upgrading.  To
keep up with Greg, you can pull.  When you work on a driver in staging,
you should be able to compile just that driver.

https://kernelnewbies.org/Outreachyfirstpatch

Compiling only part of the kernel

There are several ways to compile only part of the kernel:

    make path/file.o: This compiles only a single file. It may not be
sufficient to check changes that affect interactions with other files. It
is possible to build files that are disabled in .config this way, but that
can fail in some cases, e.g. when the file includes architecture-specific
headers.

    make path, e.g. make drivers/staging: This always succeeds. It does
nothing at all because the directory exists.

    make path/, e.g. make drivers/staging/: This descends into that
directory to build all the files in it, but does not try to link the
modules.

    make M=drivers/staging: This seems to try to link the modules in a
previously build vmlinux file. After changing options in .config or
rebasing on a newer git tree, this can fail unless all other files are
built once using make -j2.

Make path/ could be a reasonable choice for a localized change within a
single driver, or for a change localized to drivers staging. In any case,
as a minimum always check that compilation produces a .o file for every
file that your patch changes. If there is no .o file, you have not
compiled the file, and you need to look for other compiler options.

-----------------------------------

There starts to be a lot of information in the tutorial...  Maybe we need
an outreachy project to make it more organized :)

julia

