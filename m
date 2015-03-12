X-GM-THRID: 7760961863680
X-Received: by 10.180.80.132 with SMTP id r4mr2782892wix.4.1426150327684;
        Thu, 12 Mar 2015 01:52:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.198 with SMTP id k6ls559949wiy.52.canary; Thu, 12 Mar
 2015 01:52:07 -0700 (PDT)
X-Received: by 10.194.95.67 with SMTP id di3mr6132138wjb.0.1426150327332;
        Thu, 12 Mar 2015 01:52:07 -0700 (PDT)
Return-Path: <arnd@arndb.de>
Received: from mout.kundenserver.de (mout.kundenserver.de. [212.227.17.24])
        by gmr-mx.google.com with ESMTPS id sf8si474157wic.2.2015.03.12.01.52.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2015 01:52:07 -0700 (PDT)
Received-SPF: none (google.com: arnd@arndb.de does not designate permitted sender hosts) client-ip=212.227.17.24;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: arnd@arndb.de does not designate permitted sender hosts) smtp.mail=arnd@arndb.de
Received: from wuerfel.localnet ([149.172.15.242]) by mrelayeu.kundenserver.de
 (mreue103) with ESMTPSA (Nemesis) id 0MKt72-1YVyqc0lcG-0003W2; Thu, 12 Mar
 2015 09:52:06 +0100
From: Arnd Bergmann <arnd@arndb.de>
To: outreachy-kernel@googlegroups.com
Cc: Cristina Opriceana <cristina.opriceana@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rtl8712: Remove unnecessary variables
Date: Thu, 12 Mar 2015 09:52:05 +0100
Message-ID: <2934799.MUPJAeKi6D@wuerfel>
User-Agent: KMail/4.11.5 (Linux/3.16.0-10-generic; KDE/4.11.5; x86_64; ; )
In-Reply-To: <61eb27f3cd4bb009cbbd1c6d4bfd9b89a109fd36.1426126379.git.cristina.opriceana@gmail.com>
References: <cover.1426126379.git.cristina.opriceana@gmail.com> <61eb27f3cd4bb009cbbd1c6d4bfd9b89a109fd36.1426126379.git.cristina.opriceana@gmail.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 7Bit
Content-Type: text/plain; charset="us-ascii"
X-Provags-ID:  V03:K0:tdCAtYbqrov1+0RMk78FFY5//mBqNXJuiXnQqNfkZvMyJbdOlbm
 bwXu5xbOnncVEMSSIQQFXdZrqtpbV5KhvieUsFpK6B5C780965Sfa2TI1i3giB5Mk5ULfGH
 PhGXttTsPLjrsxCr9GV67MQjm9WQWdi9Reygz6M5zcqS/j5qGuRxUcYhaWVcfZlNdRU9I8r
 jib5ujsA0fi1nUKVJQkSQ==
X-UI-Out-Filterresults: notjunk:1;

On Thursday 12 March 2015 04:23:42 Cristina Opriceana wrote:
> diff --git a/drivers/staging/rtl8712/os_intfs.c b/drivers/staging/rtl8712/os_intfs.c
> index ebfb29e..3cac773 100644
> --- a/drivers/staging/rtl8712/os_intfs.c
> +++ b/drivers/staging/rtl8712/os_intfs.c
> @@ -128,7 +128,6 @@ static int netdev_close(struct net_device *pnetdev);
>  
>  static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
>  {
> -       uint status = _SUCCESS;
>         struct registry_priv  *registry_par = &padapter->registrypriv;
>  
>         registry_par->chip_version = (u8)chip_version;
> @@ -172,7 +171,7 @@ static uint loadparam(struct _adapter *padapter, struct  net_device *pnetdev)
>         registry_par->low_power = (u8)low_power;
>         registry_par->wifi_test = (u8) wifi_test;
>         r8712_initmac = initmac;
> -       return status;
> +       return _SUCCESS;
>  }
>  
>  static int r871x_net_set_mac_address(struct net_device *pnetdev, void *p)
> @@ -274,7 +273,6 @@ void r8712_stop_drv_timers(struct _adapter *padapter)
>  
>  static u8 init_default_value(struct _adapter *padapter)
>  {
> -       u8 ret  = _SUCCESS;
>         struct registry_priv *pregistrypriv = &padapter->registrypriv;
>         struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
>         struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
> @@ -307,7 +305,7 @@ static u8 init_default_value(struct _adapter *padapter)
>         r8712_init_registrypriv_dev_network(padapter);
>         r8712_update_registrypriv_dev_network(padapter);
>         /*misc.*/
> -       return ret;
> +       return _SUCCESS;
>  }

When a local function unconditionally returns success, it's often a good
idea to change the prototype so it returns void.

That would also improve it a bit by avoiding the non-standard _SUCCESS
return code. The kernel convention normally is to return '0' for success
and a negative error numer (e.g. -ENXIO) in case of an error, with a
type of 'int'. Changing all the return codes in this driver would
of course be a separate patch.

	Arnd

