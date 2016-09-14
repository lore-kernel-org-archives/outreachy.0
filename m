X-GM-THRID: 6329887574772940800
X-Received: by 10.46.5.140 with SMTP id 134mr117182ljf.6.1473831109238;
        Tue, 13 Sep 2016 22:31:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.167.66 with SMTP id q63ls64708wme.15.gmail; Tue, 13 Sep
 2016 22:31:48 -0700 (PDT)
X-Received: by 10.194.46.233 with SMTP id y9mr113001wjm.3.1473831108606;
        Tue, 13 Sep 2016 22:31:48 -0700 (PDT)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id e21si182254wmc.2.2016.09.13.22.31.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 13 Sep 2016 22:31:48 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.30,332,1470693600"; 
   d="scan'208";a="236362685"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien.local) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 14 Sep 2016 07:31:47 +0200
Date: Wed, 14 Sep 2016 07:31:47 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: sayli karnik <karniksayli1995@gmail.com>
cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove expicit cast
 to kmalloc
In-Reply-To: <20160913183627.GA20306@sayli-HP-15-Notebook-PC>
Message-ID: <alpine.DEB.2.10.1609140730590.3395@hadrien>
References: <20160913183627.GA20306@sayli-HP-15-Notebook-PC>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII

On Wed, 14 Sep 2016, sayli karnik wrote:

> The assignment operator implicitly converts a void pointer to the type
> of the pointer it is assigned to. Hence an explicit cast to the kmalloc
> function is not required.

The patch looks fine.  But the commit message is a bit hard to understand.
"an explicit cast on the result of the kmalloc function" would be clearer.

julia

>
> Signed-off-by: sayli karnik <karniksayli1995@gmail.com>
> ---
>  drivers/staging/ks7010/ks_hostif.c | 47 +++++++++++++-------------------------
>  1 file changed, 16 insertions(+), 31 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index f32ce5a..0a897c5 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -1172,9 +1172,8 @@ int hostif_data_request(struct ks_wlan_private *priv, struct sk_buff *packet)
>  	}
>
>  	DPRINTK(4, "skb_buff length=%d\n", packet_len);
> -	pp = (struct hostif_data_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
> -		    KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp) + 6 + packet_len + 8),
> +		     KS_WLAN_MEM_FLAG);
>
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
> @@ -1313,8 +1312,7 @@ void hostif_mib_get_request(struct ks_wlan_private *priv,
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_mib_get_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1344,8 +1342,7 @@ void hostif_mib_set_request(struct ks_wlan_private *priv,
>  	}
>
>  	/* make primitive */
> -	pp = (struct hostif_mib_set_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp) + size), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1374,8 +1371,7 @@ void hostif_start_request(struct ks_wlan_private *priv, unsigned char mode)
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_start_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1402,8 +1398,7 @@ void hostif_ps_adhoc_set_request(struct ks_wlan_private *priv)
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_ps_adhoc_set_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1446,8 +1441,7 @@ void hostif_infrastructure_set_request(struct ks_wlan_private *priv)
>  	DPRINTK(3, "ssid.size=%d \n", priv->reg.ssid.size);
>
>  	/* make primitive */
> -	pp = (struct hostif_infrastructure_set_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1513,8 +1507,7 @@ void hostif_infrastructure_set2_request(struct ks_wlan_private *priv)
>  	DPRINTK(2, "ssid.size=%d \n", priv->reg.ssid.size);
>
>  	/* make primitive */
> -	pp = (struct hostif_infrastructure_set2_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1583,8 +1576,7 @@ void hostif_adhoc_set_request(struct ks_wlan_private *priv)
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_adhoc_set_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1629,8 +1621,7 @@ void hostif_adhoc_set2_request(struct ks_wlan_private *priv)
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_adhoc_set2_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1677,8 +1668,7 @@ void hostif_stop_request(struct ks_wlan_private *priv)
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_stop_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1700,8 +1690,7 @@ void hostif_phy_information_request(struct ks_wlan_private *priv)
>  	DPRINTK(3, "\n");
>
>  	/* make primitive */
> -	pp = (struct hostif_phy_information_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1732,8 +1721,7 @@ void hostif_power_mngmt_request(struct ks_wlan_private *priv,
>  	DPRINTK(3, "mode=%lu wake_up=%lu receiveDTIMs=%lu\n", mode, wake_up,
>  		receiveDTIMs);
>  	/* make primitive */
> -	pp = (struct hostif_power_mngmt_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1759,8 +1747,7 @@ void hostif_sleep_request(struct ks_wlan_private *priv, unsigned long mode)
>
>  	if (mode == SLP_SLEEP) {
>  		/* make primitive */
> -		pp = (struct hostif_sleep_request_t *)
> -		    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +		pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  		if (!pp) {
>  			DPRINTK(3, "allocate memory failed..\n");
>  			return;
> @@ -1793,8 +1780,7 @@ void hostif_bss_scan_request(struct ks_wlan_private *priv,
>
>  	DPRINTK(2, "\n");
>  	/* make primitive */
> -	pp = (struct hostif_bss_scan_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> @@ -1850,8 +1836,7 @@ void hostif_mic_failure_request(struct ks_wlan_private *priv,
>
>  	DPRINTK(3, "count=%d :: timer=%d\n", failure_count, timer);
>  	/* make primitive */
> -	pp = (struct hostif_mic_failure_request_t *)
> -	    kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
> +	pp = kmalloc(hif_align_size(sizeof(*pp)), KS_WLAN_MEM_FLAG);
>  	if (!pp) {
>  		DPRINTK(3, "allocate memory failed..\n");
>  		return;
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160913183627.GA20306%40sayli-HP-15-Notebook-PC.
> For more options, visit https://groups.google.com/d/optout.
>

