X-GM-THRID: 6674748196483235840
X-Received: by 2002:a5d:690c:: with SMTP id t12mr392wru.28.1554147067512;
        Mon, 01 Apr 2019 12:31:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:4081:: with SMTP id o1ls990581wrp.7.gmail; Mon, 01 Apr
 2019 12:31:06 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyldv3Sua4Kn7JUxfhqUROHNYSAUtGEAKcYVV6sirg1a1IJxWPCjJWTHg4kBE+g38aqizNy
X-Received: by 2002:a5d:4d49:: with SMTP id a9mr2163539wru.31.1554147066661;
        Mon, 01 Apr 2019 12:31:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1554147066; cv=none;
        d=google.com; s=arc-20160816;
        b=RqwSVrxnHKvs6dvZsCjJlanp09vgQyOu/C/OC1ntysihTmwd85OSo+v8Ci1CaXPfKu
         W+FsteETk2iPkZkejmo6N53SqYoHE/MEq5Ol/zlHXUeIs7azFZU8QiUvpNOzS3u8rBZv
         uqK6OCwRryTJju8WNZbjANPM4SXiuaOuRonGTaFO2ysAGW63WIKFFOgL4dphlbH2rA6F
         g1/P/54zG9YpafPqEs44rfFZKxNac4TKmITfTf4P3oNV8DuRf/579Q07uUVEdVsXirHt
         HAMhCiJjhbtV9guG3EJvOl7pvexaWNii7VHouMTayJx7gu7VLsWc/cBtkCt18HcgyCYd
         JyPw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=eVIe5HnxiIcYtvmwbqev1UbusrNlapU0zKzc22q6vMg=;
        b=t2rTtmNFEOjSVGeDt1xtU+f+CWQ38DefeI4PTNViKstftP2VAfCVWh9QuUvGo3TRid
         gX9Yx+o/ifpsfWE1iJgxv4rF45l7QgrXx1gYrT+EoBEIk6Z1oSRdy7U9uouP+AlRD1QM
         xrG5BeOPS36rnPzrpIziXUlh7NZqfSkboDfUF8AwZgAETwJhYrMPbFpDUEe8SxPAfAc1
         /i9ZLsXqTja7oZp1Q2QMxSCS1HuwcedpnuhdFQG1Kub9+q3yR9+CfaaKMnc8xqobBlgK
         WkT+Cen8O/sGQgkeZnPUJFpaSao6JiFBeJZGrkp5pJs/mQnc/09OPc8Ra/m/Kc9vLRwT
         VOrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id p14si397321wmh.2.2019.04.01.12.31.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 01 Apr 2019 12:31:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.60,297,1549926000"; 
   d="scan'208";a="301440337"
Received: from abo-75-106-68.mrs.modulonet.fr (HELO hadrien) ([85.68.106.75])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 01 Apr 2019 21:31:06 +0200
Date: Mon, 1 Apr 2019 21:31:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
cc: gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: rtl8723bs: core:
 rtw_mlme_ext.c: Remove typecast in kfree
In-Reply-To: <20190401182614.14755-1-madhumithabiw@gmail.com>
Message-ID: <alpine.DEB.2.21.1904012129550.2530@hadrien>
References: <20190401182614.14755-1-madhumithabiw@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

For the subject line, you should follow the same strategy as other patches
on this file.

On Mon, 1 Apr 2019, Madhumitha Prabakaran wrote:

> Remove typecast in kfree, as per definition of kfree in
> include/linux/slab.h#L144, the parameter type of kfree is void*, and
> hence C compiler casts any pointer type to void*.
> that is allocated with kmalloc.

Whether or not the argument was allocated with kmalloc is not relevant.
The C compiler considers any pointer type compatible with void *.  It
doesn't know where the value came from.

julia

> Signed-off-by: Madhumitha Prabakaran <madhumithabiw@gmail.com>
>
> ---
> Changes in v3 -
>
> - Tested and compiled the patch
>
> Changes in v2:
>
> - Commit log modified
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 22 +++++++++----------
>  1 file changed, 11 insertions(+), 11 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index ebb45acb4446..6ac2b03805e4 100644
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
> @@ -5052,7 +5052,7 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
>  	cmdsz = (sizeof(struct survey_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5073,8 +5073,8 @@ void report_survey_event(struct adapter *padapter, union recv_frame *precv_frame
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
> @@ -5105,7 +5105,7 @@ void report_surveydone_event(struct adapter *padapter)
>  	cmdsz = (sizeof(struct surveydone_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5152,7 +5152,7 @@ void report_join_res(struct adapter *padapter, int res)
>  	cmdsz = (sizeof(struct joinbss_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5203,7 +5203,7 @@ void report_wmm_edca_update(struct adapter *padapter)
>  	cmdsz = (sizeof(struct wmm_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5250,7 +5250,7 @@ void report_del_sta_event(struct adapter *padapter, unsigned char *MacAddr, unsi
>  	cmdsz = (sizeof(struct stadel_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5305,7 +5305,7 @@ void report_add_sta_event(struct adapter *padapter, unsigned char *MacAddr, int
>  	cmdsz = (sizeof(struct stassoc_event) + sizeof(struct C2HEvent_Header));
>  	pevtcmd = rtw_zmalloc(cmdsz);
>  	if (pevtcmd == NULL) {
> -		kfree((u8 *)pcmd_obj);
> +		kfree(pcmd_obj);
>  		return;
>  	}
>
> @@ -5836,7 +5836,7 @@ void survey_timer_hdl(struct timer_list *t)
>
>  		psurveyPara = rtw_zmalloc(sizeof(struct sitesurvey_parm));
>  		if (psurveyPara == NULL) {
> -			kfree((unsigned char *)ph2c);
> +			kfree(ph2c);
>  			goto exit_survey_timer_hdl;
>  		}
>
> @@ -6603,7 +6603,7 @@ u8 set_tx_beacon_cmd(struct adapter *padapter)
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
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20190401182614.14755-1-madhumithabiw%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

