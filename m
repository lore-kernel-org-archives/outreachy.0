X-GM-THRID: 6331206604146343936
X-Received: by 10.46.69.10 with SMTP id s10mr2595739lja.1.1474101975481;
        Sat, 17 Sep 2016 01:46:15 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.71.149 with SMTP id u143ls564277lja.27.gmail; Sat, 17 Sep
 2016 01:46:14 -0700 (PDT)
X-Received: by 10.25.24.147 with SMTP id 19mr214490lfy.18.1474101974633;
        Sat, 17 Sep 2016 01:46:14 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v132si867399wmf.1.2016.09.17.01.46.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Sep 2016 01:46:14 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,349,1470693600"; 
   d="scan'208";a="193748183"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 10:46:13 +0200
Date: Sat, 17 Sep 2016 10:46:12 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Bhumika Goyal <bhumirks@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com, 
    ganesh.krishna@microchip.com, aditya.shankar@microchip.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Move extern
 declaration to header
In-Reply-To: <1474098886-6239-1-git-send-email-bhumirks@gmail.com>
Message-ID: <alpine.DEB.2.10.1609171042210.3113@hadrien>
References: <1474098886-6239-1-git-send-email-bhumirks@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, Bhumika Goyal wrote:

> Move extern declaration in wilc_wfi_cfgoperations.c to the
> respective header wilc_wfi_cfgoperations.h. Extern
> removed using coccinelle and other changes done by hand.

With grep, it looks to me like these functions are only used in
linux_wlan.c.  There is a declaration in wilc_wfi_cfgoperations.c, but no
use.  Thus, it looks like the functions could be static.  Furthermore, if
the declaration of the wilc_netdev_ops structure were moved lower in the
file, perhaps the forward declarations could be dropped completely.

Be sure that you can compile the whole driver to check this.  There is
always the possibility of something strange being done with a macro that
could obscure another use.

julia

> Script:
> @@
> identifier func;
> type T;
> @@
> - extern
> T func(...);
>
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
>  2 files changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index 2c2e8ac..3b26130 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> @@ -90,9 +90,6 @@ static const struct wiphy_wowlan_support wowlan_support = {
>  #define IS_MGMT_STATUS_SUCCES			0x040
>  #define GET_PKT_OFFSET(a) (((a) >> 22) & 0x1ff)
>
> -extern int wilc_mac_open(struct net_device *ndev);
> -extern int wilc_mac_close(struct net_device *ndev);
> -
>  static struct network_info last_scanned_shadow[MAX_NUM_SCANNED_NETWORKS_SHADOW];
>  static u32 last_scanned_cnt;
>  struct timer_list wilc_during_ip_timer;
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> index 85a3810..ca71e49 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> @@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
>  struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
>  void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
>  			      u16 frame_type, bool reg);
> +int wilc_mac_open(struct net_device *ndev);
> +int wilc_mac_close(struct net_device *ndev);
>
>  #endif
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1474098886-6239-1-git-send-email-bhumirks%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

