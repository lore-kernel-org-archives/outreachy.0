X-GM-THRID: 6205781635135176704
X-Received: by 10.112.55.69 with SMTP id q5mr1803494lbp.24.1444896349584;
        Thu, 15 Oct 2015 01:05:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.167.140 with SMTP id q134ls134377lfe.23.gmail; Thu, 15 Oct
 2015 01:05:49 -0700 (PDT)
X-Received: by 10.112.142.195 with SMTP id ry3mr1853689lbb.22.1444896349003;
        Thu, 15 Oct 2015 01:05:49 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q6si1029143wif.2.2015.10.15.01.05.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 01:05:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.17,684,1437429600"; 
   d="scan'208";a="182876034"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 15 Oct 2015 10:05:48 +0200
Date: Thu, 15 Oct 2015 10:05:44 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 00/18] staging: Remove useless
 initialisation
In-Reply-To: <cover.1444895817.git.amitoj1606@gmail.com>
Message-ID: <alpine.DEB.2.10.1510151004560.2350@hadrien>
References: <cover.1444895817.git.amitoj1606@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 15 Oct 2015, Amitoj Kaur Chawla wrote:

> This patchset removes multiple useless intialisations of variables
> which are immediately reassigned.

The patch is probably fine, but in general, you may find that it is more
comfortable not to send quite so many patches at once.

julia

>
> The semantic patch used to find this is:
>
> // <smpl>
> @@
> type T;
> identifier x;
> constant C;
> expression e;
> @@
>
> T x
> - = C
>  ;
> x = e;
> // </smpl>
>
>
> Amitoj Kaur Chawla (18):
>   staging: rtl8723au: hal: Remove useless intialisation
>   staging: rtl8723au: core: rtw_wlan_util: Remove useless intialisation
>   staging: rtl8723au: core: rtw_recv: Remove useless initialisation
>   staging: rtl8723au: core: rtw_ap: Remove useless intialisation
>   staging: media: lirc: Remove useless initialisation
>   staging: media: davinci_vpfe: Remove useless intialisation
>   staging: lustre: ptlrpc: Remove useless initialisation
>   staging: skein: Remove useless initialisation
>   staging: vt6655: Remove useless initialisation
>   staging: vt6656: Remove useless initialisation
>   staging: wilc1000: wilc_wfi_cfgoperations: Remove useless
>     initialisation
>   staging: wilc1000: coreconfigurator: Remove useless initialisation
>   staging: rdma: ipath: ipath_eeprom: Remove useless intialisation
>   staging: rdma: ipath: ipath_init_chip: Remove useless initialisation
>   staging: rdma: hfi1: diag: Remove useless initialisation
>   staging: rdma: hfi1: sysfs: Remove useless initialisation
>   staging: dgnc: dgnc_tty: Remove useless initialisation
>   staging: dgnc: dgnc_driver: Remove useless initialisation
>
>  drivers/staging/dgnc/dgnc_driver.c                   |  2 +-
>  drivers/staging/dgnc/dgnc_tty.c                      |  2 +-
>  drivers/staging/lustre/lustre/ptlrpc/client.c        |  2 +-
>  drivers/staging/media/davinci_vpfe/vpfe_mc_capture.c |  2 +-
>  drivers/staging/media/lirc/lirc_sasem.c              |  2 +-
>  drivers/staging/rdma/hfi1/diag.c                     |  4 ++--
>  drivers/staging/rdma/hfi1/sysfs.c                    |  2 +-
>  drivers/staging/rdma/ipath/ipath_eeprom.c            |  2 +-
>  drivers/staging/rdma/ipath/ipath_init_chip.c         |  2 +-
>  drivers/staging/rtl8723au/core/rtw_ap.c              |  4 ++--
>  drivers/staging/rtl8723au/core/rtw_recv.c            |  6 +++---
>  drivers/staging/rtl8723au/core/rtw_wlan_util.c       |  2 +-
>  drivers/staging/rtl8723au/hal/rtl8723a_bt-coexist.c  |  8 ++++----
>  drivers/staging/skein/skein_api.c                    |  2 +-
>  drivers/staging/vt6655/card.c                        |  2 +-
>  drivers/staging/vt6656/card.c                        |  2 +-
>  drivers/staging/wilc1000/coreconfigurator.c          | 10 +++++-----
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c    |  2 +-
>  18 files changed, 29 insertions(+), 29 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1444895817.git.amitoj1606%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

