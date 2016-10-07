X-GM-THRID: 6338573496941019136
X-Received: by 10.194.113.106 with SMTP id ix10mr1186484wjb.7.1475818796858;
        Thu, 06 Oct 2016 22:39:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.5.11 with SMTP id 11ls407375ljf.20.gmail; Thu, 06 Oct 2016
 22:39:56 -0700 (PDT)
X-Received: by 10.46.0.75 with SMTP id 72mr198376lja.4.1475818796380;
        Thu, 06 Oct 2016 22:39:56 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id 82si86146wmg.3.2016.10.06.22.39.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 06 Oct 2016 22:39:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,454,1473112800"; 
   d="scan'208";a="195926566"
Received: from p57801a74.dip0.t-ipconnect.de (HELO hadrien.local) ([87.128.26.116])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 07 Oct 2016 07:39:54 +0200
Date: Fri, 7 Oct 2016 07:39:42 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Elise Lennion <elise.lennion@gmail.com>
cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com, 
    gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 4/4] staging: wilc1000: Move externs
 from .c to .h files.
In-Reply-To: <20161007042221.GA23529@lennorien.com>
Message-ID: <alpine.DEB.2.10.1610070739030.3074@hadrien>
References: <20161007042221.GA23529@lennorien.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 7 Oct 2016, Elise Lennion wrote:

> Fix checkpatch warning:
>
> WARNING: externs should be avoided in .c files
>
> Keep externs in .h files is better to keep the code congruent, also makes it easier to change in future patches.
>
> Signed-off-by: Elise Lennion <elise.lennion@gmail.com>
> ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 ---
>  drivers/staging/wilc1000/wilc_wfi_cfgoperations.h | 2 ++
>  2 files changed, 2 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> index fca96d3..a5e2d96 100644
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
> index 85a3810..d1d0546 100644
> --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.h
> @@ -19,5 +19,7 @@ int WILC_WFI_deinit_mon_interface(void);
>  struct net_device *WILC_WFI_init_mon_interface(const char *name, struct net_device *real_dev);
>  void wilc_mgmt_frame_register(struct wiphy *wiphy, struct wireless_dev *wdev,
>  			      u16 frame_type, bool reg);
> +extern int wilc_mac_open(struct net_device *ndev);
> +extern int wilc_mac_close(struct net_device *ndev);

Doesn't it now complain that functions are extern by default?  There is no
extern on the function declaration on the line above for example.

julia

>
>  #endif
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161007042221.GA23529%40lennorien.com.
> For more options, visit https://groups.google.com/d/optout.
>

