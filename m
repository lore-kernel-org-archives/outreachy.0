X-GM-THRID: 6255961671110492160
X-Received: by 10.112.189.104 with SMTP id gh8mr705196lbc.12.1456580373675;
        Sat, 27 Feb 2016 05:39:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.24.206 with SMTP id 75ls25281lfy.18.gmail; Sat, 27 Feb 2016
 05:39:32 -0800 (PST)
X-Received: by 10.25.136.134 with SMTP id k128mr720268lfd.5.1456580372956;
        Sat, 27 Feb 2016 05:39:32 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id c143si286056wmd.1.2016.02.27.05.39.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Feb 2016 05:39:32 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.22,509,1449529200"; 
   d="scan'208";a="166174182"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2016 14:39:32 +0100
Date: Sat, 27 Feb 2016 14:39:31 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@localhost6.localdomain6
To: Rakhi Sharma <rakhish1994@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: Fix warning
 usleep_range() shouldn't use min ==max args.
In-Reply-To: <1456579543-27301-1-git-send-email-rakhish1994@gmail.com>
Message-ID: <alpine.DEB.2.02.1602271439140.2204@localhost6.localdomain6>
References: <1456579543-27301-1-git-send-email-rakhish1994@gmail.com>
User-Agent: Alpine 2.02 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 27 Feb 2016, Rakhi Sharma wrote:

> As usleep_range should not use min == max args.This patch fixes checkpatch
> warning: usleep_range should not use min == max args; see
> Documentation/timers/timers-howto.txt.

How did you choose the new values?

julia

> 
> Signed-off-by: Rakhi Sharma <rakhish1994@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wlan.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/wilc_wlan.c b/drivers/staging/wilc1000/wilc_wlan.c
> index 83af51b..8d6a457 100644
> --- a/drivers/staging/wilc1000/wilc_wlan.c
> +++ b/drivers/staging/wilc1000/wilc_wlan.c
> @@ -766,7 +766,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  				}
>  				PRINT_WRN(GENERIC_DBG, "[wilc txq]: warn, vmm table not clear yet, wait...\n");
>  				release_bus(wilc, RELEASE_ALLOW_SLEEP);
> -				usleep_range(3000, 3000);
> +				usleep_range(3000, 3100);
>  				acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
>  			}
>  		} while (!wilc->quit);
> @@ -800,7 +800,7 @@ int wilc_wlan_handle_txq(struct net_device *dev, u32 *txq_count)
>  					break;
>  				} else {
>  					release_bus(wilc, RELEASE_ALLOW_SLEEP);
> -					usleep_range(3000, 3000);
> +					usleep_range(3000, 3100);
>  					acquire_bus(wilc, ACQUIRE_AND_WAKEUP);
>  					PRINT_WRN(GENERIC_DBG, "Can't get VMM entery - reg = %2x\n", reg);
>  				}
> -- 
> 1.9.1
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456579543-27301-1-git-send-email-rakhish1994%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
> 

