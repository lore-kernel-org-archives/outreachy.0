X-GM-THRID: 3599576858624
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b5759b747ce309e0
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.147.35 with SMTP id th3mr889758lbb.15.1424941458884;
        Thu, 26 Feb 2015 01:04:18 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.204.200 with SMTP id la8ls6914lac.90.gmail; Thu, 26 Feb
 2015 01:04:18 -0800 (PST)
X-Received: by 10.112.77.101 with SMTP id r5mr1133386lbw.4.1424941458429;
        Thu, 26 Feb 2015 01:04:18 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id l8si1464076wia.0.2015.02.26.01.04.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Thu, 26 Feb 2015 01:04:18 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,651,1418079600"; 
   d="scan'208";a="101378961"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 26 Feb 2015 10:04:17 +0100
Date: Thu, 26 Feb 2015 10:04:07 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] Staging: rtl8723au: Add blank
 line after declarations
In-Reply-To: <1424937128-16981-3-git-send-email-aysemelikeyurtoglu@gmail.com>
Message-ID: <alpine.DEB.2.10.1502261003010.2414@hadrien>
References: <1424937128-16981-1-git-send-email-aysemelikeyurtoglu@gmail.com> <1424937128-16981-3-git-send-email-aysemelikeyurtoglu@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Thu, 26 Feb 2015, Melike Yurtoglu wrote:

> WARNING: "Missing a blank line after declarations"
> Add blank line after declarations. That was found by running checkpatch
>
> Signed-off-by: Melike Yurtoglu <aysemelikeyurtoglu@gmail.com>
> ---
>  drivers/staging/rtl8723au/os_dep/usb_intf.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/rtl8723au/os_dep/usb_intf.c b/drivers/staging/rtl8723au/os_dep/usb_intf.c
> index 07ab571..146a830 100644
> --- a/drivers/staging/rtl8723au/os_dep/usb_intf.c
> +++ b/drivers/staging/rtl8723au/os_dep/usb_intf.c
> @@ -237,6 +237,7 @@ void rtl8723a_usb_intf_stop(struct rtw_adapter *padapter)
>  static void rtw_dev_unload(struct rtw_adapter *padapter)
>  {
>  	struct submit_ctx *pack_tx_ops = &padapter->xmitpriv.ack_tx_ops;
> +
>  	RT_TRACE(_module_hci_intfs_c_, _drv_err_, ("+rtw_dev_unload\n"));
>
>  	if (padapter->bup) {

It's irrelevant to this change, but you could consider getting rit of
RT_TRACE.  A use like this at the beginnning or end of a function can just
be dropped.  A use in error handling code can be converted to netdev_err,
etc, as appropriate.

julia

