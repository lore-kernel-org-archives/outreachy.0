X-GM-THRID: 6340866735627829248
X-Received: by 10.13.201.196 with SMTP id l187mr1540860ywd.88.1476348166309;
        Thu, 13 Oct 2016 01:42:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.123.72 with SMTP id q69ls5659698itc.3.canary; Thu, 13 Oct
 2016 01:42:45 -0700 (PDT)
X-Received: by 10.107.30.148 with SMTP id e142mr1544845ioe.37.1476348165421;
        Thu, 13 Oct 2016 01:42:45 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t8si1731925vkb.2.2016.10.13.01.42.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 01:42:45 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.31,339,1473112800"; 
   d="scan'208";a="240594484"
Received: from lstlambert-656-1-236-67.w82-127.abo.wanadoo.fr (HELO hadrien.local) ([82.127.3.67])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 13 Oct 2016 10:42:44 +0200
Date: Thu, 13 Oct 2016 10:42:43 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: hal: Compress
 return logic into one line
In-Reply-To: <20161013084120.GA6373@domino-MS-16Y1>
Message-ID: <alpine.DEB.2.10.1610131042100.4867@hadrien>
References: <20161013084120.GA6373@domino-MS-16Y1>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII



On Thu, 13 Oct 2016, Mihaela Muraru wrote:

> Simplify function returns by merging assignment and return into
> one command line.
> Found with Coccinelle
> @@
> expression e, ret;
> @@
>
> -ret =
> +return
>         e;
> -return ret;
>
> Signed-off-by: Mihaela Muraru <mihaela.muraru21@gmail.com>
> ---
>  ret.out | 22 ++++++++++++++++++++++
>  1 file changed, 22 insertions(+)
>  create mode 100644 ret.out
>
> diff --git a/ret.out b/ret.out
> new file mode 100644
> index 0000000..fd4d380
> --- /dev/null
> +++ b/ret.out
> @@ -0,0 +1,22 @@
> +--- /home/domino/git/kernels/staging/drivers/staging/rtl8188eu/hal/phy.c
> ++++ /tmp/cocci-output-5790-5d9d37-phy.c
> +@@ -44,8 +44,7 @@ u32 phy_query_bb_reg(struct adapter *ada
> +
> + 	original_value = usb_read32(adapt, regaddr);
> + 	bit_shift = cal_bit_shift(bitmask);
> +-	return_value = (original_value & bitmask) >> bit_shift;
> +-	return return_value;
> ++	return (original_value & bitmask) >> bit_shift;
> + }

Something went quite wrong here.

julia


> +
> + void phy_set_bb_reg(struct adapter *adapt, u32 regaddr, u32 bitmask, u32 data)
> +@@ -123,8 +122,7 @@ u32 rtw_hal_read_rfreg(struct adapter *a
> +
> + 	original_value = rf_serial_read(adapt, rf_path, reg_addr);
> + 	bit_shift =  cal_bit_shift(bit_mask);
> +-	readback_value = (original_value & bit_mask) >> bit_shift;
> +-	return readback_value;
> ++	return (original_value & bit_mask) >> bit_shift;
> + }
> +
> + void phy_set_rf_reg(struct adapter *adapt, enum rf_radio_path rf_path,
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20161013084120.GA6373%40domino-MS-16Y1.
> For more options, visit https://groups.google.com/d/optout.
>

