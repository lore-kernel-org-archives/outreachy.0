X-GM-THRID: 4475579269120
X-Received: by 10.194.221.65 with SMTP id qc1mr2173244wjc.7.1425052777690;
        Fri, 27 Feb 2015 07:59:37 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.8.13 with SMTP id n13ls187234laa.80.gmail; Fri, 27 Feb
 2015 07:59:37 -0800 (PST)
X-Received: by 10.152.28.137 with SMTP id b9mr2181771lah.8.1425052777268;
        Fri, 27 Feb 2015 07:59:37 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id cl5si137785wib.3.2015.02.27.07.59.36
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Fri, 27 Feb 2015 07:59:37 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,660,1418079600"; 
   d="scan'208";a="101564003"
Received: from ip209.messe-nbg.customer.bisping.net (HELO hadrien.local) ([62.91.19.209])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 27 Feb 2015 16:59:19 +0100
Date: Fri, 27 Feb 2015 16:59:09 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 04/24] staging: rtl8188eu: os_dep:
 remove unused variable
In-Reply-To: <b9c765d115a8845bd37120165627f37c29af1b9c.1425035005.git.mahfouz.saif.elyazal@gmail.com>
Message-ID: <alpine.DEB.2.10.1502271658490.2663@hadrien>
References: <cover.1425034998.git.mahfouz.saif.elyazal@gmail.com> <b9c765d115a8845bd37120165627f37c29af1b9c.1425035005.git.mahfouz.saif.elyazal@gmail.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Fri, 27 Feb 2015, Aya Mahfouz wrote:

> This patch removes variables that were simply used to
> store the return value of a function call before
> returning it.
>
> The issue was detected and resolved using the following
> coccinelle script:
>
> @@
> identifier len,f;
> @@
>
> -int len;
>  ... when != len
>      when strict
> -len =
> +return
>         f(...);
> -return len;
>
> Signed-off-by: Aya Mahfouz <mahfouz.saif.elyazal@gmail.com>
> ---
>  drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c | 16 +++-------------
>  1 file changed, 3 insertions(+), 13 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
> index 80e7ef9..38e8ba1 100644
> --- a/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
> +++ b/drivers/staging/rtl8188eu/os_dep/usb_ops_linux.c
> @@ -552,7 +552,6 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
>  	u16 index;
>  	u16 len;
>  	u8 data;
> -	int ret;
>
>  	request = 0x05;
>  	requesttype = 0x00;/* write_out */
> @@ -560,8 +559,7 @@ int usb_write8(struct adapter *adapter, u32 addr, u8 val)
>  	wvalue = (u16)(addr&0x0000ffff);
>  	len = 1;
>  	data = val;
> -	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
> -	return ret;
> +	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);

You make the 80 character problem worse, so you could fix it at the same
time.

julia

>  }
>
>  int usb_write16(struct adapter *adapter, u32 addr, u16 val)
> @@ -572,7 +570,6 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
>  	u16 index;
>  	u16 len;
>  	__le32 data;
> -	int ret;
>
>
>  	request = 0x05;
> @@ -584,10 +581,7 @@ int usb_write16(struct adapter *adapter, u32 addr, u16 val)
>
>  	data = cpu_to_le32(val & 0x0000ffff);
>
> -	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
> -
> -
> -	return ret;
> +	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
>  }
>
>  int usb_write32(struct adapter *adapter, u32 addr, u32 val)
> @@ -598,7 +592,6 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
>  	u16 index;
>  	u16 len;
>  	__le32 data;
> -	int ret;
>
>
>  	request = 0x05;
> @@ -609,10 +602,7 @@ int usb_write32(struct adapter *adapter, u32 addr, u32 val)
>  	len = 4;
>  	data = cpu_to_le32(val);
>
> -	ret = usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
> -
> -
> -	return ret;
> +	return usbctrl_vendorreq(adapter, request, wvalue, index, &data, len, requesttype);
>  }
>
>  static void usb_write_port_complete(struct urb *purb, struct pt_regs *regs)
> --
> 1.9.3
>
>
> --
> Kind Regards,
> Aya Saif El-yazal Mahfouz
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b9c765d115a8845bd37120165627f37c29af1b9c.1425035005.git.mahfouz.saif.elyazal%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

