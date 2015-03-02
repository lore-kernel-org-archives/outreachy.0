X-GM-THRID: 5908461518848
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,b6612ad19d5639d4
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.236.51.170 with SMTP id b30mr27575623yhc.34.1425316590087;
        Mon, 02 Mar 2015 09:16:30 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.36.228 with SMTP id p91ls1795282qgp.36.gmail; Mon, 02 Mar
 2015 09:16:29 -0800 (PST)
X-Received: by 10.236.4.100 with SMTP id 64mr27755815yhi.43.1425316589768;
        Mon, 02 Mar 2015 09:16:29 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x230.google.com (mail-qc0-x230.google.com. [2607:f8b0:400d:c01::230])
        by gmr-mx.google.com with ESMTPS id e5si1830205qcg.1.2015.03.02.09.16.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:16:29 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::230 as permitted sender) client-ip=2607:f8b0:400d:c01::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::230 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x230.google.com with SMTP id p6so25744683qcv.9
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:16:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:subject:references
         :in-reply-to:content-type:content-transfer-encoding;
        bh=NpXlEstVKTdBeeHJ/INtUpYXbO1UccpWUuAfnpUfpoM=;
        b=h265yTXWwLyuT0LcZf7TTNzCuAmSCGI/Ff3+wLnZHlcnQ9jQEgY6qde5OXWhdfVHDa
         pFMUXS1B5RXEWsp9qzTuDcmmgzPK9QsKbNS6OuQuKRH4tdP8xBsFkDlcg/6TcoXuWF9e
         2awdewoS32B3qRXKwq5V+6ef3616+/q2LluTZVgBIkkClCniViOl0nq0d1iEjLd2nzWL
         1zvL5LDAgOc5z6FUXfY0NFbENTEPpGklZTpnGiT1YFSdwuUNPEFNyAsOyGHluRVm9oy5
         I7KskzwFXl7X+M5OweuCbV3QPMPRAoCWC2RBMGr97MC1Rd7x5E6bQzz7QrddAiMuQryR
         FQuA==
X-Received: by 10.229.98.7 with SMTP id o7mr39137340qcn.30.1425316589607;
        Mon, 02 Mar 2015 09:16:29 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id q11sm8761387qad.40.2015.03.02.09.16.27
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:16:28 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F49AE9.7080701@gmail.com>
Date: Mon, 02 Mar 2015 12:16:25 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?SGF0aWNlIEVSVMOcUks=?= <haticeerturk27@gmail.com>, 
 outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211: changed
 C99 // comments
References: <1425307039-15440-1-git-send-email-haticeerturk27@gmail.com>
In-Reply-To: <1425307039-15440-1-git-send-email-haticeerturk27@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 03/02/15 09:37, Hatice ERTÜRK wrote:
> // erased and replace it with /**/ used.
> Error found with checkpatch.pl
> 
> Signed-off-by: Hatice ERTURK <haticeerturk27@gmail.com>
> ---
>  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 298 +++++++++++----------
>  1 file changed, 150 insertions(+), 148 deletions(-)

Hi,

Changing actual comments from // to /* */ is good, however for commented
out code, it's better to remove the code all together.

Examples below.

Cheers,
Jes


> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> index 3a54071..71b7bb8 100644
> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
> @@ -103,12 +103,12 @@ static void ieee80211_WMM_Info(struct ieee80211_device *ieee, u8 **tag_p)
>  {
>  	u8 *tag = *tag_p;
>  
> -	*tag++ = MFIE_TYPE_GENERIC; //0
> +	*tag++ = MFIE_TYPE_GENERIC; /* 0 */
>  	*tag++ = 7;
>  	*tag++ = 0x00;
>  	*tag++ = 0x50;
>  	*tag++ = 0xf2;
> -	*tag++ = 0x02;//5
> +	*tag++ = 0x02; /* 5 */
>  	*tag++ = 0x00;
>  	*tag++ = 0x01;
>  #ifdef SUPPORT_USPD

These are fine

> @@ -128,12 +128,12 @@ static void ieee80211_TURBO_Info(struct ieee80211_device *ieee, u8 **tag_p)
>  {
>  	u8 *tag = *tag_p;
>  
> -	*tag++ = MFIE_TYPE_GENERIC; //0
> +	*tag++ = MFIE_TYPE_GENERIC; /* 0 */
>  	*tag++ = 7;
>  	*tag++ = 0x00;
>  	*tag++ = 0xe0;
>  	*tag++ = 0x4c;
> -	*tag++ = 0x01;//5
> +	*tag++ = 0x01; /* 5 */
>  	*tag++ = 0x02;
>  	*tag++ = 0x11;
>  	*tag++ = 0x00;
> @@ -186,14 +186,14 @@ static u8 MgntQuery_MgntFrameTxRate(struct ieee80211_device *ieee)
>  	PRT_HIGH_THROUGHPUT      pHTInfo = ieee->pHTInfo;
>  	u8 rate;
>  
> -	// 2008/01/25 MH For broadcom, MGNT frame set as OFDM 6M.
> +	/* 2008/01/25 MH For broadcom, MGNT frame set as OFDM 6M. */
>  	if(pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)
>  		rate = 0x0c;
>  	else
>  		rate = ieee->basic_rate & 0x7f;
>  
>  	if(rate == 0){
> -		// 2005.01.26, by rcnjko.
> +		/* 2005.01.26, by rcnjko. */
>  		if(ieee->mode == IEEE_A||
>  		   ieee->mode== IEEE_N_5G||
>  		   (ieee->mode== IEEE_N_24G&&!pHTInfo->bCurSuppCCK))
> @@ -251,7 +251,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
>  			/* avoid watchdog triggers */
>  			ieee->dev->trans_start = jiffies;
>  			ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
> -			//dev_kfree_skb_any(skb);//edit by thomas
> +			/* dev_kfree_skb_any(skb);//edit by thomas */
>  		}
>  
>  		spin_unlock_irqrestore(&ieee->lock, flags);

This you should simply remove.

> @@ -277,9 +277,9 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *ieee
>  			printk("%s():insert to waitqueue!\n",__func__);
>  			skb_queue_tail(&ieee->skb_waitQ[tcb_desc->queue_index], skb);
>  		} else {
> -			//printk("TX packet!\n");
> +			/* printk("TX packet!\n"); */
>  			ieee->softmac_hard_start_xmit(skb, ieee->dev);
> -			//dev_kfree_skb_any(skb);//edit by thomas
> +			/* dev_kfree_skb_any(skb); edit by thomas */
>  		}
>  		spin_unlock_irqrestore(&ieee->mgmt_tx_lock, flags);
>  	}
> @@ -318,7 +318,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff *skb, struct ieee80211_device *i
>  		ieee->softmac_hard_start_xmit(skb, ieee->dev);
>  
>  	}
> -	//dev_kfree_skb_any(skb);//edit by thomas
> +	/* dev_kfree_skb_any(skb); edit by thomas */
>  }
>  
>  inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
> @@ -341,7 +341,7 @@ inline struct sk_buff *ieee80211_probe_req(struct ieee80211_device *ieee)
>  
>  	req = (struct ieee80211_probe_request *) skb_put(skb,sizeof(struct ieee80211_probe_request));
>  	req->header.frame_ctl = cpu_to_le16(IEEE80211_STYPE_PROBE_REQ);
> -	req->header.duration_id = 0; //FIXME: is this OK ?
> +	req->header.duration_id = 0; /* FIXME: is this OK ? */
>  
>  	memset(req->header.addr1, 0xff, ETH_ALEN);
>  	memcpy(req->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
> @@ -366,24 +366,24 @@ static void ieee80211_send_beacon(struct ieee80211_device *ieee)
>  	struct sk_buff *skb;
>  	if(!ieee->ieee_up)
>  		return;
> -	//unsigned long flags;
> +	/* unsigned long flags; */
>  	skb = ieee80211_get_beacon_(ieee);
>  
>  	if (skb){
>  		softmac_mgmt_xmit(skb, ieee);
>  		ieee->softmac_stats.tx_beacons++;
> -		//dev_kfree_skb_any(skb);//edit by thomas
> +		/* dev_kfree_skb_any(skb); edit by thomas */
>  	}
> -//	ieee->beacon_timer.expires = jiffies +
> -//		(MSECS( ieee->current_network.beacon_interval -5));
> +	/* ieee->beacon_timer.expires = jiffies +
> +		(MSECS( ieee->current_network.beacon_interval -5));
>  
> -	//spin_lock_irqsave(&ieee->beacon_lock,flags);
> +	spin_lock_irqsave(&ieee->beacon_lock,flags); */
>  	if(ieee->beacon_txing && ieee->ieee_up){
> -//		if(!timer_pending(&ieee->beacon_timer))
> -//			add_timer(&ieee->beacon_timer);
> +		/* if(!timer_pending(&ieee->beacon_timer))
> +			add_timer(&ieee->beacon_timer); */
>  		mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current_network.beacon_interval-5)));
>  	}
> -	//spin_unlock_irqrestore(&ieee->beacon_lock,flags);
> +	/* spin_unlock_irqrestore(&ieee->beacon_lock,flags); */
>  }
>  
>  
> @@ -407,7 +407,7 @@ static void ieee80211_send_probe(struct ieee80211_device *ieee)
>  	if (skb){
>  		softmac_mgmt_xmit(skb, ieee);
>  		ieee->softmac_stats.tx_probe_rq++;
> -		//dev_kfree_skb_any(skb);//edit by thomas
> +		/* dev_kfree_skb_any(skb); edit by thomas */
>  	}
>  }
>  
> @@ -506,7 +506,7 @@ static void ieee80211_softmac_scan_wq(struct work_struct *work)
>  			(ieee->current_network.channel + 1) % MAX_CHANNEL_NUMBER;
>  		if (watchdog++ > MAX_CHANNEL_NUMBER)
>  		{
> -		//if current channel is not in channel map, set to default channel.
> +		/* if current channel is not in channel map, set to default channel. */
>  			if (!channel_map[ieee->current_network.channel]) {
>  				ieee->current_network.channel = 6;
>  				goto out; /* no good chans */
> @@ -580,12 +580,12 @@ EXPORT_SYMBOL(ieee80211_start_send_beacons);
>  
>  static void ieee80211_softmac_stop_scan(struct ieee80211_device *ieee)
>  {
> -//	unsigned long flags;
> +	/* unsigned long flags;
>  
> -	//ieee->sync_scan_hurryup = 1;
> +	ieee->sync_scan_hurryup = 1; */
>  
>  	down(&ieee->scan_sem);
> -//	spin_lock_irqsave(&ieee->lock, flags);
> +	/* spin_lock_irqsave(&ieee->lock, flags); */
>  
>  	if (ieee->scanning == 1){
>  		ieee->scanning = 0;
> @@ -593,7 +593,7 @@ static void ieee80211_softmac_stop_scan(struct ieee80211_device *ieee)
>  		cancel_delayed_work(&ieee->softmac_scan_wq);
>  	}
>  
> -//	spin_unlock_irqrestore(&ieee->lock, flags);
> +	/* spin_unlock_irqrestore(&ieee->lock, flags); */
>  	up(&ieee->scan_sem);
>  }
>  
> @@ -669,13 +669,13 @@ inline struct sk_buff *ieee80211_authentication_req(struct ieee80211_network *be
>  	memcpy(auth->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
>  	memcpy(auth->header.addr3, beacon->bssid, ETH_ALEN);
>  
> -	//auth->algorithm = ieee->open_wep ? WLAN_AUTH_OPEN : WLAN_AUTH_SHARED_KEY;
> +	/* auth->algorithm = ieee->open_wep ? WLAN_AUTH_OPEN : WLAN_AUTH_SHARED_KEY; */
>  	if(ieee->auth_mode == 0)
>  		auth->algorithm = WLAN_AUTH_OPEN;
>  	else if(ieee->auth_mode == 1)
>  		auth->algorithm = WLAN_AUTH_SHARED_KEY;
>  	else if(ieee->auth_mode == 2)
> -		auth->algorithm = WLAN_AUTH_OPEN;//0x80;
> +		auth->algorithm = WLAN_AUTH_OPEN;/* 0x80; */
>  	printk("=================>%s():auth->algorithm is %d\n",__func__,auth->algorithm);
>  	auth->transaction = cpu_to_le16(ieee->associate_seq);
>  	ieee->associate_seq++;
> @@ -730,7 +730,7 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>  
>  	encrypt = ieee->host_encrypt && crypt && crypt->ops &&
>  		((0 == strcmp(crypt->ops->name, "WEP") || wpa_ie_len));
> -	//HT ralated element
> +	/* HT ralated element */
>  	tmp_ht_cap_buf =(u8 *) &(ieee->pHTInfo->SelfHTCap);
>  	tmp_ht_cap_len = sizeof(ieee->pHTInfo->SelfHTCap);
>  	tmp_ht_info_buf =(u8 *) &(ieee->pHTInfo->SelfHTInfo);
> @@ -745,19 +745,19 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>  		tmp_generic_ie_len = sizeof(ieee->pHTInfo->szRT2RTAggBuffer);
>  		HTConstructRT2RTAggElement(ieee, tmp_generic_ie_buf, &tmp_generic_ie_len);
>  	}
> -//	printk("===============>tmp_ht_cap_len is %d,tmp_ht_info_len is %d, tmp_generic_ie_len is %d\n",tmp_ht_cap_len,tmp_ht_info_len,tmp_generic_ie_len);
> +	/* printk("===============>tmp_ht_cap_len is %d,tmp_ht_info_len is %d, tmp_generic_ie_len is %d\n",tmp_ht_cap_len,tmp_ht_info_len,tmp_generic_ie_len); */
>  	beacon_size = sizeof(struct ieee80211_probe_response)+2+
>  		ssid_len
> -		+3 //channel
> +		+3 /* channel */
>  		+rate_len
>  		+rate_ex_len
>  		+atim_len
>  		+erp_len
>  		+wpa_ie_len
> -	//	+tmp_ht_cap_len
> -	//	+tmp_ht_info_len
> -	//	+tmp_generic_ie_len
> -//		+wmm_len+2
> +		/* +tmp_ht_cap_len
> +		+tmp_ht_info_len
> +		+tmp_generic_ie_len
> +		+wmm_len+2 */
>  		+ieee->tx_headroom;
>  	skb = dev_alloc_skb(beacon_size);
>  	if (!skb)
> @@ -768,13 +768,13 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>  	memcpy (beacon_buf->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
>  	memcpy (beacon_buf->header.addr3, ieee->current_network.bssid, ETH_ALEN);
>  
> -	beacon_buf->header.duration_id = 0; //FIXME
> +	beacon_buf->header.duration_id = 0; /* FIXME */
>  	beacon_buf->beacon_interval =
>  		cpu_to_le16(ieee->current_network.beacon_interval);
>  	beacon_buf->capability =
>  		cpu_to_le16(ieee->current_network.capability & WLAN_CAPABILITY_IBSS);
>  	beacon_buf->capability |=
> -		cpu_to_le16(ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE); //add short preamble here
> +		cpu_to_le16(ieee->current_network.capability & WLAN_CAPABILITY_SHORT_PREAMBLE); /* add short preamble here */
>  
>  	if(ieee->short_slot && (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_SLOT))
>  		beacon_buf->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
> @@ -827,14 +827,14 @@ static struct sk_buff *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>  	if (wpa_ie_len)
>  	{
>  		if (ieee->iw_mode == IW_MODE_ADHOC)
> -		{//as Windows will set pairwise key same as the group key which is not allowed in Linux, so set this for IOT issue. WB 2008.07.07
> +		{/* as Windows will set pairwise key same as the group key which is not allowed in Linux, so set this for IOT issue. WB 2008.07.07 */
>  			memcpy(&ieee->wpa_ie[14], &ieee->wpa_ie[8], 4);
>  		}
>  		memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);
>  		tag += wpa_ie_len;
>  	}
>  
> -	//skb->dev = ieee->dev;
> +	/* skb->dev = ieee->dev; */
>  	return skb;
>  }
>  
> @@ -983,16 +983,16 @@ static void ieee80211_resp_to_probe(struct ieee80211_device *ieee, u8 *dest)
>  inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beacon,struct ieee80211_device *ieee)
>  {
>  	struct sk_buff *skb;
> -	//unsigned long flags;
> +	/* unsigned long flags; */
>  
>  	struct ieee80211_assoc_request_frame *hdr;
> -	u8 *tag;//,*rsn_ie;
> -	//short info_addr = 0;
> -	//int i;
> -	//u16 suite_count = 0;
> -	//u8 suit_select = 0;
> -	//unsigned int wpa_len = beacon->wpa_ie_len;
> -	//for HT
> +	u8 *tag;/* ,*rsn_ie;
> +	short info_addr = 0;
> +	int i;
> +	u16 suite_count = 0;
> +	u8 suit_select = 0;
> +	unsigned int wpa_len = beacon->wpa_ie_len;
> +	for HT */
>  	u8 *ht_cap_buf = NULL;
>  	u8 ht_cap_len=0;
>  	u8 *realtek_ie_buf=NULL;
> @@ -1015,7 +1015,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  	crypt = ieee->crypt[ieee->tx_keyidx];
>  	encrypt = ieee->host_encrypt && crypt && crypt->ops && ((0 == strcmp(crypt->ops->name,"WEP") || wpa_ie_len));
>  
> -	//Include High Throuput capability && Realtek proprietary
> +	/* Include High Throuput capability && Realtek proprietary */
>  	if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
>  	{
>  		ht_cap_buf = (u8 *)&(ieee->pHTInfo->SelfHTCap);
> @@ -1047,8 +1047,8 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  
>  #ifdef THOMAS_TURBO
>  	len = sizeof(struct ieee80211_assoc_request_frame)+ 2
> -		+ beacon->ssid_len//essid tagged val
> -		+ rate_len//rates tagged val
> +		+ beacon->ssid_len /* essid tagged val */
> +		+ rate_len /* rates tagged val */
>  		+ wpa_ie_len
>  		+ wmm_info_len
>  		+ turbo_info_len
> @@ -1060,8 +1060,8 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  		+ ieee->tx_headroom;
>  #else
>  	len = sizeof(struct ieee80211_assoc_request_frame)+ 2
> -		+ beacon->ssid_len//essid tagged val
> -		+ rate_len//rates tagged val
> +		+ beacon->ssid_len /* essid tagged val */
> +		+ rate_len /* rates tagged val */
>  		+ wpa_ie_len
>  		+ wmm_info_len
>  		+ ht_cap_len
> @@ -1084,26 +1084,26 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  
>  
>  	hdr->header.frame_ctl = IEEE80211_STYPE_ASSOC_REQ;
> -	hdr->header.duration_id= 37; //FIXME
> +	hdr->header.duration_id= 37; /* FIXME */
>  	memcpy(hdr->header.addr1, beacon->bssid, ETH_ALEN);
>  	memcpy(hdr->header.addr2, ieee->dev->dev_addr, ETH_ALEN);
>  	memcpy(hdr->header.addr3, beacon->bssid, ETH_ALEN);
>  
> -	memcpy(ieee->ap_mac_addr, beacon->bssid, ETH_ALEN);//for HW security, John
> +	memcpy(ieee->ap_mac_addr, beacon->bssid, ETH_ALEN); /* for HW security, John */
>  
>  	hdr->capability = cpu_to_le16(WLAN_CAPABILITY_BSS);
>  	if (beacon->capability & WLAN_CAPABILITY_PRIVACY )
>  		hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_PRIVACY);
>  
>  	if (beacon->capability & WLAN_CAPABILITY_SHORT_PREAMBLE)
> -		hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE); //add short_preamble here
> +		hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE); /* add short_preamble here */
>  
>  	if(ieee->short_slot)
>  		hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
>  	if (wmm_info_len) //QOS
>  		hdr->capability |= cpu_to_le16(WLAN_CAPABILITY_QOS);
>  
> -	hdr->listen_interval = 0xa; //FIXME
> +	hdr->listen_interval = 0xa; /* FIXME */
>  
>  	hdr->info_element[0].id = MFIE_TYPE_SSID;
>  
> @@ -1115,24 +1115,25 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  
>  	ieee80211_MFIE_Brate(ieee, &tag);
>  	ieee80211_MFIE_Grate(ieee, &tag);
> -	// For CCX 1 S13, CKIP. Added by Annie, 2006-08-14.
> +	/* For CCX 1 S13, CKIP. Added by Annie, 2006-08-14. */
>  	if (beacon->bCkipSupported) {
> -		static u8	AironetIeOui[] = {0x00, 0x01, 0x66}; // "4500-client"
> +		static u8	AironetIeOui[] = {0x00, 0x01, 0x66}; /* "4500-client" */
>  		u8	CcxAironetBuf[30];
>  		OCTET_STRING	osCcxAironetIE;
>  
>  		memset(CcxAironetBuf, 0, 30);
>  		osCcxAironetIE.Octet = CcxAironetBuf;
>  		osCcxAironetIE.Length = sizeof(CcxAironetBuf);
> -		//
> -		// Ref. CCX test plan v3.61, 3.2.3.1 step 13.
> -		// We want to make the device type as "4500-client". 060926, by CCW.
> -		//
> +		/*
> +		 Ref. CCX test plan v3.61, 3.2.3.1 step 13.
> +		 We want to make the device type as "4500-client". 060926, by CCW.
> +		*/
>  		memcpy(osCcxAironetIE.Octet, AironetIeOui, sizeof(AironetIeOui));
>  
> -		// CCX1 spec V1.13, A01.1 CKIP Negotiation (page23):
> -		// "The CKIP negotiation is started with the associate request from the client to the access point,
> -		//  containing an Aironet element with both the MIC and KP bits set."
> +		/* CCX1 spec V1.13, A01.1 CKIP Negotiation (page23):
> +		 "The CKIP negotiation is started with the associate request from the client to the access point,
> +		  containing an Aironet element with both the MIC and KP bits set."
> +		*/
>  		osCcxAironetIE.Octet[IE_CISCO_FLAG_POSITION] |=  (SUPPORT_CKIP_PK|SUPPORT_CKIP_MIC) ;
>  		tag = skb_put(skb, ckip_ie_len);
>  		*tag++ = MFIE_TYPE_AIRONET;
> @@ -1167,7 +1168,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  		memcpy(tag, osCcxVerNum.Octet, osCcxVerNum.Length);
>  		tag += osCcxVerNum.Length;
>  	}
> -	//HT cap element
> +	/* HT cap element */
>  	if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
>  		if(ieee->pHTInfo->ePeerHTSpecVer != HT_SPEC_VER_EWC)
>  		{
> @@ -1180,7 +1181,7 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  	}
>  
>  
> -	//choose what wpa_supplicant gives to associate.
> +	/* choose what wpa_supplicant gives to associate. */
>  	tag = skb_put(skb, wpa_ie_len);
>  	if (wpa_ie_len){
>  		memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);
> @@ -1214,8 +1215,8 @@ inline struct sk_buff *ieee80211_association_req(struct ieee80211_network *beaco
>  			memcpy(tag, realtek_ie_buf,realtek_ie_len -2 );
>  		}
>  	}
> -//	printk("<=====%s(), %p, %p\n", __func__, ieee->dev, ieee->dev->dev_addr);
> -//	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len);
> +	/* printk("<=====%s(), %p, %p\n", __func__, ieee->dev, ieee->dev->dev_addr);
> +	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA, skb->data, skb->len); */
>  	return skb;
>  }
>  
> @@ -1270,14 +1271,14 @@ static void ieee80211_associate_step1(struct ieee80211_device *ieee)
>  	else{
>  		ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATING ;
>  		IEEE80211_DEBUG_MGMT("Sending authentication request\n");
> -		//printk(KERN_WARNING "Sending authentication request\n");
> +		/* printk(KERN_WARNING "Sending authentication request\n"); */
>  		softmac_mgmt_xmit(skb, ieee);
> -		//BUGON when you try to add_timer twice, using mod_timer may be better, john0709
> +		/* BUGON when you try to add_timer twice, using mod_timer may be better, john0709 */
>  		if(!timer_pending(&ieee->associate_timer)){
>  			ieee->associate_timer.expires = jiffies + (HZ / 2);
>  			add_timer(&ieee->associate_timer);
>  		}
> -		//dev_kfree_skb_any(skb);//edit by thomas
> +		/* dev_kfree_skb_any(skb); edit by thomas */
>  	}
>  }
>  
> @@ -1288,7 +1289,7 @@ static void ieee80211_auth_challenge(struct ieee80211_device *ieee,
>  	u8 *c;
>  	struct sk_buff *skb;
>  	struct ieee80211_network *beacon = &ieee->current_network;
> -//	int hlen = sizeof(struct ieee80211_authentication);
> +	/* int hlen = sizeof(struct ieee80211_authentication); */
>  
>  	ieee->associate_seq++;
>  	ieee->softmac_stats.tx_auth_rq++;
> @@ -1308,7 +1309,7 @@ static void ieee80211_auth_challenge(struct ieee80211_device *ieee,
>  
>  		softmac_mgmt_xmit(skb, ieee);
>  		mod_timer(&ieee->associate_timer, jiffies + (HZ/2));
> -		//dev_kfree_skb_any(skb);//edit by thomas
> +		/* dev_kfree_skb_any(skb); edit by thomas */
>  	}
>  	kfree(challenge);
>  }
> @@ -1329,7 +1330,7 @@ static void ieee80211_associate_step2(struct ieee80211_device *ieee)
>  	else{
>  		softmac_mgmt_xmit(skb, ieee);
>  		mod_timer(&ieee->associate_timer, jiffies + (HZ/2));
> -		//dev_kfree_skb_any(skb);//edit by thomas
> +		/* dev_kfree_skb_any(skb); edit by thomas */
>  	}
>  }
>  static void ieee80211_associate_complete_wq(struct work_struct *work)
> @@ -1354,10 +1355,10 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
>  	{
>  		printk("Successfully associated, ht not enabled(%d, %d)\n", ieee->pHTInfo->bCurrentHTSupport, ieee->pHTInfo->bEnableHT);
>  		memset(ieee->dot11HTOperationalRateSet, 0, 16);
> -		//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
> +		/* HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT); */
>  	}
>  	ieee->LinkDetectInfo.SlotNum = 2 * (1 + ieee->current_network.beacon_interval/500);
> -	// To prevent the immediately calling watch_dog after association.
> +	/* To prevent the immediately calling watch_dog after association. */
>  	if(ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDataInPeriod==0 )
>  	{
>  		ieee->LinkDetectInfo.NumRecvBcnInPeriod = 1;
> @@ -1381,12 +1382,12 @@ static void ieee80211_associate_complete_wq(struct work_struct *work)
>  
>  static void ieee80211_associate_complete(struct ieee80211_device *ieee)
>  {
> -//	int i;
> -//	struct net_device* dev = ieee->dev;
> +	/* int i;
> +	struct net_device* dev = ieee->dev; */
>  	del_timer_sync(&ieee->associate_timer);
>  
>  	ieee->state = IEEE80211_LINKED;
> -	//ieee->UpdateHalRATRTableHandler(dev, ieee->dot11HTOperationalRateSet);
> +	/* ieee->UpdateHalRATRTableHandler(dev, ieee->dot11HTOperationalRateSet); */
>  	queue_work(ieee->wq, &ieee->associate_complete_wq);
>  }
>  
> @@ -1401,7 +1402,7 @@ static void ieee80211_associate_procedure_wq(struct work_struct *work)
>  
>  	ieee80211_stop_scan(ieee);
>  	printk("===>%s(), chan:%d\n", __func__, ieee->current_network.channel);
> -	//ieee->set_chan(ieee->dev, ieee->current_network.channel);
> +	/* ieee->set_chan(ieee->dev, ieee->current_network.channel); */
>  	HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
>  
>  	ieee->associate_seq = 1;
> @@ -1435,8 +1436,8 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
>  		 * This could be obtained by beacons or, if the network does not
>  		 * broadcast it, it can be put manually.
>  		 */
> -		apset = ieee->wap_set;//(memcmp(ieee->current_network.bssid, zero,ETH_ALEN)!=0 );
> -		ssidset = ieee->ssid_set;//ieee->current_network.ssid[0] != '\0';
> +		apset = ieee->wap_set; /* (memcmp(ieee->current_network.bssid, zero,ETH_ALEN)!=0 ); */
> +		ssidset = ieee->ssid_set; /* ieee->current_network.ssid[0] != '\0'; */
>  		ssidbroad =  !(net->ssid_len == 0 || net->ssid[0]== '\0');
>  		apmatch = (memcmp(ieee->current_network.bssid, net->bssid, ETH_ALEN)==0);
>  		ssidmatch = (ieee->current_network.ssid_len == net->ssid_len)&&\
> @@ -1470,18 +1471,18 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
>  				}
>  				printk(KERN_INFO"Linking with %s,channel:%d, qos:%d, myHT:%d, networkHT:%d\n",ieee->current_network.ssid,ieee->current_network.channel, ieee->current_network.qos_data.supported, ieee->pHTInfo->bEnableHT, ieee->current_network.bssht.bdSupportHT);
>  
> -				//ieee->pHTInfo->IOTAction = 0;
> +				/* ieee->pHTInfo->IOTAction = 0; */
>  				HTResetIOTSetting(ieee->pHTInfo);
>  				if (ieee->iw_mode == IW_MODE_INFRA){
>  					/* Join the network for the first time */
>  					ieee->AsocRetryCount = 0;
> -					//for HT by amy 080514
> +					/* for HT by amy 080514 */
>  					if((ieee->current_network.qos_data.supported == 1) &&
> -					  // (ieee->pHTInfo->bEnableHT && ieee->current_network.bssht.bdSupportHT))
> +					  /* (ieee->pHTInfo->bEnableHT && ieee->current_network.bssht.bdSupportHT)) */
>  					   ieee->current_network.bssht.bdSupportHT)
>  /*WB, 2008.09.09:bCurrentHTSupport and bEnableHT two flags are going to put together to check whether we are in HT now, so needn't to check bEnableHT flags here. That's is to say we will set to HT support whenever joined AP has the ability to support HT. And whether we are in HT or not, please check bCurrentHTSupport&&bEnableHT now please.*/
>  					{
> -					//	ieee->pHTInfo->bCurrentHTSupport = true;
> +					/*	ieee->pHTInfo->bCurrentHTSupport = true; */
>  						HTResetSelfAndSavePeerSetting(ieee, &(ieee->current_network));
>  					}
>  					else
> @@ -1503,7 +1504,7 @@ inline void ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct ieee
>  						printk(KERN_INFO"Using B rates\n");
>  					}
>  					memset(ieee->dot11HTOperationalRateSet, 0, 16);
> -					//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
> +					/* HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT); */
>  					ieee->state = IEEE80211_LINKED;
>  				}
>  
> @@ -1611,7 +1612,7 @@ static short probe_rq_parse(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		tag++; /* point to the next tag */
>  	}
>  
> -	//IEEE80211DMESG("Card MAC address is "MACSTR, MAC2STR(src));
> +	/* IEEE80211DMESG("Card MAC address is "MACSTR, MAC2STR(src)); */
>  	if (ssidlen == 0) return 1;
>  
>  	if (!ssid) return 1; /* ssid not found in tagged param */
> @@ -1669,11 +1670,11 @@ ieee80211_rx_probe_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
>  {
>  	u8 dest[ETH_ALEN];
>  
> -	//IEEE80211DMESG("Rx probe");
> +	/* IEEE80211DMESG("Rx probe"); */
>  	ieee->softmac_stats.rx_probe_rq++;
> -	//DMESG("Dest is "MACSTR, MAC2STR(dest));
> +	/* DMESG("Dest is "MACSTR, MAC2STR(dest)); */
>  	if (probe_rq_parse(ieee, skb, dest)){
> -		//IEEE80211DMESG("Was for me!");
> +		/* IEEE80211DMESG("Was for me!"); */
>  		ieee->softmac_stats.tx_probe_rs++;
>  		ieee80211_resp_to_probe(ieee, dest);
>  	}
> @@ -1684,14 +1685,14 @@ ieee80211_rx_auth_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
>  {
>  	u8 dest[ETH_ALEN];
>  	int status;
> -	//IEEE80211DMESG("Rx probe");
> +	/* IEEE80211DMESG("Rx probe"); */
>  	ieee->softmac_stats.rx_auth_rq++;
>  
>  	status = auth_rq_parse(skb, dest);
>  	if (status != -1) {
>  		ieee80211_resp_to_auth(ieee, status, dest);
>  	}
> -	//DMESG("Dest is "MACSTR, MAC2STR(dest));
> +	/* DMESG("Dest is "MACSTR, MAC2STR(dest)); */
>  
>  }
>  
> @@ -1700,7 +1701,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
>  {
>  
>  	u8 dest[ETH_ALEN];
> -	//unsigned long flags;
> +	/* unsigned long flags; */
>  
>  	ieee->softmac_stats.rx_ass_rq++;
>  	if (assoc_rq_parse(skb,dest) != -1){
> @@ -1708,7 +1709,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device *ieee, struct sk_buff *skb)
>  	}
>  
>  	printk(KERN_INFO"New client associated: %pM\n", dest);
> -	//FIXME
> +	/* FIXME */
>  }
>  
>  static void ieee80211_sta_ps_send_null_frame(struct ieee80211_device *ieee,
> @@ -1735,11 +1736,11 @@ static short ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32 *time_h,
>  		return 0;
>  	*/
>  	dtim = ieee->current_network.dtim_data;
> -	//printk("DTIM\n");
> +	/* printk("DTIM\n"); */
>  	if(!(dtim & IEEE80211_DTIM_VALID))
>  		return 0;
> -	timeout = ieee->current_network.beacon_interval; //should we use ps_timeout value or beacon_interval
> -	//printk("VALID\n");
> +	timeout = ieee->current_network.beacon_interval; /* should we use ps_timeout value or beacon_interval
> +	printk("VALID\n"); */
>  	ieee->current_network.dtim_data = IEEE80211_DTIM_INVALID;
>  
>  	if(dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)& ieee->ps))
> @@ -1786,7 +1787,7 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
>  		ieee->iw_mode != IW_MODE_INFRA ||
>  		ieee->state != IEEE80211_LINKED)){
>  
> -	//	#warning CHECK_LOCK_HERE
> +		/* #warning CHECK_LOCK_HERE */
>  		spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
>  
>  		ieee80211_sta_wakeup(ieee, 1);
> @@ -1805,7 +1806,7 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
>  			ieee->enter_sleep_state(ieee->dev, th, tl);
>  
>  		else if(ieee->sta_sleep == 0){
> -		//	printk("send null 1\n");
> +			/* printk("send null 1\n"); */
>  			spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
>  
>  			if(ieee->ps_is_queue_empty(ieee->dev)){
> @@ -1826,7 +1827,7 @@ static inline void ieee80211_sta_ps(struct ieee80211_device *ieee)
>  
>  
>  	}else if(sleep == 2){
> -//#warning CHECK_LOCK_HERE
> +/* #warning CHECK_LOCK_HERE */
>  		spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);
>  
>  		ieee80211_sta_wakeup(ieee, 1);
> @@ -1897,7 +1898,7 @@ static void ieee80211_process_action(struct ieee80211_device *ieee,
>  	struct ieee80211_hdr *header = (struct ieee80211_hdr *)skb->data;
>  	u8 *act = ieee80211_get_payload(header);
>  	u8 tmp = 0;
> -//	IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len);
> +	/* IEEE80211_DEBUG_DATA(IEEE80211_DL_DATA|IEEE80211_DL_BA, skb->data, skb->len); */
>  	if (act == NULL)
>  	{
>  		IEEE80211_DEBUG(IEEE80211_DL_ERR, "error to get payload of action frame\n");
> @@ -1931,8 +1932,8 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  	int chlen=0;
>  	int aid;
>  	struct ieee80211_assoc_response_frame *assoc_resp;
> -//	struct ieee80211_info_element *info_element;
> -	bool bSupportNmode = true, bHalfSupportNmode = false; //default support N mode, disable halfNmode
> +	/* struct ieee80211_info_element *info_element; */
> +	bool bSupportNmode = true, bHalfSupportNmode = false; /* default support N mode, disable halfNmode */
>  
>  	if(!ieee->proto_started)
>  		return 0;
> @@ -1976,7 +1977,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  						return 1;
>  					}
>  					else
> -					{	//filling the PeerHTCap. //maybe not necessary as we can get its info from current_network.
> +					{	/* filling the PeerHTCap. //maybe not necessary as we can get its info from current_network. */
>  						memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
>  						memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
>  					}
> @@ -2028,7 +2029,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  							{
>  								if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
>  								{
> -											// WEP or TKIP encryption
> +											/* WEP or TKIP encryption */
>  									if(IsHTHalfNmodeAPs(ieee))
>  									{
>  										bSupportNmode = true;
> @@ -2044,11 +2045,11 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  							}
>  							/* Dummy wirless mode setting to avoid encryption issue */
>  							if(bSupportNmode) {
> -								//N mode setting
> +								/* N mode setting */
>  								ieee->SetWirelessMode(ieee->dev, \
>  										ieee->current_network.mode);
>  							}else{
> -								//b/g mode setting
> +								/* b/g mode setting */
>  								/*TODO*/
>  								ieee->SetWirelessMode(ieee->dev, IEEE_G);
>  							}
> @@ -2100,7 +2101,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  			ieee->softmac_stats.reassoc++;
>  
>  			notify_wx_assoc_event(ieee);
> -			//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
> +			/* HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT); */
>  			RemovePeerTS(ieee, header->addr2);
>  			queue_work(ieee->wq, &ieee->associate_procedure_wq);
>  		}
> @@ -2113,7 +2114,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
>  		break;
>  	}
>  
> -	//dev_kfree_skb_any(skb);
> +	/* dev_kfree_skb_any(skb); */
>  	return 0;
>  }
>  
> @@ -2168,8 +2169,8 @@ void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *
>  			/* as for the completion function, it does not need
>  			 * to check it any more.
>  			 * */
> -			//printk("error:no descriptor left@queue_index %d\n", queue_index);
> -			//ieee80211_stop_queue(ieee);
> +			/* printk("error:no descriptor left@queue_index %d\n", queue_index);
> +			ieee80211_stop_queue(ieee); */
>  #ifdef USB_TX_DRIVER_AGGREGATION_ENABLE
>  			skb_queue_tail(&ieee->skb_drv_aggQ[queue_index], txb->fragments[i]);
>  #else
> @@ -2179,14 +2180,15 @@ void ieee80211_softmac_xmit(struct ieee80211_txb *txb, struct ieee80211_device *
>  			ieee->softmac_data_hard_start_xmit(
>  					txb->fragments[i],
>  					ieee->dev, ieee->rate);
> -			//ieee->stats.tx_packets++;
> -			//ieee->stats.tx_bytes += txb->fragments[i]->len;
> -			//ieee->dev->trans_start = jiffies;
> +			/* ieee->stats.tx_packets++;
> +			ieee->stats.tx_bytes += txb->fragments[i]->len;
> +			ieee->dev->trans_start = jiffies;
> +			*/
>  		}
>  	}
>  	ieee80211_txb_free(txb);
>  
> -//exit:
> +/* exit: */
>  	spin_unlock_irqrestore(&ieee->lock, flags);
>  
>  }
> @@ -2206,7 +2208,7 @@ static void ieee80211_resume_tx(struct ieee80211_device *ieee)
>  			ieee->softmac_data_hard_start_xmit(
>  				ieee->tx_pending.txb->fragments[i],
>  				ieee->dev, ieee->rate);
> -				//(i+1)<ieee->tx_pending.txb->nr_frags);
> +				/* (i+1)<ieee->tx_pending.txb->nr_frags); */
>  			ieee->stats.tx_packets++;
>  			ieee->dev->trans_start = jiffies;
>  		}
> @@ -2259,7 +2261,7 @@ void ieee80211_wake_queue(struct ieee80211_device *ieee)
>  				ieee->seq_ctrl[0]++;
>  
>  			ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->basic_rate);
> -			//dev_kfree_skb_any(skb);//edit by thomas
> +			/* dev_kfree_skb_any(skb); edit by thomas */
>  		}
>  	}
>  	if (!ieee->queue_stop && ieee->tx_pending.txb)
> @@ -2277,15 +2279,15 @@ EXPORT_SYMBOL(ieee80211_wake_queue);
>  
>  void ieee80211_stop_queue(struct ieee80211_device *ieee)
>  {
> -	//unsigned long flags;
> -	//spin_lock_irqsave(&ieee->lock,flags);
> +	/* unsigned long flags;
> +	spin_lock_irqsave(&ieee->lock,flags); */
>  
>  	if (! netif_queue_stopped(ieee->dev)){
>  		netif_stop_queue(ieee->dev);
>  		ieee->softmac_stats.swtxstop++;
>  	}
>  	ieee->queue_stop = 1;
> -	//spin_unlock_irqrestore(&ieee->lock,flags);
> +	/* spin_unlock_irqrestore(&ieee->lock,flags); */
>  
>  }
>  EXPORT_SYMBOL(ieee80211_stop_queue);
> @@ -2361,7 +2363,7 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
>  	ieee80211_softmac_check_all_nets(ieee);
>  
>  
> -//	if((IS_DOT11D_ENABLE(ieee)) && (ieee->state == IEEE80211_NOLINK))
> +	/* if((IS_DOT11D_ENABLE(ieee)) && (ieee->state == IEEE80211_NOLINK)) */
>  	if (ieee->state == IEEE80211_NOLINK)
>  		ieee->current_network.channel = 6;
>  	/* if not then the state is not linked. Maybe the user swithced to
> @@ -2417,7 +2419,7 @@ static void ieee80211_start_ibss_wq(struct work_struct *work)
>  			ieee->rate = 22;
>  		}
>  
> -		// By default, WMM function will be disabled in IBSS mode
> +		/* By default, WMM function will be disabled in IBSS mode */
>  		ieee->current_network.QoS_Enable = 0;
>  		ieee->SetWirelessMode(ieee->dev, IEEE_G);
>  		ieee->current_network.atim_window = 0;
> @@ -2452,10 +2454,10 @@ inline void ieee80211_start_ibss(struct ieee80211_device *ieee)
>  void ieee80211_start_bss(struct ieee80211_device *ieee)
>  {
>  	unsigned long flags;
> -	//
> -	// Ref: 802.11d 11.1.3.3
> -	// STA shall not start a BSS unless properly formed Beacon frame including a Country IE.
> -	//
> +	/*
> +	 Ref: 802.11d 11.1.3.3
> +	 STA shall not start a BSS unless properly formed Beacon frame including a Country IE.
> +	*/
>  	if(IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))
>  	{
>  		if(! ieee->bGlobalDomain)
> @@ -2502,7 +2504,7 @@ void ieee80211_disassociate(struct ieee80211_device *ieee)
>  	ieee->state = IEEE80211_NOLINK;
>  	ieee->is_set_key = false;
>  	ieee->link_change(ieee->dev);
> -	//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
> +	/* HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT); */
>  	notify_wx_assoc_event(ieee);
>  
>  }
> @@ -2612,7 +2614,7 @@ void ieee80211_stop_protocol(struct ieee80211_device *ieee)
>  	ieee80211_stop_scan(ieee);
>  
>  	ieee80211_disassociate(ieee);
> -	RemoveAllTS(ieee); //added as we disconnect from the previous BSS, Remove all TS
> +	RemoveAllTS(ieee); /* added as we disconnect from the previous BSS, Remove all TS */
>  }
>  
>  void ieee80211_softmac_start_protocol(struct ieee80211_device *ieee)
> @@ -2644,8 +2646,8 @@ void ieee80211_start_protocol(struct ieee80211_device *ieee)
>  
>  	if (ieee->current_network.beacon_interval == 0)
>  		ieee->current_network.beacon_interval = 100;
> -//	printk("===>%s(), chan:%d\n", __func__, ieee->current_network.channel);
> -//	ieee->set_chan(ieee->dev,ieee->current_network.channel);
> +	/* printk("===>%s(), chan:%d\n", __func__, ieee->current_network.channel);
> +	ieee->set_chan(ieee->dev,ieee->current_network.channel); */
>  
>  	for(i = 0; i < 17; i++) {
>  	  ieee->last_rxseq_num[i] = -1;
> @@ -2653,7 +2655,7 @@ void ieee80211_start_protocol(struct ieee80211_device *ieee)
>  	  ieee->last_packet_time[i] = 0;
>  	}
>  
> -	ieee->init_wmmparam_flag = 0;//reinitialize AC_xx_PARAM registers.
> +	ieee->init_wmmparam_flag = 0;/* reinitialize AC_xx_PARAM registers. */
>  
>  
>  	/* if the user set the MAC of the ad-hoc cell and then
> @@ -2689,7 +2691,7 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
>  	ieee->pDot11dInfo = kzalloc(sizeof(RT_DOT11D_INFO), GFP_ATOMIC);
>  	if (!ieee->pDot11dInfo)
>  		IEEE80211_DEBUG(IEEE80211_DL_ERR, "can't alloc memory for DOT11D\n");
> -	//added for  AP roaming
> +	/* added for  AP roaming */
>  	ieee->LinkDetectInfo.SlotNum = 2;
>  	ieee->LinkDetectInfo.NumRecvBcnInPeriod=0;
>  	ieee->LinkDetectInfo.NumRecvDataInPeriod=0;
> @@ -2697,7 +2699,7 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
>  	ieee->assoc_id = 0;
>  	ieee->queue_stop = 0;
>  	ieee->scanning = 0;
> -	ieee->softmac_features = 0; //so IEEE2100-like driver are happy
> +	ieee->softmac_features = 0; /* so IEEE2100-like driver are happy */
>  	ieee->wap_set = 0;
>  	ieee->ssid_set = 0;
>  	ieee->proto_started = 0;
> @@ -2705,10 +2707,10 @@ void ieee80211_softmac_init(struct ieee80211_device *ieee)
>  	ieee->rate = 22;
>  	ieee->ps = IEEE80211_PS_DISABLED;
>  	ieee->sta_sleep = 0;
> -	ieee->Regdot11HTOperationalRateSet[0]= 0xff;//support MCS 0~7
> -	ieee->Regdot11HTOperationalRateSet[1]= 0xff;//support MCS 8~15
> +	ieee->Regdot11HTOperationalRateSet[0]= 0xff;/* support MCS 0~7 */
> +	ieee->Regdot11HTOperationalRateSet[1]= 0xff;/* support MCS 8~15 */
>  	ieee->Regdot11HTOperationalRateSet[4]= 0x01;
> -	//added by amy
> +	/* added by amy */
>  	ieee->actscanning = false;
>  	ieee->beinretry = false;
>  	ieee->is_set_key = false;
> @@ -2796,7 +2798,7 @@ static int ieee80211_wpa_mlme(struct ieee80211_device *ieee, int command, int re
>  
>  	switch (command) {
>  	case IEEE_MLME_STA_DEAUTH:
> -		// silently ignore
> +		/* silently ignore */
>  		break;
>  
>  	case IEEE_MLME_STA_DISASSOC:
> @@ -2868,8 +2870,8 @@ static int ieee80211_wpa_set_auth_algs(struct ieee80211_device *ieee, int value)
>  
>  	if (ieee->set_security)
>  		ieee->set_security(ieee->dev, &sec);
> -	//else
> -	//	ret = -EOPNOTSUPP;
> +	/* else
> +		ret = -EOPNOTSUPP; */
>  
>  	return 0;
>  }
> @@ -2933,7 +2935,7 @@ static int ieee80211_wpa_set_param(struct ieee80211_device *ieee, u8 name, u32 v
>  		ieee->ieee802_1x=value;
>  		break;
>  	case IEEE_PARAM_WPAX_SELECT:
> -		// added for WPA2 mixed mode
> +		/* added for WPA2 mixed mode */
>  		spin_lock_irqsave(&ieee->wpax_suitlist_lock, flags);
>  		ieee->wpax_type_set = 1;
>  		ieee->wpax_type_notify = value;
> @@ -2983,8 +2985,8 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
>  	if (strcmp(param->u.crypt.alg, "none") == 0) {
>  		if (crypt) {
>  			sec.enabled = 0;
> -			// FIXME FIXME
> -			//sec.encrypt = 0;
> +			/* FIXME FIXME
> +			sec.encrypt = 0; */
>  			sec.level = SEC_LEVEL_0;
>  			sec.flags |= SEC_ENABLED | SEC_LEVEL;
>  			ieee80211_crypt_delayed_deinit(ieee, crypt);
> @@ -2992,8 +2994,8 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
>  		goto done;
>  	}
>  	sec.enabled = 1;
> -// FIXME FIXME
> -//	sec.encrypt = 1;
> +	/* FIXME FIXME
> +	sec.encrypt = 1; */
>  	sec.flags |= SEC_ENABLED;
>  
>  	/* IPW HW cannot build TKIP MIC, host decryption still needed. */
> @@ -3005,7 +3007,7 @@ static int ieee80211_wpa_set_encryption(struct ieee80211_device *ieee,
>  	if (ops == NULL && strcmp(param->u.crypt.alg, "WEP") == 0) {
>  		request_module("ieee80211_crypt_wep");
>  		ops = ieee80211_get_crypto_ops(param->u.crypt.alg);
> -		//set WEP40 first, it will be modified according to WEP104 or WEP40 at other place
> +		/* set WEP40 first, it will be modified according to WEP104 or WEP40 at other place */
>  	} else if (ops == NULL && strcmp(param->u.crypt.alg, "TKIP") == 0) {
>  		request_module("ieee80211_crypt_tkip");
>  		ops = ieee80211_get_crypto_ops(param->u.crypt.alg);
> @@ -3140,7 +3142,7 @@ SendDisassociation(
>  		skb = ieee80211_disassociate_skb(beacon,ieee,asRsn);
>  		if (skb){
>  				softmac_mgmt_xmit(skb, ieee);
> -				//dev_kfree_skb_any(skb);//edit by thomas
> +				/* dev_kfree_skb_any(skb); edit by thomas */
>  		}
>  }
>  EXPORT_SYMBOL(SendDisassociation);
> @@ -3151,7 +3153,7 @@ int ieee80211_wpa_supplicant_ioctl(struct ieee80211_device *ieee, struct iw_poin
>  	int ret=0;
>  
>  	down(&ieee->wx_sem);
> -	//IEEE_DEBUG_INFO("wpa_supplicant: len=%d\n", p->length);
> +	/* IEEE_DEBUG_INFO("wpa_supplicant: len=%d\n", p->length); */
>  
>  	if (p->length < sizeof(struct ieee_param) || !p->pointer){
>  		ret = -EINVAL;
> 


