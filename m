X-GM-THRID: 6610062966747299840
X-Received: by 2002:aca:b944:: with SMTP id j65-v6mr1292851oif.1.1539030424210;
        Mon, 08 Oct 2018 13:27:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:abc8:: with SMTP id u191-v6ls858219oie.11.gmail; Mon, 08
 Oct 2018 13:27:03 -0700 (PDT)
X-Received: by 2002:aca:e705:: with SMTP id e5-v6mr19287645oih.35.1539030423427;
        Mon, 08 Oct 2018 13:27:03 -0700 (PDT)
Received: by 2002:aca:3f0b:0:0:0:0:0 with SMTP id m11-v6msoia;
        Mon, 8 Oct 2018 12:47:32 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60+zB/DDaI4rLY4hpHlOc6fj4H2M1TwLeWGWwahPBp7v+n/gmUu9baGEcfyiuCi4uW+NOKm
X-Received: by 2002:a9d:52ae:: with SMTP id f46mr19221008oth.52.1539028052364;
        Mon, 08 Oct 2018 12:47:32 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539028052; cv=none;
        d=google.com; s=arc-20160816;
        b=Cvui4raFqN4dlhKn9XkfJ6ZOdzr/r5t2Yx5wHXQSOQJexcXN7rjSyXcR/g4CnJAFK7
         59eR7c64shgfqZ/wkafq81i6qIccFBkwOcgZv81MThBisYsAk/BMBciLZJDhpzSsD2pS
         NOsXbzVBTMSgSO2RDZjPGyXrjuuz+mMZpTP8PVDkYT/JiML6VWBdlharIDBxdvWWLSDH
         UF3RE6/k+pHwMEZAOW8j2+KkB6fxCnUGezOVSZTw843PmkXH1wHf3i9Sv2WobHvaIJ0u
         g7qyOZba9yBfDbxzBi7g+h/KgEXAJ522krWBXxHGfctcypmxfOpD91GwIexB5PaDneAK
         ifbA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject:sender
         :dkim-signature;
        bh=FgrVJRGdh1HNis2yeR7P/81P8pjou0PtgUZQlzQyM6k=;
        b=B+VdK4Mrpi6GMTEHbPG0b4HSUISZCJImn3/YNdHR6sBY3zgyrgU/90MZXk7THo2vK/
         NEBfenTWcfH8JykFX1dn8uSCeyTBfwM0rO+vrqdM7PfXAvOq1VVBkKHfC5O27berCJvH
         9GsT1pq5Fy4QuL14d1FgWaRrcpZ/Tu1l66u+CKQZMbj8sEOGzq03psBJZxNqpU4F+Q8f
         xya4qEYLAEe4D9vinHg355V3FV6ivFC9SOZluVWMY1ZAsKca0ZRMFnBg50qfKVMPGUQn
         l02/xWeem41iYRED6kLbs7k8uVtNsvMYqlBQdZSdUyDEozxUf+YbTojxcBQjJR3PQl6c
         ooXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SGVLNUyg;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Return-Path: <larry.finger@gmail.com>
Received: from mail-ot1-x335.google.com (mail-ot1-x335.google.com. [2607:f8b0:4864:20::335])
        by gmr-mx.google.com with ESMTPS id e185-v6si817880oib.2.2018.10.08.12.47.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 12:47:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) client-ip=2607:f8b0:4864:20::335;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=SGVLNUyg;
       spf=pass (google.com: domain of larry.finger@gmail.com designates 2607:f8b0:4864:20::335 as permitted sender) smtp.mailfrom=larry.finger@gmail.com
Received: by mail-ot1-x335.google.com with SMTP id i12-v6so21163262otl.1
        for <outreachy-kernel@googlegroups.com>; Mon, 08 Oct 2018 12:47:32 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=sender:subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=FgrVJRGdh1HNis2yeR7P/81P8pjou0PtgUZQlzQyM6k=;
        b=SGVLNUyg1yO0buh+WLdjwjrTnDYMU4t9pyZmqUMD73CmZV1q6a7SUSlx3QnCPXBe+y
         F6wl0TuHAsWG/KkiWSnVFzINwCZsMU5ApzAqi8W2rFrHRmIO6GLV6WHBY+sdJXV5K1yK
         INBtDQcvoDDOpYuYailLjyQ9a1gX0v4YNU9Pna0tpVrJ+k4qRCyrgs7zkcdd9ScQQfmG
         WKAKpke/nUtUGVNb1j7v5l1aAqKd1HO9wnHmAR62tprVOzJKOsqzCtn8J0Z7XDGJr7Ub
         m6fwLKeLhGZ1w72TzN37UocXG4AhvWxRs6iKvnc5oTorW4DheHevveGsZMmuXzOpwDwl
         tOdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:sender:subject:to:cc:references:from:message-id
         :date:user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=FgrVJRGdh1HNis2yeR7P/81P8pjou0PtgUZQlzQyM6k=;
        b=OrjTeLxoomilJiwK3ttrP62ULOR55UYOvvs2h2ZN6wvYPVNHAxivq11qBxHLwU/rZ7
         lWzaxEId2z/FOrds0s4KQ54Z52qPP23Z15xEhxOuYMygFKenrzU0KY8UnOhBu16Tyw3w
         83ObuR9TrveZaE0rzAQKTaEg9enjPJH/odHxWoEAfuX97ll00GxyKUG5ZDmEpFWGpcG4
         mI3yVJ3J+MEJ0wZQDz1+N5FNXUGzu31ayKnSULRITm4KDKB/ZQXzM4HKmyjQlVonYeeB
         6WTUsMTbzO+eBYP5mecEfFEcNo4EckpPckRSNCRKMagrr3P258o1LxqH5JH2upbIiaGM
         yzxw==
X-Gm-Message-State: ABuFfoi/Dkx0gKFxUBAl1JJkSZagpRQ/cnSqsr88WDBg5rmlp1F8zNAe
	BSDWMDsJcoFeatCow0fulgKLygLQ
X-Received: by 2002:a9d:49a9:: with SMTP id g41mr15857510otf.162.1539028051944;
        Mon, 08 Oct 2018 12:47:31 -0700 (PDT)
Return-Path: <larry.finger@gmail.com>
Received: from [192.168.1.107] (cpe-24-31-245-230.kc.res.rr.com. [24.31.245.230])
        by smtp.gmail.com with ESMTPSA id e198-v6sm5813700oic.5.2018.10.08.12.47.30
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 08 Oct 2018 12:47:31 -0700 (PDT)
Sender: Larry Finger <larry.finger@gmail.com>
Subject: Re: [PATCH] staging: rtl8723bs: core: Remove true and false
 comparison
To: Mamta Shukla <mamtashukla555@gmail.com>, outreachy-kernel@googlegroups.com
Cc: dess@hadess.net, hdegoede@redhat.com, gregkh@linuxfoundation.org
References: <20181008190010.GA13460@armorer>
From: Larry Finger <Larry.Finger@lwfinger.net>
Message-ID: <ea060b61-0914-7538-2e96-f5971ec61ed0@lwfinger.net>
Date: Mon, 8 Oct 2018 14:47:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <20181008190010.GA13460@armorer>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 10/8/18 2:00 PM, Mamta Shukla wrote:
> Remove comparison to true and false in if statement.
> Issue found with checkpatch.pl.
> CHECK: Using comparison to true is error prone
> CHECK: Using comparison to false is error prone
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ---
>   drivers/staging/rtl8723bs/core/rtw_ap.c | 24 ++++++++++++------------
>   1 file changed, 12 insertions(+), 12 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_ap.c b/drivers/staging/rtl8723bs/core/rtw_ap.c
> index faf4b41..2691241 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_ap.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_ap.c
> @@ -861,7 +861,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
>   		update_hw_ht_param(padapter);
>   	}
>   
> -	if (pmlmepriv->cur_network.join_res != true) { /* setting only at  first time */
> +	if (!pmlmepriv->cur_network.join_res) { /* setting only at  first time */
>   
>   		/* WEP Key will be set before this function, do not clear CAM. */
>   		if (
> @@ -899,7 +899,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
>   
>   	rtw_hal_set_hwreg(padapter, HW_VAR_DO_IQK, NULL);
>   
> -	if (pmlmepriv->cur_network.join_res != true) { /* setting only at  first time */
> +	if (!pmlmepriv->cur_network.join_res) { /* setting only at  first time */
>   
>   		/* u32 initialgain; */
>   
> @@ -992,7 +992,7 @@ void start_bss_network(struct adapter *padapter, u8 *pbuf)
>   	);
>   
>   
> -	if (true == pmlmeext->bstart_bss) {
> +	if (pmlmeext->bstart_bss) {
>   
>   		update_beacon(padapter, _TIM_IE_, NULL, true);
>   
> @@ -1047,7 +1047,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>   
>   	DBG_871X("%s, len =%d\n", __func__, len);
>   
> -	if (check_fwstate(pmlmepriv, WIFI_AP_STATE) != true)
> +	if (!check_fwstate(pmlmepriv, WIFI_AP_STATE))
>   		return _FAIL;
>   
>   
> @@ -1379,7 +1379,7 @@ int rtw_check_beacon_data(struct adapter *padapter, u8 *pbuf,  int len)
>   	}
>   
>   	/* ht_cap */
> -	if (pregistrypriv->ht_enable && ht_cap == true) {
> +	if (pregistrypriv->ht_enable && ht_cap) {
>   
>   		pmlmepriv->htpriv.ht_option = true;
>   		pmlmepriv->qospriv.qos_option = 1;
> @@ -1482,7 +1482,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>   	spin_unlock_bh(&(pacl_node_q->lock));
>   
>   
> -	if (added == true)
> +	if (added)
>   		return ret;
>   
>   
> @@ -1492,7 +1492,7 @@ int rtw_acl_add_sta(struct adapter *padapter, u8 *addr)
>   
>   		paclnode = &pacl_list->aclnode[i];
>   
> -		if (paclnode->valid == false) {
> +		if (!paclnode->valid) {
>   
>   			INIT_LIST_HEAD(&paclnode->list);
>   
> @@ -1547,7 +1547,7 @@ int rtw_acl_remove_sta(struct adapter *padapter, u8 *addr)
>   			!memcmp(baddr, addr, ETH_ALEN)
>   		) {
>   
> -			if (paclnode->valid == true) {
> +			if (paclnode->valid) {
>   
>   				paclnode->valid = false;
>   
> @@ -1912,7 +1912,7 @@ void update_beacon(struct adapter *padapter, u8 ie_id, u8 *oui, u8 tx)
>   	pmlmeext = &(padapter->mlmeextpriv);
>   	/* pmlmeinfo = &(pmlmeext->mlmext_info); */
>   
> -	if (false == pmlmeext->bstart_bss)
> +	if (!pmlmeext->bstart_bss)
>   		return;
>   
>   	spin_lock_bh(&pmlmepriv->bcn_update_lock);
> @@ -1998,7 +1998,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
>   	struct mlme_priv *pmlmepriv = &(padapter->mlmepriv);
>   	struct ht_priv *phtpriv_ap = &pmlmepriv->htpriv;
>   
> -	if (pmlmepriv->htpriv.ht_option == true)
> +	if (pmlmepriv->htpriv.ht_option)
>   		return 0;
>   
>   	/* if (!iface->conf->ieee80211n || iface->conf->ht_op_mode_fixed) */
> @@ -2066,7 +2066,7 @@ static int rtw_ht_operation_update(struct adapter *padapter)
>   void associated_clients_update(struct adapter *padapter, u8 updated)
>   {
>   	/* update associcated stations cap. */
> -	if (updated == true) {
> +	if (updated) {
>   
>   		struct list_head	*phead, *plist;
>   		struct sta_info *psta = NULL;
> @@ -2458,7 +2458,7 @@ void sta_info_update(struct adapter *padapter, struct sta_info *psta)
>   		psta->htpriv.ht_option = false;
>   	}
>   
> -	if (pmlmepriv->htpriv.ht_option == false)
> +	if (!pmlmepriv->htpriv.ht_option)
>   		psta->htpriv.ht_option = false;
>   
>   	update_sta_info_apmode(padapter, psta);
> 

ACKed-by: Larry Finger <Larry.Finger@lwfinger.net>



