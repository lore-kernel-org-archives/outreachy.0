X-GM-THRID: 6340866735627829248
X-Received: by 10.13.202.73 with SMTP id m70mr1245741ywd.29.1476348824464;
        Thu, 13 Oct 2016 01:53:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.23.134 with SMTP id 128ls5479843ith.10.canary; Thu, 13 Oct
 2016 01:53:42 -0700 (PDT)
X-Received: by 10.107.145.85 with SMTP id t82mr1605964iod.14.1476348822357;
        Thu, 13 Oct 2016 01:53:42 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id co10si1556706pad.1.2016.10.13.01.53.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 13 Oct 2016 01:53:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 429242C;
	Thu, 13 Oct 2016 08:53:40 +0000 (UTC)
Date: Thu, 13 Oct 2016 10:53:49 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Mihaela Muraru <mihaela.muraru21@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rtl8188eu: hal: Compress return logic into one
 line
Message-ID: <20161013085349.GA5232@kroah.com>
References: <20161013084120.GA6373@domino-MS-16Y1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161013084120.GA6373@domino-MS-16Y1>
User-Agent: Mutt/1.7.1 (2016-10-04)

On Thu, Oct 13, 2016 at 11:41:20AM +0300, Mihaela Muraru wrote:
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

Your patch just adds a patch to the tree, not what I think you ment to
send here :)

Care to try it again?

thanks,

greg k-h

