X-GM-THRID: 6331045009787191296
X-Received: by 10.28.203.10 with SMTP id b10mr37575wmg.17.1474091087823;
        Fri, 16 Sep 2016 22:44:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.196.134 with SMTP id u128ls63508wmf.1.canary; Fri, 16 Sep
 2016 22:44:47 -0700 (PDT)
X-Received: by 10.28.199.198 with SMTP id x189mr36963wmf.13.1474091087076;
        Fri, 16 Sep 2016 22:44:47 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id v132si833533wmf.1.2016.09.16.22.44.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 22:44:47 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,348,1470693600"; 
   d="scan'208";a="193737821"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 17 Sep 2016 07:44:46 +0200
Date: Sat, 17 Sep 2016 07:44:45 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8188eu: core: Replace
 memcpy() with ether_addr_copy() if ethernet addresses are __aligned(2)
In-Reply-To: <20160916212749.GA25100@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609170744050.3336@hadrien>
References: <20160916212749.GA25100@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Sat, 17 Sep 2016, sayli karnik wrote:

> This patch fixes the checkpatch warning:
> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses are
> __aligned(2).

You need to provide evidence that the alignment condition is met.  YOu can
use the tool pahole for this.  Look at other patches people have submitted
on this issue.

julia

>
> Done using coccinelle:
>
> @@
> expression exp1, exp2;
> @@
> - memcpy(exp1, exp2, ETH_ALEN);
> + ether_addr_copy(exp1, exp2);
>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme_ext.c | 89 ++++++++++++++-------------
>  1 file changed, 46 insertions(+), 43 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> index 9544e55..fa8a5ca 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme_ext.c
> @@ -353,9 +353,9 @@ static void issue_beacon(struct adapter *padapter, int timeout_ms)
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
>
> -	memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, cur_network->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, bc_addr);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, cur_network->MacAddress);
>
>  	SetSeqNum(pwlanhdr, 0/*pmlmeext->mgnt_seq*/);
>  	/* pmlmeext->mgnt_seq++; */
> @@ -495,9 +495,9 @@ static void issue_probersp(struct adapter *padapter, unsigned char *da)
>
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
> -	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, bssid, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, da);
> +	ether_addr_copy(pwlanhdr->addr2, mac);
> +	ether_addr_copy(pwlanhdr->addr3, bssid);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -642,15 +642,15 @@ static int issue_probereq(struct adapter *padapter, struct ndis_802_11_ssid *pss
>
>  	if (da) {
>  		/*	unicast probe request frame */
> -		memcpy(pwlanhdr->addr1, da, ETH_ALEN);
> -		memcpy(pwlanhdr->addr3, da, ETH_ALEN);
> +		ether_addr_copy(pwlanhdr->addr1, da);
> +		ether_addr_copy(pwlanhdr->addr3, da);
>  	} else {
>  		/*	broadcast probe request frame */
> -		memcpy(pwlanhdr->addr1, bc_addr, ETH_ALEN);
> -		memcpy(pwlanhdr->addr3, bc_addr, ETH_ALEN);
> +		ether_addr_copy(pwlanhdr->addr1, bc_addr);
> +		ether_addr_copy(pwlanhdr->addr3, bc_addr);
>  	}
>
> -	memcpy(pwlanhdr->addr2, mac, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr2, mac);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -785,9 +785,11 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
>  	if (psta) {/*  for AP mode */
>  #ifdef CONFIG_88EU_AP_MODE
>
> -		memcpy(pwlanhdr->addr1, psta->hwaddr, ETH_ALEN);
> -		memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -		memcpy(pwlanhdr->addr3, myid(&(padapter->eeprompriv)), ETH_ALEN);
> +		ether_addr_copy(pwlanhdr->addr1, psta->hwaddr);
> +		ether_addr_copy(pwlanhdr->addr2,
> +				myid(&(padapter->eeprompriv)));
> +		ether_addr_copy(pwlanhdr->addr3,
> +				myid(&(padapter->eeprompriv)));
>
>
>  		/*  setting auth algo number */
> @@ -825,9 +827,9 @@ static void issue_auth(struct adapter *padapter, struct sta_info *psta,
>  	} else {
>  		__le32 le_tmp32;
>  		__le16 le_tmp16;
> -		memcpy(pwlanhdr->addr1, pnetwork->MacAddress, ETH_ALEN);
> -		memcpy(pwlanhdr->addr2, myid(&padapter->eeprompriv), ETH_ALEN);
> -		memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
> +		ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
> +		ether_addr_copy(pwlanhdr->addr2, myid(&padapter->eeprompriv));
> +		ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
>
>  		/*  setting auth algo number */
>  		val16 = (pmlmeinfo->auth_algo == dot11AuthAlgrthm_Shared) ? 1 : 0;/*  0:OPEN System, 1:Shared key */
> @@ -921,9 +923,10 @@ static void issue_asocrsp(struct adapter *padapter, unsigned short status,
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
>
> -	memcpy((void *)GetAddr1Ptr(pwlanhdr), pstat->hwaddr, ETH_ALEN);
> -	memcpy((void *)GetAddr2Ptr(pwlanhdr), myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy((void *)GetAddr3Ptr(pwlanhdr), pnetwork->MacAddress, ETH_ALEN);
> +	ether_addr_copy((void *)GetAddr1Ptr(pwlanhdr), pstat->hwaddr);
> +	ether_addr_copy((void *)GetAddr2Ptr(pwlanhdr),
> +			myid(&(padapter->eeprompriv)));
> +	ether_addr_copy((void *)GetAddr3Ptr(pwlanhdr), pnetwork->MacAddress);
>
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
> @@ -1044,9 +1047,9 @@ static void issue_assocreq(struct adapter *padapter)
>
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
> -	memcpy(pwlanhdr->addr1, pnetwork->MacAddress, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, pnetwork->MacAddress);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -1252,9 +1255,9 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned
>  	if (power_mode)
>  		SetPwrMgt(fctrl);
>
> -	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, da);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -1380,9 +1383,9 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16
>
>  	SetAckpolicy(qc, pattrib->ack_policy);
>
> -	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, da);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -1483,9 +1486,9 @@ static int _issue_deauth(struct adapter *padapter, unsigned char *da, unsigned s
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
>
> -	memcpy(pwlanhdr->addr1, da, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, da);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -1601,9 +1604,9 @@ static void issue_action_BA(struct adapter *padapter, unsigned char *raddr,
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
>
> -	memcpy(pwlanhdr->addr1, raddr, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, pnetwork->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, raddr);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, pnetwork->MacAddress);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -1760,9 +1763,9 @@ static void issue_action_BSSCoexistPacket(struct adapter *padapter)
>  	fctrl = &pwlanhdr->frame_control;
>  	*(fctrl) = 0;
>
> -	memcpy(pwlanhdr->addr1, cur_network->MacAddress, ETH_ALEN);
> -	memcpy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)), ETH_ALEN);
> -	memcpy(pwlanhdr->addr3, cur_network->MacAddress, ETH_ALEN);
> +	ether_addr_copy(pwlanhdr->addr1, cur_network->MacAddress);
> +	ether_addr_copy(pwlanhdr->addr2, myid(&(padapter->eeprompriv)));
> +	ether_addr_copy(pwlanhdr->addr3, cur_network->MacAddress);
>
>  	SetSeqNum(pwlanhdr, pmlmeext->mgnt_seq);
>  	pmlmeext->mgnt_seq++;
> @@ -2159,7 +2162,7 @@ static u8 collect_bss_info(struct adapter *padapter,
>  	if (subtype == WIFI_PROBEREQ) {
>  		/*  FIXME */
>  		bssid->InfrastructureMode = Ndis802_11Infrastructure;
> -		memcpy(bssid->MacAddress, GetAddr2Ptr(pframe), ETH_ALEN);
> +		ether_addr_copy(bssid->MacAddress, GetAddr2Ptr(pframe));
>  		bssid->Privacy = 1;
>  		return _SUCCESS;
>  	}
> @@ -2171,10 +2174,10 @@ static u8 collect_bss_info(struct adapter *padapter,
>
>  	if (val16 & BIT(0)) {
>  		bssid->InfrastructureMode = Ndis802_11Infrastructure;
> -		memcpy(bssid->MacAddress, GetAddr2Ptr(pframe), ETH_ALEN);
> +		ether_addr_copy(bssid->MacAddress, GetAddr2Ptr(pframe));
>  	} else {
>  		bssid->InfrastructureMode = Ndis802_11IBSS;
> -		memcpy(bssid->MacAddress, GetAddr3Ptr(pframe), ETH_ALEN);
> +		ether_addr_copy(bssid->MacAddress, GetAddr3Ptr(pframe));
>  	}
>
>  	if (val16 & BIT(4))
> @@ -4395,7 +4398,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
>  	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
>
>  	pdel_sta_evt = (struct stadel_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
> -	memcpy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr, ETH_ALEN);
> +	ether_addr_copy((unsigned char *)(&(pdel_sta_evt->macaddr)), MacAddr);
>  	memcpy((unsigned char *)(pdel_sta_evt->rsvd), (unsigned char *)(&reason), 2);
>
>
> @@ -4448,7 +4451,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
>  	pc2h_evt_hdr->seq = atomic_inc_return(&pmlmeext->event_seq);
>
>  	padd_sta_evt = (struct stassoc_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
> -	memcpy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr, ETH_ALEN);
> +	ether_addr_copy((unsigned char *)(&(padd_sta_evt->macaddr)), MacAddr);
>  	padd_sta_evt->cam_id = cam_idx;
>
>  	DBG_88E("report_add_sta_event: add STA\n");
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160916212749.GA25100%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

