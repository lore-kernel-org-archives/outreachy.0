X-GM-THRID: 7020829636261052416
X-Received: by 2002:a17:906:6bce:: with SMTP id t14mr39778251ejs.546.1634669882121;
        Tue, 19 Oct 2021 11:58:02 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:c944:: with SMTP id h4ls2932462edt.1.gmail; Tue, 19 Oct
 2021 11:58:00 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyN2p2pIuJ2ID7WQWJ0JdlKlaNHGKAf+nufSTZixG8CFzc1IhpCo9tkXCc29s2Y0dIkdoee
X-Received: by 2002:a50:8d51:: with SMTP id t17mr55115291edt.205.1634669880333;
        Tue, 19 Oct 2021 11:58:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1634669880; cv=none;
        d=google.com; s=arc-20160816;
        b=nD8buHBTovFz1RqDJf4PBoVP9laLzXyKz/z/8isaAkQN8P/a649oOrTisef927S1Xv
         NzO+s6VJk+qUuLFENXeDSdaUImqvEvEyH5Ri44eS7uf4uBmjYC4S488ciWVSLG/D+E6r
         2coX/Z2SBUZficIM1cM98RSb+h0GjBpDdnrOCpN1o8nMqZdP9Q8z6dIcew7UPbvmY5xW
         wiXI7NdaqFqQCd+xV+FunZCjHkOadr12oOhVyi25Wi4jGprZofnsAOHA1VdqTWzZ6Owb
         F0vFbfEpnUp/acHxSiqsOraOp5uttwypO8cUNi5x+Wu++RB2NSvifwyYScRNmwDvWfq3
         16Ig==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:ironport-hdrordr;
        bh=t/O1C5wJhKKPRSKZuugeUtmfyTBthZ9Jl9SeZ1LsZxY=;
        b=cyCMV5E3Xz0PRJPkUEPEjwJYYpSdZgRQvZ7SEPaCKVhXEKtZgXTmnQu74oXq/Xy5Em
         05mroIinr1Hob6FxdeRRNN8QOWW6NVyCZ7DsToBJXe2Lqc9kjYwEXzDS5l1TPEXsNdSd
         jtAiiZ3V+iQ25OjW3lhP5nXWQ0houiSoRaHgMAyemkGsTjEMDh4bLftA9xmYvYadlnOf
         twVEHndyxhOW6Ek5Q3ozHk0RHJBSNkxIjEXDnT/VfvljbKSZtqLruXA5HtW7FgpA0QYm
         X8chYYpO/7atxf3jX8h5fxJX1QOPBNus3gEUqpRmj6mb8uEwGV23+bBFbUkde9GNopQq
         EeJA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id dr8si428845ejc.0.2021.10.19.11.58.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 19 Oct 2021 11:58:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
IronPort-HdrOrdr: =?us-ascii?q?A9a23=3AvLn2Aa395PT2t2q323qPGQqjBK0kLtp133Aq?=
 =?us-ascii?q?2lEZdPUnSKOlfqeV7ZYmPH7P+VUssR4b8+xoVJPgfZq+z/NICOsqVotKNTOO0F?=
 =?us-ascii?q?dAR7sD0WKN+VPd8mHFmtJg6Q=3D=3D?=
X-IronPort-AV: E=Sophos;i="5.84,326,1620684000"; 
   d="scan'208";a="396421478"
Received: from 173.121.68.85.rev.sfr.net (HELO hadrien) ([85.68.121.173])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 19 Oct 2021 20:57:59 +0200
Date: Tue, 19 Oct 2021 20:57:59 +0200 (CEST)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: jll@hadrien
To: Kushal Kothari <kushalkothari285@gmail.com>
cc: gregkh@linuxfoundation.org, fabioaiuto83@gmail.com, marcocesati@gmail.com, 
    dan.carpenter@oracle.com, ross.schm.dev@gmail.com, 
    linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org, 
    outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: core:  Remove
 true and false comparison
In-Reply-To: <20211019172359.63583-1-kushalkothari285@gmail.com>
Message-ID: <alpine.DEB.2.22.394.2110192057200.4042@hadrien>
References: <20211019172359.63583-1-kushalkothari285@gmail.com>
User-Agent: Alpine 2.22 (DEB 394 2020-01-19)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 19 Oct 2021, Kushal Kothari wrote:

> Remove comparison to true and false in if statement.
> Issue found with checkpatch.pl.
> CHECK: Using comparison to true is error prone
> CHECK: Using comparison to false is error prone
>
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_cmd.c | 16 ++++++++--------
>  1 file changed, 8 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_cmd.c b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> index efc9b1974e38..b473f1d1ce08 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_cmd.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_cmd.c
> @@ -309,8 +309,8 @@ int rtw_cmd_filter(struct cmd_priv *pcmdpriv, struct cmd_obj *cmd_obj)
>  	if (cmd_obj->cmdcode == GEN_CMD_CODE(_SetChannelPlan))
>  		bAllow = true;
>
> -	if ((pcmdpriv->padapter->hw_init_completed == false && bAllow == false)
> -		|| atomic_read(&(pcmdpriv->cmdthd_running)) == false	/* com_thread not running */
> +	if ((!pcmdpriv->padapter->hw_init_completed && !bAllow)
> +		|| !atomic_read(&(pcmdpriv->cmdthd_running))	/* com_thread not running */
>  	)
>  		return _FAIL;
>
> @@ -407,7 +407,7 @@ int rtw_cmd_thread(void *context)
>  			break;
>  		}
>
> -		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
> +		if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved)) {

The parentheses are pretty useless once you have removed the comparison.

julia

>  			netdev_dbg(padapter->pnetdev,
>  				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
>  				   __func__, padapter->bDriverStopped,
> @@ -430,7 +430,7 @@ int rtw_cmd_thread(void *context)
>  			continue;
>
>  _next:
> -		if ((padapter->bDriverStopped == true) || (padapter->bSurpriseRemoved == true)) {
> +		if ((padapter->bDriverStopped) || (padapter->bSurpriseRemoved)) {
>  			netdev_dbg(padapter->pnetdev,
>  				   "%s: DriverStopped(%d) SurpriseRemoved(%d) break at line %d\n",
>  				   __func__, padapter->bDriverStopped,
> @@ -927,7 +927,7 @@ u8 rtw_setstakey_cmd(struct adapter *padapter, struct sta_info *sta, u8 unicast_
>  	else
>  		GET_ENCRY_ALGO(psecuritypriv, sta, psetstakey_para->algorithm, false);
>
> -	if (unicast_key == true)
> +	if (unicast_key)
>  		memcpy(&psetstakey_para->key, &sta->dot118021x_UncstKey, 16);
>  	else
>  		memcpy(&psetstakey_para->key, &psecuritypriv->dot118021XGrpKey[psecuritypriv->dot118021XGrpKeyid].skey, 16);
> @@ -1283,7 +1283,7 @@ u8 traffic_status_watchdog(struct adapter *padapter, u8 from_timer)
>  			(pmlmepriv->LinkDetectInfo.NumRxUnicastOkInPeriod > 2)) {
>  			bEnterPS = false;
>
> -			if (bBusyTraffic == true) {
> +			if (bBusyTraffic) {
>  				if (pmlmepriv->LinkDetectInfo.TrafficTransitionCount <= 4)
>  					pmlmepriv->LinkDetectInfo.TrafficTransitionCount = 4;
>
> @@ -1619,7 +1619,7 @@ static void rtw_chk_hi_queue_hdl(struct adapter *padapter)
>
>  	rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
>
> -	while (false == empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
> +	while (!empty && jiffies_to_msecs(jiffies - start) < g_wait_hiq_empty) {
>  		msleep(100);
>  		rtw_hal_get_hwreg(padapter, HW_VAR_CHK_HI_QUEUE_EMPTY, &empty);
>  	}
> @@ -2054,7 +2054,7 @@ void rtw_setassocsta_cmdrsp_callback(struct adapter *padapter,  struct cmd_obj *
>
>  	spin_lock_bh(&pmlmepriv->lock);
>
> -	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE) == true) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING) == true))
> +	if ((check_fwstate(pmlmepriv, WIFI_MP_STATE)) && (check_fwstate(pmlmepriv, _FW_UNDER_LINKING)))
>  		_clr_fwstate_(pmlmepriv, _FW_UNDER_LINKING);
>
>  	set_fwstate(pmlmepriv, _FW_LINKED);
> --
> 2.25.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20211019172359.63583-1-kushalkothari285%40gmail.com.
>

