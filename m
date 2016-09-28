X-GM-THRID: 6335492673577680896
X-Received: by 10.28.203.3 with SMTP id b3mr730385wmg.17.1475098159915;
        Wed, 28 Sep 2016 14:29:19 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.0.161 with SMTP id e33ls172585lji.10.gmail; Wed, 28 Sep
 2016 14:29:19 -0700 (PDT)
X-Received: by 10.25.221.149 with SMTP id w21mr2026300lfi.25.1475098159327;
        Wed, 28 Sep 2016 14:29:19 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id e21si788351wmc.2.2016.09.28.14.29.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 14:29:19 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,411,1470693600"; 
   d="scan'208";a="194991949"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 28 Sep 2016 23:29:18 +0200
Date: Wed, 28 Sep 2016 23:29:17 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: rtl8188eu: core: rtw_xmit:
 Use macros instead of constants
In-Reply-To: <a1722811-0eb9-4e28-af52-e234cd6e7107@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1609282327140.3211@hadrien>
References: <20160928210715.GA26545@fireworks> <a1722811-0eb9-4e28-af52-e234cd6e7107@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-714694688-1475098158=:3211"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-714694688-1475098158=:3211
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Wed, 28 Sep 2016, Georgiana Chelu wrote:

>
> I have some doubts about changing the constant with
> a string in the 531 line. My opinion is to let this line
> unchanged.
>
> Any help?

Maybe move ETH_P_PAE into the argument list?  Then if this value changes
for some reason in the future, the code will be robust.

You could also reformat the code in that hunk that you are changing so
that it better respects the 80 character limit.  If it seems unnatural,
you don't have to respect that perfectly, but there is no need for the
code to extend as far to the right as it does now.

julia

>
> Also, I forgot to replace the constant from 398 line,
> so I will submit the second version of the patch soon.
>
> Georgiana  
>
>
> On Thursday, 29 September 2016 00:07:17 UTC+3, Georgiana Chelu wrote:
>       Replace the 0x888e with ETH_P_PAE and 0x0806 with ETH_P_ARP.
>       These macros can be found in drivers/staging/rtl8192e/rtllib.h
>
>       Hexadecimal numbers are not case sensitive,
>       therefore 0x888e is equal with 0x888E.
>
>       The modifications improve the readability of the code.
>
>       Signed-off-by: Georgiana Rodica Chelu <georgiana.chelu93@gmail.com>
>       ---
>        drivers/staging/rtl8188eu/core/rtw_xmit.c | 12 ++++++------
>        drivers/staging/rtl8192e/rtllib.h         |  2 +-
>        2 files changed, 7 insertions(+), 7 deletions(-)
>
>       diff --git a/drivers/staging/rtl8188eu/core/rtw_xmit.c b/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       index 1392899..0f8b8e0 100644
>       --- a/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       +++ b/drivers/staging/rtl8188eu/core/rtw_xmit.c
>       @@ -402,7 +402,7 @@ static void set_qos(struct pkt_file *ppktfile, struct pkt_attrib *pattrib)
>                        _rtw_pktfile_read(ppktfile, (u8 *)&ip_hdr, sizeof(ip_hdr));
>        /*                 user_prio = (ntohs(ip_hdr.tos) >> 5) & 0x3; */
>                        user_prio = ip_hdr.tos >> 5;
>       -        } else if (pattrib->ether_type == 0x888e) {
>       +        } else if (pattrib->ether_type == ETH_P_PAE) {
>                        /*  "When priority processing of data frames is supported, */
>                        /*  a STA's SME should send EAPOL-Key frames at the highest priority." */
>                        user_prio = 7;
>       @@ -469,15 +469,15 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>                                        }
>                                }
>                        }
>       -        } else if (pattrib->ether_type == 0x888e) {
>       +        } else if (pattrib->ether_type == ETH_P_PAE) {
>                        DBG_88E_LEVEL(_drv_info_, "send eapol packet\n");
>                }
>        
>       -        if ((pattrib->ether_type == 0x888e) || (pattrib->dhcp_pkt == 1))
>       +        if ((pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
>                        rtw_set_scan_deny(padapter, 3000);
>        
>                /*  If EAPOL , ARP , OR DHCP packet, driver must be in active mode. */
>       -        if ((pattrib->ether_type == 0x0806) || (pattrib->ether_type == 0x888e) || (pattrib->dhcp_pkt == 1))
>       +        if ((pattrib->ether_type == ETH_P_ARP) || (pattrib->ether_type == ETH_P_PAE) || (pattrib->dhcp_pkt == 1))
>                        rtw_lps_ctrl_wk_cmd(padapter, LPS_CTRL_SPECIAL_PACKET, 1);
>        
>                bmcast = IS_MCAST(pattrib->ra);
>       @@ -531,8 +531,8 @@ static s32 update_attrib(struct adapter *padapter, struct sk_buff *pkt, struct p
>        
>                        pattrib->encrypt = 0;
>        
>       -                if ((pattrib->ether_type != 0x888e) && !check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
>       -                        RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != 0x888e\n",
>       pattrib->ether_type));
>       +                if ((pattrib->ether_type != ETH_P_PAE) && !check_fwstate(pmlmepriv, WIFI_MP_STATE)) {
>       +                        RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_, ("\npsta->ieee8021x_blocked == true,  pattrib->ether_type(%.4x) != ETH_P_PAE\n",
>       pattrib->ether_type));
>                                res = _FAIL;
>                                goto exit;
>                        }
>       diff --git a/drivers/staging/rtl8192e/rtllib.h b/drivers/staging/rtl8192e/rtllib.h
>       index 38247fa..b895a53 100644
>       --- a/drivers/staging/rtl8192e/rtllib.h
>       +++ b/drivers/staging/rtl8192e/rtllib.h
>       @@ -521,7 +521,7 @@ enum wireless_mode {
>        };
>        
>        #ifndef ETH_P_PAE
>       -#define ETH_P_PAE 0x888E /* Port Access Entity (IEEE 802.1X) */
>       +#define ETH_P_PAE        0x888E                /* Port Access Entity (IEEE 802.1X) */
>        #define ETH_P_IP        0x0800                /* Internet Protocol packet        */
>        #define ETH_P_ARP        0x0806                /* Address Resolution packet        */
>        #endif /* ETH_P_PAE */
>       --
>       2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/a1722811-0eb9-4e28-af52-e234cd6e7107%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-714694688-1475098158=:3211--

