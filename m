X-GM-THRID: 6673502133906571264
X-Received: by 2002:a2e:361a:: with SMTP id d26mr431918lja.21.1553799017104;
        Thu, 28 Mar 2019 11:50:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:4601:: with SMTP id t1ls3431927lja.2.gmail; Thu, 28 Mar
 2019 11:50:15 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyUHXY9nyJqmkSX6F6/4MgQpToOgQQptRAD5Iq0qmfooiGm2c8hssSSPTBFUoM8ejZ9zZwH
X-Received: by 2002:a2e:9cc9:: with SMTP id g9mr825603ljj.25.1553799015746;
        Thu, 28 Mar 2019 11:50:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553799015; cv=none;
        d=google.com; s=arc-20160816;
        b=aCb3DUSA3FKbGwCYwXyimCoptY31A74xDZdnsyI6aPixgTsMQMJYhRva+q4y06QMtG
         aueBU2MVRFkYMU8H5cJZ0MSQVuO5viex2Aib+IeMnKKLfvPlyInRGXoyItXU/xv1lB99
         6Kd+tindXwZ1BaBTUexABGjsma5b9jBJc6Gz3L7LT8SUbEtvGDcZE0gE2shpSvX8yHPV
         S1Qhp05n4YiJ1c/CtH1aqO2APhFbK1CKxHTZYHjkYTu3vN1F+YhJqBTqrYhLHkG+SfMf
         NHA5O7qUW/HVVdTLgd+ytzDaqH/hHNeZU9Uq0pvbAFo2tUPbEANnhEOQbhuLQHwnmYgn
         L3bQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=qOD7iLWvDOG9fu7+IooXuRTgtNceFg7wCi8f0U/xhQk=;
        b=PAcaweIgMiHUafcusnENEi7Xh6tFky+MCTz3kkSN/L5hGPDR6M01XxVJwjE8QSVbop
         lqLSaHfYlBBeh9zS1OVRewH8EogbJDdrrFX7H1EqyKmsLf8j6c7N5NxYo3lJgrJQ1qT9
         rGucSOLY92eIEv1NzIWB4Jf78KoPAxo35/tQflBWUxpOCUmnbxz/OmVVLuNziD24ya/t
         ZxJ3A7ntDB8/JdVSpIwJGpCmXI09rl7roKQuJEhgnUaPDo+DOgPlrBWvivHpzj+iNSy6
         t4yXTawuLMLfuqB7gcvssK9uAfIUULIYt8FdCb5gmx+9pJj3NvTkC0AfiYunvv5YtX5c
         4ryA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id a22si562673lfl.3.2019.03.28.11.50.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 11:50:15 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,281,1549926000"; 
   d="scan'208";a="376226970"
Received: from unknown (HELO hadrien) ([94.134.122.206])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 28 Mar 2019 19:50:14 +0100
Date: Thu, 28 Mar 2019 19:50:14 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: host_interface.c:
 Modify return statement.
In-Reply-To: <20190328175622.27971-1-sanjana99reddy99@gmail.com>
Message-ID: <alpine.DEB.2.21.1903281949430.2760@hadrien>
References: <20190328175622.27971-1-sanjana99reddy99@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Thu, 28 Mar 2019, Sanjana Sanikommu wrote:

> Challenge suggested by coccinelle.
> Remove return variable and directly return the value
> Issue found using ret.cocci
>
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/wilc1000/host_interface.c | 23 +++++------------------
>  1 file changed, 5 insertions(+), 18 deletions(-)
>
> diff --git a/drivers/staging/wilc1000/host_interface.c b/drivers/staging/wilc1000/host_interface.c
> index 4dd9a20f6a0b..a10c31bce07f 100644
> --- a/drivers/staging/wilc1000/host_interface.c
> +++ b/drivers/staging/wilc1000/host_interface.c
> @@ -1358,17 +1358,14 @@ int wilc_add_rx_gtk(struct wilc_vif *vif, const u8 *rx_gtk, u8 gtk_key_len,
>  int wilc_set_pmkid_info(struct wilc_vif *vif, struct wilc_pmkid_attr *pmkid)
>  {
>  	struct wid wid;
> -	int result;
>
>  	wid.id = WID_PMKID_INFO;
>  	wid.type = WID_STR;
>  	wid.size = (pmkid->numpmkid * sizeof(struct wilc_pmkid)) + 1;
>  	wid.val = (u8 *)pmkid;
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				      wilc_get_vif_idx(vif));

The last argument needs to be moved.  Please check the other cases for the
same issue.

julia

> -
> -	return result;
>  }
>
>  int wilc_get_mac_address(struct wilc_vif *vif, u8 *mac_addr)
> @@ -1403,8 +1400,7 @@ int wilc_set_join_req(struct wilc_vif *vif, u8 *bssid, const u8 *ies,
>  		conn_info->req_ies_len = ies_len;
>  		conn_info->req_ies = kmemdup(ies, ies_len, GFP_KERNEL);
>  		if (!conn_info->req_ies) {
> -			result = -ENOMEM;
> -			return result;
> +			return -ENOMEM;
>  		}
>  	}
>
> @@ -1570,7 +1566,6 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
>  {
>  	struct wid wid_list[4];
>  	int i = 0;
> -	int result;
>
>  	if (param->flag & WILC_CFG_PARAM_RETRY_SHORT) {
>  		wid_list[i].id = WID_SHORT_RETRY_LIMIT;
> @@ -1601,10 +1596,8 @@ int wilc_hif_set_cfg(struct wilc_vif *vif, struct cfg_param_attr *param)
>  		i++;
>  	}
>
> -	result = wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, wid_list,
>  				      i, wilc_get_vif_idx(vif));
> -
> -	return result;
>  }
>
>  static void get_periodic_rssi(struct timer_list *t)
> @@ -2121,7 +2114,6 @@ int wilc_setup_multicast_filter(struct wilc_vif *vif, u32 enabled, u32 count,
>
>  int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
>  {
> -	int ret;
>  	struct wid wid;
>
>  	wid.id = WID_TX_POWER;
> @@ -2129,15 +2121,12 @@ int wilc_set_tx_power(struct wilc_vif *vif, u8 tx_power)
>  	wid.val = &tx_power;
>  	wid.size = sizeof(char);
>
> -	ret = wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_SET_CFG, &wid, 1,
>  				   wilc_get_vif_idx(vif));
> -
> -	return ret;
>  }
>
>  int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
>  {
> -	int ret;
>  	struct wid wid;
>
>  	wid.id = WID_TX_POWER;
> @@ -2145,8 +2134,6 @@ int wilc_get_tx_power(struct wilc_vif *vif, u8 *tx_power)
>  	wid.val = tx_power;
>  	wid.size = sizeof(char);
>
> -	ret = wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
> +	return wilc_send_config_pkt(vif, WILC_GET_CFG, &wid, 1,
>  				   wilc_get_vif_idx(vif));
> -
> -	return ret;
>  }
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190328175622.27971-1-sanjana99reddy99%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

