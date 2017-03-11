X-GM-THRID: 6396242465121107968
X-Received: by 10.28.133.10 with SMTP id h10mr60544wmd.2.1489244603126;
        Sat, 11 Mar 2017 07:03:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.26 with SMTP id y26ls1311752lja.2.gmail; Sat, 11 Mar
 2017 07:03:22 -0800 (PST)
X-Received: by 10.25.202.67 with SMTP id h3mr3544621lfj.30.1489244602435;
        Sat, 11 Mar 2017 07:03:22 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id 82si246977wmg.3.2017.03.11.07.03.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 07:03:22 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.36,147,1486422000"; 
   d="scan'208";a="264139381"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2017 16:03:22 +0100
Date: Sat, 11 Mar 2017 16:03:08 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tamara Diaconita <diaconitatamara@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/3] Enhance code formatting
In-Reply-To: <20170311140725.18461-1-diaconita.tamara@gmail.com>
Message-ID: <alpine.DEB.2.20.1703111601580.3127@hadrien>
References: <20170311140725.18461-1-diaconita.tamara@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 11 Mar 2017, Tamara Diaconita wrote:

> Trims lines size at 80 characters to fix the checkpatch.pl warning:
> WARNING: line over 80 characters.
>
> Tamara Diaconita (3):
>   staging: wilc1000: Use kernel preferred commenting style
>   staging: wilc1000: Removing extra tabs
>   staging: wilc1000: Rearrange code

The patches in this series appear to build on top of the patches you sent
in a previous series.  If you want to do that, you have to put them all in
a single series, so that one knows the order in which to apply them.

julia


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

