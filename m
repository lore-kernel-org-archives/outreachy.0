X-GM-THRID: 5925107662848
X-Received: by 10.152.6.41 with SMTP id x9mr3901299lax.10.1425311253812;
        Mon, 02 Mar 2015 07:47:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.7.75 with SMTP id da11ls424954lad.95.gmail; Mon, 02 Mar
 2015 07:47:33 -0800 (PST)
X-Received: by 10.152.1.5 with SMTP id 5mr3904618lai.4.1425311253327;
        Mon, 02 Mar 2015 07:47:33 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id ta1si690626wic.1.2015.03.02.07.47.33
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=RC4-SHA bits=128/128);
        Mon, 02 Mar 2015 07:47:33 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mail=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.09,676,1418079600"; 
   d="scan'208";a="124013883"
Received: from wifi-edu-218.cc.umanitoba.ca ([140.193.160.238])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-SHA; 02 Mar 2015 16:47:31 +0100
Date: Mon, 2 Mar 2015 09:47:29 -0600 (CST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: =?ISO-8859-15?Q?Hatice_ERT=DCRK?= <haticeerturk27@gmail.com>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging:rtl8192u: ieee80211: Add
 space before that open '('
In-Reply-To: <c6df1928-e079-4421-a0af-27f6e643c53a@googlegroups.com>
Message-ID: <alpine.DEB.2.10.1503020947160.4236@hadrien>
References: <1425310334-16039-1-git-send-email-haticeerturk27@gmail.com> <alpine.DEB.2.10.1503020936000.4236@hadrien> <c6df1928-e079-4421-a0af-27f6e643c53a@googlegroups.com>
User-Agent: Alpine 2.10 (DEB 1266 2009-07-14)
MIME-Version: 1.0
Content-Type: MULTIPART/MIXED; BOUNDARY="8323329-2040829514-1425311252=:4236"

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2040829514-1425311252=:4236
Content-Type: TEXT/PLAIN; charset=UTF-8
Content-Transfer-Encoding: 8BIT

On Mon, 2 Mar 2015, Hatice ERTÜRK wrote:

> A single package have to be both?

Yes, I think it would be best to put both in a single patch.

julia

>
>
> 2 Mart 2015 Pazartesi 17:36:35 UTC+2 tarihinde Julia Lawall yazdı:
>       On Mon, 2 Mar 2015, Hatice ERTÜRK wrote:
>
>       > Space prohibited before that open parenthesis '(' . That's why
>       add space
>       > before that open parenthesis.
>
>       There are a lot fo spacing issues related to { on the same lines
>       as these
>       parenthesis problems.  You should fix these at the same time.
>
>       julia
>
>       > Signed-off-by: Hatice ERTURK <haticee...@gmail.com>
>       > ---
>       >  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 232
>       ++++++++++-----------
>       >  1 file changed, 116 insertions(+), 116 deletions(-)
>       >
>       > diff --git
>       a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>       b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>       > index 71b7bb8..057d4d1 100644
>       > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>       > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c
>       > @@ -112,7 +112,7 @@ static void ieee80211_WMM_Info(struct
>       ieee80211_device *ieee, u8 **tag_p)
>       >          *tag++ = 0x00;
>       >          *tag++ = 0x01;
>       >  #ifdef SUPPORT_USPD
>       > -        if(ieee->current_network.wmm_info & 0x80) {
>       > +        if (ieee->current_network.wmm_info & 0x80) {
>       >                  *tag++ = 0x0f|MAX_SP_Len;
>       >          } else {
>       >                  *tag++ = MAX_SP_Len;
>       > @@ -165,7 +165,7 @@ static struct sk_buff *dequeue_mgmt(struct
>       ieee80211_device *ieee)
>       >  {
>       >          struct sk_buff *ret;
>       >
>       > -        if(ieee->mgmt_queue_tail == ieee->mgmt_queue_head)
>       > +        if (ieee->mgmt_queue_tail == ieee->mgmt_queue_head)
>       >                  return NULL;
>       >
>       >          ret = ieee->mgmt_queue_ring[ieee->mgmt_queue_tail];
>       > @@ -187,14 +187,14 @@ static u8
>       MgntQuery_MgntFrameTxRate(struct ieee80211_device *ieee)
>       >          u8 rate;
>       >
>       >          /* 2008/01/25 MH For broadcom, MGNT frame set as OFDM
>       6M. */
>       > -        if(pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)
>       > +        if (pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)
>       >                  rate = 0x0c;
>       >          else
>       >                  rate = ieee->basic_rate & 0x7f;
>       >
>       > -        if(rate == 0){
>       > +        if (rate == 0){
>       >                  /* 2005.01.26, by rcnjko. */
>       > -                if(ieee->mode == IEEE_A||
>       > +                if (ieee->mode == IEEE_A||
>       >                     ieee->mode== IEEE_N_5G||
>       >                     (ieee->mode==
>       IEEE_N_24G&&!pHTInfo->bCurSuppCCK))
>       >                          rate = 0x0c;
>       > @@ -237,8 +237,8 @@ inline void softmac_mgmt_xmit(struct
>       sk_buff *skb, struct ieee80211_device *ieee
>       >          tcb_desc->bTxDisableRateFallBack = 1;
>       >          tcb_desc->bTxUseDriverAssingedRate = 1;
>       >
>       > -        if(single){
>       > -                if(ieee->queue_stop){
>       > +        if (single){
>       > +                if (ieee->queue_stop){
>       >                          enqueue_mgmt(ieee, skb);
>       >                  }else{
>       >                          header->seq_ctl =
>       cpu_to_le16(ieee->seq_ctrl[0]<<4);
>       > @@ -267,7 +267,7 @@ inline void softmac_mgmt_xmit(struct
>       sk_buff *skb, struct ieee80211_device *ieee
>       >                          ieee->seq_ctrl[0]++;
>       >
>       >                  /* check whether the managed packet queued
>       greater than 5 */
>       >-                if(!ieee->check_nic_enough_desc(ieee->dev,tcb_desc->queue_
>       index)||\
>       > +                if
>       (!ieee->check_nic_enough_desc(ieee->dev,tcb_desc->queue_index)||\
>       >                                 (skb_queue_len(&ieee->skb_waitQ[tcb_desc->
>       queue_index]) != 0)||\
>       >                                  (ieee->queue_stop) ) {
>       >                          /* insert the skb packet to the
>       management queue */
>       > @@ -293,7 +293,7 @@ inline void softmac_ps_mgmt_xmit(struct
>       sk_buff *skb, struct ieee80211_device *i
>       >                  (struct ieee80211_hdr_3addr  *) skb->data;
>       >
>       >
>       > -        if(single){
>       > +        if (single){
>       >
>       >                  header->seq_ctl =
>       cpu_to_le16(ieee->seq_ctrl[0] << 4);
>       >
>       > @@ -364,7 +364,7 @@ struct sk_buff
>       *ieee80211_get_beacon_(struct ieee80211_device *ieee);
>       >  static void ieee80211_send_beacon(struct ieee80211_device
>       *ieee)
>       >  {
>       >          struct sk_buff *skb;
>       > -        if(!ieee->ieee_up)
>       > +        if (!ieee->ieee_up)
>       >                  return;
>       >          /* unsigned long flags; */
>       >          skb = ieee80211_get_beacon_(ieee);
>       > @@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct
>       ieee80211_device *ieee)
>       >                  (MSECS( ieee->current_network.beacon_interval
>       -5));
>       >
>       >          spin_lock_irqsave(&ieee->beacon_lock,flags); */
>       > -        if(ieee->beacon_txing && ieee->ieee_up){
>       > +        if (ieee->beacon_txing && ieee->ieee_up){
>       >                  /* if(!timer_pending(&ieee->beacon_timer))
>       >                          add_timer(&ieee->beacon_timer); */
>       >                 mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->current
>       _network.beacon_interval-5)));
>       > @@ -430,14 +430,14 @@ void
>       ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
>       >          memcpy(channel_map,
>       GET_DOT11D_INFO(ieee)->channel_map, MAX_CHANNEL_NUMBER+1);
>       >          down(&ieee->scan_sem);
>       >
>       > -        while(1)
>       > +        while (1)
>       >          {
>       >
>       >                  do{
>       >                          ch++;
>       >                          if (ch > MAX_CHANNEL_NUMBER)
>       >                                  goto out; /* scan completed
>       */
>       > -                }while(!channel_map[ch]);
>       > +                }while (!channel_map[ch]);
>       >
>       >                  /* this function can be called in two
>       situations
>       >                   * 1- We have switched to ad-hoc mode and we
>       are
>       > @@ -461,13 +461,13 @@ void
>       ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
>       >                  if (ieee->state == IEEE80211_LINKED)
>       >                          goto out;
>       >                  ieee->set_chan(ieee->dev, ch);
>       > -                if(channel_map[ch] == 1)
>       > +                if (channel_map[ch] == 1)
>       >                  ieee80211_send_probe_requests(ieee);
>       >
>       >                  /* this prevent excessive time wait when we
>       >                   * need to wait for a syncro scan to end..
>       >                   */
>       > -                if(ieee->state < IEEE80211_LINKED)
>       > +                if (ieee->state < IEEE80211_LINKED)
>       >                          ;
>       >                  else
>       >                  if (ieee->sync_scan_hurryup)
>       > @@ -478,13 +478,13 @@ void
>       ieee80211_softmac_scan_syncro(struct ieee80211_device *ieee)
>       >
>       >          }
>       >  out:
>       > -        if(ieee->state < IEEE80211_LINKED){
>       > +        if (ieee->state < IEEE80211_LINKED){
>       >                  ieee->actscanning = false;
>       >                  up(&ieee->scan_sem);
>       >          }
>       >          else{
>       >          ieee->sync_scan_hurryup = 0;
>       > -        if(IS_DOT11D_ENABLE(ieee))
>       > +        if (IS_DOT11D_ENABLE(ieee))
>       >                  DOT11D_ScanComplete(ieee);
>       >          up(&ieee->scan_sem);
>       >  }
>       > @@ -498,7 +498,7 @@ static void
>       ieee80211_softmac_scan_wq(struct work_struct *work)
>       >          static short watchdog;
>       >          u8 channel_map[MAX_CHANNEL_NUMBER+1];
>       >          memcpy(channel_map,
>       GET_DOT11D_INFO(ieee)->channel_map, MAX_CHANNEL_NUMBER+1);
>       > -        if(!ieee->ieee_up)
>       > +        if (!ieee->ieee_up)
>       >                  return;
>       >          down(&ieee->scan_sem);
>       >          do{
>       > @@ -512,11 +512,11 @@ static void
>       ieee80211_softmac_scan_wq(struct work_struct *work)
>       >                                  goto out; /* no good chans */
>       >                          }
>       >                  }
>       > -        }while(!channel_map[ieee->current_network.channel]);
>       > +        }while (!channel_map[ieee->current_network.channel]);
>       >          if (ieee->scanning == 0 )
>       >                  goto out;
>       >          ieee->set_chan(ieee->dev,
>       ieee->current_network.channel);
>       > -        if(channel_map[ieee->current_network.channel] == 1)
>       > +        if (channel_map[ieee->current_network.channel] == 1)
>       >                  ieee80211_send_probe_requests(ieee);
>       >
>       >
>       > @@ -525,7 +525,7 @@ static void
>       ieee80211_softmac_scan_wq(struct work_struct *work)
>       >          up(&ieee->scan_sem);
>       >          return;
>       >  out:
>       > -        if(IS_DOT11D_ENABLE(ieee))
>       > +        if (IS_DOT11D_ENABLE(ieee))
>       >                  DOT11D_ScanComplete(ieee);
>       >          ieee->actscanning = false;
>       >          watchdog = 0;
>       > @@ -562,7 +562,7 @@ static void ieee80211_beacons_stop(struct
>       ieee80211_device *ieee)
>       >
>       >  void ieee80211_stop_send_beacons(struct ieee80211_device
>       *ieee)
>       >  {
>       > -        if(ieee->stop_send_beacons)
>       > +        if (ieee->stop_send_beacons)
>       >                  ieee->stop_send_beacons(ieee->dev);
>       >          if (ieee->softmac_features & IEEE_SOFTMAC_BEACONS)
>       >                  ieee80211_beacons_stop(ieee);
>       > @@ -571,9 +571,9 @@
>       EXPORT_SYMBOL(ieee80211_stop_send_beacons);
>       >
>       >  void ieee80211_start_send_beacons(struct ieee80211_device
>       *ieee)
>       >  {
>       > -        if(ieee->start_send_beacons)
>       > +        if (ieee->start_send_beacons)
>       >                  ieee->start_send_beacons(ieee->dev,
>       ieee->basic_rate);
>       > -        if(ieee->softmac_features & IEEE_SOFTMAC_BEACONS)
>       > +        if (ieee->softmac_features & IEEE_SOFTMAC_BEACONS)
>       >                  ieee80211_beacons_start(ieee);
>       >  }
>       >  EXPORT_SYMBOL(ieee80211_start_send_beacons);
>       > @@ -609,9 +609,9 @@ EXPORT_SYMBOL(ieee80211_stop_scan);
>       >  /* called with ieee->lock held */
>       >  static void ieee80211_start_scan(struct ieee80211_device
>       *ieee)
>       >  {
>       > -        if(IS_DOT11D_ENABLE(ieee) )
>       > +        if (IS_DOT11D_ENABLE(ieee) )
>       >          {
>       > -                if(IS_COUNTRY_IE_VALID(ieee))
>       > +                if (IS_COUNTRY_IE_VALID(ieee))
>       >                  {
>       >                          RESET_CIE_WATCHDOG(ieee);
>       >                  }
>       > @@ -629,9 +629,9 @@ static void ieee80211_start_scan(struct
>       ieee80211_device *ieee)
>       >  /* called with wx_sem held */
>       >  void ieee80211_start_scan_syncro(struct ieee80211_device
>       *ieee)
>       >  {
>       > -        if(IS_DOT11D_ENABLE(ieee) )
>       > +        if (IS_DOT11D_ENABLE(ieee) )
>       >          {
>       > -                if(IS_COUNTRY_IE_VALID(ieee))
>       > +                if (IS_COUNTRY_IE_VALID(ieee))
>       >                  {
>       >                          RESET_CIE_WATCHDOG(ieee);
>       >                  }
>       > @@ -670,11 +670,11 @@ inline struct sk_buff
>       *ieee80211_authentication_req(struct ieee80211_network *be
>       >          memcpy(auth->header.addr3, beacon->bssid, ETH_ALEN);
>       >
>       >          /* auth->algorithm = ieee->open_wep ? WLAN_AUTH_OPEN
>       : WLAN_AUTH_SHARED_KEY; */
>       > -        if(ieee->auth_mode == 0)
>       > +        if (ieee->auth_mode == 0)
>       >                  auth->algorithm = WLAN_AUTH_OPEN;
>       > -        else if(ieee->auth_mode == 1)
>       > +        else if (ieee->auth_mode == 1)
>       >                  auth->algorithm = WLAN_AUTH_SHARED_KEY;
>       > -        else if(ieee->auth_mode == 2)
>       > +        else if (ieee->auth_mode == 2)
>       >                  auth->algorithm = WLAN_AUTH_OPEN;/* 0x80; */
>       >          printk("=================>%s():auth->algorithm is
>       %d\n",__func__,auth->algorithm);
>       >          auth->transaction = cpu_to_le16(ieee->associate_seq);
>       > @@ -712,14 +712,14 @@ static struct sk_buff
>       *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>       >          u8 *tmp_generic_ie_buf=NULL;
>       >          u8 tmp_generic_ie_len=0;
>       >
>       > -        if(rate_ex_len > 0) rate_ex_len+=2;
>       > +        if (rate_ex_len > 0) rate_ex_len+=2;
>       >
>       > -        if(ieee->current_network.capability &
>       WLAN_CAPABILITY_IBSS)
>       > +        if (ieee->current_network.capability &
>       WLAN_CAPABILITY_IBSS)
>       >                  atim_len = 4;
>       >          else
>       >                  atim_len = 0;
>       >
>       > -        if(ieee80211_is_54g(&ieee->current_network))
>       > +        if (ieee80211_is_54g(&ieee->current_network))
>       >                  erp_len = 3;
>       >          else
>       >                  erp_len = 0;
>       > @@ -739,7 +739,7 @@ static struct sk_buff
>       *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>       >
>                HTConstructInfoElement(ieee,tmp_ht_info_buf,&tmp_ht_info_len,
>       encrypt);
>       >
>       >
>       > -        if(pHTInfo->bRegRT2RTAggregation)
>       > +        if (pHTInfo->bRegRT2RTAggregation)
>       >          {
>       >                  tmp_generic_ie_buf =
>       ieee->pHTInfo->szRT2RTAggBuffer;
>       >                  tmp_generic_ie_len =
>       sizeof(ieee->pHTInfo->szRT2RTAggBuffer);
>       > @@ -776,7 +776,7 @@ static struct sk_buff
>       *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>       >          beacon_buf->capability |=
>       >                  cpu_to_le16(ieee->current_network.capability
>       & WLAN_CAPABILITY_SHORT_PREAMBLE); /* add short preamble here */
>       >
>       > -        if(ieee->short_slot &&
>       (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_SLOT))
>       > +        if (ieee->short_slot &&
>       (ieee->current_network.capability & WLAN_CAPABILITY_SHORT_SLOT))
>       >                  beacon_buf->capability |=
>       cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
>       >
>       >          crypt = ieee->crypt[ieee->tx_keyidx];
>       > @@ -803,7 +803,7 @@ static struct sk_buff
>       *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>       >          *(tag++) = 1;
>       >          *(tag++) = ieee->current_network.channel;
>       >
>       > -        if(atim_len){
>       > +        if (atim_len){
>       >                  *(tag++) = MFIE_TYPE_IBSS_SET;
>       >                  *(tag++) = 2;
>       >
>       > @@ -812,12 +812,12 @@ static struct sk_buff
>       *ieee80211_probe_resp(struct ieee80211_device *ieee, u8 *d
>       >                  tag+=2;
>       >          }
>       >
>       > -        if(erp_len){
>       > +        if (erp_len){
>       >                  *(tag++) = MFIE_TYPE_ERP;
>       >                  *(tag++) = 1;
>       >                  *(tag++) = erpinfo_content;
>       >          }
>       > -        if(rate_ex_len){
>       > +        if (rate_ex_len){
>       >                  *(tag++) = MFIE_TYPE_RATES_EX;
>       >                  *(tag++) = rate_ex_len-2;
>       >                  memcpy(tag, ieee->current_network.rates_ex,
>       rate_ex_len-2);
>       > @@ -870,7 +870,7 @@ static struct sk_buff
>       *ieee80211_assoc_resp(struct ieee80211_device *ieee,
>       >                  WLAN_CAPABILITY_BSS : WLAN_CAPABILITY_IBSS);
>       >
>       >
>       > -        if(ieee->short_slot)
>       > +        if (ieee->short_slot)
>       >                  assoc->capability |=
>       cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
>       >
>       >          if (ieee->host_encrypt)
>       > @@ -1016,12 +1016,12 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >          encrypt = ieee->host_encrypt && crypt && crypt->ops
>       && ((0 == strcmp(crypt->ops->name,"WEP") || wpa_ie_len));
>       >
>       >          /* Include High Throuput capability && Realtek
>       proprietary */
>       >
>       -        if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
>       > +        if
>       (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)
>       >          {
>       >                  ht_cap_buf = (u8
>       *)&(ieee->pHTInfo->SelfHTCap);
>       >                  ht_cap_len =
>       sizeof(ieee->pHTInfo->SelfHTCap);
>       >                  HTConstructCapabilityElement(ieee,
>       ht_cap_buf, &ht_cap_len, encrypt);
>       > -                if(ieee->pHTInfo->bCurrentRT2RTAggregation)
>       > +                if (ieee->pHTInfo->bCurrentRT2RTAggregation)
>       >                  {
>       >                          realtek_ie_buf =
>       ieee->pHTInfo->szRT2RTAggBuffer;
>       >                          realtek_ie_len = sizeof(
>       ieee->pHTInfo->szRT2RTAggBuffer);
>       > @@ -1029,16 +1029,16 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >
>       >                  }
>       >          }
>       > -        if(ieee->qos_support){
>       > +        if (ieee->qos_support){
>       >                  wmm_info_len =
>       beacon->qos_data.supported?9:0;
>       >          }
>       >
>       >
>       > -        if(beacon->bCkipSupported)
>       > +        if (beacon->bCkipSupported)
>       >          {
>       >                  ckip_ie_len = 30+2;
>       >          }
>       > -        if(beacon->bCcxRmEnable)
>       > +        if (beacon->bCcxRmEnable)
>       >          {
>       >                  ccxrm_ie_len = 6+2;
>       >          }
>       > @@ -1098,7 +1098,7 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >          if (beacon->capability &
>       WLAN_CAPABILITY_SHORT_PREAMBLE)
>       >                  hdr->capability |=
>       cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE); /* add
>       short_preamble here */
>       >
>       > -        if(ieee->short_slot)
>       > +        if (ieee->short_slot)
>       >                  hdr->capability |=
>       cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);
>       >          if (wmm_info_len) //QOS
>       >                  hdr->capability |=
>       cpu_to_le16(WLAN_CAPABILITY_QOS);
>       > @@ -1142,7 +1142,7 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >                  tag += osCcxAironetIE.Length;
>       >          }
>       >
>       > -        if(beacon->bCcxRmEnable)
>       > +        if (beacon->bCcxRmEnable)
>       >          {
>       >                  static u8 CcxRmCapBuf[] = {0x00, 0x40, 0x96,
>       0x01, 0x01, 0x00};
>       >                  OCTET_STRING osCcxRmCap;
>       > @@ -1169,8 +1169,8 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >                  tag += osCcxVerNum.Length;
>       >          }
>       >          /* HT cap element */
>       >
>       -        if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
>       > -                if(ieee->pHTInfo->ePeerHTSpecVer !=
>       HT_SPEC_VER_EWC)
>       > +        if
>       (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
>       > +                if (ieee->pHTInfo->ePeerHTSpecVer !=
>       HT_SPEC_VER_EWC)
>       >                  {
>       >                          tag = skb_put(skb, ht_cap_len);
>       >                          *tag++ = MFIE_TYPE_HT_CAP;
>       > @@ -1188,18 +1188,18 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >          }
>       >
>       >          tag = skb_put(skb, wmm_info_len);
>       > -        if(wmm_info_len) {
>       > +        if (wmm_info_len) {
>       >            ieee80211_WMM_Info(ieee, &tag);
>       >          }
>       >  #ifdef THOMAS_TURBO
>       >          tag = skb_put(skb, turbo_info_len);
>       > -        if(turbo_info_len) {
>       > +        if (turbo_info_len) {
>       >                  ieee80211_TURBO_Info(ieee, &tag);
>       >          }
>       >  #endif
>       >
>       >
>       -        if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
>       > -                if(ieee->pHTInfo->ePeerHTSpecVer ==
>       HT_SPEC_VER_EWC)
>       > +        if
>       (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){
>       > +                if (ieee->pHTInfo->ePeerHTSpecVer ==
>       HT_SPEC_VER_EWC)
>       >                  {
>       >                          tag = skb_put(skb, ht_cap_len);
>       >                          *tag++ = MFIE_TYPE_GENERIC;
>       > @@ -1208,7 +1208,7 @@ inline struct sk_buff
>       *ieee80211_association_req(struct ieee80211_network *beaco
>       >                          tag += ht_cap_len -2;
>       >                  }
>       >
>       > -                if(ieee->pHTInfo->bCurrentRT2RTAggregation){
>       > +                if (ieee->pHTInfo->bCurrentRT2RTAggregation){
>       >                          tag = skb_put(skb, realtek_ie_len);
>       >                          *tag++ = MFIE_TYPE_GENERIC;
>       >                          *tag++ = realtek_ie_len - 2;
>       > @@ -1274,7 +1274,7 @@ static void
>       ieee80211_associate_step1(struct ieee80211_device *ieee)
>       >                  /* printk(KERN_WARNING "Sending
>       authentication request\n"); */
>       >                  softmac_mgmt_xmit(skb, ieee);
>       >                  /* BUGON when you try to add_timer twice,
>       using mod_timer may be better, john0709 */
>       > -                if(!timer_pending(&ieee->associate_timer)){
>       > +                if (!timer_pending(&ieee->associate_timer)){
>       >                          ieee->associate_timer.expires =
>       jiffies + (HZ / 2);
>       >                          add_timer(&ieee->associate_timer);
>       >                  }
>       > @@ -1337,7 +1337,7 @@ static void
>       ieee80211_associate_complete_wq(struct work_struct *work)
>       >  {
>       >          struct ieee80211_device *ieee = container_of(work,
>       struct ieee80211_device, associate_complete_wq);
>       >          printk(KERN_INFO "Associated successfully\n");
>       > -        if(ieee80211_is_54g(&ieee->current_network) &&
>       > +        if (ieee80211_is_54g(&ieee->current_network) &&
>       >                  (ieee->modulation &
>       IEEE80211_OFDM_MODULATION)){
>       >
>       >                  ieee->rate = 108;
>       > @@ -1359,17 +1359,17 @@ static void
>       ieee80211_associate_complete_wq(struct work_struct *work)
>       >          }
>       >          ieee->LinkDetectInfo.SlotNum = 2 * (1 +
>       ieee->current_network.beacon_interval/500);
>       >          /* To prevent the immediately calling watch_dog after
>       association. */
>       >-        if(ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInf
>       o.NumRecvDataInPeriod==0 )
>       > +        if(ieee->LinkDetectInfo.NumRecvBcnInPeriod==0||ieee->LinkDetectInfo.NumRecvDa
>       taInPeriod==0 )
>       >          {
>       >                  ieee->LinkDetectInfo.NumRecvBcnInPeriod = 1;
>       >                  ieee->LinkDetectInfo.NumRecvDataInPeriod= 1;
>       >          }
>       >          ieee->link_change(ieee->dev);
>       > -        if(ieee->is_silent_reset == 0){
>       > +        if (ieee->is_silent_reset == 0){
>       >                  printk("============>normal associate\n");
>       >          notify_wx_assoc_event(ieee);
>       >          }
>       > -        else if(ieee->is_silent_reset == 1)
>       > +        else if (ieee->is_silent_reset == 1)
>       >          {
>       >                  printk("==================>silent reset
>       associate\n");
>       >                  ieee->is_silent_reset = 0;
>       > @@ -1477,7 +1477,7 @@ inline void
>       ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct
>       ieee
>       >                                          /* Join the network
>       for the first time */
>       >                                          ieee->AsocRetryCount
>       = 0;
>       >                                          /* for HT by amy
>       080514 */
>       >-                                        if((ieee->current_network.qos_data
>       .supported == 1) &&
>       > +                                        if
>       ((ieee->current_network.qos_data.supported == 1) &&
>       >                                            /*
>       (ieee->pHTInfo->bEnableHT &&
>       ieee->current_network.bssht.bdSupportHT)) */
>       >                                            
>       ieee->current_network.bssht.bdSupportHT)
>       >  /*WB, 2008.09.09:bCurrentHTSupport and bEnableHT two flags
>       are going to put together to check whether we are in HT now, so
>       needn't to check bEnableHT flags here. That's is to say we will
>       set to HT support whenever joined AP has the ability to support
>       HT. And whether we are in HT or not, please check
>       bCurrentHTSupport&&bEnableHT now please.*/
>       > @@ -1493,7 +1493,7 @@ inline void
>       ieee80211_softmac_new_net(struct ieee80211_device *ieee, struct
>       ieee
>       >                                          ieee->state =
>       IEEE80211_ASSOCIATING;
>       >                                          queue_work(ieee->wq,
>       &ieee->associate_procedure_wq);
>       >                                  }else{
>       >-                                        if(ieee80211_is_54g(&ieee->current
>       _network) &&
>       > +                                        if
>       (ieee80211_is_54g(&ieee->current_network) &&
>       >
>                                                        (ieee->modulation
>       & IEEE80211_OFDM_MODULATION)){
>       >                                                  ieee->rate =
>       108;
>       >                                                 ieee->SetWirelessMode(ieee
>       ->dev, IEEE_G);
>       > @@ -1548,10 +1548,10 @@ static inline u16 auth_parse(struct
>       sk_buff *skb, u8 **challenge, int *chlen)
>       >          }
>       >          *challenge = NULL;
>       >          a = (struct ieee80211_authentication *) skb->data;
>       > -        if(skb->len > (sizeof(struct
>       ieee80211_authentication) +3)){
>       > +        if (skb->len > (sizeof(struct
>       ieee80211_authentication) +3)){
>       >                  t = skb->data + sizeof(struct
>       ieee80211_authentication);
>       >
>       > -                if(*(t++) == MFIE_TYPE_CHALLENGE){
>       > +                if (*(t++) == MFIE_TYPE_CHALLENGE){
>       >                          *chlen = *(t++);
>       >                          *challenge = kmemdup(t, *chlen,
>       GFP_ATOMIC);
>       >                          if (!*challenge)
>       > @@ -1652,7 +1652,7 @@ static inline u16 assoc_parse(struct
>       ieee80211_device *ieee, struct sk_buff *skb
>       >          *aid = le16_to_cpu(response_head->aid) & 0x3fff;
>       >
>       >          status_code = le16_to_cpu(response_head->status);
>       > -        if((status_code==WLAN_STATUS_ASSOC_DENIED_RATES || \
>       > +        if ((status_code==WLAN_STATUS_ASSOC_DENIED_RATES || \
>       >             status_code==WLAN_STATUS_CAPS_UNSUPPORTED)&&
>       >             ((ieee->mode == IEEE_G) &&
>       >              (ieee->current_network.mode == IEEE_N_24G) &&
>       > @@ -1737,34 +1737,34 @@ static short
>       ieee80211_sta_ps_sleep(struct ieee80211_device *ieee, u32
>       *time_h,
>       >          */
>       >          dtim = ieee->current_network.dtim_data;
>       >          /* printk("DTIM\n"); */
>       > -        if(!(dtim & IEEE80211_DTIM_VALID))
>       > +        if (!(dtim & IEEE80211_DTIM_VALID))
>       >                  return 0;
>       >          timeout = ieee->current_network.beacon_interval; /*
>       should we use ps_timeout value or beacon_interval
>       >          printk("VALID\n"); */
>       >          ieee->current_network.dtim_data =
>       IEEE80211_DTIM_INVALID;
>       >
>       > -        if(dtim & ((IEEE80211_DTIM_UCAST |
>       IEEE80211_DTIM_MBCAST)& ieee->ps))
>       > +        if (dtim & ((IEEE80211_DTIM_UCAST |
>       IEEE80211_DTIM_MBCAST)& ieee->ps))
>       >                  return 2;
>       >
>       > -        if(!time_after(jiffies, ieee->dev->trans_start +
>       MSECS(timeout)))
>       > +        if (!time_after(jiffies, ieee->dev->trans_start +
>       MSECS(timeout)))
>       >                  return 0;
>       >
>       > -        if(!time_after(jiffies, ieee->last_rx_ps_time +
>       MSECS(timeout)))
>       > +        if (!time_after(jiffies, ieee->last_rx_ps_time +
>       MSECS(timeout)))
>       >                  return 0;
>       >
>       > -        if((ieee->softmac_features &
>       IEEE_SOFTMAC_SINGLE_QUEUE ) &&
>       > +        if ((ieee->softmac_features &
>       IEEE_SOFTMAC_SINGLE_QUEUE ) &&
>       >                  (ieee->mgmt_queue_tail !=
>       ieee->mgmt_queue_head))
>       >                  return 0;
>       >
>       > -        if(time_l){
>       > +        if (time_l){
>       >                  *time_l =
>       ieee->current_network.last_dtim_sta_time[0]
>       >                          +
>       (ieee->current_network.beacon_interval
>       >                          * ieee->current_network.dtim_period)
>       * 1000;
>       >          }
>       >
>       > -        if(time_h){
>       > +        if (time_h){
>       >                  *time_h =
>       ieee->current_network.last_dtim_sta_time[1];
>       > -                if(time_l && *time_l <
>       ieee->current_network.last_dtim_sta_time[0])
>       > +                if (time_l && *time_l <
>       ieee->current_network.last_dtim_sta_time[0])
>       >                          *time_h += 1;
>       >          }
>       >
>       > @@ -1783,7 +1783,7 @@ static inline void
>       ieee80211_sta_ps(struct ieee80211_device *ieee)
>       >
>       >          spin_lock_irqsave(&ieee->lock, flags);
>       >
>       > -        if((ieee->ps == IEEE80211_PS_DISABLED ||
>       > +        if ((ieee->ps == IEEE80211_PS_DISABLED ||
>       >                  ieee->iw_mode != IW_MODE_INFRA ||
>       >                  ieee->state != IEEE80211_LINKED)){
>       >
>       > @@ -1797,19 +1797,19 @@ static inline void
>       ieee80211_sta_ps(struct ieee80211_device *ieee)
>       >
>       >          sleep = ieee80211_sta_ps_sleep(ieee,&th, &tl);
>       >          /* 2 wake, 1 sleep, 0 do nothing */
>       > -        if(sleep == 0)
>       > +        if (sleep == 0)
>       >                  goto out;
>       >
>       > -        if(sleep == 1){
>       > +        if (sleep == 1){
>       >
>       > -                if(ieee->sta_sleep == 1)
>       > +                if (ieee->sta_sleep == 1)
>       >                          ieee->enter_sleep_state(ieee->dev,
>       th, tl);
>       >
>       > -                else if(ieee->sta_sleep == 0){
>       > +                else if (ieee->sta_sleep == 0){
>       >                          /* printk("send null 1\n"); */
>       >
>                                spin_lock_irqsave(&ieee->mgmt_tx_lock,
>       flags2);
>       >
>       >
>       -                        if(ieee->ps_is_queue_empty(ieee->dev)){
>       > +                        if
>       (ieee->ps_is_queue_empty(ieee->dev)){
>       >
>       >
>       >                                  ieee->sta_sleep = 2;
>       > @@ -1826,7 +1826,7 @@ static inline void
>       ieee80211_sta_ps(struct ieee80211_device *ieee)
>       >                  }
>       >
>       >
>       > -        }else if(sleep == 2){
>       > +        }else if (sleep == 2){
>       >  /* #warning CHECK_LOCK_HERE */
>       >                  spin_lock_irqsave(&ieee->mgmt_tx_lock,
>       flags2);
>       >
>       > @@ -1842,8 +1842,8 @@ out:
>       >
>       >  void ieee80211_sta_wakeup(struct ieee80211_device *ieee,
>       short nl)
>       >  {
>       > -        if(ieee->sta_sleep == 0){
>       > -                if(nl){
>       > +        if (ieee->sta_sleep == 0){
>       > +                if (nl){
>       >                          printk("Warning: driver is probably
>       failing to report TX ps error\n");
>       >                          ieee->ps_request_tx_ack(ieee->dev);
>       >
>                                ieee80211_sta_ps_send_null_frame(ieee,
>       0);
>       > @@ -1852,12 +1852,12 @@ void ieee80211_sta_wakeup(struct
>       ieee80211_device *ieee, short nl)
>       >
>       >          }
>       >
>       > -        if(ieee->sta_sleep == 1)
>       > +        if (ieee->sta_sleep == 1)
>       >                  ieee->sta_wake_up(ieee->dev);
>       >
>       >          ieee->sta_sleep = 0;
>       >
>       > -        if(nl){
>       > +        if (nl){
>       >                  ieee->ps_request_tx_ack(ieee->dev);
>       >                  ieee80211_sta_ps_send_null_frame(ieee, 0);
>       >          }
>       > @@ -1869,9 +1869,9 @@ void ieee80211_ps_tx_ack(struct
>       ieee80211_device *ieee, short success)
>       >
>       >          spin_lock_irqsave(&ieee->lock, flags);
>       >
>       > -        if(ieee->sta_sleep == 2){
>       > +        if (ieee->sta_sleep == 2){
>       >                  /* Null frame with PS bit set */
>       > -                if(success){
>       > +                if (success){
>       >                          ieee->sta_sleep = 1;
>       >                         ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ieee
>       ->ps_tl);
>       >                  }
>       > @@ -1882,7 +1882,7 @@ void ieee80211_ps_tx_ack(struct
>       ieee80211_device *ieee, short success)
>       >          /* 21112005 - tx again null without PS bit if lost */
>       >          else {
>       >
>       > -                if((ieee->sta_sleep == 0) && !success){
>       > +                if ((ieee->sta_sleep == 0) && !success){
>       >
>                                spin_lock_irqsave(&ieee->mgmt_tx_lock,
>       flags2);
>       >
>                                ieee80211_sta_ps_send_null_frame(ieee,
>       0);
>       >
>                                spin_unlock_irqrestore(&ieee->mgmt_tx_lock,
>       flags2);
>       > @@ -1935,16 +1935,16 @@ ieee80211_rx_frame_softmac(struct
>       ieee80211_device *ieee, struct sk_buff *skb,
>       >          /* struct ieee80211_info_element *info_element; */
>       >          bool bSupportNmode = true, bHalfSupportNmode = false;
>       /* default support N mode, disable halfNmode */
>       >
>       > -        if(!ieee->proto_started)
>       > +        if (!ieee->proto_started)
>       >                  return 0;
>       >
>       > -        if(ieee->sta_sleep || (ieee->ps !=
>       IEEE80211_PS_DISABLED &&
>       > +        if (ieee->sta_sleep || (ieee->ps !=
>       IEEE80211_PS_DISABLED &&
>       >                  ieee->iw_mode == IW_MODE_INFRA &&
>       >                  ieee->state == IEEE80211_LINKED))
>       >
>       >                  tasklet_schedule(&ieee->ps_task);
>       >
>       > -        if(WLAN_FC_GET_STYPE(header->frame_ctl) !=
>       IEEE80211_STYPE_PROBE_RESP &&
>       > +        if (WLAN_FC_GET_STYPE(header->frame_ctl) !=
>       IEEE80211_STYPE_PROBE_RESP &&
>       >                  WLAN_FC_GET_STYPE(header->frame_ctl) !=
>       IEEE80211_STYPE_BEACON)
>       >                  ieee->last_rx_ps_time = jiffies;
>       >
>       > @@ -1968,7 +1968,7 @@ ieee80211_rx_frame_softmac(struct
>       ieee80211_device *ieee, struct sk_buff *skb,
>       >
>                                        ieee->softmac_stats.rx_ass_ok++;
>       >                                  /* station support qos */
>       >                                  /* Let the register setting
>       defaultly with Legacy station */
>       > -                                if(ieee->qos_support) {
>       > +                                if (ieee->qos_support) {
>       >                                          assoc_resp = (struct
>       ieee80211_assoc_response_frame *)skb->data;
>       >                                          memset(network, 0,
>       sizeof(*network));
>       >                                          if
>       (ieee80211_parse_info_param(ieee,assoc_resp->info_element,\
>       > @@ -1994,7 +1994,7 @@ ieee80211_rx_frame_softmac(struct
>       ieee80211_device *ieee, struct sk_buff *skb,
>       >                                  IEEE80211_DEBUG_MGMT(
>       >                                          "Association response
>       status code 0x%x\n",
>       >                                          errcode);
>       > -                                if(ieee->AsocRetryCount <
>       RT_ASOC_RETRY_LIMIT) {
>       > +                                if (ieee->AsocRetryCount <
>       RT_ASOC_RETRY_LIMIT) {
>       >                                          queue_work(ieee->wq,
>       &ieee->associate_procedure_wq);
>       >                                  } else {
>       >
>                                                ieee80211_associate_abort(ieee);
>       > @@ -2022,15 +2022,15 @@ ieee80211_rx_frame_softmac(struct
>       ieee80211_device *ieee, struct sk_buff *skb,
>       >
>       >                                          errcode =
>       auth_parse(skb, &challenge, &chlen);
>       >                                          if (!errcode) {
>       >
>       -                                                if(ieee->open_wep
>       || !challenge){
>       > +                                                if
>       (ieee->open_wep || !challenge){
>       >
>                                                                ieee->state
>       = IEEE80211_ASSOCIATING_AUTHENTICATED;
>       >                                                         ieee->softmac_stat
>       s.rx_auth_rs_ok++;
>       >-                                                        if(!(ieee->pHTInfo
>       ->IOTAction&HT_IOT_ACT_PURE_N_MODE))
>       > +                                                        if
>       (!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))
>       >                                                          {
>       >
>                                                                        if
>       (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
>       >
>                                                                        {
>       >                                                                          
??       ?              /* WEP or TKIP encryption */
>       >-                                                                        if
>       (IsHTHalfNmodeAPs(ieee))
>       >+                                                                        if
>       (IsHTHalfNmodeAPs(ieee))
>       >
>                                                                                {
>       >                                                                          
??       ?      bSupportNmode = true;
>       >                                                                          
??       ?      bHalfSupportNmode = true;
>       > @@ -2044,7 +2044,7 @@ ieee80211_rx_frame_softmac(struct
>       ieee80211_device *ieee, struct sk_buff *skb,
>       >
>                                                                        }
>       >                                                          }
>       >                                                          /*
>       Dummy wirless mode setting to avoid encryption issue */
>       >
>       -                                                        if(bSupportNmode)
>       {
>       > +                                                        if
>       (bSupportNmode) {
>       >
>                                                                        /*
>       N mode setting */
>       >                                                                 ieee->SetW
>       irelessMode(ieee->dev, \
>       >                                                                          
??       ?      ieee->current_network.mode);
>       > @@ -2153,11 +2153,11 @@ void ieee80211_softmac_xmit(struct
>       ieee80211_txb *txb, struct ieee80211_device *
>       >          ieee->stats.tx_bytes += txb->payload_size;
>       >          ieee->stats.tx_packets++;
>       >          tcb_desc = (cb_desc *)(txb->fragments[0]->cb +
>       MAX_DEV_ADDR_SIZE);
>       > -        if(tcb_desc->bMulticast) {
>       > +        if (tcb_desc->bMulticast) {
>       >                  ieee->stats.multicast++;
>       >          }
>       >          /* if xmit available, just xmit it immediately, else
>       just insert it to the wait queue */
>       > -        for(i = 0; i < txb->nr_frags; i++) {
>       > +        for (i = 0; i < txb->nr_frags; i++) {
>       >  #ifdef USB_TX_DRIVER_AGGREGATION_ENABLE
>       >                  if
>       ((skb_queue_len(&ieee->skb_drv_aggQ[queue_index]) != 0) ||
>       >  #else
>       > @@ -2198,7 +2198,7 @@ EXPORT_SYMBOL(ieee80211_softmac_xmit);
>       >  static void ieee80211_resume_tx(struct ieee80211_device
>       *ieee)
>       >  {
>       >          int i;
>       > -        for(i = ieee->tx_pending.frag; i <
>       ieee->tx_pending.txb->nr_frags; i++) {
>       > +        for (i = ieee->tx_pending.frag; i <
>       ieee->tx_pending.txb->nr_frags; i++) {
>       >
>       >                  if (ieee->queue_stop){
>       >                          ieee->tx_pending.frag = i;
>       > @@ -2248,7 +2248,7 @@ void ieee80211_wake_queue(struct
>       ieee80211_device *ieee)
>       >
>       >          ieee->queue_stop = 0;
>       >
>       > -        if(ieee->softmac_features &
>       IEEE_SOFTMAC_SINGLE_QUEUE){
>       > +        if (ieee->softmac_features &
>       IEEE_SOFTMAC_SINGLE_QUEUE){
>       >                  while (!ieee->queue_stop && (skb =
>       dequeue_mgmt(ieee))){
>       >
>       >                          header = (struct ieee80211_hdr_3addr
>        *) skb->data;
>       > @@ -2327,7 +2327,7 @@ void ieee80211_start_master_bss(struct
>       ieee80211_device *ieee)
>       >
>       >  static void ieee80211_start_monitor_mode(struct
>       ieee80211_device *ieee)
>       >  {
>       > -        if(ieee->raw_tx){
>       > +        if (ieee->raw_tx){
>       >
>       >                  if (ieee->data_hard_resume)
>       >                          ieee->data_hard_resume(ieee->dev);
>       > @@ -2347,7 +2347,7 @@ static void
>       ieee80211_start_ibss_wq(struct work_struct *work)
>       >           * (abort) this wq (when syncro scanning) before
>       sleeping
>       >           * on the semaphore
>       >           */
>       > -        if(!ieee->proto_started){
>       > +        if (!ieee->proto_started){
>       >                  printk("==========oh driver down return\n");
>       >                  return;
>       >          }
>       > @@ -2386,10 +2386,10 @@ static void
>       ieee80211_start_ibss_wq(struct work_struct *work)
>       >          /* the network definitively is not here.. create a
>       new cell */
>       >          if (ieee->state == IEEE80211_NOLINK){
>       >                  printk("creating new IBSS cell\n");
>       > -                if(!ieee->wap_set)
>       > +                if (!ieee->wap_set)
>       >                          ieee80211_randomize_cell(ieee);
>       >
>       > -                if(ieee->modulation &
>       IEEE80211_CCK_MODULATION){
>       > +                if (ieee->modulation &
>       IEEE80211_CCK_MODULATION){
>       >
>       >                          ieee->current_network.rates_len = 4;
>       >
>       > @@ -2401,7 +2401,7 @@ static void
>       ieee80211_start_ibss_wq(struct work_struct *work)
>       >                  }else
>       >                          ieee->current_network.rates_len = 0;
>       >
>       > -                if(ieee->modulation &
>       IEEE80211_OFDM_MODULATION){
>       > +                if (ieee->modulation &
>       IEEE80211_OFDM_MODULATION){
>       >                          ieee->current_network.rates_ex_len =
>       8;
>       >
>       >                          ieee->current_network.rates_ex[0] =
>       IEEE80211_BASIC_RATE_MASK | IEEE80211_OFDM_RATE_6MB;
>       > @@ -2424,7 +2424,7 @@ static void
>       ieee80211_start_ibss_wq(struct work_struct *work)
>       >                  ieee->SetWirelessMode(ieee->dev, IEEE_G);
>       >                  ieee->current_network.atim_window = 0;
>       >                  ieee->current_network.capability =
>       WLAN_CAPABILITY_IBSS;
>       > -                if(ieee->short_slot)
>       > +                if (ieee->short_slot)
>       >                          ieee->current_network.capability |=
>       WLAN_CAPABILITY_SHORT_SLOT;
>       >
>       >          }
>       > @@ -2458,9 +2458,9 @@ void ieee80211_start_bss(struct
>       ieee80211_device *ieee)
>       >           Ref: 802.11d 11.1.3.3
>       >           STA shall not start a BSS unless properly formed
>       Beacon frame including a Country IE.
>       >          */
>       > -        if(IS_DOT11D_ENABLE(ieee) &&
>       !IS_COUNTRY_IE_VALID(ieee))
>       > +        if (IS_DOT11D_ENABLE(ieee) &&
>       !IS_COUNTRY_IE_VALID(ieee))
>       >          {
>       > -                if(! ieee->bGlobalDomain)
>       > +                if (! ieee->bGlobalDomain)
>       >                  {
>       >                          return;
>       >                  }
>       > @@ -2499,7 +2499,7 @@ void ieee80211_disassociate(struct
>       ieee80211_device *ieee)
>       >
>       >          if (ieee->data_hard_stop)
>       >                          ieee->data_hard_stop(ieee->dev);
>       > -        if(IS_DOT11D_ENABLE(ieee))
>       > +        if (IS_DOT11D_ENABLE(ieee))
>       >                  Dot11d_Reset(ieee);
>       >          ieee->state = IEEE80211_NOLINK;
>       >          ieee->is_set_key = false;
>       > @@ -2517,10 +2517,10 @@ static void
>       ieee80211_associate_retry_wq(struct work_struct *work)
>       >          unsigned long flags;
>       >
>       >          down(&ieee->wx_sem);
>       > -        if(!ieee->proto_started)
>       > +        if (!ieee->proto_started)
>       >                  goto exit;
>       >
>       > -        if(ieee->state != IEEE80211_ASSOCIATING_RETRY)
>       > +        if (ieee->state != IEEE80211_ASSOCIATING_RETRY)
>       >                  goto exit;
>       >
>       >          /* until we do not set the state to IEEE80211_NOLINK
>       > @@ -2542,7 +2542,7 @@ static void
>       ieee80211_associate_retry_wq(struct work_struct *work)
>       >
>       >          spin_lock_irqsave(&ieee->lock, flags);
>       >
>       > -        if(ieee->state == IEEE80211_NOLINK)
>       > +        if (ieee->state == IEEE80211_NOLINK)
>       >                  ieee80211_start_scan(ieee);
>       >
>       >          spin_unlock_irqrestore(&ieee->lock, flags);
>       > @@ -2576,7 +2576,7 @@ struct sk_buff
>       *ieee80211_get_beacon(struct ieee80211_device *ieee)
>       >          struct ieee80211_probe_response *b;
>       >
>       >          skb = ieee80211_get_beacon_(ieee);
>       > -        if(!skb)
>       > +        if (!skb)
>       >                  return NULL;
>       >
>       >          b = (struct ieee80211_probe_response *) skb->data;
>       > @@ -2640,7 +2640,7 @@ void ieee80211_start_protocol(struct
>       ieee80211_device *ieee)
>       >                          ch++;
>       >                          if (ch > MAX_CHANNEL_NUMBER)
>       >                                  return; /* no channel found
>       */
>       >
>       -                }while(!GET_DOT11D_INFO(ieee)->channel_map[ch]);
>       > +                }while
>       (!GET_DOT11D_INFO(ieee)->channel_map[ch]);
>       >                  ieee->current_network.channel = ch;
>       >          }
>       >
>       > @@ -2649,7 +2649,7 @@ void ieee80211_start_protocol(struct
>       ieee80211_device *ieee)
>       >          /* printk("===>%s(), chan:%d\n", __func__,
>       ieee->current_network.channel);
>       >
>                ieee->set_chan(ieee->dev,ieee->current_network.channel);
>       */
>       >
>       > -        for(i = 0; i < 17; i++) {
>       > +        for (i = 0; i < 17; i++) {
>       >            ieee->last_rxseq_num[i] = -1;
>       >            ieee->last_rxfrag_num[i] = -1;
>       >            ieee->last_packet_time[i] = 0;
>       > @@ -2672,7 +2672,7 @@ void ieee80211_start_protocol(struct
>       ieee80211_device *ieee)
>       >          else if (ieee->iw_mode == IW_MODE_MASTER)
>       >                  ieee80211_start_master_bss(ieee);
>       >
>       > -        else if(ieee->iw_mode == IW_MODE_MONITOR)
>       > +        else if (ieee->iw_mode == IW_MODE_MONITOR)
>       >                  ieee80211_start_monitor_mode(ieee);
>       >  }
>       >
>       > @@ -2685,7 +2685,7 @@ void ieee80211_softmac_init(struct
>       ieee80211_device *ieee)
>       >
>       >          ieee->state = IEEE80211_NOLINK;
>       >          ieee->sync_scan_hurryup = 0;
>       > -        for(i = 0; i < 5; i++) {
>       > +        for (i = 0; i < 5; i++) {
>       >            ieee->seq_ctrl[i] = 0;
>       >          }
>       >          ieee->pDot11dInfo = kzalloc(sizeof(RT_DOT11D_INFO),
>       GFP_ATOMIC);
>       > --
>       > 1.9.1
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/1425310334-16039-1-git-s
>       end-email-haticeerturk27%40gmail.com.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/c6df1928-e079-4421-a0af-
> 27f6e643c53a%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-2040829514-1425311252=:4236--

