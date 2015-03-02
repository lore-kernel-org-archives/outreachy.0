X-GM-THRID: 5925107662848
Date: Mon, 2 Mar 2015 07:40:52 -0800 (PST)
From: =?UTF-8?Q?Hatice_ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: haticeerturk27@gmail.com
Message-Id: <c6df1928-e079-4421-a0af-27f6e643c53a@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1503020936000.4236@hadrien>
References: <1425310334-16039-1-git-send-email-haticeerturk27@gmail.com>
 <alpine.DEB.2.10.1503020936000.4236@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging:rtl8192u: ieee80211: Add
 space before that open '('
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_2246_349952188.1425310852372"
X-Google-Token: EISJ0qcFkTFMnOt9D3g0
X-Google-IP: 78.189.63.210

------=_Part_2246_349952188.1425310852372
Content-Type: multipart/alternative; 
	boundary="----=_Part_2247_1836198230.1425310852372"

------=_Part_2247_1836198230.1425310852372
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

A single package have to be both?


2 Mart 2015 Pazartesi 17:36:35 UTC+2 tarihinde Julia Lawall yazd=C4=B1:
>
> On Mon, 2 Mar 2015, Hatice ERT=C3=9CRK wrote:=20
>
> > Space prohibited before that open parenthesis '(' . That's why add spac=
e=20
> > before that open parenthesis.=20
>
> There are a lot fo spacing issues related to { on the same lines as these=
=20
> parenthesis problems.  You should fix these at the same time.=20
>
> julia=20
>
> > Signed-off-by: Hatice ERTURK <haticee...@gmail.com <javascript:>>=20
> > ---=20
> >  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 232=20
> ++++++++++-----------=20
> >  1 file changed, 116 insertions(+), 116 deletions(-)=20
> >=20
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> > index 71b7bb8..057d4d1 100644=20
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> > @@ -112,7 +112,7 @@ static void ieee80211_WMM_Info(struct=20
> ieee80211_device *ieee, u8 **tag_p)=20
> >          *tag++ =3D 0x00;=20
> >          *tag++ =3D 0x01;=20
> >  #ifdef SUPPORT_USPD=20
> > -        if(ieee->current_network.wmm_info & 0x80) {=20
> > +        if (ieee->current_network.wmm_info & 0x80) {=20
> >                  *tag++ =3D 0x0f|MAX_SP_Len;=20
> >          } else {=20
> >                  *tag++ =3D MAX_SP_Len;=20
> > @@ -165,7 +165,7 @@ static struct sk_buff *dequeue_mgmt(struct=20
> ieee80211_device *ieee)=20
> >  {=20
> >          struct sk_buff *ret;=20
> >=20
> > -        if(ieee->mgmt_queue_tail =3D=3D ieee->mgmt_queue_head)=20
> > +        if (ieee->mgmt_queue_tail =3D=3D ieee->mgmt_queue_head)=20
> >                  return NULL;=20
> >=20
> >          ret =3D ieee->mgmt_queue_ring[ieee->mgmt_queue_tail];=20
> > @@ -187,14 +187,14 @@ static u8 MgntQuery_MgntFrameTxRate(struct=20
> ieee80211_device *ieee)=20
> >          u8 rate;=20
> >=20
> >          /* 2008/01/25 MH For broadcom, MGNT frame set as OFDM 6M. */=
=20
> > -        if(pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)=20
> > +        if (pHTInfo->IOTAction & HT_IOT_ACT_MGNT_USE_CCK_6M)=20
> >                  rate =3D 0x0c;=20
> >          else=20
> >                  rate =3D ieee->basic_rate & 0x7f;=20
> >=20
> > -        if(rate =3D=3D 0){=20
> > +        if (rate =3D=3D 0){=20
> >                  /* 2005.01.26, by rcnjko. */=20
> > -                if(ieee->mode =3D=3D IEEE_A||=20
> > +                if (ieee->mode =3D=3D IEEE_A||=20
> >                     ieee->mode=3D=3D IEEE_N_5G||=20
> >                     (ieee->mode=3D=3D IEEE_N_24G&&!pHTInfo->bCurSuppCCK=
))=20
> >                          rate =3D 0x0c;=20
> > @@ -237,8 +237,8 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb,=
=20
> struct ieee80211_device *ieee=20
> >          tcb_desc->bTxDisableRateFallBack =3D 1;=20
> >          tcb_desc->bTxUseDriverAssingedRate =3D 1;=20
> >=20
> > -        if(single){=20
> > -                if(ieee->queue_stop){=20
> > +        if (single){=20
> > +                if (ieee->queue_stop){=20
> >                          enqueue_mgmt(ieee, skb);=20
> >                  }else{=20
> >                          header->seq_ctl =3D=20
> cpu_to_le16(ieee->seq_ctrl[0]<<4);=20
> > @@ -267,7 +267,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb,=
=20
> struct ieee80211_device *ieee=20
> >                          ieee->seq_ctrl[0]++;=20
> >=20
> >                  /* check whether the managed packet queued greater tha=
n=20
> 5 */=20
> >=20
> -                if(!ieee->check_nic_enough_desc(ieee->dev,tcb_desc->queu=
e_index)||\=20
>
> > +                if=20
> (!ieee->check_nic_enough_desc(ieee->dev,tcb_desc->queue_index)||\=20
> >=20
>                                  (skb_queue_len(&ieee->skb_waitQ[tcb_desc=
->queue_index])=20
> !=3D 0)||\=20
> >                                  (ieee->queue_stop) ) {=20
> >                          /* insert the skb packet to the management=20
> queue */=20
> > @@ -293,7 +293,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff=20
> *skb, struct ieee80211_device *i=20
> >                  (struct ieee80211_hdr_3addr  *) skb->data;=20
> >=20
> >=20
> > -        if(single){=20
> > +        if (single){=20
> >=20
> >                  header->seq_ctl =3D cpu_to_le16(ieee->seq_ctrl[0] << 4=
);=20
> >=20
> > @@ -364,7 +364,7 @@ struct sk_buff *ieee80211_get_beacon_(struct=20
> ieee80211_device *ieee);=20
> >  static void ieee80211_send_beacon(struct ieee80211_device *ieee)=20
> >  {=20
> >          struct sk_buff *skb;=20
> > -        if(!ieee->ieee_up)=20
> > +        if (!ieee->ieee_up)=20
> >                  return;=20
> >          /* unsigned long flags; */=20
> >          skb =3D ieee80211_get_beacon_(ieee);=20
> > @@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct=20
> ieee80211_device *ieee)=20
> >                  (MSECS( ieee->current_network.beacon_interval -5));=20
> >=20
> >          spin_lock_irqsave(&ieee->beacon_lock,flags); */=20
> > -        if(ieee->beacon_txing && ieee->ieee_up){=20
> > +        if (ieee->beacon_txing && ieee->ieee_up){=20
> >                  /* if(!timer_pending(&ieee->beacon_timer))=20
> >                          add_timer(&ieee->beacon_timer); */=20
> >=20
>                  mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->curre=
nt_network.beacon_interval-5)));=20
>
> > @@ -430,14 +430,14 @@ void ieee80211_softmac_scan_syncro(struct=20
> ieee80211_device *ieee)=20
> >          memcpy(channel_map, GET_DOT11D_INFO(ieee)->channel_map,=20
> MAX_CHANNEL_NUMBER+1);=20
> >          down(&ieee->scan_sem);=20
> >=20
> > -        while(1)=20
> > +        while (1)=20
> >          {=20
> >=20
> >                  do{=20
> >                          ch++;=20
> >                          if (ch > MAX_CHANNEL_NUMBER)=20
> >                                  goto out; /* scan completed */=20
> > -                }while(!channel_map[ch]);=20
> > +                }while (!channel_map[ch]);=20
> >=20
> >                  /* this function can be called in two situations=20
> >                   * 1- We have switched to ad-hoc mode and we are=20
> > @@ -461,13 +461,13 @@ void ieee80211_softmac_scan_syncro(struct=20
> ieee80211_device *ieee)=20
> >                  if (ieee->state =3D=3D IEEE80211_LINKED)=20
> >                          goto out;=20
> >                  ieee->set_chan(ieee->dev, ch);=20
> > -                if(channel_map[ch] =3D=3D 1)=20
> > +                if (channel_map[ch] =3D=3D 1)=20
> >                  ieee80211_send_probe_requests(ieee);=20
> >=20
> >                  /* this prevent excessive time wait when we=20
> >                   * need to wait for a syncro scan to end..=20
> >                   */=20
> > -                if(ieee->state < IEEE80211_LINKED)=20
> > +                if (ieee->state < IEEE80211_LINKED)=20
> >                          ;=20
> >                  else=20
> >                  if (ieee->sync_scan_hurryup)=20
> > @@ -478,13 +478,13 @@ void ieee80211_softmac_scan_syncro(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          }=20
> >  out:=20
> > -        if(ieee->state < IEEE80211_LINKED){=20
> > +        if (ieee->state < IEEE80211_LINKED){=20
> >                  ieee->actscanning =3D false;=20
> >                  up(&ieee->scan_sem);=20
> >          }=20
> >          else{=20
> >          ieee->sync_scan_hurryup =3D 0;=20
> > -        if(IS_DOT11D_ENABLE(ieee))=20
> > +        if (IS_DOT11D_ENABLE(ieee))=20
> >                  DOT11D_ScanComplete(ieee);=20
> >          up(&ieee->scan_sem);=20
> >  }=20
> > @@ -498,7 +498,7 @@ static void ieee80211_softmac_scan_wq(struct=20
> work_struct *work)=20
> >          static short watchdog;=20
> >          u8 channel_map[MAX_CHANNEL_NUMBER+1];=20
> >          memcpy(channel_map, GET_DOT11D_INFO(ieee)->channel_map,=20
> MAX_CHANNEL_NUMBER+1);=20
> > -        if(!ieee->ieee_up)=20
> > +        if (!ieee->ieee_up)=20
> >                  return;=20
> >          down(&ieee->scan_sem);=20
> >          do{=20
> > @@ -512,11 +512,11 @@ static void ieee80211_softmac_scan_wq(struct=20
> work_struct *work)=20
> >                                  goto out; /* no good chans */=20
> >                          }=20
> >                  }=20
> > -        }while(!channel_map[ieee->current_network.channel]);=20
> > +        }while (!channel_map[ieee->current_network.channel]);=20
> >          if (ieee->scanning =3D=3D 0 )=20
> >                  goto out;=20
> >          ieee->set_chan(ieee->dev, ieee->current_network.channel);=20
> > -        if(channel_map[ieee->current_network.channel] =3D=3D 1)=20
> > +        if (channel_map[ieee->current_network.channel] =3D=3D 1)=20
> >                  ieee80211_send_probe_requests(ieee);=20
> >=20
> >=20
> > @@ -525,7 +525,7 @@ static void ieee80211_softmac_scan_wq(struct=20
> work_struct *work)=20
> >          up(&ieee->scan_sem);=20
> >          return;=20
> >  out:=20
> > -        if(IS_DOT11D_ENABLE(ieee))=20
> > +        if (IS_DOT11D_ENABLE(ieee))=20
> >                  DOT11D_ScanComplete(ieee);=20
> >          ieee->actscanning =3D false;=20
> >          watchdog =3D 0;=20
> > @@ -562,7 +562,7 @@ static void ieee80211_beacons_stop(struct=20
> ieee80211_device *ieee)=20
> >=20
> >  void ieee80211_stop_send_beacons(struct ieee80211_device *ieee)=20
> >  {=20
> > -        if(ieee->stop_send_beacons)=20
> > +        if (ieee->stop_send_beacons)=20
> >                  ieee->stop_send_beacons(ieee->dev);=20
> >          if (ieee->softmac_features & IEEE_SOFTMAC_BEACONS)=20
> >                  ieee80211_beacons_stop(ieee);=20
> > @@ -571,9 +571,9 @@ EXPORT_SYMBOL(ieee80211_stop_send_beacons);=20
> >=20
> >  void ieee80211_start_send_beacons(struct ieee80211_device *ieee)=20
> >  {=20
> > -        if(ieee->start_send_beacons)=20
> > +        if (ieee->start_send_beacons)=20
> >                  ieee->start_send_beacons(ieee->dev, ieee->basic_rate);=
=20
> > -        if(ieee->softmac_features & IEEE_SOFTMAC_BEACONS)=20
> > +        if (ieee->softmac_features & IEEE_SOFTMAC_BEACONS)=20
> >                  ieee80211_beacons_start(ieee);=20
> >  }=20
> >  EXPORT_SYMBOL(ieee80211_start_send_beacons);=20
> > @@ -609,9 +609,9 @@ EXPORT_SYMBOL(ieee80211_stop_scan);=20
> >  /* called with ieee->lock held */=20
> >  static void ieee80211_start_scan(struct ieee80211_device *ieee)=20
> >  {=20
> > -        if(IS_DOT11D_ENABLE(ieee) )=20
> > +        if (IS_DOT11D_ENABLE(ieee) )=20
> >          {=20
> > -                if(IS_COUNTRY_IE_VALID(ieee))=20
> > +                if (IS_COUNTRY_IE_VALID(ieee))=20
> >                  {=20
> >                          RESET_CIE_WATCHDOG(ieee);=20
> >                  }=20
> > @@ -629,9 +629,9 @@ static void ieee80211_start_scan(struct=20
> ieee80211_device *ieee)=20
> >  /* called with wx_sem held */=20
> >  void ieee80211_start_scan_syncro(struct ieee80211_device *ieee)=20
> >  {=20
> > -        if(IS_DOT11D_ENABLE(ieee) )=20
> > +        if (IS_DOT11D_ENABLE(ieee) )=20
> >          {=20
> > -                if(IS_COUNTRY_IE_VALID(ieee))=20
> > +                if (IS_COUNTRY_IE_VALID(ieee))=20
> >                  {=20
> >                          RESET_CIE_WATCHDOG(ieee);=20
> >                  }=20
> > @@ -670,11 +670,11 @@ inline struct sk_buff=20
> *ieee80211_authentication_req(struct ieee80211_network *be=20
> >          memcpy(auth->header.addr3, beacon->bssid, ETH_ALEN);=20
> >=20
> >          /* auth->algorithm =3D ieee->open_wep ? WLAN_AUTH_OPEN :=20
> WLAN_AUTH_SHARED_KEY; */=20
> > -        if(ieee->auth_mode =3D=3D 0)=20
> > +        if (ieee->auth_mode =3D=3D 0)=20
> >                  auth->algorithm =3D WLAN_AUTH_OPEN;=20
> > -        else if(ieee->auth_mode =3D=3D 1)=20
> > +        else if (ieee->auth_mode =3D=3D 1)=20
> >                  auth->algorithm =3D WLAN_AUTH_SHARED_KEY;=20
> > -        else if(ieee->auth_mode =3D=3D 2)=20
> > +        else if (ieee->auth_mode =3D=3D 2)=20
> >                  auth->algorithm =3D WLAN_AUTH_OPEN;/* 0x80; */=20
> >          printk("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>%s=
():auth->algorithm is=20
> %d\n",__func__,auth->algorithm);=20
> >          auth->transaction =3D cpu_to_le16(ieee->associate_seq);=20
> > @@ -712,14 +712,14 @@ static struct sk_buff *ieee80211_probe_resp(struc=
t=20
> ieee80211_device *ieee, u8 *d=20
> >          u8 *tmp_generic_ie_buf=3DNULL;=20
> >          u8 tmp_generic_ie_len=3D0;=20
> >=20
> > -        if(rate_ex_len > 0) rate_ex_len+=3D2;=20
> > +        if (rate_ex_len > 0) rate_ex_len+=3D2;=20
> >=20
> > -        if(ieee->current_network.capability & WLAN_CAPABILITY_IBSS)=20
> > +        if (ieee->current_network.capability & WLAN_CAPABILITY_IBSS)=
=20
> >                  atim_len =3D 4;=20
> >          else=20
> >                  atim_len =3D 0;=20
> >=20
> > -        if(ieee80211_is_54g(&ieee->current_network))=20
> > +        if (ieee80211_is_54g(&ieee->current_network))=20
> >                  erp_len =3D 3;=20
> >          else=20
> >                  erp_len =3D 0;=20
> > @@ -739,7 +739,7 @@ static struct sk_buff *ieee80211_probe_resp(struct=
=20
> ieee80211_device *ieee, u8 *d=20
> >          HTConstructInfoElement(ieee,tmp_ht_info_buf,&tmp_ht_info_len,=
=20
> encrypt);=20
> >=20
> >=20
> > -        if(pHTInfo->bRegRT2RTAggregation)=20
> > +        if (pHTInfo->bRegRT2RTAggregation)=20
> >          {=20
> >                  tmp_generic_ie_buf =3D ieee->pHTInfo->szRT2RTAggBuffer=
;=20
> >                  tmp_generic_ie_len =3D=20
> sizeof(ieee->pHTInfo->szRT2RTAggBuffer);=20
> > @@ -776,7 +776,7 @@ static struct sk_buff *ieee80211_probe_resp(struct=
=20
> ieee80211_device *ieee, u8 *d=20
> >          beacon_buf->capability |=3D=20
> >                  cpu_to_le16(ieee->current_network.capability &=20
> WLAN_CAPABILITY_SHORT_PREAMBLE); /* add short preamble here */=20
> >=20
> > -        if(ieee->short_slot && (ieee->current_network.capability &=20
> WLAN_CAPABILITY_SHORT_SLOT))=20
> > +        if (ieee->short_slot && (ieee->current_network.capability &=20
> WLAN_CAPABILITY_SHORT_SLOT))=20
> >                  beacon_buf->capability |=3D=20
> cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);=20
> >=20
> >          crypt =3D ieee->crypt[ieee->tx_keyidx];=20
> > @@ -803,7 +803,7 @@ static struct sk_buff *ieee80211_probe_resp(struct=
=20
> ieee80211_device *ieee, u8 *d=20
> >          *(tag++) =3D 1;=20
> >          *(tag++) =3D ieee->current_network.channel;=20
> >=20
> > -        if(atim_len){=20
> > +        if (atim_len){=20
> >                  *(tag++) =3D MFIE_TYPE_IBSS_SET;=20
> >                  *(tag++) =3D 2;=20
> >=20
> > @@ -812,12 +812,12 @@ static struct sk_buff *ieee80211_probe_resp(struc=
t=20
> ieee80211_device *ieee, u8 *d=20
> >                  tag+=3D2;=20
> >          }=20
> >=20
> > -        if(erp_len){=20
> > +        if (erp_len){=20
> >                  *(tag++) =3D MFIE_TYPE_ERP;=20
> >                  *(tag++) =3D 1;=20
> >                  *(tag++) =3D erpinfo_content;=20
> >          }=20
> > -        if(rate_ex_len){=20
> > +        if (rate_ex_len){=20
> >                  *(tag++) =3D MFIE_TYPE_RATES_EX;=20
> >                  *(tag++) =3D rate_ex_len-2;=20
> >                  memcpy(tag, ieee->current_network.rates_ex,=20
> rate_ex_len-2);=20
> > @@ -870,7 +870,7 @@ static struct sk_buff *ieee80211_assoc_resp(struct=
=20
> ieee80211_device *ieee,=20
> >                  WLAN_CAPABILITY_BSS : WLAN_CAPABILITY_IBSS);=20
> >=20
> >=20
> > -        if(ieee->short_slot)=20
> > +        if (ieee->short_slot)=20
> >                  assoc->capability |=3D=20
> cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);=20
> >=20
> >          if (ieee->host_encrypt)=20
> > @@ -1016,12 +1016,12 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >          encrypt =3D ieee->host_encrypt && crypt && crypt->ops && ((0 =
=3D=3D=20
> strcmp(crypt->ops->name,"WEP") || wpa_ie_len));=20
> >=20
> >          /* Include High Throuput capability && Realtek proprietary */=
=20
> > -        if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)=
=20
> > +        if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT=
)=20
> >          {=20
> >                  ht_cap_buf =3D (u8 *)&(ieee->pHTInfo->SelfHTCap);=20
> >                  ht_cap_len =3D sizeof(ieee->pHTInfo->SelfHTCap);=20
> >                  HTConstructCapabilityElement(ieee, ht_cap_buf,=20
> &ht_cap_len, encrypt);=20
> > -                if(ieee->pHTInfo->bCurrentRT2RTAggregation)=20
> > +                if (ieee->pHTInfo->bCurrentRT2RTAggregation)=20
> >                  {=20
> >                          realtek_ie_buf =3D=20
> ieee->pHTInfo->szRT2RTAggBuffer;=20
> >                          realtek_ie_len =3D sizeof(=20
> ieee->pHTInfo->szRT2RTAggBuffer);=20
> > @@ -1029,16 +1029,16 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >=20
> >                  }=20
> >          }=20
> > -        if(ieee->qos_support){=20
> > +        if (ieee->qos_support){=20
> >                  wmm_info_len =3D beacon->qos_data.supported?9:0;=20
> >          }=20
> >=20
> >=20
> > -        if(beacon->bCkipSupported)=20
> > +        if (beacon->bCkipSupported)=20
> >          {=20
> >                  ckip_ie_len =3D 30+2;=20
> >          }=20
> > -        if(beacon->bCcxRmEnable)=20
> > +        if (beacon->bCcxRmEnable)=20
> >          {=20
> >                  ccxrm_ie_len =3D 6+2;=20
> >          }=20
> > @@ -1098,7 +1098,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >          if (beacon->capability & WLAN_CAPABILITY_SHORT_PREAMBLE)=20
> >                  hdr->capability |=3D=20
> cpu_to_le16(WLAN_CAPABILITY_SHORT_PREAMBLE); /* add short_preamble here *=
/=20
> >=20
> > -        if(ieee->short_slot)=20
> > +        if (ieee->short_slot)=20
> >                  hdr->capability |=3D=20
> cpu_to_le16(WLAN_CAPABILITY_SHORT_SLOT);=20
> >          if (wmm_info_len) //QOS=20
> >                  hdr->capability |=3D cpu_to_le16(WLAN_CAPABILITY_QOS);=
=20
> > @@ -1142,7 +1142,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >                  tag +=3D osCcxAironetIE.Length;=20
> >          }=20
> >=20
> > -        if(beacon->bCcxRmEnable)=20
> > +        if (beacon->bCcxRmEnable)=20
> >          {=20
> >                  static u8 CcxRmCapBuf[] =3D {0x00, 0x40, 0x96, 0x01,=
=20
> 0x01, 0x00};=20
> >                  OCTET_STRING osCcxRmCap;=20
> > @@ -1169,8 +1169,8 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >                  tag +=3D osCcxVerNum.Length;=20
> >          }=20
> >          /* HT cap element */=20
> > -        if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)=
{=20
> > -                if(ieee->pHTInfo->ePeerHTSpecVer !=3D HT_SPEC_VER_EWC)=
=20
> > +        if=20
> (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){=20
> > +                if (ieee->pHTInfo->ePeerHTSpecVer !=3D HT_SPEC_VER_EWC=
)=20
> >                  {=20
> >                          tag =3D skb_put(skb, ht_cap_len);=20
> >                          *tag++ =3D MFIE_TYPE_HT_CAP;=20
> > @@ -1188,18 +1188,18 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >          }=20
> >=20
> >          tag =3D skb_put(skb, wmm_info_len);=20
> > -        if(wmm_info_len) {=20
> > +        if (wmm_info_len) {=20
> >            ieee80211_WMM_Info(ieee, &tag);=20
> >          }=20
> >  #ifdef THOMAS_TURBO=20
> >          tag =3D skb_put(skb, turbo_info_len);=20
> > -        if(turbo_info_len) {=20
> > +        if (turbo_info_len) {=20
> >                  ieee80211_TURBO_Info(ieee, &tag);=20
> >          }=20
> >  #endif=20
> >=20
> > -        if(ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT)=
{=20
> > -                if(ieee->pHTInfo->ePeerHTSpecVer =3D=3D HT_SPEC_VER_EW=
C)=20
> > +        if=20
> (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){=20
> > +                if (ieee->pHTInfo->ePeerHTSpecVer =3D=3D HT_SPEC_VER_E=
WC)=20
> >                  {=20
> >                          tag =3D skb_put(skb, ht_cap_len);=20
> >                          *tag++ =3D MFIE_TYPE_GENERIC;=20
> > @@ -1208,7 +1208,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >                          tag +=3D ht_cap_len -2;=20
> >                  }=20
> >=20
> > -                if(ieee->pHTInfo->bCurrentRT2RTAggregation){=20
> > +                if (ieee->pHTInfo->bCurrentRT2RTAggregation){=20
> >                          tag =3D skb_put(skb, realtek_ie_len);=20
> >                          *tag++ =3D MFIE_TYPE_GENERIC;=20
> >                          *tag++ =3D realtek_ie_len - 2;=20
> > @@ -1274,7 +1274,7 @@ static void ieee80211_associate_step1(struct=20
> ieee80211_device *ieee)=20
> >                  /* printk(KERN_WARNING "Sending authentication=20
> request\n"); */=20
> >                  softmac_mgmt_xmit(skb, ieee);=20
> >                  /* BUGON when you try to add_timer twice, using=20
> mod_timer may be better, john0709 */=20
> > -                if(!timer_pending(&ieee->associate_timer)){=20
> > +                if (!timer_pending(&ieee->associate_timer)){=20
> >                          ieee->associate_timer.expires =3D jiffies + (H=
Z /=20
> 2);=20
> >                          add_timer(&ieee->associate_timer);=20
> >                  }=20
> > @@ -1337,7 +1337,7 @@ static void ieee80211_associate_complete_wq(struc=
t=20
> work_struct *work)=20
> >  {=20
> >          struct ieee80211_device *ieee =3D container_of(work, struct=20
> ieee80211_device, associate_complete_wq);=20
> >          printk(KERN_INFO "Associated successfully\n");=20
> > -        if(ieee80211_is_54g(&ieee->current_network) &&=20
> > +        if (ieee80211_is_54g(&ieee->current_network) &&=20
> >                  (ieee->modulation & IEEE80211_OFDM_MODULATION)){=20
> >=20
> >                  ieee->rate =3D 108;=20
> > @@ -1359,17 +1359,17 @@ static void=20
> ieee80211_associate_complete_wq(struct work_struct *work)=20
> >          }=20
> >          ieee->LinkDetectInfo.SlotNum =3D 2 * (1 +=20
> ieee->current_network.beacon_interval/500);=20
> >          /* To prevent the immediately calling watch_dog after=20
> association. */=20
> >=20
> -        if(ieee->LinkDetectInfo.NumRecvBcnInPeriod=3D=3D0||ieee->LinkDet=
ectInfo.NumRecvDataInPeriod=3D=3D0=20
> )=20
> > +        if=20
> (ieee->LinkDetectInfo.NumRecvBcnInPeriod=3D=3D0||ieee->LinkDetectInfo.Num=
RecvDataInPeriod=3D=3D0=20
> )=20
> >          {=20
> >                  ieee->LinkDetectInfo.NumRecvBcnInPeriod =3D 1;=20
> >                  ieee->LinkDetectInfo.NumRecvDataInPeriod=3D 1;=20
> >          }=20
> >          ieee->link_change(ieee->dev);=20
> > -        if(ieee->is_silent_reset =3D=3D 0){=20
> > +        if (ieee->is_silent_reset =3D=3D 0){=20
> >                  printk("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>normal as=
sociate\n");=20
> >          notify_wx_assoc_event(ieee);=20
> >          }=20
> > -        else if(ieee->is_silent_reset =3D=3D 1)=20
> > +        else if (ieee->is_silent_reset =3D=3D 1)=20
> >          {=20
> >                  printk("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=
=3D=3D=3D>silent reset associate\n");=20
> >                  ieee->is_silent_reset =3D 0;=20
> > @@ -1477,7 +1477,7 @@ inline void ieee80211_softmac_new_net(struct=20
> ieee80211_device *ieee, struct ieee=20
> >                                          /* Join the network for the=20
> first time */=20
> >                                          ieee->AsocRetryCount =3D 0;=20
> >                                          /* for HT by amy 080514 */=20
> >=20
> -                                        if((ieee->current_network.qos_da=
ta.supported=20
> =3D=3D 1) &&=20
> > +                                        if=20
> ((ieee->current_network.qos_data.supported =3D=3D 1) &&=20
> >                                            /* (ieee->pHTInfo->bEnableHT=
=20
> && ieee->current_network.bssht.bdSupportHT)) */=20
> >                                            =20
> ieee->current_network.bssht.bdSupportHT)=20
> >  /*WB, 2008.09.09:bCurrentHTSupport and bEnableHT two flags are going t=
o=20
> put together to check whether we are in HT now, so needn't to check=20
> bEnableHT flags here. That's is to say we will set to HT support whenever=
=20
> joined AP has the ability to support HT. And whether we are in HT or not,=
=20
> please check bCurrentHTSupport&&bEnableHT now please.*/=20
> > @@ -1493,7 +1493,7 @@ inline void ieee80211_softmac_new_net(struct=20
> ieee80211_device *ieee, struct ieee=20
> >                                          ieee->state =3D=20
> IEEE80211_ASSOCIATING;=20
> >                                          queue_work(ieee->wq,=20
> &ieee->associate_procedure_wq);=20
> >                                  }else{=20
> >=20
> -                                        if(ieee80211_is_54g(&ieee->curre=
nt_network)=20
> &&=20
> > +                                        if=20
> (ieee80211_is_54g(&ieee->current_network) &&=20
> >                                                  (ieee->modulation &=20
> IEEE80211_OFDM_MODULATION)){=20
> >                                                  ieee->rate =3D 108;=20
> >=20
>                                                  ieee->SetWirelessMode(ie=
ee->dev,=20
> IEEE_G);=20
> > @@ -1548,10 +1548,10 @@ static inline u16 auth_parse(struct sk_buff=20
> *skb, u8 **challenge, int *chlen)=20
> >          }=20
> >          *challenge =3D NULL;=20
> >          a =3D (struct ieee80211_authentication *) skb->data;=20
> > -        if(skb->len > (sizeof(struct ieee80211_authentication) +3)){=
=20
> > +        if (skb->len > (sizeof(struct ieee80211_authentication) +3)){=
=20
> >                  t =3D skb->data + sizeof(struct=20
> ieee80211_authentication);=20
> >=20
> > -                if(*(t++) =3D=3D MFIE_TYPE_CHALLENGE){=20
> > +                if (*(t++) =3D=3D MFIE_TYPE_CHALLENGE){=20
> >                          *chlen =3D *(t++);=20
> >                          *challenge =3D kmemdup(t, *chlen, GFP_ATOMIC);=
=20
> >                          if (!*challenge)=20
> > @@ -1652,7 +1652,7 @@ static inline u16 assoc_parse(struct=20
> ieee80211_device *ieee, struct sk_buff *skb=20
> >          *aid =3D le16_to_cpu(response_head->aid) & 0x3fff;=20
> >=20
> >          status_code =3D le16_to_cpu(response_head->status);=20
> > -        if((status_code=3D=3DWLAN_STATUS_ASSOC_DENIED_RATES || \=20
> > +        if ((status_code=3D=3DWLAN_STATUS_ASSOC_DENIED_RATES || \=20
> >             status_code=3D=3DWLAN_STATUS_CAPS_UNSUPPORTED)&&=20
> >             ((ieee->mode =3D=3D IEEE_G) &&=20
> >              (ieee->current_network.mode =3D=3D IEEE_N_24G) &&=20
> > @@ -1737,34 +1737,34 @@ static short ieee80211_sta_ps_sleep(struct=20
> ieee80211_device *ieee, u32 *time_h,=20
> >          */=20
> >          dtim =3D ieee->current_network.dtim_data;=20
> >          /* printk("DTIM\n"); */=20
> > -        if(!(dtim & IEEE80211_DTIM_VALID))=20
> > +        if (!(dtim & IEEE80211_DTIM_VALID))=20
> >                  return 0;=20
> >          timeout =3D ieee->current_network.beacon_interval; /* should w=
e=20
> use ps_timeout value or beacon_interval=20
> >          printk("VALID\n"); */=20
> >          ieee->current_network.dtim_data =3D IEEE80211_DTIM_INVALID;=20
> >=20
> > -        if(dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)&=20
> ieee->ps))=20
> > +        if (dtim & ((IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)&=20
> ieee->ps))=20
> >                  return 2;=20
> >=20
> > -        if(!time_after(jiffies, ieee->dev->trans_start +=20
> MSECS(timeout)))=20
> > +        if (!time_after(jiffies, ieee->dev->trans_start +=20
> MSECS(timeout)))=20
> >                  return 0;=20
> >=20
> > -        if(!time_after(jiffies, ieee->last_rx_ps_time +=20
> MSECS(timeout)))=20
> > +        if (!time_after(jiffies, ieee->last_rx_ps_time +=20
> MSECS(timeout)))=20
> >                  return 0;=20
> >=20
> > -        if((ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE ) &&=20
> > +        if ((ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE ) &&=
=20
> >                  (ieee->mgmt_queue_tail !=3D ieee->mgmt_queue_head))=20
> >                  return 0;=20
> >=20
> > -        if(time_l){=20
> > +        if (time_l){=20
> >                  *time_l =3D ieee->current_network.last_dtim_sta_time[0=
]=20
> >                          + (ieee->current_network.beacon_interval=20
> >                          * ieee->current_network.dtim_period) * 1000;=
=20
> >          }=20
> >=20
> > -        if(time_h){=20
> > +        if (time_h){=20
> >                  *time_h =3D ieee->current_network.last_dtim_sta_time[1=
];=20
> > -                if(time_l && *time_l <=20
> ieee->current_network.last_dtim_sta_time[0])=20
> > +                if (time_l && *time_l <=20
> ieee->current_network.last_dtim_sta_time[0])=20
> >                          *time_h +=3D 1;=20
> >          }=20
> >=20
> > @@ -1783,7 +1783,7 @@ static inline void ieee80211_sta_ps(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          spin_lock_irqsave(&ieee->lock, flags);=20
> >=20
> > -        if((ieee->ps =3D=3D IEEE80211_PS_DISABLED ||=20
> > +        if ((ieee->ps =3D=3D IEEE80211_PS_DISABLED ||=20
> >                  ieee->iw_mode !=3D IW_MODE_INFRA ||=20
> >                  ieee->state !=3D IEEE80211_LINKED)){=20
> >=20
> > @@ -1797,19 +1797,19 @@ static inline void ieee80211_sta_ps(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          sleep =3D ieee80211_sta_ps_sleep(ieee,&th, &tl);=20
> >          /* 2 wake, 1 sleep, 0 do nothing */=20
> > -        if(sleep =3D=3D 0)=20
> > +        if (sleep =3D=3D 0)=20
> >                  goto out;=20
> >=20
> > -        if(sleep =3D=3D 1){=20
> > +        if (sleep =3D=3D 1){=20
> >=20
> > -                if(ieee->sta_sleep =3D=3D 1)=20
> > +                if (ieee->sta_sleep =3D=3D 1)=20
> >                          ieee->enter_sleep_state(ieee->dev, th, tl);=20
> >=20
> > -                else if(ieee->sta_sleep =3D=3D 0){=20
> > +                else if (ieee->sta_sleep =3D=3D 0){=20
> >                          /* printk("send null 1\n"); */=20
> >                          spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2)=
;=20
> >=20
> > -                        if(ieee->ps_is_queue_empty(ieee->dev)){=20
> > +                        if (ieee->ps_is_queue_empty(ieee->dev)){=20
> >=20
> >=20
> >                                  ieee->sta_sleep =3D 2;=20
> > @@ -1826,7 +1826,7 @@ static inline void ieee80211_sta_ps(struct=20
> ieee80211_device *ieee)=20
> >                  }=20
> >=20
> >=20
> > -        }else if(sleep =3D=3D 2){=20
> > +        }else if (sleep =3D=3D 2){=20
> >  /* #warning CHECK_LOCK_HERE */=20
> >                  spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);=20
> >=20
> > @@ -1842,8 +1842,8 @@ out:=20
> >=20
> >  void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)=20
> >  {=20
> > -        if(ieee->sta_sleep =3D=3D 0){=20
> > -                if(nl){=20
> > +        if (ieee->sta_sleep =3D=3D 0){=20
> > +                if (nl){=20
> >                          printk("Warning: driver is probably failing to=
=20
> report TX ps error\n");=20
> >                          ieee->ps_request_tx_ack(ieee->dev);=20
> >                          ieee80211_sta_ps_send_null_frame(ieee, 0);=20
> > @@ -1852,12 +1852,12 @@ void ieee80211_sta_wakeup(struct=20
> ieee80211_device *ieee, short nl)=20
> >=20
> >          }=20
> >=20
> > -        if(ieee->sta_sleep =3D=3D 1)=20
> > +        if (ieee->sta_sleep =3D=3D 1)=20
> >                  ieee->sta_wake_up(ieee->dev);=20
> >=20
> >          ieee->sta_sleep =3D 0;=20
> >=20
> > -        if(nl){=20
> > +        if (nl){=20
> >                  ieee->ps_request_tx_ack(ieee->dev);=20
> >                  ieee80211_sta_ps_send_null_frame(ieee, 0);=20
> >          }=20
> > @@ -1869,9 +1869,9 @@ void ieee80211_ps_tx_ack(struct ieee80211_device=
=20
> *ieee, short success)=20
> >=20
> >          spin_lock_irqsave(&ieee->lock, flags);=20
> >=20
> > -        if(ieee->sta_sleep =3D=3D 2){=20
> > +        if (ieee->sta_sleep =3D=3D 2){=20
> >                  /* Null frame with PS bit set */=20
> > -                if(success){=20
> > +                if (success){=20
> >                          ieee->sta_sleep =3D 1;=20
> >=20
>                          ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ie=
ee->ps_tl);=20
>
> >                  }=20
> > @@ -1882,7 +1882,7 @@ void ieee80211_ps_tx_ack(struct ieee80211_device=
=20
> *ieee, short success)=20
> >          /* 21112005 - tx again null without PS bit if lost */=20
> >          else {=20
> >=20
> > -                if((ieee->sta_sleep =3D=3D 0) && !success){=20
> > +                if ((ieee->sta_sleep =3D=3D 0) && !success){=20
> >                          spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2)=
;=20
> >                          ieee80211_sta_ps_send_null_frame(ieee, 0);=20
> >                          spin_unlock_irqrestore(&ieee->mgmt_tx_lock,=20
> flags2);=20
> > @@ -1935,16 +1935,16 @@ ieee80211_rx_frame_softmac(struct=20
> ieee80211_device *ieee, struct sk_buff *skb,=20
> >          /* struct ieee80211_info_element *info_element; */=20
> >          bool bSupportNmode =3D true, bHalfSupportNmode =3D false; /*=
=20
> default support N mode, disable halfNmode */=20
> >=20
> > -        if(!ieee->proto_started)=20
> > +        if (!ieee->proto_started)=20
> >                  return 0;=20
> >=20
> > -        if(ieee->sta_sleep || (ieee->ps !=3D IEEE80211_PS_DISABLED &&=
=20
> > +        if (ieee->sta_sleep || (ieee->ps !=3D IEEE80211_PS_DISABLED &&=
=20
> >                  ieee->iw_mode =3D=3D IW_MODE_INFRA &&=20
> >                  ieee->state =3D=3D IEEE80211_LINKED))=20
> >=20
> >                  tasklet_schedule(&ieee->ps_task);=20
> >=20
> > -        if(WLAN_FC_GET_STYPE(header->frame_ctl) !=3D=20
> IEEE80211_STYPE_PROBE_RESP &&=20
> > +        if (WLAN_FC_GET_STYPE(header->frame_ctl) !=3D=20
> IEEE80211_STYPE_PROBE_RESP &&=20
> >                  WLAN_FC_GET_STYPE(header->frame_ctl) !=3D=20
> IEEE80211_STYPE_BEACON)=20
> >                  ieee->last_rx_ps_time =3D jiffies;=20
> >=20
> > @@ -1968,7 +1968,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_devic=
e=20
> *ieee, struct sk_buff *skb,=20
> >                                  ieee->softmac_stats.rx_ass_ok++;=20
> >                                  /* station support qos */=20
> >                                  /* Let the register setting defaultly=
=20
> with Legacy station */=20
> > -                                if(ieee->qos_support) {=20
> > +                                if (ieee->qos_support) {=20
> >                                          assoc_resp =3D (struct=20
> ieee80211_assoc_response_frame *)skb->data;=20
> >                                          memset(network, 0,=20
> sizeof(*network));=20
> >                                          if=20
> (ieee80211_parse_info_param(ieee,assoc_resp->info_element,\=20
> > @@ -1994,7 +1994,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_devic=
e=20
> *ieee, struct sk_buff *skb,=20
> >                                  IEEE80211_DEBUG_MGMT(=20
> >                                          "Association response status=
=20
> code 0x%x\n",=20
> >                                          errcode);=20
> > -                                if(ieee->AsocRetryCount <=20
> RT_ASOC_RETRY_LIMIT) {=20
> > +                                if (ieee->AsocRetryCount <=20
> RT_ASOC_RETRY_LIMIT) {=20
> >                                          queue_work(ieee->wq,=20
> &ieee->associate_procedure_wq);=20
> >                                  } else {=20
> >=20
>                                          ieee80211_associate_abort(ieee);=
=20
> > @@ -2022,15 +2022,15 @@ ieee80211_rx_frame_softmac(struct=20
> ieee80211_device *ieee, struct sk_buff *skb,=20
> >=20
> >                                          errcode =3D auth_parse(skb,=20
> &challenge, &chlen);=20
> >                                          if (!errcode) {=20
> > -                                                if(ieee->open_wep ||=
=20
> !challenge){=20
> > +                                                if (ieee->open_wep ||=
=20
> !challenge){=20
> >                                                          ieee->state =
=3D=20
> IEEE80211_ASSOCIATING_AUTHENTICATED;=20
> >=20
>                                                          ieee->softmac_st=
ats.rx_auth_rs_ok++;=20
>
> >=20
> -                                                        if(!(ieee->pHTIn=
fo->IOTAction&HT_IOT_ACT_PURE_N_MODE))=20
>
> > +                                                        if=20
> (!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))=20
> >                                                          {=20
> >                                                                  if=20
> (!ieee->GetNmodeSupportBySecCfg(ieee->dev))=20
> >                                                                  {=20
> >=20
>                                                                          =
                /*=20
> WEP or TKIP encryption */=20
> >=20
> -                                                                        =
if(IsHTHalfNmodeAPs(ieee))=20
>
> >=20
> +                                                                        =
if=20
> (IsHTHalfNmodeAPs(ieee))=20
> >=20
>                                                                          =
{=20
> >=20
>                                                                          =
        bSupportNmode=20
> =3D true;=20
> >=20
>                                                                          =
        bHalfSupportNmode=20
> =3D true;=20
> > @@ -2044,7 +2044,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_devic=
e=20
> *ieee, struct sk_buff *skb,=20
> >                                                                  }=20
> >                                                          }=20
> >                                                          /* Dummy=20
> wirless mode setting to avoid encryption issue */=20
> >=20
> -                                                        if(bSupportNmode=
)=20
> {=20
> > +                                                        if=20
> (bSupportNmode) {=20
> >                                                                  /* N=
=20
> mode setting */=20
> >=20
>                                                                  ieee->Se=
tWirelessMode(ieee->dev,=20
> \=20
> >=20
>                                                                          =
        ieee->current_network.mode);=20
>
> > @@ -2153,11 +2153,11 @@ void ieee80211_softmac_xmit(struct ieee80211_tx=
b=20
> *txb, struct ieee80211_device *=20
> >          ieee->stats.tx_bytes +=3D txb->payload_size;=20
> >          ieee->stats.tx_packets++;=20
> >          tcb_desc =3D (cb_desc *)(txb->fragments[0]->cb +=20
> MAX_DEV_ADDR_SIZE);=20
> > -        if(tcb_desc->bMulticast) {=20
> > +        if (tcb_desc->bMulticast) {=20
> >                  ieee->stats.multicast++;=20
> >          }=20
> >          /* if xmit available, just xmit it immediately, else just=20
> insert it to the wait queue */=20
> > -        for(i =3D 0; i < txb->nr_frags; i++) {=20
> > +        for (i =3D 0; i < txb->nr_frags; i++) {=20
> >  #ifdef USB_TX_DRIVER_AGGREGATION_ENABLE=20
> >                  if ((skb_queue_len(&ieee->skb_drv_aggQ[queue_index]) !=
=3D=20
> 0) ||=20
> >  #else=20
> > @@ -2198,7 +2198,7 @@ EXPORT_SYMBOL(ieee80211_softmac_xmit);=20
> >  static void ieee80211_resume_tx(struct ieee80211_device *ieee)=20
> >  {=20
> >          int i;=20
> > -        for(i =3D ieee->tx_pending.frag; i <=20
> ieee->tx_pending.txb->nr_frags; i++) {=20
> > +        for (i =3D ieee->tx_pending.frag; i <=20
> ieee->tx_pending.txb->nr_frags; i++) {=20
> >=20
> >                  if (ieee->queue_stop){=20
> >                          ieee->tx_pending.frag =3D i;=20
> > @@ -2248,7 +2248,7 @@ void ieee80211_wake_queue(struct ieee80211_device=
=20
> *ieee)=20
> >=20
> >          ieee->queue_stop =3D 0;=20
> >=20
> > -        if(ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE){=20
> > +        if (ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE){=20
> >                  while (!ieee->queue_stop && (skb =3D=20
> dequeue_mgmt(ieee))){=20
> >=20
> >                          header =3D (struct ieee80211_hdr_3addr  *)=20
> skb->data;=20
> > @@ -2327,7 +2327,7 @@ void ieee80211_start_master_bss(struct=20
> ieee80211_device *ieee)=20
> >=20
> >  static void ieee80211_start_monitor_mode(struct ieee80211_device *ieee=
)=20
> >  {=20
> > -        if(ieee->raw_tx){=20
> > +        if (ieee->raw_tx){=20
> >=20
> >                  if (ieee->data_hard_resume)=20
> >                          ieee->data_hard_resume(ieee->dev);=20
> > @@ -2347,7 +2347,7 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >           * (abort) this wq (when syncro scanning) before sleeping=20
> >           * on the semaphore=20
> >           */=20
> > -        if(!ieee->proto_started){=20
> > +        if (!ieee->proto_started){=20
> >                  printk("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3Doh driver down r=
eturn\n");=20
> >                  return;=20
> >          }=20
> > @@ -2386,10 +2386,10 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >          /* the network definitively is not here.. create a new cell */=
=20
> >          if (ieee->state =3D=3D IEEE80211_NOLINK){=20
> >                  printk("creating new IBSS cell\n");=20
> > -                if(!ieee->wap_set)=20
> > +                if (!ieee->wap_set)=20
> >                          ieee80211_randomize_cell(ieee);=20
> >=20
> > -                if(ieee->modulation & IEEE80211_CCK_MODULATION){=20
> > +                if (ieee->modulation & IEEE80211_CCK_MODULATION){=20
> >=20
> >                          ieee->current_network.rates_len =3D 4;=20
> >=20
> > @@ -2401,7 +2401,7 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >                  }else=20
> >                          ieee->current_network.rates_len =3D 0;=20
> >=20
> > -                if(ieee->modulation & IEEE80211_OFDM_MODULATION){=20
> > +                if (ieee->modulation & IEEE80211_OFDM_MODULATION){=20
> >                          ieee->current_network.rates_ex_len =3D 8;=20
> >=20
> >                          ieee->current_network.rates_ex[0] =3D=20
> IEEE80211_BASIC_RATE_MASK | IEEE80211_OFDM_RATE_6MB;=20
> > @@ -2424,7 +2424,7 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >                  ieee->SetWirelessMode(ieee->dev, IEEE_G);=20
> >                  ieee->current_network.atim_window =3D 0;=20
> >                  ieee->current_network.capability =3D=20
> WLAN_CAPABILITY_IBSS;=20
> > -                if(ieee->short_slot)=20
> > +                if (ieee->short_slot)=20
> >                          ieee->current_network.capability |=3D=20
> WLAN_CAPABILITY_SHORT_SLOT;=20
> >=20
> >          }=20
> > @@ -2458,9 +2458,9 @@ void ieee80211_start_bss(struct ieee80211_device=
=20
> *ieee)=20
> >           Ref: 802.11d 11.1.3.3=20
> >           STA shall not start a BSS unless properly formed Beacon frame=
=20
> including a Country IE.=20
> >          */=20
> > -        if(IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))=20
> > +        if (IS_DOT11D_ENABLE(ieee) && !IS_COUNTRY_IE_VALID(ieee))=20
> >          {=20
> > -                if(! ieee->bGlobalDomain)=20
> > +                if (! ieee->bGlobalDomain)=20
> >                  {=20
> >                          return;=20
> >                  }=20
> > @@ -2499,7 +2499,7 @@ void ieee80211_disassociate(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          if (ieee->data_hard_stop)=20
> >                          ieee->data_hard_stop(ieee->dev);=20
> > -        if(IS_DOT11D_ENABLE(ieee))=20
> > +        if (IS_DOT11D_ENABLE(ieee))=20
> >                  Dot11d_Reset(ieee);=20
> >          ieee->state =3D IEEE80211_NOLINK;=20
> >          ieee->is_set_key =3D false;=20
> > @@ -2517,10 +2517,10 @@ static void ieee80211_associate_retry_wq(struct=
=20
> work_struct *work)=20
> >          unsigned long flags;=20
> >=20
> >          down(&ieee->wx_sem);=20
> > -        if(!ieee->proto_started)=20
> > +        if (!ieee->proto_started)=20
> >                  goto exit;=20
> >=20
> > -        if(ieee->state !=3D IEEE80211_ASSOCIATING_RETRY)=20
> > +        if (ieee->state !=3D IEEE80211_ASSOCIATING_RETRY)=20
> >                  goto exit;=20
> >=20
> >          /* until we do not set the state to IEEE80211_NOLINK=20
> > @@ -2542,7 +2542,7 @@ static void ieee80211_associate_retry_wq(struct=
=20
> work_struct *work)=20
> >=20
> >          spin_lock_irqsave(&ieee->lock, flags);=20
> >=20
> > -        if(ieee->state =3D=3D IEEE80211_NOLINK)=20
> > +        if (ieee->state =3D=3D IEEE80211_NOLINK)=20
> >                  ieee80211_start_scan(ieee);=20
> >=20
> >          spin_unlock_irqrestore(&ieee->lock, flags);=20
> > @@ -2576,7 +2576,7 @@ struct sk_buff *ieee80211_get_beacon(struct=20
> ieee80211_device *ieee)=20
> >          struct ieee80211_probe_response *b;=20
> >=20
> >          skb =3D ieee80211_get_beacon_(ieee);=20
> > -        if(!skb)=20
> > +        if (!skb)=20
> >                  return NULL;=20
> >=20
> >          b =3D (struct ieee80211_probe_response *) skb->data;=20
> > @@ -2640,7 +2640,7 @@ void ieee80211_start_protocol(struct=20
> ieee80211_device *ieee)=20
> >                          ch++;=20
> >                          if (ch > MAX_CHANNEL_NUMBER)=20
> >                                  return; /* no channel found */=20
> > -                }while(!GET_DOT11D_INFO(ieee)->channel_map[ch]);=20
> > +                }while (!GET_DOT11D_INFO(ieee)->channel_map[ch]);=20
> >                  ieee->current_network.channel =3D ch;=20
> >          }=20
> >=20
> > @@ -2649,7 +2649,7 @@ void ieee80211_start_protocol(struct=20
> ieee80211_device *ieee)=20
> >          /* printk("=3D=3D=3D>%s(), chan:%d\n", __func__,=20
> ieee->current_network.channel);=20
> >          ieee->set_chan(ieee->dev,ieee->current_network.channel); */=20
> >=20
> > -        for(i =3D 0; i < 17; i++) {=20
> > +        for (i =3D 0; i < 17; i++) {=20
> >            ieee->last_rxseq_num[i] =3D -1;=20
> >            ieee->last_rxfrag_num[i] =3D -1;=20
> >            ieee->last_packet_time[i] =3D 0;=20
> > @@ -2672,7 +2672,7 @@ void ieee80211_start_protocol(struct=20
> ieee80211_device *ieee)=20
> >          else if (ieee->iw_mode =3D=3D IW_MODE_MASTER)=20
> >                  ieee80211_start_master_bss(ieee);=20
> >=20
> > -        else if(ieee->iw_mode =3D=3D IW_MODE_MONITOR)=20
> > +        else if (ieee->iw_mode =3D=3D IW_MODE_MONITOR)=20
> >                  ieee80211_start_monitor_mode(ieee);=20
> >  }=20
> >=20
> > @@ -2685,7 +2685,7 @@ void ieee80211_softmac_init(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          ieee->state =3D IEEE80211_NOLINK;=20
> >          ieee->sync_scan_hurryup =3D 0;=20
> > -        for(i =3D 0; i < 5; i++) {=20
> > +        for (i =3D 0; i < 5; i++) {=20
> >            ieee->seq_ctrl[i] =3D 0;=20
> >          }=20
> >          ieee->pDot11dInfo =3D kzalloc(sizeof(RT_DOT11D_INFO),=20
> GFP_ATOMIC);=20
> > --=20
> > 1.9.1=20
> >=20
> > --=20
> > You received this message because you are subscribed to the Google=20
> Groups "outreachy-kernel" group.=20
> > To unsubscribe from this group and stop receiving emails from it, send=
=20
> an email to outreachy-kern...@googlegroups.com <javascript:>.=20
> > To post to this group, send email to outreach...@googlegroups.com=20
> <javascript:>.=20
> > To view this discussion on the web visit=20
> https://groups.google.com/d/msgid/outreachy-kernel/1425310334-16039-1-git=
-send-email-haticeerturk27%40gmail.com.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >


------=_Part_2247_1836198230.1425310852372
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><div style=3D"direction: ltr; text-align: left;" id=3D"Out=
putText" tabindex=3D"99999" class=3D"Wrap"><div><span class=3D"" id=3D"ouHi=
ghlight__0_14TO0_15">A single package</span><span id=3D"noHighlight_0.19663=
098702983195"> </span><span class=3D"" id=3D"ouHighlight__16_24TO17_26">hav=
e to be</span><span id=3D"noHighlight_0.9176659239519888"> </span><span cla=
ss=3D"" id=3D"ouHighlight__26_33TO28_31">both</span><span id=3D"noHighlight=
_0.9704449842681822">?</span></div></div><br><br>2 Mart 2015 Pazartesi 17:3=
6:35 UTC+2 tarihinde Julia Lawall yazd=C4=B1:<blockquote class=3D"gmail_quo=
te" style=3D"margin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;paddi=
ng-left: 1ex;">On Mon, 2 Mar 2015, Hatice ERT=C3=9CRK wrote:
<br>
<br>&gt; Space prohibited before that open parenthesis '(' . That's why add=
 space
<br>&gt; before that open parenthesis.
<br>
<br>There are a lot fo spacing issues related to { on the same lines as the=
se
<br>parenthesis problems. &nbsp;You should fix these at the same time.
<br>
<br>julia
<br>
<br>&gt; Signed-off-by: Hatice ERTURK &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"5EAcPul9uwwJ" rel=3D"nofollow">haticee...=
@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;.../staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c | 23=
2 ++++++++++-----------
<br>&gt; &nbsp;1 file changed, 116 insertions(+), 116 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_sof=
tmac.c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c
<br>&gt; index 71b7bb8..057d4d1 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c
<br>&gt; @@ -112,7 +112,7 @@ static void ieee80211_WMM_Info(struct ieee8021=
1_device *ieee, u8 **tag_p)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D 0=
x00;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D 0=
x01;
<br>&gt; &nbsp;#ifdef SUPPORT_USPD
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;curre=
nt_<wbr>network.wmm_info &amp; 0x80) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.wmm_<wbr>info &amp; 0x80) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D 0x0f|MAX_SP_Len;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D MAX_SP_Len;
<br>&gt; @@ -165,7 +165,7 @@ static struct sk_buff *dequeue_mgmt(struct iee=
e80211_device *ieee)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct sk_bu=
ff *ret;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;mgmt_=
queue_<wbr>tail =3D=3D ieee-&gt;mgmt_queue_head)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;mgmt=
_queue_tail =3D=3D ieee-&gt;mgmt_queue_head)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return NULL;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ret =3D ieee=
-&gt;mgmt_queue_ring[ieee-&gt;<wbr>mgmt_queue_tail];
<br>&gt; @@ -187,14 +187,14 @@ static u8 MgntQuery_MgntFrameTxRate(<wbr>str=
uct ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 rate;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 2008/01/2=
5 MH For broadcom, MGNT frame set as OFDM 6M. */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(pHTInfo-&gt;IO=
TAction &amp; HT_IOT_ACT_MGNT_USE_CCK_6M)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (pHTInfo-&gt;I=
OTAction &amp; HT_IOT_ACT_MGNT_USE_CCK_6M)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rate =3D 0x0c;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rate =3D ieee-&gt;basic_rate &amp; 0x7f=
;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(rate =3D=3D 0)=
{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate =3D=3D 0=
){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 2005.01.26, by rcnjko. */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;mode =3D=3D IEEE_A||
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;mode =3D=3D IEEE_A||
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ieee-&gt;mode=3D=3D IEEE_N_5G||
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; (ieee-&gt;mode=3D=3D IEEE_N_24G=
&amp;&amp;!pHTInfo-&gt;<wbr>bCurSuppCCK))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;rate =3D 0x0c;
<br>&gt; @@ -237,8 +237,8 @@ inline void softmac_mgmt_xmit(struct sk_buff *=
skb, struct ieee80211_device *ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tcb_desc-&gt=
;<wbr>bTxDisableRateFallBack =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tcb_desc-&gt=
;<wbr>bTxUseDriverAssingedRate =3D 1;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(single){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>queue_stop){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (single){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;queue_stop){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>enqueue_mgmt(ieee, skb);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>header-&gt;seq_ctl =3D cpu_to_le16(ieee-&gt;seq_ctrl[0]&lt;<w=
br>&lt;4);
<br>&gt; @@ -267,7 +267,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *=
skb, struct ieee80211_device *ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;seq_ctrl[0]++;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* check whether the managed packet que=
ued greater than 5 */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;<wbr>check_nic_enough_desc(ieee=
-&gt;<wbr>dev,tcb_desc-&gt;queue_index)||\
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;check_nic_enough_desc(<wbr>iee=
e-&gt;dev,tcb_desc-&gt;queue_<wbr>index)||\
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;(skb_queue_le=
n(&amp;ieee-&gt;skb_<wbr>waitQ[tcb_desc-&gt;queue_index]) !=3D 0)||\
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;(ieee-&gt;que=
ue_stop) ) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;/* insert the skb packet to the management queue */
<br>&gt; @@ -293,7 +293,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buf=
f *skb, struct ieee80211_device *i
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(struct ieee80211_hdr_3addr &nbsp;*) sk=
b-&gt;data;
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(single){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (single){
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;header-&gt;seq_<wbr>ctl =3D cpu_to_le16=
(ieee-&gt;seq_ctrl[0] &lt;&lt; 4);
<br>&gt;
<br>&gt; @@ -364,7 +364,7 @@ struct sk_buff *ieee80211_get_beacon_(struct i=
eee80211_device *ieee);
<br>&gt; &nbsp;static void ieee80211_send_beacon(struct ieee80211_device *i=
eee)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct sk_bu=
ff *skb;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;ieee=
_up)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;iee=
e_up)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* unsigned =
long flags; */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skb =3D ieee=
80211_get_beacon_(ieee);
<br>&gt; @@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct ieee8=
0211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(MSECS( ieee-&gt;current_network.beacon=
_<wbr>interval -5));
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;beacon_lock,flags); */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;beaco=
n_txing &amp;&amp; ieee-&gt;ieee_up){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;beac=
on_txing &amp;&amp; ieee-&gt;ieee_up){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* if(!timer_pending(&amp;ieee-&gt;<wbr=
>beacon_timer))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;add_<wbr>timer(&amp;ieee-&gt;beacon_timer); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mod_timer(&amp;<wbr>ieee-&gt;beacon_tim=
er,jiffies+(<wbr>MSECS(ieee-&gt;current_network.<wbr>beacon_interval-5)));
<br>&gt; @@ -430,14 +430,14 @@ void ieee80211_softmac_scan_syncro(<wbr>stru=
ct ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memcpy(chann=
el_map, GET_DOT11D_INFO(ieee)-&gt;<wbr>channel_map, MAX_CHANNEL_NUMBER+1);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down(&amp;ie=
ee-&gt;scan_sem)<wbr>;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while(1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ch++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (ch &gt; MAX_CHANNEL_NUMBER)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;goto out; /* =
scan completed */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while(!<wbr>channel_map[ch]);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while (!channel_map[ch]);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* this function can be called in two s=
ituations
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * 1- We have switched to ad-hoc mode a=
nd we are
<br>&gt; @@ -461,13 +461,13 @@ void ieee80211_softmac_scan_syncro(<wbr>stru=
ct ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;state =3D=3D IEEE80211_LIN=
KED)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;goto out;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;set_<wbr>chan(ieee-&gt;dev, ch=
);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(channel_<wbr>map[ch] =3D=3D 1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (channel_map[ch] =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>send_probe_requests(ieee=
);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* this prevent excessive time wait whe=
n we
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * need to wait for a syncro scan to en=
d..
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>state &lt; IEEE80211_LINKED=
)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;state &lt; IEEE80211_LINKED)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sync_scan_hurryup)
<br>&gt; @@ -478,13 +478,13 @@ void ieee80211_softmac_scan_syncro(<wbr>stru=
ct ieee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;out:
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;state=
 &lt; IEEE80211_LINKED){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e &lt; IEEE80211_LINKED){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>actscanning =3D false;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;up(&amp;ieee-&gt;<wbr>scan_sem);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;syn=
c_scan_<wbr>hurryup =3D 0;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_DOT11D_ENAB=
LE(<wbr>ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_DOT11D_ENA=
BLE(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DOT11D_<wbr>ScanComplete(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;up(&amp;ieee=
-&gt;scan_sem);
<br>&gt; &nbsp;}
<br>&gt; @@ -498,7 +498,7 @@ static void ieee80211_softmac_scan_wq(<wbr>str=
uct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;static short=
 watchdog;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 channel_m=
ap[MAX_CHANNEL_<wbr>NUMBER+1];
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memcpy(chann=
el_map, GET_DOT11D_INFO(ieee)-&gt;<wbr>channel_map, MAX_CHANNEL_NUMBER+1);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;ieee=
_up)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;iee=
e_up)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down(&amp;ie=
ee-&gt;scan_sem)<wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do{
<br>&gt; @@ -512,11 +512,11 @@ static void ieee80211_softmac_scan_wq(<wbr>s=
truct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;goto out; /* =
no good chans */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while(!channel_m=
ap[<wbr>ieee-&gt;current_network.channel]<wbr>);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while (!channel_=
map[ieee-&gt;current_<wbr>network.channel]);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt=
;scanning =3D=3D 0 )
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;set=
_chan(ieee-&gt;<wbr>dev, ieee-&gt;current_network.channel)<wbr>;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(channel_map[ie=
ee-&gt;<wbr>current_network.channel] =3D=3D 1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (channel_map[i=
eee-&gt;current_<wbr>network.channel] =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>send_probe_requests(ieee=
);
<br>&gt;
<br>&gt;
<br>&gt; @@ -525,7 +525,7 @@ static void ieee80211_softmac_scan_wq(<wbr>str=
uct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;up(&amp;ieee=
-&gt;scan_sem);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt; &nbsp;out:
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_DOT11D_ENAB=
LE(<wbr>ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_DOT11D_ENA=
BLE(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;DOT11D_<wbr>ScanComplete(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;act=
scanning =3D false;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;watchdog =3D=
 0;
<br>&gt; @@ -562,7 +562,7 @@ static void ieee80211_beacons_stop(struct ieee=
80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;void ieee80211_stop_send_beacons(<wbr>struct ieee80211_devic=
e *ieee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;stop_=
send_<wbr>beacons)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stop=
_send_beacons)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;stop_<wbr>send_beacons(ieee-&g=
t;dev);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt=
;softmac_features &amp; IEEE_SOFTMAC_BEACONS)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>beacons_stop(ieee);
<br>&gt; @@ -571,9 +571,9 @@ EXPORT_SYMBOL(ieee80211_stop_<wbr>send_beacons=
);
<br>&gt;
<br>&gt; &nbsp;void ieee80211_start_send_beacons(<wbr>struct ieee80211_devi=
ce *ieee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;start=
_send_<wbr>beacons)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;star=
t_send_beacons)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;start_<wbr>send_beacons(ieee-&=
gt;dev, ieee-&gt;basic_rate);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;softm=
ac_<wbr>features &amp; IEEE_SOFTMAC_BEACONS)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;soft=
mac_features &amp; IEEE_SOFTMAC_BEACONS)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>beacons_start(ieee);
<br>&gt; &nbsp;}
<br>&gt; &nbsp;EXPORT_SYMBOL(ieee80211_<wbr>start_send_beacons);
<br>&gt; @@ -609,9 +609,9 @@ EXPORT_SYMBOL(ieee80211_stop_<wbr>scan);
<br>&gt; &nbsp;/* called with ieee-&gt;lock held */
<br>&gt; &nbsp;static void ieee80211_start_scan(struct ieee80211_device *ie=
ee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_DOT11D_ENAB=
LE(<wbr>ieee) )
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_DOT11D_ENA=
BLE(ieee) )
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_<wbr>COUNTRY_IE_VALID(ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_COUNTRY_IE_VALID(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>RESET_CIE_WATCHDOG(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -629,9 +629,9 @@ static void ieee80211_start_scan(struct ieee80=
211_device *ieee)
<br>&gt; &nbsp;/* called with wx_sem held */
<br>&gt; &nbsp;void ieee80211_start_scan_syncro(<wbr>struct ieee80211_devic=
e *ieee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_DOT11D_ENAB=
LE(<wbr>ieee) )
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_DOT11D_ENA=
BLE(ieee) )
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_<wbr>COUNTRY_IE_VALID(ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_COUNTRY_IE_VALID(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>RESET_CIE_WATCHDOG(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -670,11 +670,11 @@ inline struct sk_buff *ieee80211_authenticat=
ion_req(<wbr>struct ieee80211_network *be
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memcpy(auth-=
&gt;header.<wbr>addr3, beacon-&gt;bssid, ETH_ALEN);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* auth-&gt;=
algorithm =3D ieee-&gt;open_wep ? WLAN_AUTH_OPEN : WLAN_AUTH_SHARED_KEY; */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;auth_=
mode =3D=3D 0)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;auth=
_mode =3D=3D 0)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;auth-&gt;<wbr>algorithm =3D WLAN_AUTH_O=
PEN;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(ieee-&gt;=
auth_mode =3D=3D 1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt=
;auth_mode =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;auth-&gt;<wbr>algorithm =3D WLAN_AUTH_S=
HARED_KEY;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(ieee-&gt;=
auth_mode =3D=3D 2)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt=
;auth_mode =3D=3D 2)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;auth-&gt;<wbr>algorithm =3D WLAN_AUTH_O=
PEN;/* 0x80; */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=3D&gt;%s():auth-&gt;algo=
rithm is %d\n",__func__,auth-&gt;<wbr>algorithm);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;auth-&gt;tra=
nsaction =3D cpu_to_le16(ieee-&gt;associate_<wbr>seq);
<br>&gt; @@ -712,14 +712,14 @@ static struct sk_buff *ieee80211_probe_resp(=
struct ieee80211_device *ieee, u8 *d
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 *tmp_gene=
ric_ie_buf=3DNULL;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 tmp_gener=
ic_ie_len=3D0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(rate_ex_len &g=
t; 0) rate_ex_len+=3D2;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate_ex_len &=
gt; 0) rate_ex_len+=3D2;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;curre=
nt_<wbr>network.capability &amp; WLAN_CAPABILITY_IBSS)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.<wbr>capability &amp; WLAN_CAPABILITY_IBSS)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;atim_len =3D 4;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;atim_len =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee80211_is_5=
4g(&amp;<wbr>ieee-&gt;current_network))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee80211_is_=
54g(&amp;ieee-&gt;<wbr>current_network))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;erp_len =3D 3;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;erp_len =3D 0;
<br>&gt; @@ -739,7 +739,7 @@ static struct sk_buff *ieee80211_probe_resp(st=
ruct ieee80211_device *ieee, u8 *d
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>HTConst=
ructInfoElement(ieee,<wbr>tmp_ht_info_buf,&amp;tmp_ht_info_<wbr>len, encryp=
t);
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(pHTInfo-&gt;<w=
br>bRegRT2RTAggregation)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (pHTInfo-&gt;<=
wbr>bRegRT2RTAggregation)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tmp_generic_<wbr>ie_buf =3D ieee-&gt;pH=
TInfo-&gt;<wbr>szRT2RTAggBuffer;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tmp_generic_<wbr>ie_len =3D sizeof(ieee=
-&gt;pHTInfo-&gt;<wbr>szRT2RTAggBuffer);
<br>&gt; @@ -776,7 +776,7 @@ static struct sk_buff *ieee80211_probe_resp(st=
ruct ieee80211_device *ieee, u8 *d
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;beacon_buf-&=
gt;<wbr>capability |=3D
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cpu_to_le16(<wbr>ieee-&gt;current_netwo=
rk.<wbr>capability &amp; WLAN_CAPABILITY_SHORT_<wbr>PREAMBLE); /* add short=
 preamble here */
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;short=
_slot &amp;&amp; (ieee-&gt;current_network.<wbr>capability &amp; WLAN_CAPAB=
ILITY_SHORT_SLOT))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;shor=
t_slot &amp;&amp; (ieee-&gt;current_network.<wbr>capability &amp; WLAN_CAPA=
BILITY_SHORT_SLOT))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;beacon_buf-&gt;<wbr>capability |=3D cpu=
_to_le16(WLAN_CAPABILITY_<wbr>SHORT_SLOT);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;crypt =3D ie=
ee-&gt;crypt[ieee-&gt;tx_keyidx];
<br>&gt; @@ -803,7 +803,7 @@ static struct sk_buff *ieee80211_probe_resp(st=
ruct ieee80211_device *ieee, u8 *d
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D=
 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D=
 ieee-&gt;current_network.channel;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(atim_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (atim_len){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D MFIE_TYPE_IBSS_SET;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D 2;
<br>&gt;
<br>&gt; @@ -812,12 +812,12 @@ static struct sk_buff *ieee80211_probe_resp(=
struct ieee80211_device *ieee, u8 *d
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag+=3D2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(erp_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (erp_len){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D MFIE_TYPE_ERP;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D erpinfo_content;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(rate_ex_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate_ex_len){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D MFIE_TYPE_RATES_EX;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D rate_ex_len-2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memcpy(tag, ieee-&gt;current_network.ra=
tes_<wbr>ex, rate_ex_len-2);
<br>&gt; @@ -870,7 +870,7 @@ static struct sk_buff *ieee80211_assoc_resp(st=
ruct ieee80211_device *ieee,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WLAN_<wbr>CAPABILITY_BSS : WLAN_CAPABIL=
ITY_IBSS);
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;short=
_slot)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;shor=
t_slot)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assoc-&gt;<wbr>capability |=3D cpu_to_l=
e16(WLAN_CAPABILITY_<wbr>SHORT_SLOT);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt=
;host_encrypt)
<br>&gt; @@ -1016,12 +1016,12 @@ inline struct sk_buff *ieee80211_associati=
on_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;encrypt =3D =
ieee-&gt;host_encrypt &amp;&amp; crypt &amp;&amp; crypt-&gt;ops &amp;&amp; =
((0 =3D=3D strcmp(crypt-&gt;ops-&gt;name,"WEP") || wpa_ie_len));
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Include H=
igh Throuput capability &amp;&amp; Realtek proprietary */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;pHTIn=
fo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ht_cap_buf =3D (u8 *)&amp;(ieee-&gt;pHT=
Info-&gt;SelfHTCap);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ht_cap_len =3D sizeof(ieee-&gt;pHTInfo-=
&gt;<wbr>SelfHTCap);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>HTConstructCapabilityElement(<wbr>=
ieee, ht_cap_buf, &amp;ht_cap_len, encrypt);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>pHTInfo-&gt;<wbr>bCurrentRT=
2RTAggregation)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;<wbr>bCurrentRT2RTA=
ggregation)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>realtek_ie_buf =3D ieee-&gt;pHTInfo-&gt;<wbr>szRT2RTAggBuffer=
;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>realtek_ie_len =3D sizeof( ieee-&gt;pHTInfo-&gt;<wbr>szRT2RTA=
ggBuffer);
<br>&gt; @@ -1029,16 +1029,16 @@ inline struct sk_buff *ieee80211_associati=
on_req(<wbr>struct ieee80211_network *beaco
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;qos_s=
upport)<wbr>{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;qos_=
support){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;wmm_info_len =3D beacon-&gt;qos_data.su=
pported?9:<wbr>0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(beacon-&gt;<wb=
r>bCkipSupported)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (beacon-&gt;bC=
kipSupported)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ckip_ie_len =3D 30+2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(beacon-&gt;<wb=
r>bCcxRmEnable)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (beacon-&gt;bC=
cxRmEnable)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ccxrm_ie_len =3D 6+2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1098,7 +1098,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (beacon-&=
gt;capability &amp; WLAN_CAPABILITY_SHORT_<wbr>PREAMBLE)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hdr-&gt;<wbr>capability |=3D cpu_to_le1=
6(WLAN_CAPABILITY_<wbr>SHORT_PREAMBLE); /* add short_preamble here */
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;short=
_slot)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;shor=
t_slot)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hdr-&gt;<wbr>capability |=3D cpu_to_le1=
6(WLAN_CAPABILITY_<wbr>SHORT_SLOT);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (wmm_info=
_len) //QOS
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;hdr-&gt;<wbr>capability |=3D cpu_to_le1=
6(WLAN_CAPABILITY_<wbr>QOS);
<br>&gt; @@ -1142,7 +1142,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag +=3D osCcxAironetIE.Length;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(beacon-&gt;<wb=
r>bCcxRmEnable)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (beacon-&gt;bC=
cxRmEnable)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;static u8 CcxRmCapBuf[] =3D {0x00, 0x40=
, 0x96, 0x01, 0x01, 0x00};
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;OCTET_STRING osCcxRmCap;
<br>&gt; @@ -1169,8 +1169,8 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag +=3D osCcxVerNum.Length;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* HT cap el=
ement */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;pHTIn=
fo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT)=
{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>pHTInfo-&gt;ePeerHTSpecVer =
!=3D HT_SPEC_VER_EWC)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;ePeerHTSpecVer !=3D=
 HT_SPEC_VER_EWC)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag =3D skb_put(skb, ht_cap_len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*tag+<wbr>+ =3D MFIE_TYPE_HT_CAP;
<br>&gt; @@ -1188,18 +1188,18 @@ inline struct sk_buff *ieee80211_associati=
on_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag =3D skb_=
put(skb, wmm_info_len);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(wmm_info_len) =
{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (wmm_info_len)=
 {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ieee8=
0211_WMM_Info(ieee, &amp;tag);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;#ifdef THOMAS_TURBO
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag =3D skb_=
put(skb, turbo_info_len);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(turbo_info_len=
) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (turbo_info_le=
n) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>TURBO_Info(ieee, &amp;ta=
g);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;#endif
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;pHTIn=
fo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT)=
{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>pHTInfo-&gt;ePeerHTSpecVer =
=3D=3D HT_SPEC_VER_EWC)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;ePeerHTSpecVer =3D=
=3D HT_SPEC_VER_EWC)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag =3D skb_put(skb, ht_cap_len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*tag+<wbr>+ =3D MFIE_TYPE_GENERIC;
<br>&gt; @@ -1208,7 +1208,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag +=3D ht_cap_len -2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>pHTInfo-&gt;<wbr>bCurrentRT=
2RTAggregation){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;<wbr>bCurrentRT2RTA=
ggregation){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag =3D skb_put(skb, realtek_ie_len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*tag+<wbr>+ =3D MFIE_TYPE_GENERIC;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*tag+<wbr>+ =3D realtek_ie_len - 2;
<br>&gt; @@ -1274,7 +1274,7 @@ static void ieee80211_associate_step1(<wbr>s=
truct ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* printk(KERN_WARNING "Sending authent=
ication request\n"); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;softmac_mgmt_<wbr>xmit(skb, ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* BUGON when you try to add_timer twic=
e, using mod_timer may be better, john0709 */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!timer_<wbr>pending(&amp;ieee-&gt;associa=
te_<wbr>timer)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!timer_pending(&amp;ieee-&gt;<wbr>associ=
ate_timer)){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;associate_timer.expires =3D jiffies + (HZ / 2);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;add_<wbr>timer(&amp;ieee-&gt;associate_timer);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1337,7 +1337,7 @@ static void ieee80211_associate_complete_<wb=
r>wq(struct work_struct *work)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee8=
0211_device *ieee =3D container_of(work, struct ieee80211_device, associate=
_complete_wq);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_=
INFO "Associated successfully\n");
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee80211_is_5=
4g(&amp;<wbr>ieee-&gt;current_network) &amp;&amp;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee80211_is_=
54g(&amp;ieee-&gt;<wbr>current_network) &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ieee-&gt;<wbr>modulation &amp; IEEE802=
11_OFDM_MODULATION)){
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;rate =3D 108;
<br>&gt; @@ -1359,17 +1359,17 @@ static void ieee80211_associate_complete_<=
wbr>wq(struct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;Lin=
kDetectInfo.<wbr>SlotNum =3D 2 * (1 + ieee-&gt;current_network.beacon_<wbr>=
interval/500);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* To preven=
t the immediately calling watch_dog after association. */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>=
LinkDetectInfo.<wbr>NumRecvBcnInPeriod=3D=3D0||ieee-&gt;<wbr>LinkDetectInfo=
.<wbr>NumRecvDataInPeriod=3D=3D0 )
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;Link=
DetectInfo.<wbr>NumRecvBcnInPeriod=3D=3D0||ieee-&gt;<wbr>LinkDetectInfo.<wb=
r>NumRecvDataInPeriod=3D=3D0 )
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>LinkDetectInfo.<wbr>NumRe=
cvBcnInPeriod =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>LinkDetectInfo.<wbr>NumRe=
cvDataInPeriod=3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;lin=
k_change(<wbr>ieee-&gt;dev);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;is_si=
lent_<wbr>reset =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;is_s=
ilent_reset =3D=3D 0){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D&gt;normal associate\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;notify_wx_as=
soc_<wbr>event(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(ieee-&gt;=
is_silent_reset =3D=3D 1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt=
;is_silent_reset =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D&gt;silent reset associate\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;is_<wbr>silent_reset =3D 0;
<br>&gt; @@ -1477,7 +1477,7 @@ inline void ieee80211_softmac_new_net(<wbr>s=
truct ieee80211_device *ieee, struct ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Join the network for the first time *=
/
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>AsocRetryCount =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* for HT by amy 080514 */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((ieee-&gt;current_<wbr>network.qos_data.su=
pported =3D=3D 1) &amp;&amp;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((ieee-&gt;current_network.qos_<wbr>data.s=
upported =3D=3D 1) &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;/* (ieee-&gt;pHTInfo-&gt;bEnableH=
T &amp;&amp; ieee-&gt;current_network.bssht.<wbr>bdSupportHT)) */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ieee-&gt;current_network.bssht.<=
wbr>bdSupportHT)
<br>&gt; &nbsp;/*WB, 2008.09.09:bCurrentHTSupport and bEnableHT two flags a=
re going to put together to check whether we are in HT now, so needn't to c=
heck bEnableHT flags here. That's is to say we will set to HT support whene=
ver joined AP has the ability to support HT. And whether we are in HT or no=
t, please check bCurrentHTSupport&amp;&amp;bEnableHT now please.*/
<br>&gt; @@ -1493,7 +1493,7 @@ inline void ieee80211_softmac_new_net(<wbr>s=
truct ieee80211_device *ieee, struct ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;state =3D IEEE80211_ASSOCIATING=
;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;queue_work(ieee-&gt;<wbr>wq, &amp;ieee-&=
gt;associate_procedure_wq)<wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;}else{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee80211_is_<wbr>54g(&amp;ieee-&gt;curren=
t_network) &amp;&amp;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee80211_is_54g(&amp;ieee-&gt;<wbr>curre=
nt_network) &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;(ieee-&gt;<wbr>modulation &amp; IEEE80211_OFDM_MODULATION)){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;ieee-&gt;rate =3D 108;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;ieee-&gt;<wbr>SetWirelessMode(ieee-&gt;dev, IEEE_G);
<br>&gt; @@ -1548,10 +1548,10 @@ static inline u16 auth_parse(struct sk_buf=
f *skb, u8 **challenge, int *chlen)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*challenge =
=3D NULL;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a =3D (struc=
t ieee80211_authentication *) skb-&gt;data;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(skb-&gt;len &g=
t; (sizeof(struct ieee80211_authentication) +3)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
gt; (sizeof(struct ieee80211_authentication) +3)){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;t =3D skb-&gt;data + sizeof(struct ieee=
80211_authentication);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(*(t++) =3D=3D MFIE_TYPE_CHALLENGE){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (*(t++) =3D=3D MFIE_TYPE_CHALLENGE){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*<wbr>chlen =3D *(t++);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*<wbr>challenge =3D kmemdup(t, *chlen, GFP_ATOMIC);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (!*challenge)
<br>&gt; @@ -1652,7 +1652,7 @@ static inline u16 assoc_parse(struct ieee802=
11_device *ieee, struct sk_buff *skb
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*aid =3D le1=
6_to_cpu(response_head-&gt;<wbr>aid) &amp; 0x3fff;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;status_code =
=3D le16_to_cpu(response_head-&gt;<wbr>status);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((status_code=
=3D=3D<wbr>WLAN_STATUS_ASSOC_DENIED_RATES || \
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((status_code=
=3D=3DWLAN_STATUS_<wbr>ASSOC_DENIED_RATES || \
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; stat=
us_code=3D=3DWLAN_STATUS_CAPS_<wbr>UNSUPPORTED)&amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ((ie=
ee-&gt;mode =3D=3D IEEE_G) &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbs=
p;(ieee-&gt;current_network.mode =3D=3D IEEE_N_24G) &amp;&amp;
<br>&gt; @@ -1737,34 +1737,34 @@ static short ieee80211_sta_ps_sleep(struct=
 ieee80211_device *ieee, u32 *time_h,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;dtim =3D iee=
e-&gt;current_network.dtim_<wbr>data;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* printk("D=
TIM\n"); */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!(dtim &amp; I=
EEE80211_DTIM_VALID))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!(dtim &amp; =
IEEE80211_DTIM_VALID))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;timeout =3D =
ieee-&gt;current_network.beacon_<wbr>interval; /* should we use ps_timeout =
value or beacon_interval
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("VALI=
D\n"); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;cur=
rent_<wbr>network.dtim_data =3D IEEE80211_DTIM_INVALID;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(dtim &amp; ((I=
EEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)&amp; ieee-&gt;ps))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (dtim &amp; ((=
IEEE80211_DTIM_UCAST | IEEE80211_DTIM_MBCAST)&amp; ieee-&gt;ps))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 2;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!time_after(<w=
br>jiffies, ieee-&gt;dev-&gt;trans_start + MSECS(timeout)))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!time_after(j=
iffies, ieee-&gt;dev-&gt;trans_start + MSECS(timeout)))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!time_after(<w=
br>jiffies, ieee-&gt;last_rx_ps_time + MSECS(timeout)))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!time_after(j=
iffies, ieee-&gt;last_rx_ps_time + MSECS(timeout)))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((ieee-&gt;soft=
mac_<wbr>features &amp; IEEE_SOFTMAC_SINGLE_QUEUE ) &amp;&amp;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((ieee-&gt;sof=
tmac_features &amp; IEEE_SOFTMAC_SINGLE_QUEUE ) &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ieee-&gt;mgmt_<wbr>queue_tail !=3D iee=
e-&gt;mgmt_queue_head))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(time_l){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_l){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*time_l =3D ieee-&gt;current_network.la=
st_<wbr>dtim_sta_time[0]
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;+ (ieee-&gt;current_network.beacon_<wbr>interval
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;* ieee-&gt;current_network.dtim_<wbr>period) * 1000;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(time_h){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_h){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*time_h =3D ieee-&gt;current_network.la=
st_<wbr>dtim_sta_time[1];
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(time_l &amp;&amp; *time_l &lt; ieee-&gt;c=
urrent_network.last_<wbr>dtim_sta_time[0])
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_l &amp;&amp; *time_l &lt; ieee-&gt;=
current_network.last_<wbr>dtim_sta_time[0])
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*<wbr>time_h +=3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -1783,7 +1783,7 @@ static inline void ieee80211_sta_ps(struct i=
eee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((ieee-&gt;ps =
=3D=3D IEEE80211_PS_DISABLED ||
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((ieee-&gt;ps =
=3D=3D IEEE80211_PS_DISABLED ||
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;iw_mode !=3D IW_MODE_INFRA ||
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;state !=3D IEEE80211_LINKED)){
<br>&gt;
<br>&gt; @@ -1797,19 +1797,19 @@ static inline void ieee80211_sta_ps(struct=
 ieee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sleep =3D ie=
ee80211_sta_ps_sleep(ieee,&amp;<wbr>th, &amp;tl);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 2 wake, 1=
 sleep, 0 do nothing */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(sleep =3D=3D 0=
)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (sleep =3D=3D =
0)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(sleep =3D=3D 1=
){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (sleep =3D=3D =
1){
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;sta_<wbr>sleep =3D=3D 1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_sleep =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;enter_sleep_state(ieee-&gt;dev, th, tl);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(ieee-&gt;sta_sleep =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt;sta_sleep =3D=3D 0){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;/* printk("send null 1\n"); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;spin_<wbr>lock_irqsave(&amp;ieee-&gt;mgmt_tx_<wbr>lock, flags2);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;if(<wbr>ieee-&gt;ps_is_queue_empty(ieee-&gt;<wbr>dev)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;if (ieee-&gt;ps_is_queue_empty(ieee-<wbr>&gt;dev)){
<br>&gt;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;ieee-&gt;sta_=
sleep =3D 2;
<br>&gt; @@ -1826,7 +1826,7 @@ static inline void ieee80211_sta_ps(struct i=
eee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else if(sleep =
=3D=3D 2){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else if (sleep =
=3D=3D 2){
<br>&gt; &nbsp;/* #warning CHECK_LOCK_HERE */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_<wbr>irqsave(&amp;ieee-&gt;mg=
mt_tx_lock, flags2);
<br>&gt;
<br>&gt; @@ -1842,8 +1842,8 @@ out:
<br>&gt;
<br>&gt; &nbsp;void ieee80211_sta_wakeup(struct ieee80211_device *ieee, sho=
rt nl)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;sta_s=
leep =3D=3D 0){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(nl){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (nl){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>printk("Warning: driver is probably failing to report TX ps e=
rror\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;ps_request_tx_ack(ieee-&gt;dev);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>ieee80211_sta_ps_send_null_<wbr>frame(ieee, 0);
<br>&gt; @@ -1852,12 +1852,12 @@ void ieee80211_sta_wakeup(struct ieee80211=
_device *ieee, short nl)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;sta_s=
leep =3D=3D 1)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta_<wbr>wake_up(ieee-&gt;dev)=
;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta=
_sleep =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(nl){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (nl){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;ps_<wbr>request_tx_ack(ieee-&g=
t;dev);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>sta_ps_send_null_frame(i=
eee, 0);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1869,9 +1869,9 @@ void ieee80211_ps_tx_ack(struct ieee80211_de=
vice *ieee, short success)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;sta_s=
leep =3D=3D 2){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 2){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Null frame with PS bit set */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(success){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (success){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;sta_sleep =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;enter_sleep_state(ieee-&gt;dev,<wbr>ieee-&gt;ps_th,i=
eee-&gt;ps_tl);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1882,7 +1882,7 @@ void ieee80211_ps_tx_ack(struct ieee80211_de=
vice *ieee, short success)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 21112005 =
- tx again null without PS bit if lost */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else {
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if((ieee-&gt;<wbr>sta_sleep =3D=3D 0) &amp;&=
amp; !success){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((ieee-&gt;sta_sleep =3D=3D 0) &amp;&amp;=
 !success){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;spin_<wbr>lock_irqsave(&amp;ieee-&gt;mgmt_tx_<wbr>lock, flags2);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>ieee80211_sta_ps_send_null_<wbr>frame(ieee, 0);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;spin_<wbr>unlock_irqrestore(&amp;ieee-&gt;mgmt_<wbr>tx_lock, flags=
2);
<br>&gt; @@ -1935,16 +1935,16 @@ ieee80211_rx_frame_softmac(<wbr>struct iee=
e80211_device *ieee, struct sk_buff *skb,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* struct ie=
ee80211_info_element *info_element; */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;bool bSuppor=
tNmode =3D true, bHalfSupportNmode =3D false; /* default support N mode, di=
sable halfNmode */
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;prot=
o_<wbr>started)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;pro=
to_started)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;sta_s=
leep || (ieee-&gt;ps !=3D IEEE80211_PS_DISABLED &amp;&amp;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep || (ieee-&gt;ps !=3D IEEE80211_PS_DISABLED &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;iw_mode =3D=3D IW_MODE_INFRA &=
amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;state =3D=3D IEEE80211_LINKED)=
)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tasklet_<wbr>schedule(&amp;ieee-&gt;ps_=
task);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(WLAN_FC_GET_ST=
YPE(<wbr>header-&gt;frame_ctl) !=3D IEEE80211_STYPE_PROBE_RESP &amp;&amp;
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (WLAN_FC_GET_S=
TYPE(header-&gt;<wbr>frame_ctl) !=3D IEEE80211_STYPE_PROBE_RESP &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;WLAN_FC_GET_<wbr>STYPE(header-&gt;frame=
_ctl) !=3D IEEE80211_STYPE_BEACON)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;last_<wbr>rx_ps_time =3D jiffi=
es;
<br>&gt;
<br>&gt; @@ -1968,7 +1968,7 @@ ieee80211_rx_frame_softmac(<wbr>struct ieee8=
0211_device *ieee, struct sk_buff *skb,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;ieee-&gt;soft=
mac_stats.rx_ass_<wbr>ok++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;/* station su=
pport qos */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;/* Let the re=
gister setting defaultly with Legacy station */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if(ieee-&gt;qos_su=
pport) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (ieee-&gt;qos_s=
upport) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;assoc_resp =3D (struct ieee80211_assoc_r=
esponse_frame *)skb-&gt;data;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memset(network, 0, sizeof(*network));
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee80211_parse_info_param(<wbr>ieee=
,assoc_resp-&gt;info_element,<wbr>\
<br>&gt; @@ -1994,7 +1994,7 @@ ieee80211_rx_frame_softmac(<wbr>struct ieee8=
0211_device *ieee, struct sk_buff *skb,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;IEEE80211_DEB=
UG_MGMT(
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;"Association response status code 0x%x\n=
",
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;errcode);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if(ieee-&gt;AsocRe=
tryCount &lt; RT_ASOC_RETRY_LIMIT) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (ieee-&gt;AsocR=
etryCount &lt; RT_ASOC_RETRY_LIMIT) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;queue_work(ieee-&gt;<wbr>wq, &amp;ieee-&=
gt;associate_procedure_wq)<wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>associate_abort(ieee);
<br>&gt; @@ -2022,15 +2022,15 @@ ieee80211_rx_frame_softmac(<wbr>struct iee=
e80211_device *ieee, struct sk_buff *skb,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;errcode =3D auth_parse(skb, &amp;challen=
ge, &amp;chlen);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!errcode) {
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;if(ieee-&gt;<wbr>open_wep || !challenge){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;if (ieee-&gt;open_wep || !challenge){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>ieee-&gt;state=
 =3D IEEE80211_ASSOCIATING_<wbr>AUTHENTICATED;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>ieee-&gt;softm=
ac_stats.rx_auth_<wbr>rs_ok++;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(<wbr>!(ieee-&gt;pHTIn=
fo-&gt;IOTAction&amp;HT_<wbr>IOT_ACT_PURE_N_MODE))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!(ieee-&gt;pHTInfo-&=
gt;IOTAction&amp;<wbr>HT_IOT_ACT_PURE_N_MODE))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;<wbr>GetNmodeSupportBySecCf=
g(ieee-&gt;<wbr>dev))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;/<wbr>* WEP or TKIP encryption */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;if(<wbr>IsHTHalfNmodeAPs(ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;if (IsHTHalfNmodeAPs(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>bSupportNmode =
=3D true;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>bHalfSupportNmo=
de =3D true;
<br>&gt; @@ -2044,7 +2044,7 @@ ieee80211_rx_frame_softmac(<wbr>struct ieee8=
0211_device *ieee, struct sk_buff *skb,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Dummy wirless mo=
de setting to avoid encryption issue */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(<wbr>bSupportNmode) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (bSupportNmode) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* N mode setting */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;SetWirelessMode(<wbr>ieee-&gt;de=
v, \
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>curren=
t_network.mode);
<br>&gt; @@ -2153,11 +2153,11 @@ void ieee80211_softmac_xmit(struct ieee802=
11_txb *txb, struct ieee80211_device *
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta=
ts.tx_bytes +=3D txb-&gt;payload_size;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta=
ts.tx_<wbr>packets++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tcb_desc =3D=
 (cb_desc *)(txb-&gt;fragments[0]-&gt;cb + MAX_DEV_ADDR_SIZE);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(tcb_desc-&gt;<=
wbr>bMulticast) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (tcb_desc-&gt;=
bMulticast) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;stats.<wbr>multicast++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* if xmit a=
vailable, just xmit it immediately, else just insert it to the wait queue *=
/
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(i =3D 0; i &l=
t; txb-&gt;nr_frags; i++) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i =3D 0; i &=
lt; txb-&gt;nr_frags; i++) {
<br>&gt; &nbsp;#ifdef USB_TX_DRIVER_AGGREGATION_<wbr>ENABLE
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if ((skb_queue_len(&amp;ieee-&gt;skb_<w=
br>drv_aggQ[queue_index]) !=3D 0) ||
<br>&gt; &nbsp;#else
<br>&gt; @@ -2198,7 +2198,7 @@ EXPORT_SYMBOL(ieee80211_<wbr>softmac_xmit);
<br>&gt; &nbsp;static void ieee80211_resume_tx(struct ieee80211_device *iee=
e)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(i =3D ieee-&g=
t;tx_pending.frag; i &lt; ieee-&gt;tx_pending.txb-&gt;nr_<wbr>frags; i++) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i =3D ieee-&=
gt;tx_pending.frag; i &lt; ieee-&gt;tx_pending.txb-&gt;nr_<wbr>frags; i++) =
{
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;queue_stop){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;tx_pending.frag =3D i;
<br>&gt; @@ -2248,7 +2248,7 @@ void ieee80211_wake_queue(struct ieee80211_d=
evice *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;que=
ue_stop =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;softm=
ac_<wbr>features &amp; IEEE_SOFTMAC_SINGLE_QUEUE){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;soft=
mac_features &amp; IEEE_SOFTMAC_SINGLE_QUEUE){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (!ieee-&gt;queue_stop &amp;&amp; =
(skb =3D dequeue_mgmt(ieee))){
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>header =3D (struct ieee80211_hdr_3addr &nbsp;*) skb-&gt;data;
<br>&gt; @@ -2327,7 +2327,7 @@ void ieee80211_start_master_bss(<wbr>struct =
ieee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;static void ieee80211_start_monitor_mode(<wbr>struct ieee802=
11_device *ieee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;raw_t=
x){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;raw_=
tx){
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;data_hard_resume)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;data_hard_resume(ieee-&gt;dev);
<br>&gt; @@ -2347,7 +2347,7 @@ static void ieee80211_start_ibss_wq(struct w=
ork_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * (abort) t=
his wq (when syncro scanning) before sleeping
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * on the se=
maphore
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;prot=
o_<wbr>started){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;pro=
to_started){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3Doh driver down return\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2386,10 +2386,10 @@ static void ieee80211_start_ibss_wq(struct=
 work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* the netwo=
rk definitively is not here.. create a new cell */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt=
;state =3D=3D IEEE80211_NOLINK){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("<wbr>creating new IBSS cell\n")=
;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;<wbr>wap_set)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;wap_set)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>ieee80211_randomize_cell(ieee)<wbr>;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>modulation &amp; IEEE80211_=
CCK_MODULATION){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_CCK_=
MODULATION){
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_len =3D 4;
<br>&gt;
<br>&gt; @@ -2401,7 +2401,7 @@ static void ieee80211_start_ibss_wq(struct w=
ork_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_len =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>modulation &amp; IEEE80211_=
OFDM_MODULATION){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_OFDM=
_MODULATION){
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_ex_len =3D 8;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_ex[0] =3D IEEE80211_BASIC_RATE=
_MASK | IEEE80211_OFDM_RATE_6MB;
<br>&gt; @@ -2424,7 +2424,7 @@ static void ieee80211_start_ibss_wq(struct w=
ork_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>SetWirelessMode(ieee-&gt;=
dev, IEEE_G);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>current_network.atim_wind=
ow =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>current_network.capabilit=
y =3D WLAN_CAPABILITY_IBSS;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;<wbr>short_slot)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;short_slot)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.capability |=3D WLAN_CAPABILITY_SHOR=
T_SLOT;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2458,9 +2458,9 @@ void ieee80211_start_bss(struct ieee80211_de=
vice *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Ref: 802.11=
d 11.1.3.3
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; STA shall n=
ot start a BSS unless properly formed Beacon frame including a Country IE.
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*/
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_DOT11D_ENAB=
LE(<wbr>ieee) &amp;&amp; !IS_COUNTRY_IE_VALID(ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_DOT11D_ENA=
BLE(ieee) &amp;&amp; !IS_COUNTRY_IE_VALID(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(! ieee-&gt;bGlobalDomain)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (! ieee-&gt;bGlobalDomain)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>return;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2499,7 +2499,7 @@ void ieee80211_disassociate(struct ieee80211=
_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt=
;data_hard_stop)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;data_hard_stop(ieee-&gt;dev);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(IS_DOT11D_ENAB=
LE(<wbr>ieee))
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (IS_DOT11D_ENA=
BLE(ieee))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Dot11d_Reset(<wbr>ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta=
te =3D IEEE80211_NOLINK;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;is_=
set_key =3D false;
<br>&gt; @@ -2517,10 +2517,10 @@ static void ieee80211_associate_retry_wq(<=
wbr>struct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;unsigned lon=
g flags;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down(&amp;ie=
ee-&gt;wx_sem);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!ieee-&gt;prot=
o_<wbr>started)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;pro=
to_started)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto exit;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;state=
 !=3D IEEE80211_ASSOCIATING_RETRY)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e !=3D IEEE80211_ASSOCIATING_RETRY)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto exit;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* until we =
do not set the state to IEEE80211_NOLINK
<br>&gt; @@ -2542,7 +2542,7 @@ static void ieee80211_associate_retry_wq(<wb=
r>struct work_struct *work)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(ieee-&gt;state=
 =3D=3D IEEE80211_NOLINK)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_NOLINK)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>start_scan(ieee);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_=
<wbr>irqrestore(&amp;ieee-&gt;lock, flags);
<br>&gt; @@ -2576,7 +2576,7 @@ struct sk_buff *ieee80211_get_beacon(struct =
ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee8=
0211_probe_response *b;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skb =3D ieee=
80211_get_beacon_(ieee);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if(!skb)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!skb)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return NULL;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;b =3D (struc=
t ieee80211_probe_response *) skb-&gt;data;
<br>&gt; @@ -2640,7 +2640,7 @@ void ieee80211_start_protocol(<wbr>struct ie=
ee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ch++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (ch &gt; MAX_CHANNEL_NUMBER)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;return; /* no=
 channel found */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while(!GET_<wbr>DOT11D_INFO(ieee)-&gt;chann=
el_<wbr>map[ch]);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while (!GET_DOT11D_INFO(ieee)-&gt;<wbr>chan=
nel_map[ch]);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>current_network.channel =
=3D ch;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -2649,7 +2649,7 @@ void ieee80211_start_protocol(<wbr>struct ie=
ee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* printk("=
=3D=3D=3D&gt;%s(), chan:%d\n", __func__, ieee-&gt;current_network.channel)<=
wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;set=
_chan(ieee-&gt;<wbr>dev,ieee-&gt;current_network.<wbr>channel); */
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(i =3D 0; i &l=
t; 17; i++) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i =3D 0; i &=
lt; 17; i++) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ieee-=
&gt;last_rxseq_num[i] =3D -1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ieee-=
&gt;last_rxfrag_num[i] =3D -1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ieee-=
&gt;last_packet_time[i] =3D 0;
<br>&gt; @@ -2672,7 +2672,7 @@ void ieee80211_start_protocol(<wbr>struct ie=
ee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (iee=
e-&gt;iw_mode =3D=3D IW_MODE_MASTER)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>start_master_bss(ieee);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if(ieee-&gt;=
iw_mode =3D=3D IW_MODE_MONITOR)
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt=
;iw_mode =3D=3D IW_MODE_MONITOR)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>start_monitor_mode(ieee)=
;
<br>&gt; &nbsp;}
<br>&gt;
<br>&gt; @@ -2685,7 +2685,7 @@ void ieee80211_softmac_init(struct ieee80211=
_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta=
te =3D IEEE80211_NOLINK;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;syn=
c_scan_<wbr>hurryup =3D 0;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for(i =3D 0; i &l=
t; 5; i++) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i =3D 0; i &=
lt; 5; i++) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;ieee-=
&gt;seq_ctrl[i] =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;pDo=
t11dInfo =3D kzalloc(sizeof(RT_DOT11D_INFO)<wbr>, GFP_ATOMIC);
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"5EAcPul9uwwJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups=
.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"5EAcPul9uwwJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1425310334-16039-1-git-send-email-hati=
ceerturk27%40gmail.com" target=3D"_blank" rel=3D"nofollow">https://groups.g=
oogle.com/d/<wbr>msgid/outreachy-kernel/<wbr>1425310334-16039-1-git-send-<w=
br>email-haticeerturk27%40gmail.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;</blockquote></div>
------=_Part_2247_1836198230.1425310852372--

------=_Part_2246_349952188.1425310852372--

