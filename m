Received: from mail-pf1-f177.google.com (mail-pf1-f177.google.com [209.85.210.177])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 62F903D82
	for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 21:39:29 +0000 (UTC)
Received: by mail-pf1-f177.google.com with SMTP id p8so199072pfh.8
        for <outreachy@lists.linux.dev>; Tue, 12 Apr 2022 14:39:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=cs-iitr-ac-in.20210112.gappssmtp.com; s=20210112;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to;
        bh=bLQcjDGKhIXsgI3kg+p3deTCXp6fiAePHqrTYzCq1yc=;
        b=sumJP7BhsOiuEYVVYxs0xoH8Hv6oHpbw4+p/TLUvVzH+noxYBMA0CrpRV56G/qk0iD
         AksSQ4nb8Sf0YhrCgghhpofbebnDsU2e6HsWCNuclVK11+EwkaC8uWZhLVZWZCNtWW+p
         oLRBuzqpp1AZFz6umZTy+6yVa/wSRZxfV9ev0DnKTAWLeeXGsFO37YL0v2sKqJXHp6Xc
         bHIdyjhhPwEvzaimT+vg1S43lGekgVC3GArHcZG/42u4f7PLZy0Te0gUzJtE4EeKV834
         ys/w7NLMpv2rwVG2TxlBm1g6miQtA+wZ9FzR3k+oBD1rHkfw0jhCCvOssrrfqSIweYgE
         gfrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20210112;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to;
        bh=bLQcjDGKhIXsgI3kg+p3deTCXp6fiAePHqrTYzCq1yc=;
        b=HVeKkmUfUBYy3sNQ24HFG3I3XxHpny1sYRlnz8ybnRTdVZ25wKohbaTewWQlYGKFC8
         4RFDphYWH589QcWhg79eoqnUa1WrWyy25KL0IodZvpInuonmZC45Q6O6yzHK7yn3e/m7
         6HA+4UoGXLJO0v7SkCDT3ldquc8COHyuOmE7bq0vmgnEgiwIKVrJQK7Lgd9MYkFLU2G9
         HHKJkPpPC7HSXwluTHFtKY2Xf626jF8PbqbHJ5jRjCgRog4udJlxAr0HOh6LgamI/lF7
         5w6UTEq8UztI75vsnZGu3fcey3J0D5Qb4ceLF90p4RHxndvWCDx7JtcNQ9wFyNMk5lhz
         6E8A==
X-Gm-Message-State: AOAM531oBbklS5dFgG0BrntAZ878cGtv8c2Lo4YW/hbOxV7usviJTSWN
	TaBbusSnZP73bCfmYInUd+xw9fLqbjTizXtzGgquHA==
X-Google-Smtp-Source: ABdhPJyC+THtJqkFEjRCKaNSu/fATuIIUk4NM36XzTIpQVOyiT/HQis6aFv0K+YdFA19yeRb2aPTWtmTE5qbPakZwoY=
X-Received: by 2002:a65:638d:0:b0:39d:74ad:ce0b with SMTP id
 h13-20020a65638d000000b0039d74adce0bmr7425613pgv.103.1649799568546; Tue, 12
 Apr 2022 14:39:28 -0700 (PDT)
Precedence: bulk
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
MIME-Version: 1.0
References: <20220412213539.2945-1-mahak_g@cs.iitr.ac.in>
In-Reply-To: <20220412213539.2945-1-mahak_g@cs.iitr.ac.in>
From: MAHAK GUPTA <mahak_g@cs.iitr.ac.in>
Date: Wed, 13 Apr 2022 03:08:50 +0530
Message-ID: <CANnaPbC2zZFb9fUBMuJg-9bNA4uPVk_d-Urk=rHodTS7mY1Q+A@mail.gmail.com>
Subject: Re: [PATCH v2] staging: r8188eu: correct multiple misspellings in
 driver r8188eu
To: Larry Finger <Larry.Finger@lwfinger.net>, Phillip Potter <phil@philpotter.co.uk>, 
	gregkh@linuxfoundation.org, linux-staging@lists.linux.dev, 
	linux-kernel@vger.kernel.org, outreachy@lists.linux.dev
Content-Type: text/plain; charset="UTF-8"

I don't know why git send email didn't send a new mail. Working on it. Sorry

On Wed, Apr 13, 2022 at 3:06 AM Mahak Gupta <mahak_g@cs.iitr.ac.in> wrote:
>
> Fix multiple spelling errors reported by checkpatch.
>
> Signed-off-by: Mahak Gupta <mahak_g@cs.iitr.ac.in>
> ---
>  drivers/staging/r8188eu/core/rtw_ioctl_set.c |  2 +-
>  drivers/staging/r8188eu/core/rtw_mlme.c      | 10 +++---
>  drivers/staging/r8188eu/core/rtw_mlme_ext.c  | 36 ++++++++++----------
>  drivers/staging/r8188eu/core/rtw_recv.c      |  8 ++---
>  drivers/staging/r8188eu/core/rtw_xmit.c      |  8 ++---
>  5 files changed, 32 insertions(+), 32 deletions(-)
>
> diff --git a/drivers/staging/r8188eu/core/rtw_ioctl_set.c b/drivers/staging/r8188eu/core/rtw_ioctl_set.c
> index 4b78e42d180d..9df6fb122bc5 100644
> --- a/drivers/staging/r8188eu/core/rtw_ioctl_set.c
> +++ b/drivers/staging/r8188eu/core/rtw_ioctl_set.c
> @@ -290,7 +290,7 @@ u8 rtw_set_802_11_infrastructure_mode(struct adapter *padapter,
>
>                 if ((*pold_state == Ndis802_11Infrastructure) || (*pold_state == Ndis802_11IBSS)) {
>                         if (check_fwstate(pmlmepriv, _FW_LINKED))
> -                               rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have chked whether  issue dis-assoc_cmd or not */
> +                               rtw_indicate_disconnect(padapter); /* will clr Linked_state; before this function, we must have checked whether  issue dis-assoc_cmd or not */
>                }
>
>                 *pold_state = networktype;
> diff --git a/drivers/staging/r8188eu/core/rtw_mlme.c b/drivers/staging/r8188eu/core/rtw_mlme.c
> index c90f36dee1ea..a2b42779bc87 100644
> --- a/drivers/staging/r8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/r8188eu/core/rtw_mlme.c
> @@ -193,7 +193,7 @@ void _rtw_free_network_nolock(struct        mlme_priv *pmlmepriv, struct wlan_network *
>  /*
>         return the wlan_network with the matching addr
>
> -       Shall be calle under atomic context... to avoid possible racing condition...
> +       Shall be called under atomic context... to avoid possible racing condition...
>  */
>  struct wlan_network *_rtw_find_network(struct __queue *scanned_queue, u8 *addr)
>  {
> @@ -329,7 +329,7 @@ void rtw_free_network_queue(struct adapter *dev, u8 isfreeall)
>  /*
>         return the wlan_network with the matching addr
>
> -       Shall be calle under atomic context... to avoid possible racing condition...
> +       Shall be called under atomic context... to avoid possible racing condition...
>  */
>  struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
>  {
> @@ -912,7 +912,7 @@ static struct sta_info *rtw_joinbss_update_stainfo(struct adapter *padapter, str
>                 }
>                 /*      Commented by Albert 2012/07/21 */
>                 /*      When doing the WPS, the wps_ie_len won't equal to 0 */
> -               /*      And the Wi-Fi driver shouldn't allow the data packet to be tramsmitted. */
> +               /*      And the Wi-Fi driver shouldn't allow the data packet to be transmitted. */
>                 if (padapter->securitypriv.wps_ie_len != 0) {
>                         psta->ieee8021x_blocked = true;
>                         padapter->securitypriv.wps_ie_len = 0;
> @@ -1304,7 +1304,7 @@ void rtw_stadel_event_callback(struct adapter *adapter, u8 *pbuf)
>  }
>
>  /*
> -* _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
> +* _rtw_join_timeout_handler - Timeout/failure handler for CMD JoinBss
>  * @adapter: pointer to struct adapter structure
>  */
>  void _rtw_join_timeout_handler (struct adapter *adapter)
> @@ -1339,7 +1339,7 @@ void _rtw_join_timeout_handler (struct adapter *adapter)
>  }
>
>  /*
> -* rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
> +* rtw_scan_timeout_handler - Timeout/Failure handler for CMD SiteSurvey
>  * @adapter: pointer to struct adapter structure
>  */
>  void rtw_scan_timeout_handler (struct adapter *adapter)
> diff --git a/drivers/staging/r8188eu/core/rtw_mlme_ext.c b/drivers/staging/r8188eu/core/rtw_mlme_ext.c
> index 474391bf7cb5..fd445aa09377 100644
> --- a/drivers/staging/r8188eu/core/rtw_mlme_ext.c
> +++ b/drivers/staging/r8188eu/core/rtw_mlme_ext.c
> @@ -156,7 +156,7 @@ static struct rt_channel_plan_map   RTW_ChannelPlanMap[RT_CHANNEL_DOMAIN_MAX] = {
>         {0x03}, /* 0x41, RT_CHANNEL_DOMAIN_GLOBAL_DOAMIN_2G */
>  };
>
> -static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the conbination for max channel numbers */
> +static struct rt_channel_plan_map RTW_CHANNEL_PLAN_MAP_REALTEK_DEFINE = {0x03}; /* use the combination for max channel numbers */
>
>  /*
>   * Search the @param channel_num in given @param channel_set
> @@ -1733,7 +1733,7 @@ void issue_p2p_GO_request(struct adapter *padapter, u8 *raddr)
>         p2pie[p2pielen++] = 0x09;       /*      WFA P2P v1.0 */
>
>         /*      Commented by Albert 20110306 */
> -       /*      According to the P2P Specification, the group negoitation request frame should contain 9 P2P attributes */
> +       /*      According to the P2P Specification, the group negotiation request frame should contain 9 P2P attributes */
>         /*      1. P2P Capability */
>         /*      2. Group Owner Intent */
>         /*      3. Configuration Timeout */
> @@ -2088,7 +2088,7 @@ static void issue_p2p_GO_response(struct adapter *padapter, u8 *raddr, u8 *frame
>         p2pie[p2pielen++] = 0x09;       /*      WFA P2P v1.0 */
>
>         /*      Commented by Albert 20100908 */
> -       /*      According to the P2P Specification, the group negoitation response frame should contain 9 P2P attributes */
> +       /*      According to the P2P Specification, the group negotiation response frame should contain 9 P2P attributes */
>         /*      1. Status */
>         /*      2. P2P Capability */
>         /*      3. Group Owner Intent */
> @@ -2384,7 +2384,7 @@ static void issue_p2p_GO_confirm(struct adapter *padapter, u8 *raddr, u8 result)
>         p2pie[p2pielen++] = 0x09;       /*      WFA P2P v1.0 */
>
>         /*      Commented by Albert 20110306 */
> -       /*      According to the P2P Specification, the group negoitation request frame should contain 5 P2P attributes */
> +       /*      According to the P2P Specification, the group negotiation request frame should contain 5 P2P attributes */
>         /*      1. Status */
>         /*      2. P2P Capability */
>         /*      3. Operating Channel */
> @@ -4009,7 +4009,7 @@ struct xmit_frame *alloc_mgtxmitframe(struct xmit_priv *pxmitpriv)
>
>  /****************************************************************************
>
> -Following are some TX fuctions for WiFi MLME
> +Following are some TX functions for WiFi MLME
>
>  *****************************************************************************/
>
> @@ -4611,7 +4611,7 @@ int issue_probereq_ex(struct adapter *padapter, struct ndis_802_11_ssid *pssid,
>         return ret;
>  }
>
> -/*  if psta == NULL, indiate we are station(client) now... */
> +/*  if psta == NULL, indicate we are station(client) now... */
>  void issue_auth(struct adapter *padapter, struct sta_info *psta, unsigned short status)
>  {
>         struct xmit_frame *pmgntframe;
> @@ -5010,7 +5010,7 @@ void issue_assocreq(struct adapter *padapter)
>                                 if (!padapter->registrypriv.wifi_spec) {
>                                         /* Commented by Kurt 20110629 */
>                                         /* In some older APs, WPS handshake */
> -                                       /* would be fail if we append vender extensions informations to AP */
> +                                       /* would be fail if we append vender extensions information to AP */
>                                         if (!memcmp(pIE->data, WPS_OUI, 4))
>                                                 pIE->Length = 14;
>                                 }
> @@ -5165,7 +5165,7 @@ void issue_assocreq(struct adapter *padapter)
>                 kfree(pmlmepriv->assoc_req);
>  }
>
> -/* when wait_ack is ture, this function shoule be called at process context */
> +/* when wait_ack is true, this function should be called at process context */
>  static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int wait_ack)
>  {
>         int ret = _FAIL;
> @@ -5234,7 +5234,7 @@ static int _issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned
>         return ret;
>  }
>
> -/* when wait_ms > 0 , this function shoule be called at process context */
> +/* when wait_ms > 0 , this function should be called at process context */
>  /* da == NULL for station mode */
>  int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int power_mode, int try_cnt, int wait_ms)
>  {
> @@ -5243,7 +5243,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
>         struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;
>         struct mlme_ext_info    *pmlmeinfo = &pmlmeext->mlmext_info;
>
> -       /* da == NULL, assum it's null data for sta to ap*/
> +       /* da == NULL, assume it's null data for sta to ap*/
>         if (!da)
>                 da = get_my_bssid(&pmlmeinfo->network);
>
> @@ -5267,7 +5267,7 @@ int issue_nulldata(struct adapter *padapter, unsigned char *da, unsigned int pow
>         return ret;
>  }
>
> -/* when wait_ack is ture, this function shoule be called at process context */
> +/* when wait_ack is true, this function should be called at process context */
>  static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int wait_ack)
>  {
>         int ret = _FAIL;
> @@ -5340,7 +5340,7 @@ static int _issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16
>         return ret;
>  }
>
> -/* when wait_ms > 0 , this function shoule be called at process context */
> +/* when wait_ms > 0 , this function should be called at process context */
>  /* da == NULL for station mode */
>  int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int try_cnt, int wait_ms)
>  {
> @@ -5349,7 +5349,7 @@ int issue_qos_nulldata(struct adapter *padapter, unsigned char *da, u16 tid, int
>         struct mlme_ext_priv    *pmlmeext = &padapter->mlmeextpriv;
>         struct mlme_ext_info    *pmlmeinfo = &pmlmeext->mlmext_info;
>
> -       /* da == NULL, assum it's null data for sta to ap*/
> +       /* da == NULL, assume it's null data for sta to ap*/
>         if (!da)
>                 da = get_my_bssid(&pmlmeinfo->network);
>
> @@ -5790,7 +5790,7 @@ void clear_beacon_valid_bit(struct adapter *adapter)
>
>  /****************************************************************************
>
> -Following are some utitity fuctions for WiFi MLME
> +Following are some utility functions for WiFi MLME
>
>  *****************************************************************************/
>
> @@ -5888,7 +5888,7 @@ void site_survey(struct adapter *padapter)
>                 } else {
>                         /*  20100721:Interrupt scan operation here. */
>                         /*  For SW antenna diversity before link, it needs to switch to another antenna and scan again. */
> -                       /*  It compares the scan result and select beter one to do connection. */
> +                       /*  It compares the scan result and select better one to do connection. */
>                         if (AntDivBeforeLink8188E(padapter)) {
>                                 pmlmeext->sitesurvey_res.bss_cnt = 0;
>                                 pmlmeext->sitesurvey_res.channel_idx = -1;
> @@ -6109,7 +6109,7 @@ void start_create_ibss(struct adapter *padapter)
>         /* update wireless mode */
>         update_wireless_mode(padapter);
>
> -       /* udpate capability */
> +       /* update capability */
>         caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
>         update_capinfo(padapter, caps);
>         if (caps & cap_IBSS) {/* adhoc master */
> @@ -6160,7 +6160,7 @@ void start_clnt_join(struct adapter *padapter)
>         /* update wireless mode */
>         update_wireless_mode(padapter);
>
> -       /* udpate capability */
> +       /* update capability */
>         caps = rtw_get_capability((struct wlan_bssid_ex *)pnetwork);
>         update_capinfo(padapter, caps);
>         if (caps & cap_ESS) {
> @@ -6740,7 +6740,7 @@ void mlmeext_joinbss_event_callback(struct adapter *padapter, int join_res)
>         /* BCN interval */
>         rtw_write16(padapter, REG_BCN_INTERVAL, pmlmeinfo->bcn_interval);
>
> -       /* udpate capability */
> +       /* update capability */
>         update_capinfo(padapter, pmlmeinfo->capability);
>
>         /* WMM, Update EDCA param */
> diff --git a/drivers/staging/r8188eu/core/rtw_recv.c b/drivers/staging/r8188eu/core/rtw_recv.c
> index 91a6e0f035f4..a3f71697f6d7 100644
> --- a/drivers/staging/r8188eu/core/rtw_recv.c
> +++ b/drivers/staging/r8188eu/core/rtw_recv.c
> @@ -877,7 +877,7 @@ static void validate_recv_ctrl_frame(struct adapter *padapter,
>                         if (psta->sleepq_len == 0) {
>                                 pstapriv->tim_bitmap &= ~BIT(psta->aid);
>
> -                               /* upate BCN for TIM IE */
> +                               /* update BCN for TIM IE */
>                                 /* update_BCNTIM(padapter); */
>                                 update_beacon(padapter, _TIM_IE_, NULL, false);
>                         }
> @@ -891,7 +891,7 @@ static void validate_recv_ctrl_frame(struct adapter *padapter,
>
>                                 pstapriv->tim_bitmap &= ~BIT(psta->aid);
>
> -                               /* upate BCN for TIM IE */
> +                               /* update BCN for TIM IE */
>                                 /* update_BCNTIM(padapter); */
>                                 update_beacon(padapter, _TIM_IE_, NULL, false);
>                         }
> @@ -1810,13 +1810,13 @@ void rtw_signal_stat_timer_hdl(struct timer_list *t)
>         } else {
>                 if (recvpriv->signal_strength_data.update_req == 0) {/*  update_req is clear, means we got rx */
>                         avg_signal_strength = recvpriv->signal_strength_data.avg_val;
> -                       /*  after avg_vals are accquired, we can re-stat the signal values */
> +                       /*  after avg_vals are acquired, we can re-stat the signal values */
>                         recvpriv->signal_strength_data.update_req = 1;
>                 }
>
>                 if (recvpriv->signal_qual_data.update_req == 0) {/*  update_req is clear, means we got rx */
>                         avg_signal_qual = recvpriv->signal_qual_data.avg_val;
> -                       /*  after avg_vals are accquired, we can re-stat the signal values */
> +                       /*  after avg_vals are acquired, we can re-stat the signal values */
>                         recvpriv->signal_qual_data.update_req = 1;
>                 }
>
> diff --git a/drivers/staging/r8188eu/core/rtw_xmit.c b/drivers/staging/r8188eu/core/rtw_xmit.c
> index 029b994e1b71..2a686b5c65b1 100644
> --- a/drivers/staging/r8188eu/core/rtw_xmit.c
> +++ b/drivers/staging/r8188eu/core/rtw_xmit.c
> @@ -958,7 +958,7 @@ s32 rtw_xmitframe_coalesce(struct adapter *padapter, struct sk_buff *pkt, struct
>                 }
>
>                 if (bmcst) {
> -                       /*  don't do fragment to broadcat/multicast packets */
> +                       /*  don't do fragment to broadcast/multicast packets */
>                         mem_sz = _rtw_pktfile_read(&pktfile, pframe, pattrib->pktlen);
>                 } else {
>                         mem_sz = _rtw_pktfile_read(&pktfile, pframe, mpdu_len);
> @@ -1768,7 +1768,7 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
>                         pstapriv->tim_bitmap |= BIT(0);/*  */
>                         pstapriv->sta_dz_bitmap |= BIT(0);
>
> -                       update_beacon(padapter, _TIM_IE_, NULL, false);/* tx bc/mc packets after upate bcn */
> +                       update_beacon(padapter, _TIM_IE_, NULL, false);/* tx bc/mc packets after update bcn */
>
>                         ret = true;
>                 }
> @@ -1818,7 +1818,7 @@ int xmitframe_enqueue_for_sleeping_sta(struct adapter *padapter, struct xmit_fra
>                                 pstapriv->tim_bitmap |= BIT(psta->aid);
>
>                                 if (psta->sleepq_len == 1) {
> -                                       /* upate BCN for TIM IE */
> +                                       /* update BCN for TIM IE */
>                                         update_beacon(padapter, _TIM_IE_, NULL, false);
>                                 }
>                         }
> @@ -2087,7 +2087,7 @@ void xmit_delivery_enabled_frames(struct adapter *padapter, struct sta_info *pst
>                 if ((psta->sleepq_ac_len == 0) && (!psta->has_legacy_ac) && (wmmps_ac)) {
>                         pstapriv->tim_bitmap &= ~BIT(psta->aid);
>
> -                       /* upate BCN for TIM IE */
> +                       /* update BCN for TIM IE */
>                         update_beacon(padapter, _TIM_IE_, NULL, false);
>                 }
>         }
> --
> 2.17.1
>
