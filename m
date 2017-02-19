X-GM-THRID: 6388479452970483712
X-Received: by 10.46.0.147 with SMTP id e19mr1744212lji.6.1487524680212;
        Sun, 19 Feb 2017 09:18:00 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.23 with SMTP id d23ls386568lfb.25.gmail; Sun, 19 Feb
 2017 09:17:59 -0800 (PST)
X-Received: by 10.46.80.1 with SMTP id e1mr1707590ljb.10.1487524679242;
        Sun, 19 Feb 2017 09:17:59 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h62si492439wme.2.2017.02.19.09.17.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 19 Feb 2017 09:17:59 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,182,1484002800"; 
   d="scan'208";a="213978469"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Feb 2017 18:17:58 +0100
Date: Sun, 19 Feb 2017 18:17:57 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/2] staging: ks7010: Unnecessary
 parentheses should be avoided
In-Reply-To: <20170219170734.GA15584@arushi-HP-Pavilion-Notebook>
Message-ID: <alpine.DEB.2.20.1702191815120.2363@hadrien>
References: <20170219170734.GA15584@arushi-HP-Pavilion-Notebook>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 19 Feb 2017, Arushi Singhal wrote:

> Unnecessary parentheses should be avoided as reported by checkpatch.pl
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---

If you send a v2 for a patch, then you need to say below the --- what the
v2 changes.  Also, you need to resend all the patches in the series, even
the ones that didn't change.  For those you need to say that nothing
changed.  You can also just put the v2 information in the v2 of the
cover letter (patch 0).  Seethe section "Revising your patches" in the
tutorial.

julia

>  drivers/staging/ks7010/ks_hostif.c   | 24 ++++++++++++------------
>  drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++----------
>  2 files changed, 22 insertions(+), 22 deletions(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index 3b2e28749b63..bbc39cbabdc1 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -212,7 +212,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  	memset(ap, 0, sizeof(struct local_ap_t));
>
>  	/* bssid */
> -	memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
> +	memcpy(&ap->bssid[0], &ap_info->bssid[0], ETH_ALEN);
>  	/* rssi */
>  	ap->rssi = ap_info->rssi;
>  	/* sq */
> @@ -224,7 +224,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  	/* channel */
>  	ap->channel = ap_info->ch_info;
>
> -	bp = &(ap_info->body[0]);
> +	bp = &ap_info->body[0];
>  	bsize = ap_info->body_size;
>  	offset = 0;
>
> @@ -239,19 +239,19 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  					*(bp + 1));
>  				ap->ssid.size = SSID_MAX_SIZE;
>  			}
> -			memcpy(&(ap->ssid.body[0]), bp + 2, ap->ssid.size);
> +			memcpy(&ap->ssid.body[0], bp + 2, ap->ssid.size);
>  			break;
>  		case 1:	/* rate */
>  		case 50:	/* ext rate */
>  			if ((*(bp + 1) + ap->rate_set.size) <=
>  			    RATE_SET_MAX_SIZE) {
> -				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
> +				memcpy(&ap->rate_set.body[ap->rate_set.size],
>  				       bp + 2, *(bp + 1));
>  				ap->rate_set.size += *(bp + 1);
>  			} else {
>  				DPRINTK(1, "size over :: rate size=%d\n",
>  					(*(bp + 1) + ap->rate_set.size));
> -				memcpy(&(ap->rate_set.body[ap->rate_set.size]),
> +				memcpy(&ap->rate_set.body[ap->rate_set.size],
>  				       bp + 2,
>  				       RATE_SET_MAX_SIZE - ap->rate_set.size);
>  				ap->rate_set.size +=
> @@ -269,7 +269,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  					*(bp + 1));
>  				ap->rsn_ie.size = RSN_IE_BODY_MAX;
>  			}
> -			memcpy(&(ap->rsn_ie.body[0]), bp + 2, ap->rsn_ie.size);
> +			memcpy(&ap->rsn_ie.body[0], bp + 2, ap->rsn_ie.size);
>  			break;
>  		case 221:	/* WPA */
>  			if (!memcmp(bp + 2, "\x00\x50\xf2\x01", 4)) {	/* WPA OUI check */
> @@ -282,7 +282,7 @@ int get_ap_information(struct ks_wlan_private *priv, struct ap_info_t *ap_info,
>  						*(bp + 1));
>  					ap->wpa_ie.size = RSN_IE_BODY_MAX;
>  				}
> -				memcpy(&(ap->wpa_ie.body[0]), bp + 2,
> +				memcpy(&ap->wpa_ie.body[0], bp + 2,
>  				       ap->wpa_ie.size);
>  			}
>  			break;
> @@ -832,8 +832,8 @@ void hostif_scan_indication(struct ks_wlan_private *priv)
>  	if (priv->scan_ind_count != 0) {
>  		for (i = 0; i < priv->aplist.size; i++) {	/* bssid check */
>  			if (!memcmp
> -			    (&(ap_info->bssid[0]),
> -			     &(priv->aplist.ap[i].bssid[0]), ETH_ALEN)) {
> +			    (&ap_info->bssid[0],
> +			     &priv->aplist.ap[i].bssid[0], ETH_ALEN)) {
>  				if (ap_info->frame_type ==
>  				    FRAME_TYPE_PROBE_RESP)
>  					get_ap_information(priv, ap_info,
> @@ -2652,7 +2652,7 @@ int hostif_init(struct ks_wlan_private *priv)
>
>  	priv->aplist.size = 0;
>  	for (i = 0; i < LOCAL_APLIST_MAX; i++)
> -		memset(&(priv->aplist.ap[i]), 0, sizeof(struct local_ap_t));
> +		memset(&priv->aplist.ap[i], 0, sizeof(struct local_ap_t));
>  	priv->infra_status = 0;
>  	priv->current_rate = 4;
>  	priv->connect_status = DISCONNECT_STATUS;
> @@ -2675,12 +2675,12 @@ int hostif_init(struct ks_wlan_private *priv)
>  	INIT_WORK(&priv->ks_wlan_wakeup_task, ks_wlan_hw_wakeup_task);
>
>  	/* WPA */
> -	memset(&(priv->wpa), 0, sizeof(priv->wpa));
> +	memset(&priv->wpa, 0, sizeof(priv->wpa));
>  	priv->wpa.rsn_enabled = 0;
>  	priv->wpa.mic_failure.failure = 0;
>  	priv->wpa.mic_failure.last_failure_time = 0;
>  	priv->wpa.mic_failure.stop = 0;
> -	memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
> +	memset(&priv->pmklist, 0, sizeof(priv->pmklist));
>  	INIT_LIST_HEAD(&priv->pmklist.head);
>  	for (i = 0; i < PMK_LIST_MAX; i++)
>  		INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
> diff --git a/drivers/staging/ks7010/ks_wlan_net.c b/drivers/staging/ks7010/ks_wlan_net.c
> index 8c55428b71c7..2233c9fa982a 100644
> --- a/drivers/staging/ks7010/ks_wlan_net.c
> +++ b/drivers/staging/ks7010/ks_wlan_net.c
> @@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct net_device *dev, struct iw_request_info *info,
>
>  	/* for SLEEP MODE */
>  	if ((priv->connect_status & CONNECT_STATUS_MASK) == CONNECT_STATUS)
> -		memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), ETH_ALEN);
> +		memcpy(awrq->sa_data, &priv->current_ap.bssid[0], ETH_ALEN);
>  	else
>  		eth_zero_addr(awrq->sa_data);
>
> @@ -1364,7 +1364,7 @@ static int ks_wlan_get_aplist(struct net_device *dev,
>  		return -EPERM;
>  	/* for SLEEP MODE */
>  	for (i = 0; i < priv->aplist.size; i++) {
> -		memcpy(address[i].sa_data, &(priv->aplist.ap[i].bssid[0]),
> +		memcpy(address[i].sa_data, &priv->aplist.ap[i].bssid[0],
>  		       ETH_ALEN);
>  		address[i].sa_family = ARPHRD_ETHER;
>  		qual[i].level = 256 - priv->aplist.ap[i].rssi;
> @@ -1454,7 +1454,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
>  	iwe.u.data.flags = 1;
>  	current_ev =
>  	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
> -				 &(ap->ssid.body[0]));
> +				 &ap->ssid.body[0]);
>
>  	/* Add mode */
>  	iwe.cmd = SIOCGIWMODE;
> @@ -1496,7 +1496,7 @@ static inline char *ks_wlan_translate_scan(struct net_device *dev,
>  	iwe.u.data.length = 0;
>  	current_ev =
>  	    iwe_stream_add_point(info, current_ev, end_buf, &iwe,
> -				 &(ap->ssid.body[0]));
> +				 &ap->ssid.body[0]);
>
>  	/* Rate : stuffing multiple values in a single event require a bit
>  	 * more of magic - Jean II */
> @@ -1612,7 +1612,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
>  		current_ev = ks_wlan_translate_scan(dev, current_ev,
>  //                                                  extra + IW_SCAN_MAX_DATA,
>  						    extra + dwrq->length,
> -						    &(priv->current_ap));
> +						    &priv->current_ap);
>  	}
>  #endif
>  	/* Read and parse all entries */
> @@ -1625,7 +1625,7 @@ static int ks_wlan_get_scan(struct net_device *dev,
>  		current_ev = ks_wlan_translate_scan(dev, info, current_ev,
>  //                                                  extra + IW_SCAN_MAX_DATA,
>  						    extra + dwrq->length,
> -						    &(priv->aplist.ap[i]));
> +						    &priv->aplist.ap[i]);
>  	}
>  	/* Length of data */
>  	dwrq->length = (current_ev - extra);
> @@ -2080,7 +2080,7 @@ static int ks_wlan_set_pmksa(struct net_device *dev,
>  		}
>  		break;
>  	case IW_PMKSA_FLUSH:
> -		memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
> +		memset(&priv->pmklist, 0, sizeof(priv->pmklist));
>  		INIT_LIST_HEAD(&priv->pmklist.head);
>  		for (i = 0; i < PMK_LIST_MAX; i++)
>  			INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
> @@ -2178,7 +2178,7 @@ static int ks_wlan_get_firmware_version(struct net_device *dev,
>  {
>  	struct ks_wlan_private *priv =
>  	    (struct ks_wlan_private *)netdev_priv(dev);
> -	strcpy(extra, &(priv->firmware_version[0]));
> +	strcpy(extra, &priv->firmware_version[0]);
>  	dwrq->length = priv->version_size + 1;
>  	return 0;
>  }
> @@ -2433,7 +2433,7 @@ static int ks_wlan_data_read(struct net_device *dev,
>  		read_length = priv->dev_size[priv->dev_count];
>
>  	/* Copy data */
> -	memcpy(extra, &(priv->dev_data[priv->dev_count][0]), read_length);
> +	memcpy(extra, &priv->dev_data[priv->dev_count][0], read_length);
>
>  	spin_unlock(&priv->dev_read_lock);	/* release spin lock */
>
> @@ -3254,7 +3254,7 @@ static int ks_wlan_netdev_ioctl(struct net_device *dev, struct ifreq *rq,
>
>  	switch (cmd) {
>  	case SIOCIWFIRSTPRIV + 20:	/* KS_WLAN_SET_STOP_REQ */
> -		rc = ks_wlan_set_stop_request(dev, NULL, &(wrq->u.mode), NULL);
> +		rc = ks_wlan_set_stop_request(dev, NULL, &wrq->u.mode, NULL);
>  		break;
>  		// All other calls are currently unsupported
>  	default:
> --
> 2.11.0
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170219170734.GA15584%40arushi-HP-Pavilion-Notebook.
> For more options, visit https://groups.google.com/d/optout.
>

