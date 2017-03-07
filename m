X-GM-THRID: 6394514785010974720
X-Received: by 10.157.31.115 with SMTP id x48mr4985666otx.95.1488865738144;
        Mon, 06 Mar 2017 21:48:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.51.3 with SMTP id f3ls3748693otc.32.gmail; Mon, 06 Mar
 2017 21:48:57 -0800 (PST)
X-Received: by 10.157.17.228 with SMTP id y33mr8135176oty.102.1488865737808;
        Mon, 06 Mar 2017 21:48:57 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c123si466429pfa.4.2017.03.06.21.48.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 21:48:57 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12060-104.w90-92.abo.wanadoo.fr [90.92.122.104])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 811849B9;
	Tue,  7 Mar 2017 05:48:56 +0000 (UTC)
Date: Tue, 7 Mar 2017 06:48:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Tahia Khan <tahia.khan@gmail.com>
Cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com,
	ganesh.krishna@microchip.com
Subject: Re: [PATCH 1/3] staging: wilc1000: Fixes camel-casing in
 wilc_scan_complete_received
Message-ID: <20170307054849.GB14438@kroah.com>
References: <cover.1488838177.git.tahia.khan@gmail.com>
 <13aa6c6b8da66aecb569c9491b69b99dfb11e613.1488838177.git.tahia.khan@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <13aa6c6b8da66aecb569c9491b69b99dfb11e613.1488838177.git.tahia.khan@gmail.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Mon, Mar 06, 2017 at 05:23:15PM -0500, Tahia Khan wrote:
> Fixes checkpatch warning by renaming pu8Buffer to buffer
> and u32Length to length in wilc_scan_complete_received.
> 
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
>  drivers/staging/wilc1000/host_interface.c   | 6 +++---
>  2 files changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 10101f8..616bd21 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -124,8 +124,8 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
>  			    struct network_info **ret_network_info);
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
>  			       struct connect_resp_info **ret_connect_resp_info);
> -void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
> -				 u32 u32Length);
> +void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> +				 u32 length);

This can all now be on one line, correct?

>  void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
>  				u32 u32Length);
>  void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index f848bb8..853a57f3 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -3523,8 +3523,8 @@ void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
>  	mutex_unlock(&hif_deinit_lock);
>  }
>  
> -void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
> -				 u32 u32Length)
> +void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> +				 u32 length)

Same here.

thanks,

greg k-h

