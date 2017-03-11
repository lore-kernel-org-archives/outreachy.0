X-GM-THRID: 6396242465121107968
X-Received: by 10.28.46.200 with SMTP id u191mr49819wmu.22.1489244499070;
        Sat, 11 Mar 2017 07:01:39 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls1210722lja.1.gmail; Sat, 11 Mar 2017
 07:01:38 -0800 (PST)
X-Received: by 10.25.29.11 with SMTP id d11mr3468097lfd.14.1489244498512;
        Sat, 11 Mar 2017 07:01:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si273126wmd.0.2017.03.11.07.01.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 07:01:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,147,1486422000"; 
   d="scan'208";a="216393033"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 16:01:37 +0100
Date: Sat, 11 Mar 2017 16:01:23 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Enhance code formatting
In-Reply-To: <20170311140725.18461-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703111600530.3127@hadrien>
References: <20170311140725.18461-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

The subject line of the cover letter needs to include the name of the
subsystem affected, like all of the ther patches in the series.

julia

On Sat, 11 Mar 2017, Tamara Diaconita wrote:

> Trims lines size at 80 characters to fix the checkpatch.pl warning:
> WARNING: line over 80 characters.
>
> Tamara Diaconita (3):
>   staging: wilc1000: Use kernel preferred commenting style
>   staging: wilc1000: Removing extra tabs
>   staging: wilc1000: Rearrange code
>
>  drivers/staging/wilc1000/wilc_spi.c | 53 +++++++++++++++++++++++--------------
>  1 file changed, 33 insertions(+), 20 deletions(-)
>
> --
> 2.9.3
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170311140725.18461-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

