X-GM-THRID: 6477990631903854592
X-Received: by 10.223.166.39 with SMTP id k36mr1166734wrc.8.1508275807674;
        Tue, 17 Oct 2017 14:30:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.168.14 with SMTP id r14ls501412wme.3.canary-gmail; Tue, 17
 Oct 2017 14:30:06 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+QQtES0ICQvTpMaD+rAsabodTbV33LVmVY1Oc+HqgVNqKwwXgXD7GGmH9y2oz+NZnf84ly7
X-Received: by 10.28.132.134 with SMTP id g128mr598098wmd.24.1508275806871;
        Tue, 17 Oct 2017 14:30:06 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508275806; cv=none;
        d=google.com; s=arc-20160816;
        b=cFC7O+UmULaF9qDww/PnywwYd2J2J9twAAPZaY3/lXu2QgTLnUHJ+yzY/F8NLuSGau
         vJNPAjIqBTAzVCMy7OYnhsYenMS8chG5rt1GTLwUczVvuBWbevhsfTaz+Vu75rf3p2xC
         1Hsc3vE5lNgZtuOg5sMUydO4d/hzo7wETn1lMenblbUNpsANvAuzKCrg5oOF+jFqlkup
         dXqXP1TmYK1bkIpanYypA1rTeqOusCjUZMF3TGmjIeMS++H/u6+m1PV2mm1+KnCM7Zxf
         TvOWFlfnktHsn5d5vZlzdGhbY0IwTUSoCWy9mNVjTjUMinO+oQAUZcQI4t2G/qGG74rZ
         pqPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=NGORKsXDcpY/Pr0GCrjeLA/yPHDa09PiDOfNjOEJrHg=;
        b=ZFICiUoqvLieVsjF3Ony8hFHfpQkkNq30Tp0ejF9Y/cOLsC61by5cl8oiYgz12y4IT
         7IHgnIRIyrUZkhXVOxRBM872XRM9hQLzDhPZgGJciztfFaM1kGJlgN6LnMTlpdvQx6ub
         E7JMJX6mpCM/Aj2xJaB6A/vXkf2ELzAzkv0vSNGAPzA3tnkQSHrJlJmQFbBHwJDmuu4F
         Ui33m3BkO6mbOilpNYvDnK5gcjmkrGES04i0/U2XBwbItzvPx1msUe2SzTjqkcCMRVJQ
         FEB5msqUeKiaaRHm6p7ZG046nwJ7mzHWHTCBOASnp+O/NLJ3RQHlF39sT/UHQg3A4MgN
         CsrQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id r65si377172wmf.2.2017.10.17.14.30.06
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Oct 2017 14:30:06 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.43,392,1503352800"; 
   d="scan'208";a="241411877"
Received: from abo-88-122-68.mrs.modulonet.fr (HELO [192.168.0.15]) ([85.68.122.88])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Oct 2017 23:30:06 +0200
Date: Tue, 17 Oct 2017 23:30:05 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
cc: pablo@netfilter.org, gregkh@linuxfoundation.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: rtlwifi: Remove unnecessary
 parentheses
In-Reply-To: <20171017211203.GA9067@ubuntu-server-1604>
Message-ID: <alpine.DEB.2.20.1710172329490.2874@hadrien>
References: <20171017211203.GA9067@ubuntu-server-1604>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Tue, 17 Oct 2017, Frank A. Cancio Bello wrote:

> Remove unnecessary parentheses to comply with preferred coding style for
> the linux kernel and avoid the following checkpatch's message:
> 'CHECK: Unnecessary parentheses around'.
>
> Credits to checkpatch.
>
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>

Acked-by: Julia Lawall <julia.lawall@lip6.fr>

> ---
>  drivers/staging/rtlwifi/base.c  | 30 +++++++++++++++---------------
>  drivers/staging/rtlwifi/core.c  | 24 ++++++++++++------------
>  drivers/staging/rtlwifi/debug.c |  4 ++--
>  drivers/staging/rtlwifi/rc.c    | 12 ++++++------
>  4 files changed, 35 insertions(+), 35 deletions(-)
>
> diff --git a/drivers/staging/rtlwifi/base.c b/drivers/staging/rtlwifi/base.c
> index b88b0e8..7f86257 100644
> --- a/drivers/staging/rtlwifi/base.c
> +++ b/drivers/staging/rtlwifi/base.c
> @@ -637,7 +637,7 @@ static void _rtl_query_shortgi(struct ieee80211_hw *hw,
>  	sgi_20 = sta->ht_cap.cap & IEEE80211_HT_CAP_SGI_20;
>  	sgi_80 = sta->vht_cap.cap & IEEE80211_VHT_CAP_SHORT_GI_80;
>
> -	if ((!sta->ht_cap.ht_supported) && (!sta->vht_cap.vht_supported))
> +	if (!sta->ht_cap.ht_supported && !sta->vht_cap.vht_supported)
>  		return;
>
>  	if (!sgi_40 && !sgi_20)
> @@ -734,10 +734,10 @@ u8 rtl_mrate_idx_to_arfr_id(
>  		ret = RATEID_IDX_B;
>  		break;
>  	case RATR_INX_WIRELESS_MC:
> -		if ((wirelessmode == WIRELESS_MODE_B) ||
> -		    (wirelessmode == WIRELESS_MODE_G) ||
> -		    (wirelessmode == WIRELESS_MODE_N_24G) ||
> -		    (wirelessmode == WIRELESS_MODE_AC_24G))
> +		if (wirelessmode == WIRELESS_MODE_B ||
> +		    wirelessmode == WIRELESS_MODE_G ||
> +		    wirelessmode == WIRELESS_MODE_N_24G ||
> +		    wirelessmode == WIRELESS_MODE_AC_24G)
>  			ret = RATEID_IDX_BG;
>  		else
>  			ret = RATEID_IDX_G;
> @@ -948,8 +948,8 @@ static u8 _rtl_get_highest_n_rate(struct ieee80211_hw *hw,
>  	struct rtl_phy *rtlphy = &rtlpriv->phy;
>  	u8 hw_rate;
>
> -	if ((get_rf_type(rtlphy) == RF_2T2R) &&
> -	    (sta->ht_cap.mcs.rx_mask[1] != 0))
> +	if (get_rf_type(rtlphy) == RF_2T2R &&
> +	    sta->ht_cap.mcs.rx_mask[1] != 0)
>  		hw_rate = rtlpriv->cfg->maps[RTL_RC_HT_RATEMCS15];
>  	else
>  		hw_rate = rtlpriv->cfg->maps[RTL_RC_HT_RATEMCS7];
> @@ -1277,7 +1277,7 @@ void rtl_get_tcb_desc(struct ieee80211_hw *hw,
>  				tcb_desc->hw_rate =
>  				_rtl_get_vht_highest_n_rate(hw, sta);
>  			} else {
> -				if (sta && (sta->ht_cap.ht_supported)) {
> +				if (sta && sta->ht_cap.ht_supported) {
>  					tcb_desc->hw_rate =
>  					    _rtl_get_highest_n_rate(hw, sta);
>  				} else {
> @@ -2080,9 +2080,9 @@ void rtl_watchdog_wq_callback(void *data)
>  		    rtlpriv->btcoexist.btc_ops->btc_is_bt_ctrl_lps(rtlpriv))
>  			goto label_lps_done;
>
> -		if (((rtlpriv->link_info.num_rx_inperiod +
> -		      rtlpriv->link_info.num_tx_inperiod) > 8) ||
> -		    (rtlpriv->link_info.num_rx_inperiod > 2))
> +		if (rtlpriv->link_info.num_rx_inperiod +
> +		      rtlpriv->link_info.num_tx_inperiod > 8 ||
> +		    rtlpriv->link_info.num_rx_inperiod > 2)
>  			rtl_lps_leave(hw);
>  		else
>  			rtl_lps_enter(hw);
> @@ -2552,8 +2552,8 @@ bool rtl_check_beacon_key(struct ieee80211_hw *hw, void *data, unsigned int len)
>  	bcn_key.valid = true;
>
>  	/* update cur_beacon_keys or compare beacon key */
> -	if ((rtlpriv->mac80211.link_state != MAC80211_LINKED) &&
> -	    (rtlpriv->mac80211.link_state != MAC80211_LINKED_SCANNING))
> +	if (rtlpriv->mac80211.link_state != MAC80211_LINKED &&
> +	    rtlpriv->mac80211.link_state != MAC80211_LINKED_SCANNING)
>  		return true;
>
>  	if (!cur_bcn_key->valid) {
> @@ -2576,8 +2576,8 @@ bool rtl_check_beacon_key(struct ieee80211_hw *hw, void *data, unsigned int len)
>  		goto chk_exit;
>  	}
>
> -	if ((cur_bcn_key->bcn_channel == bcn_key.bcn_channel) &&
> -	    (cur_bcn_key->ht_cap_info == bcn_key.ht_cap_info)) {
> +	if (cur_bcn_key->bcn_channel == bcn_key.bcn_channel &&
> +	    cur_bcn_key->ht_cap_info == bcn_key.ht_cap_info) {
>  		/* Beacon HT info IE, secondary channel offset check */
>  		/* 40M -> 20M */
>  		if (cur_bcn_key->ht_info_infos_0_sco >
> diff --git a/drivers/staging/rtlwifi/core.c b/drivers/staging/rtlwifi/core.c
> index b55e183..89dc6d4 100644
> --- a/drivers/staging/rtlwifi/core.c
> +++ b/drivers/staging/rtlwifi/core.c
> @@ -302,9 +302,9 @@ static void rtl_op_remove_interface(struct ieee80211_hw *hw,
>  	mutex_lock(&rtlpriv->locks.conf_mutex);
>
>  	/* Free beacon resources */
> -	if ((vif->type == NL80211_IFTYPE_AP) ||
> -	    (vif->type == NL80211_IFTYPE_ADHOC) ||
> -	    (vif->type == NL80211_IFTYPE_MESH_POINT)) {
> +	if (vif->type == NL80211_IFTYPE_AP ||
> +	    vif->type == NL80211_IFTYPE_ADHOC ||
> +	    vif->type == NL80211_IFTYPE_MESH_POINT) {
>  		if (mac->beacon_enabled == 1) {
>  			mac->beacon_enabled = 0;
>  			rtlpriv->cfg->ops->update_interrupt_mask(hw, 0,
> @@ -820,8 +820,8 @@ static void rtl_op_configure_filter(struct ieee80211_hw *hw,
>  	 * here just used for linked scanning, & linked
>  	 * and nolink check bssid is set in set network_type
>  	 */
> -	if ((changed_flags & FIF_BCN_PRBRESP_PROMISC) &&
> -	    (mac->link_state >= MAC80211_LINKED)) {
> +	if (changed_flags & FIF_BCN_PRBRESP_PROMISC &&
> +	    mac->link_state >= MAC80211_LINKED) {
>  		if (mac->opmode != NL80211_IFTYPE_AP &&
>  		    mac->opmode != NL80211_IFTYPE_MESH_POINT) {
>  			if (*new_flags & FIF_BCN_PRBRESP_PROMISC)
> @@ -1042,10 +1042,10 @@ static void rtl_op_bss_info_changed(struct ieee80211_hw *hw,
>  	struct rtl_ps_ctl *ppsc = rtl_psc(rtl_priv(hw));
>
>  	mutex_lock(&rtlpriv->locks.conf_mutex);
> -	if ((vif->type == NL80211_IFTYPE_ADHOC) ||
> -	    (vif->type == NL80211_IFTYPE_AP) ||
> -	    (vif->type == NL80211_IFTYPE_MESH_POINT)) {
> -		if ((changed & BSS_CHANGED_BEACON) ||
> +	if (vif->type == NL80211_IFTYPE_ADHOC ||
> +	    vif->type == NL80211_IFTYPE_AP ||
> +	    vif->type == NL80211_IFTYPE_MESH_POINT) {
> +		if (changed & BSS_CHANGED_BEACON ||
>  		    (changed & BSS_CHANGED_BEACON_ENABLED &&
>  		     bss_conf->enable_beacon)) {
>  			if (mac->beacon_enabled == 0) {
> @@ -1585,8 +1585,8 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
>  		return -ENOSPC;	/*User disabled HW-crypto */
>  	}
>  	/* To support IBSS, use sw-crypto for GTK */
> -	if (((vif->type == NL80211_IFTYPE_ADHOC) ||
> -	     (vif->type == NL80211_IFTYPE_MESH_POINT)) &&
> +	if ((vif->type == NL80211_IFTYPE_ADHOC ||
> +	     vif->type == NL80211_IFTYPE_MESH_POINT) &&
>  	    !(key->flags & IEEE80211_KEY_FLAG_PAIRWISE))
>  		return -ENOSPC;
>  	RT_TRACE(rtlpriv, COMP_SEC, DBG_DMESG,
> @@ -1661,7 +1661,7 @@ static int rtl_op_set_key(struct ieee80211_hw *hw, enum set_key_cmd cmd,
>  			rtlpriv->cfg->ops->enable_hw_sec(hw);
>  		}
>  	} else {
> -		if ((!group_key) || (vif->type == NL80211_IFTYPE_ADHOC) ||
> +		if (!group_key || vif->type == NL80211_IFTYPE_ADHOC ||
>  		    rtlpriv->sec.pairwise_enc_algorithm == NO_ENCRYPTION) {
>  			if (rtlpriv->sec.pairwise_enc_algorithm ==
>  			    NO_ENCRYPTION &&
> diff --git a/drivers/staging/rtlwifi/debug.c b/drivers/staging/rtlwifi/debug.c
> index 63a9b70..be8d72c 100644
> --- a/drivers/staging/rtlwifi/debug.c
> +++ b/drivers/staging/rtlwifi/debug.c
> @@ -33,7 +33,7 @@ void _rtl_dbg_trace(struct rtl_priv *rtlpriv, u64 comp, int level,
>  		    const char *fmt, ...)
>  {
>  	if (unlikely((comp & rtlpriv->cfg->mod_params->debug_mask) &&
> -		     (level <= rtlpriv->cfg->mod_params->debug_level))) {
> +		     level <= rtlpriv->cfg->mod_params->debug_level)) {
>  		struct va_format vaf;
>  		va_list args;
>
> @@ -52,7 +52,7 @@ void _rtl_dbg_print(struct rtl_priv *rtlpriv, u64 comp, int level,
>  		    const char *fmt, ...)
>  {
>  	if (unlikely((comp & rtlpriv->cfg->mod_params->debug_mask) &&
> -		     (level <= rtlpriv->cfg->mod_params->debug_level))) {
> +		     level <= rtlpriv->cfg->mod_params->debug_level)) {
>  		struct va_format vaf;
>  		va_list args;
>
> diff --git a/drivers/staging/rtlwifi/rc.c b/drivers/staging/rtlwifi/rc.c
> index 779a5c6..c835be9 100644
> --- a/drivers/staging/rtlwifi/rc.c
> +++ b/drivers/staging/rtlwifi/rc.c
> @@ -125,8 +125,8 @@ static void _rtl_rc_rate_set_series(struct rtl_priv *rtlpriv,
>  	}
>  	rate->count = tries;
>  	rate->idx = rix >= 0x00 ? rix : 0x00;
> -	if (((rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8812AE) ||
> -	     (rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8822BE)) &&
> +	if ((rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8812AE ||
> +	     rtlpriv->rtlhal.hw_type == HARDWARE_TYPE_RTL8822BE) &&
>  	    wireless_mode == WIRELESS_MODE_AC_5G)
>  		rate->idx |= 0x10;/*2NSS for 8812AE, 8822BE*/
>
> @@ -138,7 +138,7 @@ static void _rtl_rc_rate_set_series(struct rtl_priv *rtlpriv,
>  			if (sta && (sta->ht_cap.cap &
>  				    IEEE80211_HT_CAP_SUP_WIDTH_20_40))
>  				rate->flags |= IEEE80211_TX_RC_40_MHZ_WIDTH;
> -			if (sta && (sta->vht_cap.vht_supported))
> +			if (sta && sta->vht_cap.vht_supported)
>  				rate->flags |= IEEE80211_TX_RC_80_MHZ_WIDTH;
>  		} else {
>  			if (mac->bw_80)
> @@ -150,8 +150,8 @@ static void _rtl_rc_rate_set_series(struct rtl_priv *rtlpriv,
>  		if (sgi_20 || sgi_40 || sgi_80)
>  			rate->flags |= IEEE80211_TX_RC_SHORT_GI;
>  		if (sta && sta->ht_cap.ht_supported &&
> -		    ((wireless_mode == WIRELESS_MODE_N_5G) ||
> -		     (wireless_mode == WIRELESS_MODE_N_24G)))
> +		    (wireless_mode == WIRELESS_MODE_N_5G ||
> +		     wireless_mode == WIRELESS_MODE_N_24G))
>  			rate->flags |= IEEE80211_TX_RC_MCS;
>  		if (sta && sta->vht_cap.vht_supported &&
>  		    (wireless_mode == WIRELESS_MODE_AC_5G ||
> @@ -232,7 +232,7 @@ static void rtl_tx_status(void *ppriv,
>  	if (sta) {
>  		/* Check if aggregation has to be enabled for this tid */
>  		sta_entry = (struct rtl_sta_info *)sta->drv_priv;
> -		if ((sta->ht_cap.ht_supported) &&
> +		if (sta->ht_cap.ht_supported &&
>  		    !(skb->protocol == cpu_to_be16(ETH_P_PAE))) {
>  			if (ieee80211_is_data_qos(fc)) {
>  				u8 tid = rtl_get_tid(skb);
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20171017211203.GA9067%40ubuntu-server-1604.
> For more options, visit https://groups.google.com/d/optout.
>

