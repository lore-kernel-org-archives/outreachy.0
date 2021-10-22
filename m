X-GM-THRID: 7021611435626070016
X-Received: by 2002:a63:3f4f:: with SMTP id m76mr7386435pga.315.1634870933267;
        Thu, 21 Oct 2021 19:48:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:e80a:: with SMTP id u10ls4727447plg.5.gmail; Thu, 21
 Oct 2021 19:48:52 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwzOVDlMlYZU+rTF8ge9KIirJpXWs2Fm7xpGiXRAn0vl0P+Q45U+xx2zuzYFHdN2cThpQU+
X-Received: by 2002:a17:90b:3802:: with SMTP id mq2mr11021869pjb.213.1634870932064;
        Thu, 21 Oct 2021 19:48:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634870932; cv=none;
        d=google.com; s=arc-20160816;
        b=wiVjO8SKt0rPLA9nYDpxbHi8NAl25vFTMQ7nsZNYD6e6Q54k5sNexQ26vH5NxsqYyb
         SQqZXm0+3A27ElOs5zU8lMqwpK3MXvna4N0LZLQTewaotyeySjco3YJ+GTaNZFFQL25L
         iUtXD6v0dmdiJKeeIRcqgKJvyQZWZG/RyVxjSSHScjuglqPfh/78HjCxOkj0LuMo4843
         +nXSwEvGveyY1M8S663t1mSTAmugVCP+rfgo3LVWN/IMeSB+p/QJIINqDOVvdNIkX4IC
         GVYGcxyOgAX26iSxd2mEANsLXPBLBM110v41/6fTb40wYSwvpsxr+MDwrvuMscBe6tL2
         YRpw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:in-reply-to:from:references:cc:to
         :content-language:subject:user-agent:mime-version:date:message-id
         :dkim-signature;
        bh=oh7BegofVIUn5uB2hKbuYfRyYWicxbDsuoabRMJIstA=;
        b=PZLG8Brmf1sUn8taxIyHQBoug4jXXExcS2jUlz/4nZCfQYwkGaFV3vYnF51XGGAUYb
         wYiZHXPPXYoOFdf4AaWWn62xfH7xHY/CXMfmrUyrhK15Uz9cvhOFMLDGA07gzXuO7VVO
         anwpAUjlvziGp7QpGSHMY/rgv49vl/KZjQ0RqoOA7vIiLS7APZ2sbD8V/6hv0uvCQtFs
         vQgRG2Zwn93rccE1CsCj3FosG6L12w7IGllqsjT0Z2MDw4nm89soujnJUOJbmkSjrLRL
         +nFLAQifEAZmo7C5UOmQpLnzngKB+/eisJw8oX1BPJ0gGa02Nqv9SzZtvKJM7TzstgPN
         n+VA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=CL+cAVkp;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <kpraveen.lkml@gmail.com>
Received: from mail-pf1-x430.google.com (mail-pf1-x430.google.com. [2607:f8b0:4864:20::430])
        by gmr-mx.google.com with ESMTPS id x1si623560pjc.3.2021.10.21.19.48.52
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 19:48:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) client-ip=2607:f8b0:4864:20::430;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20210112 header.b=CL+cAVkp;
       spf=pass (google.com: domain of kpraveen.lkml@gmail.com designates 2607:f8b0:4864:20::430 as permitted sender) smtp.mailfrom=kpraveen.lkml@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pf1-x430.google.com with SMTP id 187so2344739pfc.10;
        Thu, 21 Oct 2021 19:48:52 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20210112;
        h=message-id:date:mime-version:user-agent:subject:content-language:to
         :cc:references:from:in-reply-to:content-transfer-encoding;
        bh=oh7BegofVIUn5uB2hKbuYfRyYWicxbDsuoabRMJIstA=;
        b=CL+cAVkpVDXC2pkIpAb7W6WCAzaAtqc02ZKsFFqoAHVj/pBU7pzaKPFo+NgW9zO/78
         QKWfTl4n+wt1VZDBwgvO70q5PwZyGagAjnS/JhGg6BH/tVIgTiNoYfVMGBvXYzKBs6y7
         AC5rjRlJjuzjM6deHBARUs5yMaM6gEXmyEpXHlDXnoidg+hlN1HQV7DdofBzlzr1oJwQ
         l+TiYBYNJF7kg2D4WPv7v0gr0vvWNTFRtKWGMs2ViKutkMcw9acg7Z1VPcQM3kpz70q3
         5AVNxd88srfNwINJe4JgZHMrgxz3vG7N0WsiWwE9HDGWVxEUkrgJjk7p0NnZUKNs8XDB
         rKXQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:message-id:date:mime-version:user-agent:subject
         :content-language:to:cc:references:from:in-reply-to
         :content-transfer-encoding;
        bh=oh7BegofVIUn5uB2hKbuYfRyYWicxbDsuoabRMJIstA=;
        b=uqvpV0PkegmhUEspUJE6aBfYHsGcnRiEBsx43NSNBLEMi3JHAnCA+fScHF3hnKwLxB
         IMCyp8lSJZyunECMFL7qP9xuV1ixPf6EbtDmi4dufygGzwOhIVLQPGFitl7DOIQt+qsy
         Gwn/+bhXK2wQE+Uv/cFggTt7D8qFUKkseudUNOfjl2blNiRU/Q/qOnv7DPUPZS8yyI6C
         LfKZiCf4g/e/v+wuZ10tEkF01/CKmICy1tFKr/O8iA1XZcHMgkCgPzjd5s04VUo0eq+9
         Go01s9Ev8zFJIt6zrDBmbddPl4vEiHcuJfiC5l/mN1wZNgj/S06SQ/PFrsom3B0FV/T5
         lz5w==
X-Gm-Message-State: AOAM531OGLUhoD+u/O0iqiqaJylAcqqeQZt12Cfx8VRx2u/vhWB1NTSV
	ZPxDzjDZqktdNRJuwlr6INA=
X-Received: by 2002:aa7:9212:0:b0:47b:aefd:2cc4 with SMTP id 18-20020aa79212000000b0047baefd2cc4mr41640pfo.47.1634870931730;
        Thu, 21 Oct 2021 19:48:51 -0700 (PDT)
Return-Path: <kpraveen.lkml@gmail.com>
Received: from ?IPV6:2405:201:d007:e827:d9ab:a6dc:54b8:e75d? ([2405:201:d007:e827:d9ab:a6dc:54b8:e75d])
        by smtp.gmail.com with ESMTPSA id t3sm6494286pgo.51.2021.10.21.19.48.47
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 21 Oct 2021 19:48:51 -0700 (PDT)
Message-ID: <4cfb2624-4e64-2d7f-a1e7-5032a3078ec9@gmail.com>
Date: Fri, 22 Oct 2021 08:18:43 +0530
MIME-Version: 1.0
User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:91.0) Gecko/20100101
 Thunderbird/91.2.0
Subject: Re: [Outreachy kernel] [PATCH 3/4] staging: rtl8723bs: core: Remove
 unnecessary space after a cast
Content-Language: en-US
To: Kushal Kothari <kushalkothari285@gmail.com>, gregkh@linuxfoundation.org
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, fmdefrancesco@gmail.com,
 marcocesati@gmail.com, straube.linux@gmail.com, philippesdixon@gmail.com,
 manuelpalenzuelamerino@gmail.com, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, mike.rapoport@gmail.com,
 kushalkotharitest@googlegroups.com, outreachy-kernel@googlegroups.com
References: <cover.1634845504.git.kushalkothari285@gmail.com>
 <f350e30b1e09332dff896b6588d962aab9800a52.1634845504.git.kushalkothari285@gmail.com>
From: Praveen Kumar <kpraveen.lkml@gmail.com>
In-Reply-To: <f350e30b1e09332dff896b6588d962aab9800a52.1634845504.git.kushalkothari285@gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit

On 22-10-2021 01:27, Kushal Kothari wrote:
> Issue found with checkpatch.pl.
> Space after cast is not needes

*needed

> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 10 +++++-----
>  1 file changed, 5 insertions(+), 5 deletions(-)
> 
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index 88f6b7405106..fce3256cc275 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -922,7 +922,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>  	memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
>  
>  	if (check_fwstate(pmlmepriv, WIFI_STATION_STATE))
> -		psetstakey_para->algorithm = (unsigned char) psecuritypriv->dot11PrivacyAlgrthm;
> +		psetstakey_para->algorithm = (unsigned char)psecuritypriv->dot11PrivacyAlgrthm;
>  	else
>  		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
>  
> @@ -951,7 +951,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>  		}
>  
>  		init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
> -		ph2c->rsp = (u8 *) psetstakey_rsp;
> +		ph2c->rsp = (u8 *)psetstakey_rsp;
>  		ph2c->rspsz = sizeof(struct set_stakey_rsp);
>  		res = rtw_enqueue_cmd(pcmdpriv, ph2c);
>  	} else {
> @@ -1002,7 +1002,7 @@ u8 rtw_clearstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 enqueu
>  		}
>  
>  		init_h2fwcmd_w_parm_no_rsp(ph2c, psetstakey_para, _SetStaKey_CMD_);
> -		ph2c->rsp = (u8 *) psetstakey_rsp;
> +		ph2c->rsp = (u8 *)psetstakey_rsp;
>  		ph2c->rspsz = sizeof(struct set_stakey_rsp);
>  
>  		memcpy(psetstakey_para->addr, sta->hwaddr, ETH_ALEN);
> @@ -2027,7 +2027,7 @@ void rtw_setstaKey_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *pc
>  {
>  
>  	struct sta_priv *pstapriv = &padapter->stapriv;
> -	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *) (pcmd->rsp);
> +	struct set_stakey_rsp *psetstakey_rsp = (struct set_stakey_rsp *)(pcmd->rsp);
>  	struct sta_info *psta = rtw_get_stainfo(pstapriv, psetstakey_rsp->addr);
>  
>  	if (!psta)
> @@ -2042,7 +2042,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
>  	struct sta_priv *pstapriv = &padapter->stapriv;
>  	struct mlme_priv *pmlmepriv = &padapter->mlmepriv;
>  	struct set_assocsta_parm *passocsta_parm = (struct set_assocsta_parm *)(pcmd->parmbuf);
> -	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *) (pcmd->rsp);
> +	struct set_assocsta_rsp *passocsta_rsp = (struct set_assocsta_rsp *)(pcmd->rsp);
>  	struct sta_info *psta = rtw_get_stainfo(pstapriv, passocsta_parm->addr);
>  
>  	if (!psta)
> 

Regards,

~Praveen.

