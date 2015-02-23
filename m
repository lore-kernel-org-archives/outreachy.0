X-GM-THRID: 3079070023680
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,fc4ad51230119688
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.2.35 with SMTP id 23mr13520921yhe.22.1424725400651;
        Mon, 23 Feb 2015 13:03:20 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.153.227 with SMTP id vj3ls806694obb.99.gmail; Mon, 23 Feb
 2015 13:03:20 -0800 (PST)
X-Received: by 10.182.248.227 with SMTP id yp3mr14716179obc.22.1424725400389;
        Mon, 23 Feb 2015 13:03:20 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x233.google.com (mail-qg0-x233.google.com. [2607:f8b0:400d:c04::233])
        by gmr-mx.google.com with ESMTPS id q2si6467657qcn.2.2015.02.23.13.03.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 13:03:20 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) client-ip=2607:f8b0:400d:c04::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::233 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-f51.google.com with SMTP id z60so26663587qgd.10
        for <outreachy-kernel@googlegroups.com>; Mon, 23 Feb 2015 13:03:20 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=Z14Xr+69ps1B6kM3Kj25Zv01wuOv+CFlla2R/In5Vic=;
        b=v0hsUdDKknXzsj7EMA6aEU2R8VFV6/1P2fPwGCK0I99w/13OCvg88a6AMk8B+1v/qn
         z1+mSmreIpJuMaoHNDDJV4yNBCS1hrryJtyHvf4kKiUsoUksx1dv3ga50x25hf5vc7xw
         XQPWqrgX9uZVeai4HvJvj4rdzT+JbtMbHMGSLrwzWd2EKz1wd0J4cAx8j9r9d0NDw+XH
         CvNgtMvucWyXOCzpt2s9555Afzcn+Aw0SfsGAK4fa1vtU1i5IkSddkSR50+xcpaPE9nc
         5V9oSVa7NjYJJQUs803i5tTV0szr40JFNgrO/62hfTaRlSUjrDj4wex4raYH6iqKNoCv
         Gz/w==
X-Received: by 10.140.147.147 with SMTP id 141mr29992793qht.57.1424725400278;
        Mon, 23 Feb 2015 13:03:20 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id a92sm13178960qgf.11.2015.02.23.13.03.19
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 23 Feb 2015 13:03:19 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54EB9596.6050008@gmail.com>
Date: Mon, 23 Feb 2015 16:03:18 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 1/2] Staging: rtl8712: replace memcpy()
 by ether_addr_copy()
References: <1424724987-16511-1-git-send-email-aysemelikeyurtoglu@gmail.com>
In-Reply-To: <1424724987-16511-1-git-send-email-aysemelikeyurtoglu@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/23/15 15:56, Melike Yurtoglu wrote:
> Replace memcpy with ether_addr_copy, as the ethernet addresses are
> aligned.  This change was made using Coccinelle, as follows.
> 
> @@ expression e1, e2; @@
> 
> - memcpy(e1, e2, ETH_ALEN);
> + ether_addr_copy(e1, e2);

Patch looks good - your comment here is also fine, in particular that
you note that the alignment has been verified.

Including the full struct adapter definition in the commit message is a
little excessive though.

In addition, when posting multi-commit patch sets, please use a cover
letter (git format-patch --cover-letter).

Cheers,
Jes


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
> 	struct eeprom_priv         eeprompriv;           /* 12056   508*/
> 
>         /* XXX 4 bytes hole, try to pack */
> 
>         /* --- cacheline 196 boundary (12544 bytes) was 24 bytes ago --- * */
>         struct hal_priv            halpriv;              /* 12568    88*/
>         /* --- cacheline 197 boundary (12608 bytes) was 48 bytes ago --- * */
>         struct led_priv            ledpriv;              /* 12656   304*/
>         /* --- cacheline 202 boundary (12928 bytes) was 32 bytes ago --- * */
>         struct mp_priv             mppriv;               /* 12960  1080*/
>          /* --- cacheline 219 boundary (14016 bytes) was 24 bytes ago * --- */
> 	s32                        bDriverStopped;       /* 14040     4*/
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
>          struct iw_statistics       iwstats;              /* 14312    32*/
>         /* --- cacheline 224 boundary (14336 bytes) was 8 bytes ago --- * */
> 	 int                        pid;                  /* 14344     4*/
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
> 
> 
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
> 
> v2:patchsets made
> v3:changed the subject line , description and commit line
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
> 


