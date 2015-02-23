X-GM-THRID: 2658103459840
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,97c0bb283bbf8747
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.4.100 with SMTP id 64mr11155384yhi.43.1424682085585;
        Mon, 23 Feb 2015 01:01:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.142.40 with SMTP id rt8ls824890igb.1.gmail; Mon, 23 Feb
 2015 01:01:25 -0800 (PST)
X-Received: by 10.66.119.231 with SMTP id kx7mr10402426pab.14.1424682085316;
        Mon, 23 Feb 2015 01:01:25 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id bx1si3053588pdb.2.2015.02.23.01.01.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 23 Feb 2015 01:01:25 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,629,1418079600"; 
   d="scan'208";a="122942088"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 23 Feb 2015 10:01:23 +0100
Date: Mon, 23 Feb 2015 10:01:16 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8712: replace
 memcpy() by ether_addr_copy() using coccinelle and pack variable
In-Reply-To: <1424676017-12368-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502230957560.2479@hadrien>
References: <1424676017-12368-1-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

The subject line is too verbose.  You don't need to say how you made the
change, just that you made the change.  I don't understand "pack
variable".

On Mon, 23 Feb 2015, Melike Yurtoglu wrote:

> This patch focuses on fixing the following warning generated
> by checkpatch.pl for the file rtl871x_cmd.c

This is also too verbose.  The whole text part of the commit message could
be: Replace memcpy with ether_addr_copy, as the ethernet addresses are
aligned.  This change was made using Coccinelle, as follows.

julia

> Prefer ether_addr_copy() over memcpy() if the Ethernet addresses
> are __aligned(2)
>
> @@ expression e1, e2; @@
>
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2);
>
> struct _adapter {
>         struct dvobj_priv          dvobjpriv;            /*     0    40*/
>         struct mlme_priv           mlmepriv;             /*    40  1560*/
>         /* --- cacheline 25 boundary (1600 bytes) --- */
>         struct cmd_priv            cmdpriv;              /*  1600   136*/
>         /* --- cacheline 27 boundary (1728 bytes) was 8 bytes ago --- */
>         struct evt_priv            evtpriv;              /*  1736    96*/
>         /* --- cacheline 28 boundary (1792 bytes) was 40 bytes ago --- * */
>         struct io_queue *          pio_queue;            /*  1832     8*/
>         struct xmit_priv           xmitpriv;             /*  1840   912*/
>         /* --- cacheline 43 boundary (2752 bytes) --- */
>         struct recv_priv           recvpriv;             /*  2752  1088*/
>         /* --- cacheline 60 boundary (3840 bytes) --- */
>         struct sta_priv            stapriv;              /*  3840   672*/
>         /* --- cacheline 70 boundary (4480 bytes) was 32 bytes ago --- * */
>         struct security_priv       securitypriv;         /*  4512  4816*/
>         /* --- cacheline 145 boundary (9280 bytes) was 48 bytes ago --- * */
>         struct registry_priv       registrypriv;         /*  9328   968*/
>         /* --- cacheline 160 boundary (10240 bytes) was 56 bytes ago --- * */
>         struct wlan_acl_pool       acl_list;             /* 10296  1536*/
>         /* --- cacheline 184 boundary (11776 bytes) was 56 bytes ago --- * */
>         struct pwrctrl_priv        pwrctrlpriv;          /* 11832   224*/
>         /* --- cacheline 188 boundary (12032 bytes) was 24 bytes ago --- * */
>         struct eeprom_priv         eeprompriv;           /* 12056   508*/
>
>         /* XXX 4 bytes hole, try to pack */
>
>         /* --- cacheline 196 boundary (12544 bytes) was 24 bytes ago --- * */
>         struct hal_priv            halpriv;              /* 12568    88*/
>         /* --- cacheline 197 boundary (12608 bytes) was 48 bytes ago --- * */
>         struct led_priv            ledpriv;              /* 12656   304*/
>         /* --- cacheline 202 boundary (12928 bytes) was 32 bytes ago --- * */
>         struct mp_priv             mppriv;               /* 12960  1080*/
> 	 /* --- cacheline 219 boundary (14016 bytes) was 24 bytes ago * --- */
>         s32                        bDriverStopped;       /* 14040     4*/
>         s32                        bSurpriseRemoved;     /* 14044     4*/
>         u32                        IsrContent;           /* 14048     4*/
>         u32                        ImrContent;           /* 14052     4*/
>         u8                         EepromAddressSize;    /* 14056     1*/
>         u8                         hw_init_completed;    /* 14057     1*/
>
>         /* XXX 6 bytes hole, try to pack */
>
>         struct task_struct *       cmdThread;            /* 14064     8*/
>         pid_t                      evtThread;            /* 14072     4*/
>
>         /* XXX 4 bytes hole, try to pack */
>
>         /* --- cacheline 220 boundary (14080 bytes) --- */
>         struct task_struct *       xmitThread;           /* 14080     8*/
>         pid_t                      recvThread;           /* 14088     4*/
>
>         /* XXX 4 bytes hole, try to pack */
>
>         uint                       (*dvobj_init)(struct _adapter *); /*14096     8 */
>         void                       (*dvobj_deinit)(struct _adapter *);/* 14104     8 */
>         struct net_device *        pnetdev;              /* 14112     8*/
>         int                        bup;                  /* 14120     4*/
>
>         /* XXX 4 bytes hole, try to pack */
>
>         struct net_device_stats    stats;                /* 14128   184*/
>         /* --- cacheline 223 boundary (14272 bytes) was 40 bytes ago --- * */
> 	 struct iw_statistics       iwstats;              /* 14312    32*/
>         /* --- cacheline 224 boundary (14336 bytes) was 8 bytes ago --- * */
>         int                        pid;                  /* 14344     4*/
>
>         /* XXX 4 bytes hole, try to pack */
>
>         struct work_struct         wkFilterRxFF0;        /* 14352    32*/
>         u8                         blnEnableRxFF0Filter; /* 14384     1*/
>
>         /* XXX 3 bytes hole, try to pack */
>
>         spinlock_t                 lockRxFF0Filter;      /* 14388     4*/
>         const struct firmware  *   fw;                   /* 14392     8*/
>         /* --- cacheline 225 boundary (14400 bytes) --- */
>         struct usb_interface *     pusb_intf;            /* 14400     8*/
>         struct mutex               mutex_start;          /* 14408    40*/
>
>         /* XXX last struct has 4 bytes of padding */
>
>         struct completion          rtl8712_fw_ready;     /* 14448    32*/
>         /* --- cacheline 226 boundary (14464 bytes) was 16 bytes ago --- * */
>
>         /* size: 14480, cachelines: 227, members: 40 */
>         /* sum members: 14451, holes: 7, sum holes: 29 */
>         /* paddings: 1, sum paddings: 4 */
>         /* last cacheline: 16 bytes */
> };
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>
> v2: patchsets made
>
>  drivers/staging/rtl8712/rtl871x_cmd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
>
> diff --git a/drivers/staging/rtl8712/rtl871x_cmd.c b/drivers/staging/rtl8712/rtl871x_cmd.c
> index fe5e315..939a2ec 100644
> --- a/drivers/staging/rtl8712/rtl871x_cmd.c
> +++ b/drivers/staging/rtl8712/rtl871x_cmd.c
> @@ -530,8 +530,8 @@ u8 r8712_joinbss_cmd(struct _adapter  *padapter, struct wlan_network *pnetwork)
>  	 * the driver just has the bssid information for PMKIDList searching.
>  	 */
>  	if (pmlmepriv->assoc_by_bssid == false)
> -		memcpy(&pmlmepriv->assoc_bssid[0],
> -			&pnetwork->network.MacAddress[0], ETH_ALEN);
> +		ether_addr_copy(&pmlmepriv->assoc_bssid[0],
> +				&pnetwork->network.MacAddress[0]);
>  	psecnetwork->IELength = r8712_restruct_sec_ie(padapter,
>  						&pnetwork->network.IEs[0],
>  						&psecnetwork->IEs[0],
> @@ -682,7 +682,7 @@ u8 r8712_setstakey_cmd(struct _adapter *padapter, u8 *psta, u8 unicast_key)
>  	init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
>  	ph2c->rsp = (u8 *) psetstakey_rsp;
>  	ph2c->rspsz = sizeof(struct set_stakey_rsp);
> -	memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
> +	ether_addr_copy(psetstakey_para->addr, sta->hwaddr);
>  	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
>  		psetstakey_para->algorithm = (unsigned char)
>  					    psecuritypriv->PrivacyAlgrthm;
> @@ -784,7 +784,7 @@ u8 r8712_setMacAddr_cmd(struct _adapter *padapter, u8 *mac_addr)
>  	}
>  	init_h2fwcmd_w_parm_no_rsp(ph2c, psetMacAddr_para,
>  				   _SetMacAddress_CMD_);
> -	memcpy(psetMacAddr_para->MacAddr, mac_addr, ETH_ALEN);
> +	ether_addr_copy(psetMacAddr_para->MacAddr, mac_addr);
>  	r8712_enqueue_cmd(pcmdpriv, ph2c);
>  	return _SUCCESS;
>  }
> @@ -813,7 +813,7 @@ u8 r8712_setassocsta_cmd(struct _adapter *padapter, u8 *mac_addr)
>  	init_h2fwcmd_w_parm_no_rsp(ph2c, psetassocsta_para, _SetAssocSta_CMD_);
>  	ph2c->rsp = (u8 *) psetassocsta_rsp;
>  	ph2c->rspsz = sizeof(struct set_assocsta_rsp);
> -	memcpy(psetassocsta_para->addr, mac_addr, ETH_ALEN);
> +	ether_addr_copy(psetassocsta_para->addr, mac_addr);
>  	r8712_enqueue_cmd(pcmdpriv, ph2c);
>  	return _SUCCESS;
>  }
> --
> 1.8.3.2
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424676017-12368-1-git-send-email-aysemelikeyurtoglu%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

