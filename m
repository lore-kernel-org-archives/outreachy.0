X-GM-THRID: 6806104906273914880
X-Received: by 2002:ac2:4352:: with SMTP id o18mr829369lfl.81.1584695980740;
        Fri, 20 Mar 2020 02:19:40 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:33a6:: with SMTP id i6ls870599lfg.1.gmail; Fri, 20
 Mar 2020 02:19:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvsHAnZ8NANDyXyTZvrJXx6zwXVmf9bFU4btgLRrm6bj9ExOjAIF4valzvrMIf8MlpYEOE5
X-Received: by 2002:a19:7609:: with SMTP id c9mr4612419lff.114.1584695979427;
        Fri, 20 Mar 2020 02:19:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584695979; cv=none;
        d=google.com; s=arc-20160816;
        b=AErlzCoognSrpucWiRqzBbvjbVdU7kB2he/cHCRV1oGU0daALytrQXBkr/qJqufJ68
         7C7LDOcV8/bZKyG4Q8/aI1Jplo9O78TL7f+gtQ7rTcH51gya+JhrvZgm0IjHZc16MT2H
         AfWgzczBHOMMu4kb1E1snjkbZBtEsZNjxIrUw8qKzHjgbxVDtZYiOZFNcnrSuI7zmtaQ
         Q2Ons8nAr+LUH/wGRuV3ExlbX6m+J184bMtL/uKZqxaOmglWt1PSRBsezTceK3xXPfit
         XNniM1ljth1B/5rTAfqFOV8BXlum8/wi10JHE2OxzZzjQ1Vrp9n5fcmOyJfwVjHGubvy
         bWVA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=G1EkJblVO5zCoZcnb+FYtBMO5YGWruSG9b3HDDXln5A=;
        b=cC8UntVezfQLra2rfDYGu76g0B46SPCcrRj6txH+u8qg3NConfl7r4ZSPmAD3biDPc
         dPT3yiYea8eCaahOowmNFMEpNnsbPtG+dm9U+ko8Dj/ngZ4jjcon6oMff7XZY+N4TnTN
         CLAT7FXvmzdBueh0snKMJjz/isOMqgFIeEgPn3DFfmmF5rDE3BqKeECpDE28rel4JVMM
         mV3CV9H1eD+TPo8jK6ysenJoEpgYrUPUs39Gs3Y/tvTZqYevbrWaMS4vfdpr4hTQ3jIx
         gBNmfgtX9XyfjAp1TsihSZyVxf0E3hWuWPBuDlR6oCvgaRhMDLQdCuUtQ1bYyaPqQNkK
         fHxw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="gINkYw4/";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Return-Path: <sergei.shtylyov@cogentembedded.com>
Received: from mail-lj1-x243.google.com (mail-lj1-x243.google.com. [2a00:1450:4864:20::243])
        by gmr-mx.google.com with ESMTPS id b26si322675ljk.4.2020.03.20.02.19.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 02:19:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::243 as permitted sender) client-ip=2a00:1450:4864:20::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@cogentembedded-com.20150623.gappssmtp.com header.s=20150623 header.b="gINkYw4/";
       spf=pass (google.com: domain of sergei.shtylyov@cogentembedded.com designates 2a00:1450:4864:20::243 as permitted sender) smtp.mailfrom=sergei.shtylyov@cogentembedded.com
Received: by mail-lj1-x243.google.com with SMTP id y17so5578958ljk.12
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Mar 2020 02:19:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cogentembedded-com.20150623.gappssmtp.com; s=20150623;
        h=subject:to:cc:references:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-language:content-transfer-encoding;
        bh=G1EkJblVO5zCoZcnb+FYtBMO5YGWruSG9b3HDDXln5A=;
        b=gINkYw4/tCTO40bcUY3tM6/tS+UKatDq8YWFwmCnDxNshzPpzOjtjfeSmVRJMp1T/Q
         MeJ8keE6kzJGuwrPLD/mV2cW5ICFjWbZjWlg4tU5zcrvVmNqPS6o+Biknrgc98FheGfC
         OosOyaJuPfjfdD2UaiboF8PF51O+fvWTaQZZXnVWSHMaLp1eKl4mEN+6dccKh1TApxYg
         n9ET7PheA2qPwnXpkNoTxp45vmPp8tzON1xO3ygTrAsVTMgFLQ7jq1jmyGYcC9xtMs2R
         UgLgSUTCfvYkG8+XsDrkpk+6lBqMzJyheBV3jIs87g7QFITItZomjE3ghHFw+GkFkRp8
         CNYw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=G1EkJblVO5zCoZcnb+FYtBMO5YGWruSG9b3HDDXln5A=;
        b=SOisG+a/ay2yJM6ABU6/cRUUeSQBAp8tUTQhrpXozD9wAd3VtVRwoFWrhiWqJk2Kbm
         L5k7xR5ex8U4K0+RLjDqB7X3iZjPK+YDQ6YgLnEDD7CewiqOvNHjSsNlTwG/H3XELXmp
         OQfFab7Lxxx33DWnLtV5IAiI8AmDz0CYNEjCIofwv9F8V7zh6UvQMsIBQjg/cDDx88nc
         K3FvYtlWk12PctSzsdN7by6nb9isfMiOJTqbO5QIu9/fDajGARGcZV7gFjf45nZ1TCJd
         K+/g43hXydWejW/JXWZb6XRQsQfuweILRaBIUFIxfztgrtkFC5R3W5NxwmxwU17o8G1/
         Rztg==
X-Gm-Message-State: ANhLgQ30lAglGYelViSNMxPxpokDS2hy4XIkP2LXnCJrfAbRnpLKcO8k
	k5zI6juBA3arqoTyutetGuGSQIUpBz/ZUw==
X-Received: by 2002:a2e:9e03:: with SMTP id e3mr4782859ljk.186.1584695979051;
        Fri, 20 Mar 2020 02:19:39 -0700 (PDT)
Return-Path: <sergei.shtylyov@cogentembedded.com>
Received: from ?IPv6:2a00:1fa0:4470:5581:e9c3:b2cd:6a52:420e? ([2a00:1fa0:4470:5581:e9c3:b2cd:6a52:420e])
        by smtp.gmail.com with ESMTPSA id u5sm3076086lfu.69.2020.03.20.02.19.37
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 20 Mar 2020 02:19:38 -0700 (PDT)
Subject: Re: [PATCH 1/2] staging: rtl8712: Avoid multiple line dereference
To: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com
Cc: linux-usb@vger.kernel.org, gregkh@linuxfoundation.org
References: <cover.1584668081.git.gokcekuler@gmail.com>
 <340c8671b671ed9b1416cfc7790e0e4426f89371.1584668081.git.gokcekuler@gmail.com>
From: Sergei Shtylyov <sergei.shtylyov@cogentembedded.com>
Message-ID: <f1aaa161-064b-6c13-f850-4b370fc71d85@cogentembedded.com>
Date: Fri, 20 Mar 2020 12:19:27 +0300
User-Agent: Mozilla/5.0 (Windows NT 6.3; WOW64; rv:68.0) Gecko/20100101
 Thunderbird/68.6.0
MIME-Version: 1.0
In-Reply-To: <340c8671b671ed9b1416cfc7790e0e4426f89371.1584668081.git.gokcekuler@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hello!

On 20.03.2020 5:03, Gokce Kuler wrote:

> merge a line -> with a line ending with a sign

    What sign?

> Signed-off-by: Gokce Kuler <gokcekuler@gmail.com>
> ---
>   drivers/staging/rtl8712/rtl871x_mlme.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rtl8712/rtl871x_mlme.c b/drivers/staging/rtl8712/rtl871x_mlme.c
> index cabdb35..74dac74 100644
> --- a/drivers/staging/rtl8712/rtl871x_mlme.c
> +++ b/drivers/staging/rtl8712/rtl871x_mlme.c
> @@ -944,8 +944,7 @@ void r8712_stadel_event_callback(struct _adapter *adapter, u8 *pbuf)
>   			pdev_network = &(adapter->registrypriv.dev_network);
>   			pibss = adapter->registrypriv.dev_network.MacAddress;
>   			memcpy(pdev_network, &tgt_network->network,
> -				r8712_get_wlan_bssid_ex_sz(&tgt_network->
> -							network));
> +				r8712_get_wlan_bssid_ex_sz(&tgt_network->network));
>   			memcpy(&pdev_network->Ssid,
>   				&pmlmepriv->assoc_ssid,
>   				sizeof(struct ndis_802_11_ssid));

MBR, Sergei

