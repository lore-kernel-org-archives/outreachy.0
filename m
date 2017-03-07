X-GM-THRID: 6394514785010974720
X-Received: by 10.99.127.5 with SMTP id a5mr8605780pgd.112.1488865763720;
        Mon, 06 Mar 2017 21:49:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.38.42 with SMTP id a39ls9244939otb.38.gmail; Mon, 06 Mar
 2017 21:49:23 -0800 (PST)
X-Received: by 10.129.50.12 with SMTP id y12mr9196996ywy.111.1488865763377;
        Mon, 06 Mar 2017 21:49:23 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id r66si464585pfb.7.2017.03.06.21.49.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 21:49:23 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C917A9B9;
	Tue,  7 Mar 2017 05:49:22 +0000 (UTC)
Date: Tue, 7 Mar 2017 06:49:15 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tahia Khan <tahia.khan@gmail.com>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: Re: [PATCH 2/3] staging: wilc1000: Fixes camel-casing in
 wilc_network_info_received
Message-ID: <20170307054915.GC14438@kroah.com>
References: <cover.1488838177.git.tahia.khan@gmail.com>
 <c708607f19bd4cd0338bbecd20cba63890d20da6.1488838177.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <c708607f19bd4cd0338bbecd20cba63890d20da6.1488838177.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 05:23:20PM -0500, Tahia Khan wrote:
> Fixes checkpatch warning by renaming pu8Buffer to buffer
> and u32Length to length in wilc_network_info_received.
> 
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h |  4 ++--
>  drivers/staging/wilc1000/host_interface.c   | 12 ++++++------
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 616bd21..c4c5f3b 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -126,8 +126,8 @@ s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
>  			       struct connect_resp_info **ret_connect_resp_info);
>  void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
>  				 u32 length);
> -void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
> -				u32 u32Length);
> +void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
> +				u32 length);

Again, one line please.  I'll let you fix up the others in this series
this way as well.

thanks,

greg k-h

