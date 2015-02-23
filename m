X-GM-THRID: 2595026370560
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fc53a3572afbdb6f
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.4.229 with SMTP id n5mr1134137lan.1.1424682493141;
        Mon, 23 Feb 2015 01:08:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.224.129 with SMTP id rc1ls483162lac.48.gmail; Mon, 23 Feb
 2015 01:08:12 -0800 (PST)
X-Received: by 10.152.19.100 with SMTP id d4mr1134766lae.7.1424682492539;
        Mon, 23 Feb 2015 01:08:12 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si627160wib.3.2015.02.23.01.08.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:08:12 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="100970161"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 10:08:12 +0100
Date: Mon, 23 Feb 2015 10:08:05 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Navya Sri Nizamkari <navyasri.tech@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] staging: rtl8192u: Remove commented
 header to improve code style.
In-Reply-To: <cover.1424640704.git.navyasri.tech@gmail.com>
Message-ID: <alpine.DEB.2.10.1502231007430.2479@hadrien>
References: <cover.1424640704.git.navyasri.tech@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Mon, 23 Feb 2015, Navya Sri Nizamkari wrote:

> This patchset improves the code style in files of ieee80211
> by removing the header <linux/config.h> which is commented
> out as it is not used in modern linux system.
> This change was suggested by Arnd Bergmann.

Nice to get rid of them all at once :)

julia

> Navya Sri Nizamkari (6):
>   staging: rtl8192u: Remove commented header.
>   staging: rtl8192u: Remove commented header.
>   staging: rtl8192u: Remove commented header.
>   staging: rtl8192u: Remove commented header.
>   staging: rtl8192u: Remove commented header.
>   staging: rtl8192u: Remove commented header.
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_ccmp.c | 1 -
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_tkip.c | 1 -
>  drivers/staging/rtl8192u/ieee80211/ieee80211_crypt_wep.c  | 1 -
>  drivers/staging/rtl8192u/ieee80211/ieee80211_module.c     | 1 -
>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c         | 1 -
>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c         | 1 -
>  6 files changed, 6 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/cover.1424640704.git.navyasri.tech%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

