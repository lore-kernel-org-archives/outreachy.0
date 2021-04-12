X-GM-THRID: 6949973907804782592
X-Received: by 2002:a17:902:aa8a:b029:e6:64bd:e29d with SMTP id d10-20020a170902aa8ab02900e664bde29dmr25943803plr.24.1618220575390;
        Mon, 12 Apr 2021 02:42:55 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:1656:: with SMTP id 22ls6960702pgw.1.gmail; Mon, 12 Apr
 2021 02:42:54 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwibZvN+FE1h5gdxKTQSXkHor/ir8rbpRpUlOijjbOufoDEiMBkF6c3tsR24lkAw/jpDwXa
X-Received: by 2002:a62:874e:0:b029:244:4080:8c7a with SMTP id i75-20020a62874e0000b029024440808c7amr19589929pfe.54.1618220574333;
        Mon, 12 Apr 2021 02:42:54 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220574; cv=none;
        d=google.com; s=arc-20160816;
        b=dcVJ+6aiEPgpVvHpHtNgxbq+YwfTCtt9oKOpt2K/ph2Uo9oKUJ9HhzYqCjHDA9GGPk
         RWzIhi0u0n8O8t6Reou0tEgv4mj2xlG1b1j2QhyXy0Ami/qhgrl3uKVYmi64QNxSrBaW
         aF2DVBAo5n832GaT9xnDg2IGkFMikOU/MC8LQKRhF/m7lYow/wtDP0TJdb/y1PClxIih
         4+48fckRjTdSsBl2HgvVv/QoEqay2KWUfdmRYrOWhUjjarKCEghodTjUMRaJ77vO4HN1
         GUBnGg2Z9KdLTbqaerGyzj3hK2NevMS8whVtGlFU3zfue/ieyha0L8yBDbFaO2Slgyjk
         ES1w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=oMPiYj1GsgmJ3Lv2n0rm/3a5PqEl0VBxVqcu651sNBQ=;
        b=09HmrZkOxMke4H9W4rO+iqdXTEydrDtUY2b32NddiO+SeHnC3leUtoOSQZW01GvNI4
         qSxUjXhVx1zgCVZN+2jijZr0wyrbIkMIjol14rHMTmQWsWKKJ8Du9JZ4Qgx0n8PF2vUJ
         eElJzldWpp0CRVr7u26nmGviylkh/sM8Awn7cde3INsPGv1CDkTTId344ouwWggYfG/r
         4JWHwej0FR+N0AVjnGgQrC07DlM7Chg8EpBjzQuZE6MA8U2PmP0mMZa3mAdiP6VhGR8D
         M+jumn6QyoJhY9kFzPkdc7j8wvqE8B1j+L4uk4B/cWnymOJj0ai6P4qcZV8SlRQwbCr0
         LHdw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=oMflWhuZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id q5si63269pfs.5.2021.04.12.02.42.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:42:54 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=oMflWhuZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 4C3C66120B;
	Mon, 12 Apr 2021 09:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618220573;
	bh=QQcwfSQicEJoFkfez95/GrPUforwFqy4SFX5gB8Wgo0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=oMflWhuZ8YBXzWup5dObfP5kwM8oRRETd719RfpoI8u3yjFdzfZriVrHdsHgVJLhe
	 ZQ654AVca8LXFWC1cAL+t6JMXoj+BlqQmW8+Vuq4EAYAYxTMgcbH1j9EntnDeN6hvf
	 aFPcyaQMIbn7sZcxo1kxTz4p6mzYSlN1krWh+AQE=
Date: Mon, 12 Apr 2021 11:42:51 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8192u: Remove function
Message-ID: <YHQWG2f34jhA41lK@kroah.com>
References: <20210411184813.22836-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210411184813.22836-1-fmdefrancesco@gmail.com>

On Sun, Apr 11, 2021 at 08:48:13PM +0200, Fabio M. De Francesco wrote:
> Remove cmpk_handle_query_config_rx() because it just initializes a local
> variable and then returns "void".
> 
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
>  drivers/staging/rtl8192u/r819xU_cmdpkt.c | 40 ------------------------
>  1 file changed, 40 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192u/r819xU_cmdpkt.c b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> index 4cece40a92f6..d5a54c2d3086 100644
> --- a/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> +++ b/drivers/staging/rtl8192u/r819xU_cmdpkt.c
> @@ -249,46 +249,6 @@ static void cmpk_handle_interrupt_status(struct net_device *dev, u8 *pmsg)
>  	DMESG("<---- cmpk_handle_interrupt_status()\n");
>  }
>  
> -/*-----------------------------------------------------------------------------
> - * Function:    cmpk_handle_query_config_rx()
> - *
> - * Overview:    The function is responsible for extract the message from
> - *		firmware. It will contain dedicated info in
> - *		ws-06-0063-rtl8190-command-packet-specification. Please
> - *		refer to chapter "Beacon State Element".
> - *
> - * Input:       u8    *pmsg	-	Message Pointer of the command packet.
> - *
> - * Output:      NONE
> - *
> - * Return:      NONE
> - *
> - * Revised History:
> - *  When		Who	Remark
> - *  05/12/2008		amy	Create Version 0 porting from windows code.
> - *
> - *---------------------------------------------------------------------------
> - */
> -static void cmpk_handle_query_config_rx(struct net_device *dev, u8 *pmsg)
> -{
> -	struct cmpk_query_cfg	rx_query_cfg;
> -
> -	/* 1. Extract TX feedback info from RFD to temp structure buffer. */
> -	/* It seems that FW use big endian(MIPS) and DRV use little endian in
> -	 * windows OS. So we have to read the content byte by byte or transfer
> -	 * endian type before copy the message copy.
> -	 */
> -	rx_query_cfg.cfg_action		= (pmsg[4] & 0x80) >> 7;
> -	rx_query_cfg.cfg_type		= (pmsg[4] & 0x60) >> 5;
> -	rx_query_cfg.cfg_size		= (pmsg[4] & 0x18) >> 3;
> -	rx_query_cfg.cfg_page		= (pmsg[6] & 0x0F) >> 0;
> -	rx_query_cfg.cfg_offset		= pmsg[7];
> -	rx_query_cfg.value		= (pmsg[8]  << 24) | (pmsg[9]  << 16) |
> -					  (pmsg[10] <<  8) | (pmsg[11] <<  0);
> -	rx_query_cfg.mask		= (pmsg[12] << 24) | (pmsg[13] << 16) |
> -					  (pmsg[14] <<  8) | (pmsg[15] <<  0);
> -}
> -
>  /*-----------------------------------------------------------------------------
>   * Function:	cmpk_count_tx_status()
>   *
> -- 
> 2.31.1
> 
> 

Always test-build your patches as they can not break the build.  You
obviously did not do that here, why not?

thanks,

greg k-h

