X-GM-THRID: 6339736406394404864
X-Received: by 10.36.133.136 with SMTP id r130mr2335484itd.8.1476085582697;
        Mon, 10 Oct 2016 00:46:22 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.20.213 with SMTP id r21ls2591410otr.17.gmail; Mon, 10 Oct
 2016 00:46:22 -0700 (PDT)
X-Received: by 10.31.169.22 with SMTP id s22mr4335237vke.34.1476085582185;
        Mon, 10 Oct 2016 00:46:22 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p131si3114991vkf.1.2016.10.10.00.46.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 10 Oct 2016 00:46:22 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,471,1473112800"; 
   d="scan'208";a="196197947"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 10 Oct 2016 09:46:20 +0200
Date: Mon, 10 Oct 2016 09:46:19 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    Aditya Shankar <aditya.shankar@microchip.com>, 
    Ganesh Krishna <ganesh.krishna@microchip.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Stagin: wilc1000: Use ether_addr_copy()
 rather memcpy()
In-Reply-To: <20161010073505.GA7227@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610100944580.3260@hadrien>
References: <20161010073505.GA7227@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Mon, 10 Oct 2016, Mihaela Muraru wrote:

> This patch fixs up a issue found it by  checkpatch.pl tool.
>
> WARNING: Prefer ether_addr_copy() over memcpy() if the Ethernet
> addresses are __aligned(2).
>
> Check if the addresses are aligned with pahole.
>
> struct sta_inactive_t {
> 	u8                         mac[6];               /*     0     6
> */
>
> 	/* size: 6, cachelines: 1, members: 1 */
> 	/* last cacheline: 6 bytes */
> };
>
> Aligne this structure :
>
> struct del_all_sta {
> 	u8                         assoc_sta;            /*     0     1
> */
> 	u8                         del_all_sta[9][6];    /*     1    54
> */
>
> 	/* size: 55, cachelines: 1, members: 2 */
> 	/* last cacheline: 55 bytes */
> };
>
> struct del_sta {
> 	u8                         mac_addr[6];          /*     0     6
> */
>
> 	/* size: 6, cachelines: 1, members: 1 */
> 	/* last cacheline: 6 bytes */
> };
>
> Replace the memcpy() function with ether_addr_copy().
>
> Fix coding style WARNING: line over 80 characters.
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 78f5613..1eedaa3 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -140,8 +140,8 @@ struct set_multicast {
>  };
>
>  struct del_all_sta {
> -	u8 del_all_sta[MAX_NUM_STA][ETH_ALEN];
>  	u8 assoc_sta;
> +	u8 del_all_sta[MAX_NUM_STA][ETH_ALEN];
>  };
>
>  struct del_sta {
> @@ -1932,7 +1932,7 @@ static s32 Handle_Get_InActiveTime(struct wilc_vif *vif,
>  	wid.val = kmalloc(wid.size, GFP_KERNEL);
>
>  	stamac = wid.val;
> -	memcpy(stamac, strHostIfStaInactiveT->mac, ETH_ALEN);
> +	ether_addr_copy(stamac, strHostIfStaInactiveT->mac);
>
>  	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
>  				      wilc_get_vif_idx(vif));
> @@ -2133,7 +2133,8 @@ static void Handle_DelAllSta(struct wilc_vif *vif,
>
>  	for (i = 0; i < MAX_NUM_STA; i++) {
>  		if (memcmp(pstrDelAllStaParam->del_all_sta[i], au8Zero_Buff, ETH_ALEN))
> -			memcpy(pu8CurrByte, pstrDelAllStaParam->del_all_sta[i], ETH_ALEN);
> +			ether_addr_copy(pu8CurrByte,
> +					pstrDelAllStaParam->del_all_sta[i]);
>  		else
>  			continue;
>
> @@ -2168,7 +2169,7 @@ static void Handle_DelStation(struct wilc_vif *vif,
>
>  	pu8CurrByte = wid.val;
>
> -	memcpy(pu8CurrByte, pstrDelStaParam->mac_addr, ETH_ALEN);
> +	ether_addr_copy(pu8CurrByte, pstrDelStaParam->mac_addr);
>
>  	result = wilc_send_config_pkt(vif, SET_CFG, &wid, 1,
>  				      wilc_get_vif_idx(vif));
> @@ -3743,7 +3744,7 @@ int wilc_del_station(struct wilc_vif *vif, const u8 *mac_addr)
>  	if (!mac_addr)
>  		eth_broadcast_addr(del_sta_info->mac_addr);
>  	else
> -		memcpy(del_sta_info->mac_addr, mac_addr, ETH_ALEN);
> +		ether_addr_copy(del_sta_info->mac_addr, mac_addr);
>
>  	result = wilc_enqueue_cmd(&msg);
>  	if (result)
> @@ -3767,7 +3768,8 @@ int wilc_del_allstation(struct wilc_vif *vif, u8 mac_addr[][ETH_ALEN])
>
>  	for (i = 0; i < MAX_NUM_STA; i++) {
>  		if (memcmp(mac_addr[i], zero_addr, ETH_ALEN)) {

I haven't looked at the context in detail, but if this is just checking
that the address is all 0, then there is a function for that as well, with
the same alignment constraints.

julia

> -			memcpy(del_all_sta_info->del_all_sta[i], mac_addr[i], ETH_ALEN);
> +			ether_addr_copy(del_all_sta_info->del_all_sta[i],
> +					mac_addr[i]);
>  			assoc_sta++;
>  		}
>  	}
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161010073505.GA7227%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

