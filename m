X-GM-THRID: 6674748196483235840
X-Received: by 2002:a05:6402:1811:: with SMTP id g17mr2959121edy.7.1554099347607;
        Sun, 31 Mar 2019 23:15:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a50:a5cd:: with SMTP id b13ls352434edc.4.gmail; Sun, 31 Mar
 2019 23:15:46 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzNf1myap90fZq08deMD86MNwZtKc8OFlICnyDzZh70Rr4JxWNdGLvZLMrhGqxf4OZtFYsK
X-Received: by 2002:a50:b6f0:: with SMTP id f45mr3964939ede.11.1554099346690;
        Sun, 31 Mar 2019 23:15:46 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554099346; cv=none;
        d=google.com; s=arc-20160816;
        b=GB9JE3/fjAT54mH27FsSeV3pZiHA34hPTcL/kbYJxpQmjJ+EbZAtW+PY2swqGUEQGJ
         38FA0jvcA3O0Tn98yFWu9ZB/nzgKlvwCTFopzIHRklblxuY3eKu+ZJiCHkbwXl4h5IWo
         pxgPSCtccAtYPgi8+LN0JxNAsMUOfLBO5nEJa5QEnOi7+vX/52Eq7K9Js8oWON/gWltc
         1K4xwsHTYqnyoLMixl4vOH54NvpkesgX+6CwXKZlHGzFUUamYUwfspIJeb32DgaIvRSd
         xC28YY/s1xgPEpOxPhTG9fNjLumlvFDF6D5pRsHUnZHa54cLZfIT5o97RuTK5jZEvr2X
         L/Iw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=zduxbUJHzsRPUH6bAArv7KSkpDrWTAnLf2O90G0k/kY=;
        b=bd/UBJ50ODkMoRZ4J4Eb7sCCV3AguVR7ZJAgO4a002xrb1DYaSJM14a7n4IFstS98x
         dmJJhvouLQDZ0ySjsugy1HebPukGZJLZwob9pGwwCdh1ncUyoJuu/d1/qQAbuvjEIAv2
         C8hlJ+yS8dcBH1sl5nW2pVHm6GwcjLiUUkBM8azz08UwN41jTy0ME/w9JcJ2V2etznaT
         mjx1JOjVnaunScwpi7cLFaD8dlKuxxCbq1KhZEqUdpLWnHLujNes8znJDyBC5YcLkBLs
         sefhBevfBC92PFDVUBrFJTeLgEhx4IuVQ7fKeuucg+jClh3Wajsl2JlELlknOJ7aLU9I
         14yw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id q47si464891eda.5.2019.03.31.23.15.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 31 Mar 2019 23:15:46 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,295,1549926000"; 
   d="scan'208";a="376573311"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2019 08:15:21 +0200
Date: Mon, 1 Apr 2019 08:15:21 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723bs: core: rtw_mlme_ext.c:
 Remove typecast in kfree
In-Reply-To: <20190401023154.3644-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1904010814380.2664@hadrien>
References: <20190401023154.3644-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sun, 31 Mar 2019, Madhumitha Prabakaran wrote:

> Remove typecast in kfree, as the function will free any memory
> that is allocated with kmalloc.

The change is fine, but the explanation is not really correct.  The
parameter type of kfree is void *, and C is happy to cast any pointer type
to void *.

julia

>
> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index d97c1e6d5c01..430758f298af 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -816,7 +816,7 @@ unsigned int OnBeacon(struct adapter *padapter, union recv_frame *precv_frame)
>  					update_network(&(pmlmepriv->cur_network.network), pbss, padapter, true);
>  					rtw_get_bcn_info(&(pmlmepriv->cur_network));
>  				}
> -				kfree((u8 *)pbss);
> +				kfree(pbss);
>  			}
>
>  			/* check the vendor of the assoc AP */
> @@ -5043,7 +5043,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
>  	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5064,8 +5064,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
>  	psurvey_evt = (struct survey_event *)(pevtcmd + sizeof(struct C2HEvent_Header));
>
>  	if (collect_bss_info(padapter, precv_frame, (struct wlan_bssid_ex *)&psurvey_evt->bss) == _FAIL) {
> -		kfree((u8 *)pcmd_obj);
> -		kfree((u8 *)pevtcmd);
> +		kfree(pcmd_obj);
> +		kfree(pevtcmd);
>  		return;
>  	}
>
> @@ -5096,7 +5096,7 @@ void report_surveydone_event(struct adapter *padapter)
>  	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5143,7 +5143,7 @@ void report_join_res(struct adapter *padapter, int res)
>  	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5194,7 +5194,7 @@ void report_wmm_edca_update(struct adapter *padapter)
>  	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree((pcmd_obj);
>  		return;
>  	}
>
> @@ -5241,7 +5241,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
>  	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5296,7 +5296,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
>  	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5822,7 +5822,7 @@ void survey_timer_hdl(struct timer_list *t)
>
>  		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
>  		if (psurveyPara == NULL) {
> -			kfree((unsigned char *)ph2c);
> +			kfree(ph2c);
>  			goto exit_survey_timer_hdl;
>  		}
>
> @@ -6589,7 +6589,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
>
>  	ptxBeacon_parm = rtw_zmalloc(sizeof(struct Tx_Beacon_param));
>  	if (ptxBeacon_parm == NULL) {
> -		kfree((unsigned char *)ph2c);
> +		kfree(ph2c);
>  		res = _FAIL;
>  		goto exit;
>  	}
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401023154.3644-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

