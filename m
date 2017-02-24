X-GM-THRID: 6390544093665034240
X-Received: by 10.46.88.70 with SMTP id x6mr93793ljd.22.1487918458814;
        Thu, 23 Feb 2017 22:40:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.143 with SMTP id m137ls360487lfm.51.gmail; Thu, 23 Feb
 2017 22:40:58 -0800 (PST)
X-Received: by 10.46.87.80 with SMTP id r16mr108455ljd.16.1487918458022;
        Thu, 23 Feb 2017 22:40:58 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id y19si68833wmd.0.2017.02.23.22.40.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 23 Feb 2017 22:40:57 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,200,1484002800"; 
   d="scan'208";a="214554859"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 24 Feb 2017 07:40:57 +0100
Date: Fri, 24 Feb 2017 07:40:56 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Tahia Khan <tahia.khan@gmail.com>
cc: outreachy-kernel@googlegroups.com, aditya.shankar@microchip.com, 
    ganesh.krishna@microchip.com, gregkh@linuxfoundation.org, 
    linux-wireless@vger.kernel.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH v3 1/3] staging: wilc1000: Rename
 struct tstrRSSI to rssi_history_buffer
In-Reply-To: <da73d1aef379243ba94a5c1a4e1d6663160451fd.1487912400.git.tahia.khan@gmail.com>
Message-ID: <alpine.DEB.2.20.1702240740240.2095@hadrien>
References: <cover.1487912400.git.tahia.khan@gmail.com> <da73d1aef379243ba94a5c1a4e1d6663160451fd.1487912400.git.tahia.khan@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 24 Feb 2017, Tahia Khan wrote:

> Rename struct tstrRSSI to rssi_history_buffer for clarity and to remove camel casing.

Here the commit log messge line is definitely too long.

julia

>
> Signed-off-by: Tahia Khan <tahia.khan@gmail.com>
> ---
>  drivers/staging/wilc1000/coreconfigurator.h | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/coreconfigurator.h b/drivers/staging/wilc1000/coreconfigurator.h
> index cff1698..1c77529 100644
> --- a/drivers/staging/wilc1000/coreconfigurator.h
> +++ b/drivers/staging/wilc1000/coreconfigurator.h
> @@ -70,7 +70,7 @@ enum connect_status {
>  	CONNECT_STS_FORCE_16_BIT = 0xFFFF
>  };
>
> -struct tstrRSSI {
> +struct rssi_history_buffer {
>  	u8 u8Full;
>  	u8 u8Index;
>  	s8 as8RSSI[NUM_RSSI];
> @@ -93,7 +93,7 @@ struct network_info {
>  	u8 *ies;
>  	u16 ies_len;
>  	void *join_params;
> -	struct tstrRSSI str_rssi;
> +	struct rssi_history_buffer str_rssi;
>  	u64 tsf_hi;
>  };
>
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/da73d1aef379243ba94a5c1a4e1d6663160451fd.1487912400.git.tahia.khan%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

