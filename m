X-GM-THRID: 6468588291165782016
X-Received: by 10.223.171.237 with SMTP id s100mr843685wrc.31.1506086110102;
        Fri, 22 Sep 2017 06:15:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.193.129 with SMTP id r123ls149633wmf.1.gmail; Fri, 22 Sep
 2017 06:15:09 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QArf4kaCShmXcfJj+f+WLJPZOoj6vdR9YvOHbaR7pFZTt3nLOkMbWpN9pZ6IMIk8nTzCVPY
X-Received: by 10.223.130.234 with SMTP id 97mr824686wrc.5.1506086109159;
        Fri, 22 Sep 2017 06:15:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506086109; cv=none;
        d=google.com; s=arc-20160816;
        b=tPIFzzR0ydjZ2Krepc/VjzvooVumwpMLQJmtA5qXuEzq3yUZy8rpdfH2IOypOtSncQ
         3z3lxlp3kwipQasFGzAqj7GIZo8ssD9yCZ1xhSnWJHtViRpac8W1ny9PW1eeoCCTRI8c
         5e6uNbkNOzqvNPBFxYfi+R6MvZQUxEkFEsXiTj13HDjqQYuUPFl19tcXBsuUM4kozqtL
         k6CUizg/PJFQZ4PYEGe35O/NzwB8e+LA7BzlMuq96QTm3BCQQrdhFTC7hQoy9W9ppVvi
         om1hXf9XGCCB0JNLnGGAoiD7VRIgLNV7af0P0LXvfmyZAS41nSfY4rK1HMPnIrgMd38u
         CBuQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=w4O2HJ6COwIRIBPwopesjbsIIT489asWB7QA5nKPML8=;
        b=LVE6l7WX+44EXTetTBJ/DCJeidQl9tzgxb+XDmH6z2AgxiWh4xtKLlSC3IiamZuie6
         xbN4sm0tSDdpIoAxz/q+lgoFcYGgympoztBFvxG1D19PWMyPtPAj/Cg6hovOBrKxA5sW
         +/uknK62MaUSH2L7mrZpDDdPfxtaxuvooLl3r8WEW8qRWBte0KYmYbOHtX2dqAabe+Pg
         0gsc0zfSEIWtkcHHcB5JdWB5Rel65pWZaAhAmieVU0ptK/IfgWpxq2XBIMptYdvKKi3n
         mnBVg7eUn6tertcHzKFygIOu6aGSLqcNQL+FqsaSDcuGTiiKuiJbp4AwgKE3g7fiyb5Y
         XuJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id d82si4882wmd.1.2017.09.22.06.15.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Sep 2017 06:15:09 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,427,1500933600"; 
   d="scan'208";a="292305023"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 22 Sep 2017 15:15:08 +0200
Date: Fri, 22 Sep 2017 15:14:33 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Georgiana Chelu <georgiana.chelu93@gmail.com>
cc: outreachy-kernel@googlegroups.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/2] Staging: rtl8723bs: core: Code
 clean up
In-Reply-To: <d4d5c3de83b0f69541a95edc96df02c9bf2d84da.1506084848.git.georgiana.chelu93@gmail.com>
Message-ID: <alpine.DEB.2.20.1709221513400.3170@hadrien>
References: <cover.1506084848.git.georgiana.chelu93@gmail.com> <d4d5c3de83b0f69541a95edc96df02c9bf2d84da.1506084848.git.georgiana.chelu93@gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Fri, 22 Sep 2017, Georgiana Chelu wrote:

> Clean the code to improve the coding style.
>
> Fix minor issues reported by checkpatch.pl:
> * CHECK: Alignment should match open parenthesis
> * WARNING: line over 80 characters

Something went very wrong here.  The changes have nothing to do with the
log message and the changes are not desirable.  The { stays up on the line
with the end of the test expression.

julia

> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 36 ++++++++++++++++-----------
>  1 file changed, 21 insertions(+), 15 deletions(-)
>
> diff --git a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> index 6c59faf..b88c6e1 100644
> --- a/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> +++ b/drivers/staging/rtl8723bs/core/rtw_mlme_ext.c
> @@ -510,7 +510,8 @@ void free_mlme_ext_priv(struct mlme_ext_priv *pmlmeext)
>  	if (!padapter)
>  		return;
>
> -	if (padapter->bDriverStopped) {
> +	if (padapter->bDriverStopped)
> +	{
>  		del_timer_sync(&pmlmeext->survey_timer);
>  		del_timer_sync(&pmlmeext->link_timer);
>  		/* del_timer_sync(&pmlmeext->ADDBA_timer); */
> @@ -638,7 +639,8 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
>
>  #ifdef CONFIG_AUTO_AP_MODE
>  	if (check_fwstate(pmlmepriv, _FW_LINKED) &&
> -			pmlmepriv->cur_network.join_res) {
> +	            pmlmepriv->cur_network.join_res)
> +	{
>  		struct sta_info *psta;
>  		u8 *mac_addr, *peer_addr;
>  		struct sta_priv *pstapriv = &padapter->stapriv;
> @@ -761,8 +763,10 @@ unsigned int OnProbeReq(struct adapter *padapter, union recv_frame *precv_frame)
>  			return _SUCCESS;
>
>  _issue_probersp:
> -		if ((check_fwstate(pmlmepriv, _FW_LINKED)  &&
> -			pmlmepriv->cur_network.join_res) || check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE)) {
> +		if ((check_fwstate(pmlmepriv, _FW_LINKED) &&
> +		     pmlmepriv->cur_network.join_res) ||
> +		    check_fwstate(pmlmepriv, WIFI_ADHOC_MASTER_STATE))
> +		{
>  			/* DBG_871X("+issue_probersp during ap mode\n"); */
>  			issue_probersp(padapter, get_sa(pframe), is_valid_p2p_probereq);
>  		}
> @@ -2350,8 +2354,8 @@ void update_mgntframe_attrib_addr(struct adapter *padapter, struct xmit_frame *p
>
>  void dump_mgntframe(struct adapter *padapter, struct xmit_frame *pmgntframe)
>  {
> -	if (padapter->bSurpriseRemoved ||
> -		padapter->bDriverStopped) {
> +	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> +	{
>  		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
>  		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
>  		return;
> @@ -2368,8 +2372,8 @@ s32 dump_mgntframe_and_wait(struct adapter *padapter, struct xmit_frame *pmgntfr
>  	struct xmit_buf *pxmitbuf = pmgntframe->pxmitbuf;
>  	struct submit_ctx sctx;
>
> -	if (padapter->bSurpriseRemoved ||
> -		padapter->bDriverStopped) {
> +	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> +	{
>  		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
>  		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
>  		return ret;
> @@ -2397,8 +2401,8 @@ s32 dump_mgntframe_and_wait_ack(struct adapter *padapter, struct xmit_frame *pmg
>  	u32 timeout_ms = 500;/*   500ms */
>  	struct xmit_priv *pxmitpriv = &padapter->xmitpriv;
>
> -	if (padapter->bSurpriseRemoved ||
> -		padapter->bDriverStopped) {
> +	if (padapter->bSurpriseRemoved || padapter->bDriverStopped)
> +	{
>  		rtw_free_xmitbuf(&padapter->xmitpriv, pmgntframe->pxmitbuf);
>  		rtw_free_xmitframe(&padapter->xmitpriv, pmgntframe);
>  		return -1;
> @@ -6356,10 +6360,11 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
>  		DBG_871X(FUNC_ADPT_FMT" "CHAN_FMT"\n", FUNC_ADPT_ARG(padapter), CHAN_ARG(&in[i]));
>
>  		set_idx = rtw_ch_set_search_ch(pmlmeext->channel_set, in[i].hw_value);
> -		if (in[i].hw_value && !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED)
> -			&& set_idx >= 0
> -			&& rtw_mlme_band_check(padapter, in[i].hw_value)
> -		) {
> +		if (in[i].hw_value &&
> +		    !(in[i].flags & RTW_IEEE80211_CHAN_DISABLED) &&
> +		    set_idx >= 0 &&
> +		    rtw_mlme_band_check(padapter, in[i].hw_value))
> +		{
>  			if (j >= out_num) {
>  				DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
>  					FUNC_ADPT_ARG(padapter), out_num);
> @@ -6383,7 +6388,8 @@ static int rtw_scan_ch_decision(struct adapter *padapter, struct rtw_ieee80211_c
>
>  			DBG_871X(FUNC_ADPT_FMT" ch:%u\n", FUNC_ADPT_ARG(padapter), pmlmeext->channel_set[i].ChannelNum);
>
> -			if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum)) {
> +			if (rtw_mlme_band_check(padapter, pmlmeext->channel_set[i].ChannelNum))
> +			{
>
>  				if (j >= out_num) {
>  					DBG_871X_LEVEL(_drv_always_, FUNC_ADPT_FMT" out_num:%u not enough\n",
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/d4d5c3de83b0f69541a95edc96df02c9bf2d84da.1506084848.git.georgiana.chelu93%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

