X-GM-THRID: 6211433707094409216
X-Received: by 10.112.184.170 with SMTP id ev10mr1791597lbc.4.1446213851828;
        Fri, 30 Oct 2015 07:04:11 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.213.66 with SMTP id m63ls196615lfg.102.gmail; Fri, 30 Oct
 2015 07:04:11 -0700 (PDT)
X-Received: by 10.112.181.194 with SMTP id dy2mr460760lbc.11.1446213851202;
        Fri, 30 Oct 2015 07:04:11 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t18si98879wme.0.2015.10.30.07.04.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 30 Oct 2015 07:04:11 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.20,218,1444687200"; 
   d="scan'208";a="185215495"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 30 Oct 2015 15:04:10 +0100
Date: Fri, 30 Oct 2015 15:04:10 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Shraddha Barke <shraddha.6596@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 0/2] Staging: Remove unused header
 files
In-Reply-To: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
Message-ID: <alpine.DEB.2.10.1510301504000.2364@hadrien>
References: <1446213783-30267-1-git-send-email-shraddha.6596@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 30 Oct 2015, Shraddha Barke wrote:

> These patches remove unused header files
>
> Changes in v2-
>  Made commit message clearer

They look better, thanks.

julia

> Shraddha Barke (2):
>   Staging: sm750fb: Remove unused modedb.h file
>   Staging: dgnc: Remove unused #include header file
>
>  drivers/staging/dgnc/dgnc_utils.c |   1 -
>  drivers/staging/sm750fb/modedb.h  | 233 --------------------------------------
>  drivers/staging/sm750fb/sm750.c   |   2 -
>  3 files changed, 236 deletions(-)
>  delete mode 100644 drivers/staging/sm750fb/modedb.h
>
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1446213783-30267-1-git-send-email-shraddha.6596%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

