X-GM-THRID: 6395629970137284608
X-Received: by 10.99.168.71 with SMTP id i7mr7361263pgp.116.1489101654669;
        Thu, 09 Mar 2017 15:20:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.47.173 with SMTP id r42ls3384785otb.26.gmail; Thu, 09 Mar
 2017 15:20:54 -0800 (PST)
X-Received: by 10.157.60.72 with SMTP id j8mr6324760ote.52.1489101654297;
        Thu, 09 Mar 2017 15:20:54 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x242.google.com (mail-pg0-x242.google.com. [2607:f8b0:400e:c05::242])
        by gmr-mx.google.com with ESMTPS id 2si1504316pfx.8.2017.03.09.15.20.54
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 15:20:54 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) client-ip=2607:f8b0:400e:c05::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::242 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x242.google.com with SMTP id b5so8267452pgg.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 15:20:54 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=H+/IhL/ReD49tCmesK/Hy0m5jAuyM5t36yscwaxsQLE=;
        b=OfSG3M0Wsc2n4DeS+I4rLbjm1ui45HoCfNKTk4nr5kOJZwnHjScg3rCZ5MIfvQa8WM
         7GCVlYfM6zPLJ5FL7ELAvEseMcunsCwspYB8xxQj58NOenHXAy/kvOEQp4OJYbzVSSOJ
         is5Rj7iF6PEttsZTareQXX0HnfuV95W1OxgqRZZH7Yo+qqR3iqzcxOQpAmINCLnji53V
         diAfbg4Z0qZRF+VvbX/kL5Tm2cvij5lHD/N/64f9Y6465j512xRidkmapSdtDeB2Don0
         PGHMmv8y8p6suPaUhtTLZSui8NF0u/2jGG/fh9waC166Jt3w3RAKOxGIgPv7DAQpreIT
         Pvrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=H+/IhL/ReD49tCmesK/Hy0m5jAuyM5t36yscwaxsQLE=;
        b=piTm9n+tqNpNIiN2Du+p3A2rA1qB4rr78zaETmJxqPQ2m5E6e+NtPLeMCaqes+Fm4R
         6NVTqs4G8BHbPR6iQ133pwA/Lok4pQmN7w4rRCw4C+XUl+tEdmewO5w54esp0AdtuD/x
         nRXtAS8JyxWIuuuS/JBFIIiwLQc+bwY+2HZd2YVic78SJ4D73pNscgJAS2BsUSn+y35I
         N0BU9oGlOidSO90wqXvv5xicWMu8mWsBQi+w5FzViy/GtNsbp7ag5h0qfHU5sRAwOO5h
         ssxlG7ZisyTsV2Z6joAARc8UgtKUlit4MVmwwHzWt7lY0dSV6UYnKZa+/r/A6PKn5Qb5
         OWAQ==
X-Gm-Message-State: AMke39k3oClHHFkTzie+zj9avt4rGwZyq7VCz4xy8oaW/lzEayL1oQeo9wanvcAyBqXeTA==
X-Received: by 10.84.232.129 with SMTP id i1mr20834816plk.129.1489101654055;
        Thu, 09 Mar 2017 15:20:54 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id x63sm14538598pgb.30.2017.03.09.15.20.53
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 15:20:53 -0800 (PST)
Date: Thu, 9 Mar 2017 15:20:52 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: wilc1000: Remove camel
 case
Message-ID: <20170309232051.GA16746@d830.WORKGROUP>
References: <20170309223039.7303-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309223039.7303-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 12:30:39AM +0200, Tamara Diaconita wrote:
> Change the name of variables to remove camel case.
> 
> Fix the checkpatch.pl issue:
> CHECK: Remove CamelCase.
> 
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>

Hi Tamara,

These are forward declarations and need to match the actual function
headers. So, you'll find these funcs, change their declaration, and
have to change the follow on usages of the vars you change.

Since we are seeing a lot of long line issues in this driver,
perhaps you can shorten to the customary "buf" instead of "buffer."
We might appreciate those extra 3 chars later.

alisons


> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index 10101f8..a2df5c7 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -124,10 +124,10 @@ s32 wilc_parse_network_info(u8 *msg_buffer,
>  			    struct network_info **ret_network_info);
>  s32 wilc_parse_assoc_resp_info(u8 *buffer, u32 buffer_len,
>  			       struct connect_resp_info **ret_connect_resp_info);
> -void wilc_scan_complete_received(struct wilc *wilc, u8 *pu8Buffer,
> -				 u32 u32Length);
> -void wilc_network_info_received(struct wilc *wilc, u8 *pu8Buffer,
> -				u32 u32Length);
> -void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *pu8Buffer,
> -				   u32 u32Length);
> +void wilc_scan_complete_received(struct wilc *wilc, u8 *buffer,
> +				 u32 length);
> +void wilc_network_info_received(struct wilc *wilc, u8 *buffer,
> +				u32 length);
> +void wilc_gnrl_async_info_received(struct wilc *wilc, u8 *buffer,
> +				   u32 length);
>  #endif
> -- 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309223039.7303-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

