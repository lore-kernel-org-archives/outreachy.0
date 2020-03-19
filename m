X-GM-THRID: 6805840770446131200
X-Received: by 2002:a05:600c:2105:: with SMTP id u5mr2327655wml.163.1584608356146;
        Thu, 19 Mar 2020 01:59:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:6802:: with SMTP id w2ls623800wru.6.gmail; Thu, 19 Mar
 2020 01:59:15 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vse0D66DFcc6foSOOFMGFRMLY4oQOu3NBlsGn7/ZjhWd3WTv11gKdGdLhdn1wcVhp7cxe4l
X-Received: by 2002:adf:f3c8:: with SMTP id g8mr411893wrp.351.1584608354906;
        Thu, 19 Mar 2020 01:59:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584608354; cv=none;
        d=google.com; s=arc-20160816;
        b=C0uM8o5WdfjRcmtD0TuvWrP92YOoeTzRjmiBDYRJOB/bs+qukxc8i5hZsX1rw9DLJX
         S3W2cAGsL7OxsWKmVD1AW/ojAE5dS0CVDRc6bSYgqCotq1NX0Rz7y2l0ks+KwsF+BdbC
         OVmP7/F5675aH/PGS9cKx2SMoehYPZ/0CDurRF3J8tVmUYmgerXjXa7ukGnBBf62gkQF
         pRa77lyo0r9PmRNQMrlBYrihVWDwZxbO4441OXqy64S8QFbrGUgSUkQv+TcoidPZd2Hw
         vmeMBeZgRwc+xD61K2aM9Nfv4KF3AlxU6c1XXxGFCkvWaMh2ShmGEGnpUVuHSQCGptyt
         QyCQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=IYdIrz4B9A1imW4B3zqDgpDK1gtVNS8lBg2yzunsI1k=;
        b=ThHwP7zqFRNw+LC0GnQBsoy+VxokmojydMMtKi7uD5Er0o1U5IIIDNXEa0QoJ+1Hg5
         yzGL+NkrBuHKetPNtk//77eOUqjU7UcPaqD0vyl8Y+6OYo9ALTuSEeQIc/oxE5wJj94n
         V/FGwYnuC4cUYyo+OydODb2UaxjJ+mvSs4eXvpKe+V/hh0SVXKsu+nUboLy/KFpZNbSU
         vmM2Ek4/hquiWez///iX9M7dy3KScO9tADYt6eTakgghLC/BYGhZXT8G6WoT4z/jUx9/
         ZXis4UF4bewqGH7AzA8tP8KzScSEcTlkbuqJqs0PLuNlQrvWyApzVNUEVEr2AAM24iiu
         xP5Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id b81si49546wmc.2.2020.03.19.01.59.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 19 Mar 2020 01:59:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,571,1574118000"; 
   d="scan'208";a="342896032"
Received: from abo-173-121-68.mrs.modulonet.fr (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Mar 2020 09:59:14 +0100
Date: Thu, 19 Mar 2020 09:59:14 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: R Veera Kumar <vkor@vkten.in>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    David Kershner <david.kershner@unisys.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: unisys: Documentation:
 Correct a long line in doc
In-Reply-To: <20200319085751.GA1928@tulip.local>
Message-ID: <alpine.DEB.2.21.2003190958530.3010@hadrien>
References: <20200319085751.GA1928@tulip.local>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 19 Mar 2020, R Veera Kumar wrote:

> Correct a long line in documentation to respect the
> 80 character line limit.
> Found using checkpatch.pl.

I have received this patch.

julia


>
> Signed-off-by: R Veera Kumar <vkor@vkten.in>
> ---
> Changes in v2:
>  - Removed the typo change as it was incorrect
>  - Correct the subject line for the changes
>  - Correct the description as well
> ---
>  drivers/staging/unisys/Documentation/overview.txt | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/unisys/Documentation/overview.txt b/drivers/staging/unisys/Documentation/overview.txt
> index f8a4144b239c..cf29f884cbe0 100644
> --- a/drivers/staging/unisys/Documentation/overview.txt
> +++ b/drivers/staging/unisys/Documentation/overview.txt
> @@ -15,12 +15,12 @@ normally be unsharable, specifically:
>  * visorinput - keyboard and mouse
>
>  These drivers conform to the standard Linux bus/device model described
> -within Documentation/driver-api/driver-model/, and utilize a driver named visorbus to
> -present the virtual busses involved. Drivers in the 'visor*' driver set are
> -commonly referred to as "guest drivers" or "client drivers".  All drivers
> -except visorbus expose a device of a specific usable class to the Linux guest
> -environment (e.g., block, network, or input), and are collectively referred
> -to as "function drivers".
> +within Documentation/driver-api/driver-model/, and utilize a driver named
> +visorbus to present the virtual busses involved. Drivers in the 'visor*'
> +driver set are commonly referred to as "guest drivers" or "client drivers".
> +All drivers except visorbus expose a device of a specific usable class to the
> +Linux guest environment (e.g., block, network, or input), and are collectively
> +referred to as "function drivers".
>
>  The back-end for each device is owned and managed by a small,
>  single-purpose service partition in the s-Par firmware, which communicates
> --
> 2.20.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200319085751.GA1928%40tulip.local.
>

