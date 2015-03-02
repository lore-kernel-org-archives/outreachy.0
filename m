X-GM-THRID: 5994634543104
Date: Mon, 2 Mar 2015 12:13:56 -0800 (PST)
From: =?UTF-8?Q?Hatice_ERT=C3=9CRK?= <haticeerturk27@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: haticeerturk27@gmail.com
Message-Id: <3fd76d7d-be19-458d-a864-d6a5a78f3fc4@googlegroups.com>
In-Reply-To: <alpine.DEB.2.10.1503021336150.3334@hadrien>
References: <1425316465-16949-1-git-send-email-haticeerturk27@gmail.com>
 <alpine.DEB.2.10.1503021336150.3334@hadrien>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieeee80211: Add
 sapace before '{' and after '}'
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_850_1494422600.1425327236596"
X-Google-Token: EISJ06cFeX7J0J6mu6E0
X-Google-IP: 78.189.63.210

------=_Part_850_1494422600.1425327236596
Content-Type: multipart/alternative; 
	boundary="----=_Part_851_1939386535.1425327236596"

------=_Part_851_1939386535.1425327236596
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: quoted-printable

This is a another patch. I told you.  This patch contains also adding=20
spaces before ' {' and the other ' (' adding spaces before. That's why=20
another patch.

2 Mart 2015 Pazartesi 21:36:36 UTC+2 tarihinde Julia Lawall yazd=C4=B1:
>
> On Mon, 2 Mar 2015, Hatice ERT=C3=9CRK wrote:=20
>
> > Space required before the open brace '{' and after the close brace '}'=
=20
> > This Error found with checkpatch.pl=20
>
> I think that this is a v2, but you have not indicated that?=20
>
> julia=20
>
> > Signed-off-by: Hatice ERTURK <haticee...@gmail.com <javascript:>>=20
> > ---=20
> >  .../staging/rtl8192u/ieee80211/ieee80211_softmac.c | 184=20
> ++++++++++-----------=20
> >  1 file changed, 92 insertions(+), 92 deletions(-)=20
> >=20
> > diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> > index 057d4d1..2c53763 100644=20
> > --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> > +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c=20
> > @@ -62,7 +62,7 @@ static void ieee80211_MFIE_Brate(struct=20
> ieee80211_device *ieee, u8 **tag_p)=20
> >  {=20
> >          u8 *tag =3D *tag_p;=20
> >=20
> > -        if (ieee->modulation & IEEE80211_CCK_MODULATION){=20
> > +        if (ieee->modulation & IEEE80211_CCK_MODULATION) {=20
> >                  *tag++ =3D MFIE_TYPE_RATES;=20
> >                  *tag++ =3D 4;=20
> >                  *tag++ =3D IEEE80211_BASIC_RATE_MASK |=20
> IEEE80211_CCK_RATE_1MB;=20
> > @@ -79,7 +79,7 @@ static void ieee80211_MFIE_Grate(struct=20
> ieee80211_device *ieee, u8 **tag_p)=20
> >  {=20
> >          u8 *tag =3D *tag_p;=20
> >=20
> > -                if (ieee->modulation & IEEE80211_OFDM_MODULATION){=20
> > +                if (ieee->modulation & IEEE80211_OFDM_MODULATION) {=20
> >=20
> >                  *tag++ =3D MFIE_TYPE_RATES_EX;=20
> >                  *tag++ =3D 8;=20
> > @@ -192,7 +192,7 @@ static u8 MgntQuery_MgntFrameTxRate(struct=20
> ieee80211_device *ieee)=20
> >          else=20
> >                  rate =3D ieee->basic_rate & 0x7f;=20
> >=20
> > -        if (rate =3D=3D 0){=20
> > +        if (rate =3D=3D 0) {=20
> >                  /* 2005.01.26, by rcnjko. */=20
> >                  if (ieee->mode =3D=3D IEEE_A||=20
> >                     ieee->mode=3D=3D IEEE_N_5G||=20
> > @@ -237,10 +237,10 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb=
,=20
> struct ieee80211_device *ieee=20
> >          tcb_desc->bTxDisableRateFallBack =3D 1;=20
> >          tcb_desc->bTxUseDriverAssingedRate =3D 1;=20
> >=20
> > -        if (single){=20
> > -                if (ieee->queue_stop){=20
> > +        if (single) {=20
> > +                if (ieee->queue_stop) {=20
> >                          enqueue_mgmt(ieee, skb);=20
> > -                }else{=20
> > +                } else {=20
> >                          header->seq_ctl =3D=20
> cpu_to_le16(ieee->seq_ctrl[0]<<4);=20
> >=20
> >                          if (ieee->seq_ctrl[0] =3D=3D 0xFFF)=20
> > @@ -255,7 +255,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *skb,=
=20
> struct ieee80211_device *ieee=20
> >                  }=20
> >=20
> >                  spin_unlock_irqrestore(&ieee->lock, flags);=20
> > -        }else{=20
> > +        } else {=20
> >                  spin_unlock_irqrestore(&ieee->lock, flags);=20
> >                  spin_lock_irqsave(&ieee->mgmt_tx_lock, flags);=20
> >=20
> > @@ -293,7 +293,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff=20
> *skb, struct ieee80211_device *i=20
> >                  (struct ieee80211_hdr_3addr  *) skb->data;=20
> >=20
> >=20
> > -        if (single){=20
> > +        if (single) {=20
> >=20
> >                  header->seq_ctl =3D cpu_to_le16(ieee->seq_ctrl[0] << 4=
);=20
> >=20
> > @@ -306,7 +306,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buff=20
> *skb, struct ieee80211_device *i=20
> >                  ieee->dev->trans_start =3D jiffies;=20
> >=20
>                  ieee->softmac_data_hard_start_xmit(skb,ieee->dev,ieee->b=
asic_rate);=20
>
> >=20
> > -        }else{=20
> > +        } else {=20
> >=20
> >                  header->seq_ctl =3D cpu_to_le16(ieee->seq_ctrl[0] << 4=
);=20
> >=20
> > @@ -369,7 +369,7 @@ static void ieee80211_send_beacon(struct=20
> ieee80211_device *ieee)=20
> >          /* unsigned long flags; */=20
> >          skb =3D ieee80211_get_beacon_(ieee);=20
> >=20
> > -        if (skb){=20
> > +        if (skb) {=20
> >                  softmac_mgmt_xmit(skb, ieee);=20
> >                  ieee->softmac_stats.tx_beacons++;=20
> >                  /* dev_kfree_skb_any(skb); edit by thomas */=20
> > @@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct=20
> ieee80211_device *ieee)=20
> >                  (MSECS( ieee->current_network.beacon_interval -5));=20
> >=20
> >          spin_lock_irqsave(&ieee->beacon_lock,flags); */=20
> > -        if (ieee->beacon_txing && ieee->ieee_up){=20
> > +        if (ieee->beacon_txing && ieee->ieee_up) {=20
> >                  /* if(!timer_pending(&ieee->beacon_timer))=20
> >                          add_timer(&ieee->beacon_timer); */=20
> >=20
>                  mod_timer(&ieee->beacon_timer,jiffies+(MSECS(ieee->curre=
nt_network.beacon_interval-5)));=20
>
> > @@ -404,7 +404,7 @@ static void ieee80211_send_probe(struct=20
> ieee80211_device *ieee)=20
> >          struct sk_buff *skb;=20
> >=20
> >          skb =3D ieee80211_probe_req(ieee);=20
> > -        if (skb){=20
> > +        if (skb) {=20
> >                  softmac_mgmt_xmit(skb, ieee);=20
> >                  ieee->softmac_stats.tx_probe_rq++;=20
> >                  /* dev_kfree_skb_any(skb); edit by thomas */=20
> > @@ -413,7 +413,7 @@ static void ieee80211_send_probe(struct=20
> ieee80211_device *ieee)=20
> >=20
> >  static void ieee80211_send_probe_requests(struct ieee80211_device=20
> *ieee)=20
> >  {=20
> > -        if (ieee->active_scan && (ieee->softmac_features &=20
> IEEE_SOFTMAC_PROBERQ)){=20
> > +        if (ieee->active_scan && (ieee->softmac_features &=20
> IEEE_SOFTMAC_PROBERQ)) {=20
> >                  ieee80211_send_probe(ieee);=20
> >                  ieee80211_send_probe(ieee);=20
> >          }=20
> > @@ -433,11 +433,11 @@ void ieee80211_softmac_scan_syncro(struct=20
> ieee80211_device *ieee)=20
> >          while (1)=20
> >          {=20
> >=20
> > -                do{=20
> > +                do {=20
> >                          ch++;=20
> >                          if (ch > MAX_CHANNEL_NUMBER)=20
> >                                  goto out; /* scan completed */=20
> > -                }while (!channel_map[ch]);=20
> > +                } while (!channel_map[ch]);=20
> >=20
> >                  /* this function can be called in two situations=20
> >                   * 1- We have switched to ad-hoc mode and we are=20
> > @@ -478,7 +478,7 @@ void ieee80211_softmac_scan_syncro(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          }=20
> >  out:=20
> > -        if (ieee->state < IEEE80211_LINKED){=20
> > +        if (ieee->state < IEEE80211_LINKED) {=20
> >                  ieee->actscanning =3D false;=20
> >                  up(&ieee->scan_sem);=20
> >          }=20
> > @@ -501,7 +501,7 @@ static void ieee80211_softmac_scan_wq(struct=20
> work_struct *work)=20
> >          if (!ieee->ieee_up)=20
> >                  return;=20
> >          down(&ieee->scan_sem);=20
> > -        do{=20
> > +        do {=20
> >                  ieee->current_network.channel =3D=20
> >                          (ieee->current_network.channel + 1) %=20
> MAX_CHANNEL_NUMBER;=20
> >                  if (watchdog++ > MAX_CHANNEL_NUMBER)=20
> > @@ -512,7 +512,7 @@ static void ieee80211_softmac_scan_wq(struct=20
> work_struct *work)=20
> >                                  goto out; /* no good chans */=20
> >                          }=20
> >                  }=20
> > -        }while (!channel_map[ieee->current_network.channel]);=20
> > +        } while (!channel_map[ieee->current_network.channel]);=20
> >          if (ieee->scanning =3D=3D 0 )=20
> >                  goto out;=20
> >          ieee->set_chan(ieee->dev, ieee->current_network.channel);=20
> > @@ -587,7 +587,7 @@ static void ieee80211_softmac_stop_scan(struct=20
> ieee80211_device *ieee)=20
> >          down(&ieee->scan_sem);=20
> >          /* spin_lock_irqsave(&ieee->lock, flags); */=20
> >=20
> > -        if (ieee->scanning =3D=3D 1){=20
> > +        if (ieee->scanning =3D=3D 1) {=20
> >                  ieee->scanning =3D 0;=20
> >=20
> >                  cancel_delayed_work(&ieee->softmac_scan_wq);=20
> > @@ -616,12 +616,12 @@ static void ieee80211_start_scan(struct=20
> ieee80211_device *ieee)=20
> >                          RESET_CIE_WATCHDOG(ieee);=20
> >                  }=20
> >          }=20
> > -        if (ieee->softmac_features & IEEE_SOFTMAC_SCAN){=20
> > -                if (ieee->scanning =3D=3D 0){=20
> > +        if (ieee->softmac_features & IEEE_SOFTMAC_SCAN) {=20
> > +                if (ieee->scanning =3D=3D 0) {=20
> >                          ieee->scanning =3D 1;=20
> >                          queue_delayed_work(ieee->wq,=20
> &ieee->softmac_scan_wq, 0);=20
> >                  }=20
> > -        }else=20
> > +        } else=20
> >                  ieee->start_scan(ieee->dev);=20
> >=20
> >  }=20
> > @@ -803,7 +803,7 @@ static struct sk_buff *ieee80211_probe_resp(struct=
=20
> ieee80211_device *ieee, u8 *d=20
> >          *(tag++) =3D 1;=20
> >          *(tag++) =3D ieee->current_network.channel;=20
> >=20
> > -        if (atim_len){=20
> > +        if (atim_len) {=20
> >                  *(tag++) =3D MFIE_TYPE_IBSS_SET;=20
> >                  *(tag++) =3D 2;=20
> >=20
> > @@ -812,12 +812,12 @@ static struct sk_buff *ieee80211_probe_resp(struc=
t=20
> ieee80211_device *ieee, u8 *d=20
> >                  tag+=3D2;=20
> >          }=20
> >=20
> > -        if (erp_len){=20
> > +        if (erp_len) {=20
> >                  *(tag++) =3D MFIE_TYPE_ERP;=20
> >                  *(tag++) =3D 1;=20
> >                  *(tag++) =3D erpinfo_content;=20
> >          }=20
> > -        if (rate_ex_len){=20
> > +        if (rate_ex_len) {=20
> >                  *(tag++) =3D MFIE_TYPE_RATES_EX;=20
> >                  *(tag++) =3D rate_ex_len-2;=20
> >                  memcpy(tag, ieee->current_network.rates_ex,=20
> rate_ex_len-2);=20
> > @@ -1169,7 +1169,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >                  tag +=3D osCcxVerNum.Length;=20
> >          }=20
> >          /* HT cap element */=20
> > -        if=20
> (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){=20
> > +        if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT=
)=20
> {=20
> >                  if (ieee->pHTInfo->ePeerHTSpecVer !=3D HT_SPEC_VER_EWC=
)=20
> >                  {=20
> >                          tag =3D skb_put(skb, ht_cap_len);=20
> > @@ -1183,7 +1183,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >=20
> >          /* choose what wpa_supplicant gives to associate. */=20
> >          tag =3D skb_put(skb, wpa_ie_len);=20
> > -        if (wpa_ie_len){=20
> > +        if (wpa_ie_len) {=20
> >                  memcpy(tag, ieee->wpa_ie, ieee->wpa_ie_len);=20
> >          }=20
> >=20
> > @@ -1198,7 +1198,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >          }=20
> >  #endif=20
> >=20
> > -        if=20
> (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT){=20
> > +        if (ieee->pHTInfo->bCurrentHTSupport&&ieee->pHTInfo->bEnableHT=
)=20
> {=20
> >                  if (ieee->pHTInfo->ePeerHTSpecVer =3D=3D HT_SPEC_VER_E=
WC)=20
> >                  {=20
> >                          tag =3D skb_put(skb, ht_cap_len);=20
> > @@ -1208,7 +1208,7 @@ inline struct sk_buff=20
> *ieee80211_association_req(struct ieee80211_network *beaco=20
> >                          tag +=3D ht_cap_len -2;=20
> >                  }=20
> >=20
> > -                if (ieee->pHTInfo->bCurrentRT2RTAggregation){=20
> > +                if (ieee->pHTInfo->bCurrentRT2RTAggregation) {=20
> >                          tag =3D skb_put(skb, realtek_ie_len);=20
> >                          *tag++ =3D MFIE_TYPE_GENERIC;=20
> >                          *tag++ =3D realtek_ie_len - 2;=20
> > @@ -1234,10 +1234,10 @@ void ieee80211_associate_abort(struct=20
> ieee80211_device *ieee)=20
> >           * Here we will check if there are good nets to associate=20
> >           * with, so we retry or just get back to NO_LINK and scanning=
=20
> >           */=20
> > -        if (ieee->state =3D=3D IEEE80211_ASSOCIATING_AUTHENTICATING){=
=20
> > +        if (ieee->state =3D=3D IEEE80211_ASSOCIATING_AUTHENTICATING) {=
=20
> >                  IEEE80211_DEBUG_MGMT("Authentication failed\n");=20
> >                  ieee->softmac_stats.no_auth_rs++;=20
> > -        }else{=20
> > +        } else {=20
> >                  IEEE80211_DEBUG_MGMT("Association failed\n");=20
> >                  ieee->softmac_stats.no_ass_rs++;=20
> >          }=20
> > @@ -1274,7 +1274,7 @@ static void ieee80211_associate_step1(struct=20
> ieee80211_device *ieee)=20
> >                  /* printk(KERN_WARNING "Sending authentication=20
> request\n"); */=20
> >                  softmac_mgmt_xmit(skb, ieee);=20
> >                  /* BUGON when you try to add_timer twice, using=20
> mod_timer may be better, john0709 */=20
> > -                if (!timer_pending(&ieee->associate_timer)){=20
> > +                if (!timer_pending(&ieee->associate_timer)) {=20
> >                          ieee->associate_timer.expires =3D jiffies + (H=
Z /=20
> 2);=20
> >                          add_timer(&ieee->associate_timer);=20
> >                  }=20
> > @@ -1338,11 +1338,11 @@ static void=20
> ieee80211_associate_complete_wq(struct work_struct *work)=20
> >          struct ieee80211_device *ieee =3D container_of(work, struct=20
> ieee80211_device, associate_complete_wq);=20
> >          printk(KERN_INFO "Associated successfully\n");=20
> >          if (ieee80211_is_54g(&ieee->current_network) &&=20
> > -                (ieee->modulation & IEEE80211_OFDM_MODULATION)){=20
> > +                (ieee->modulation & IEEE80211_OFDM_MODULATION)) {=20
> >=20
> >                  ieee->rate =3D 108;=20
> >                  printk(KERN_INFO"Using G rates:%d\n", ieee->rate);=20
> > -        }else{=20
> > +        } else {=20
> >                  ieee->rate =3D 22;=20
> >                  printk(KERN_INFO"Using B rates:%d\n", ieee->rate);=20
> >          }=20
> > @@ -1365,7 +1365,7 @@ static void ieee80211_associate_complete_wq(struc=
t=20
> work_struct *work)=20
> >                  ieee->LinkDetectInfo.NumRecvDataInPeriod=3D 1;=20
> >          }=20
> >          ieee->link_change(ieee->dev);=20
> > -        if (ieee->is_silent_reset =3D=3D 0){=20
> > +        if (ieee->is_silent_reset =3D=3D 0) {=20
> >                  printk("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D=3D>normal as=
sociate\n");=20
> >          notify_wx_assoc_event(ieee);=20
> >          }=20
> > @@ -1431,7 +1431,7 @@ inline void ieee80211_softmac_new_net(struct=20
> ieee80211_device *ieee, struct ieee=20
> >                  return;=20
> >=20
> >=20
> > -        if (ieee->iw_mode =3D=3D IW_MODE_INFRA || ieee->iw_mode =3D=3D=
=20
> IW_MODE_ADHOC){=20
> > +        if (ieee->iw_mode =3D=3D IW_MODE_INFRA || ieee->iw_mode =3D=3D=
=20
> IW_MODE_ADHOC) {=20
> >                  /* if the user specified the AP MAC, we need also the=
=20
> essid=20
> >                   * This could be obtained by beacons or, if the networ=
k=20
> does not=20
> >                   * broadcast it, it can be put manually.=20
> > @@ -1459,13 +1459,13 @@ inline void ieee80211_softmac_new_net(struct=20
> ieee80211_device *ieee, struct ieee=20
> >                                  /* if the essid is hidden replace it=
=20
> with the=20
> >                                  * essid provided by the user.=20
> >                                  */=20
> > -                                if (!ssidbroad){=20
> > +                                if (!ssidbroad) {=20
> >                                          strncpy(tmp_ssid,=20
> ieee->current_network.ssid, IW_ESSID_MAX_SIZE);=20
> >                                          tmp_ssid_len =3D=20
> ieee->current_network.ssid_len;=20
> >                                  }=20
> >                                  memcpy(&ieee->current_network, net,=20
> sizeof(struct ieee80211_network));=20
> >=20
> > -                                if (!ssidbroad){=20
> > +                                if (!ssidbroad) {=20
> >=20
>                                          strncpy(ieee->current_network.ss=
id,=20
> tmp_ssid, IW_ESSID_MAX_SIZE);=20
> >                                          ieee->current_network.ssid_len=
=20
> =3D tmp_ssid_len;=20
> >                                  }=20
> > @@ -1473,7 +1473,7 @@ inline void ieee80211_softmac_new_net(struct=20
> ieee80211_device *ieee, struct ieee=20
> >=20
> >                                  /* ieee->pHTInfo->IOTAction =3D 0; */=
=20
> >                                  HTResetIOTSetting(ieee->pHTInfo);=20
> > -                                if (ieee->iw_mode =3D=3D IW_MODE_INFRA=
){=20
> > +                                if (ieee->iw_mode =3D=3D IW_MODE_INFRA=
) {=20
> >                                          /* Join the network for the=20
> first time */=20
> >                                          ieee->AsocRetryCount =3D 0;=20
> >                                          /* for HT by amy 080514 */=20
> > @@ -1492,13 +1492,13 @@ inline void ieee80211_softmac_new_net(struct=20
> ieee80211_device *ieee, struct ieee=20
> >=20
> >                                          ieee->state =3D=20
> IEEE80211_ASSOCIATING;=20
> >                                          queue_work(ieee->wq,=20
> &ieee->associate_procedure_wq);=20
> > -                                }else{=20
> > +                                } else {=20
> >                                          if=20
> (ieee80211_is_54g(&ieee->current_network) &&=20
> > -                                                (ieee->modulation &=20
> IEEE80211_OFDM_MODULATION)){=20
> > +                                                (ieee->modulation &=20
> IEEE80211_OFDM_MODULATION)) {=20
> >                                                  ieee->rate =3D 108;=20
> >=20
>                                                  ieee->SetWirelessMode(ie=
ee->dev,=20
> IEEE_G);=20
> >                                                  printk(KERN_INFO"Using=
=20
> G rates\n");=20
> > -                                        }else{=20
> > +                                        } else {=20
> >                                                  ieee->rate =3D 22;=20
> >=20
>                                                  ieee->SetWirelessMode(ie=
ee->dev,=20
> IEEE_B);=20
> >                                                  printk(KERN_INFO"Using=
=20
> B rates\n");=20
> > @@ -1542,16 +1542,16 @@ static inline u16 auth_parse(struct sk_buff=20
> *skb, u8 **challenge, int *chlen)=20
> >  {=20
> >          struct ieee80211_authentication *a;=20
> >          u8 *t;=20
> > -        if (skb->len <  (sizeof(struct=20
> ieee80211_authentication)-sizeof(struct ieee80211_info_element))){=20
> > +        if (skb->len <  (sizeof(struct=20
> ieee80211_authentication)-sizeof(struct ieee80211_info_element))) {=20
> >                  IEEE80211_DEBUG_MGMT("invalid len in auth resp:=20
> %d\n",skb->len);=20
> >                  return 0xcafe;=20
> >          }=20
> >          *challenge =3D NULL;=20
> >          a =3D (struct ieee80211_authentication *) skb->data;=20
> > -        if (skb->len > (sizeof(struct ieee80211_authentication) +3)){=
=20
> > +        if (skb->len > (sizeof(struct ieee80211_authentication) +3)) {=
=20
> >                  t =3D skb->data + sizeof(struct=20
> ieee80211_authentication);=20
> >=20
> > -                if (*(t++) =3D=3D MFIE_TYPE_CHALLENGE){=20
> > +                if (*(t++) =3D=3D MFIE_TYPE_CHALLENGE) {=20
> >                          *chlen =3D *(t++);=20
> >                          *challenge =3D kmemdup(t, *chlen, GFP_ATOMIC);=
=20
> >                          if (!*challenge)=20
> > @@ -1568,7 +1568,7 @@ static int auth_rq_parse(struct sk_buff *skb, u8=
=20
> *dest)=20
> >  {=20
> >          struct ieee80211_authentication *a;=20
> >=20
> > -        if (skb->len <  (sizeof(struct=20
> ieee80211_authentication)-sizeof(struct ieee80211_info_element))){=20
> > +        if (skb->len <  (sizeof(struct=20
> ieee80211_authentication)-sizeof(struct ieee80211_info_element))) {=20
> >                  IEEE80211_DEBUG_MGMT("invalid len in auth request:=20
> %d\n",skb->len);=20
> >                  return -1;=20
> >          }=20
> > @@ -1601,8 +1601,8 @@ static short probe_rq_parse(struct=20
> ieee80211_device *ieee, struct sk_buff *skb,=20
> >=20
> >          tag =3D skb->data + sizeof (struct ieee80211_hdr_3addr  );=20
> >=20
> > -        while (tag+1 < skbend){=20
> > -                if (*tag =3D=3D 0){=20
> > +        while (tag+1 < skbend) {=20
> > +                if (*tag =3D=3D 0) {=20
> >                          ssid =3D tag+2;=20
> >                          ssidlen =3D *(tag+1);=20
> >                          break;=20
> > @@ -1643,7 +1643,7 @@ static inline u16 assoc_parse(struct=20
> ieee80211_device *ieee, struct sk_buff *skb=20
> >          struct ieee80211_assoc_response_frame *response_head;=20
> >          u16 status_code;=20
> >=20
> > -        if (skb->len <  sizeof(struct ieee80211_assoc_response_frame))=
{=20
> > +        if (skb->len <  sizeof(struct ieee80211_assoc_response_frame))=
=20
> {=20
> >                  IEEE80211_DEBUG_MGMT("invalid len in auth resp: %d\n",=
=20
> skb->len);=20
> >                  return 0xcafe;=20
> >          }=20
> > @@ -1658,7 +1658,7 @@ static inline u16 assoc_parse(struct=20
> ieee80211_device *ieee, struct sk_buff *skb=20
> >              (ieee->current_network.mode =3D=3D IEEE_N_24G) &&=20
> >              (ieee->AsocRetryCount++ < (RT_ASOC_RETRY_LIMIT-1)))) {=20
> >                   ieee->pHTInfo->IOTAction |=3D HT_IOT_ACT_PURE_N_MODE;=
=20
> > -        }else {=20
> > +        } else {=20
> >                   ieee->AsocRetryCount =3D 0;=20
> >          }=20
> >=20
> > @@ -1673,7 +1673,7 @@ ieee80211_rx_probe_rq(struct ieee80211_device=20
> *ieee, struct sk_buff *skb)=20
> >          /* IEEE80211DMESG("Rx probe"); */=20
> >          ieee->softmac_stats.rx_probe_rq++;=20
> >          /* DMESG("Dest is "MACSTR, MAC2STR(dest)); */=20
> > -        if (probe_rq_parse(ieee, skb, dest)){=20
> > +        if (probe_rq_parse(ieee, skb, dest)) {=20
> >                  /* IEEE80211DMESG("Was for me!"); */=20
> >                  ieee->softmac_stats.tx_probe_rs++;=20
> >                  ieee80211_resp_to_probe(ieee, dest);=20
> > @@ -1704,7 +1704,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_device=20
> *ieee, struct sk_buff *skb)=20
> >          /* unsigned long flags; */=20
> >=20
> >          ieee->softmac_stats.rx_ass_rq++;=20
> > -        if (assoc_rq_parse(skb,dest) !=3D -1){=20
> > +        if (assoc_rq_parse(skb,dest) !=3D -1) {=20
> >                  ieee80211_resp_to_assoc_rq(ieee, dest);=20
> >          }=20
> >=20
> > @@ -1756,13 +1756,13 @@ static short ieee80211_sta_ps_sleep(struct=20
> ieee80211_device *ieee, u32 *time_h,=20
> >                  (ieee->mgmt_queue_tail !=3D ieee->mgmt_queue_head))=20
> >                  return 0;=20
> >=20
> > -        if (time_l){=20
> > +        if (time_l) {=20
> >                  *time_l =3D ieee->current_network.last_dtim_sta_time[0=
]=20
> >                          + (ieee->current_network.beacon_interval=20
> >                          * ieee->current_network.dtim_period) * 1000;=
=20
> >          }=20
> >=20
> > -        if (time_h){=20
> > +        if (time_h) {=20
> >                  *time_h =3D ieee->current_network.last_dtim_sta_time[1=
];=20
> >                  if (time_l && *time_l <=20
> ieee->current_network.last_dtim_sta_time[0])=20
> >                          *time_h +=3D 1;=20
> > @@ -1800,16 +1800,16 @@ static inline void ieee80211_sta_ps(struct=20
> ieee80211_device *ieee)=20
> >          if (sleep =3D=3D 0)=20
> >                  goto out;=20
> >=20
> > -        if (sleep =3D=3D 1){=20
> > +        if (sleep =3D=3D 1) {=20
> >=20
> >                  if (ieee->sta_sleep =3D=3D 1)=20
> >                          ieee->enter_sleep_state(ieee->dev, th, tl);=20
> >=20
> > -                else if (ieee->sta_sleep =3D=3D 0){=20
> > +                else if (ieee->sta_sleep =3D=3D 0) {=20
> >                          /* printk("send null 1\n"); */=20
> >                          spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2)=
;=20
> >=20
> > -                        if (ieee->ps_is_queue_empty(ieee->dev)){=20
> > +                        if (ieee->ps_is_queue_empty(ieee->dev)) {=20
> >=20
> >=20
> >                                  ieee->sta_sleep =3D 2;=20
> > @@ -1826,7 +1826,7 @@ static inline void ieee80211_sta_ps(struct=20
> ieee80211_device *ieee)=20
> >                  }=20
> >=20
> >=20
> > -        }else if (sleep =3D=3D 2){=20
> > +        } else if (sleep =3D=3D 2) {=20
> >  /* #warning CHECK_LOCK_HERE */=20
> >                  spin_lock_irqsave(&ieee->mgmt_tx_lock, flags2);=20
> >=20
> > @@ -1842,8 +1842,8 @@ out:=20
> >=20
> >  void ieee80211_sta_wakeup(struct ieee80211_device *ieee, short nl)=20
> >  {=20
> > -        if (ieee->sta_sleep =3D=3D 0){=20
> > -                if (nl){=20
> > +        if (ieee->sta_sleep =3D=3D 0) {=20
> > +                if (nl) {=20
> >                          printk("Warning: driver is probably failing to=
=20
> report TX ps error\n");=20
> >                          ieee->ps_request_tx_ack(ieee->dev);=20
> >                          ieee80211_sta_ps_send_null_frame(ieee, 0);=20
> > @@ -1857,7 +1857,7 @@ void ieee80211_sta_wakeup(struct ieee80211_device=
=20
> *ieee, short nl)=20
> >=20
> >          ieee->sta_sleep =3D 0;=20
> >=20
> > -        if (nl){=20
> > +        if (nl) {=20
> >                  ieee->ps_request_tx_ack(ieee->dev);=20
> >                  ieee80211_sta_ps_send_null_frame(ieee, 0);=20
> >          }=20
> > @@ -1869,9 +1869,9 @@ void ieee80211_ps_tx_ack(struct ieee80211_device=
=20
> *ieee, short success)=20
> >=20
> >          spin_lock_irqsave(&ieee->lock, flags);=20
> >=20
> > -        if (ieee->sta_sleep =3D=3D 2){=20
> > +        if (ieee->sta_sleep =3D=3D 2) {=20
> >                  /* Null frame with PS bit set */=20
> > -                if (success){=20
> > +                if (success) {=20
> >                          ieee->sta_sleep =3D 1;=20
> >=20
>                          ieee->enter_sleep_state(ieee->dev,ieee->ps_th,ie=
ee->ps_tl);=20
>
> >                  }=20
> > @@ -2014,7 +2014,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_devic=
e=20
> *ieee, struct sk_buff *skb,=20
> >=20
> >          case IEEE80211_STYPE_AUTH:=20
> >=20
> > -                if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE){=
=20
> > +                if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) {=
=20
> >                          if (ieee->state =3D=3D=20
> IEEE80211_ASSOCIATING_AUTHENTICATING &&=20
> >                          ieee->iw_mode =3D=3D IW_MODE_INFRA){=20
> >=20
> > @@ -2022,7 +2022,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_devic=
e=20
> *ieee, struct sk_buff *skb,=20
> >=20
> >                                          errcode =3D auth_parse(skb,=20
> &challenge, &chlen);=20
> >                                          if (!errcode) {=20
> > -                                                if (ieee->open_wep ||=
=20
> !challenge){=20
> > +                                                if (ieee->open_wep ||=
=20
> !challenge) {=20
> >                                                          ieee->state =
=3D=20
> IEEE80211_ASSOCIATING_AUTHENTICATED;=20
> >=20
>                                                          ieee->softmac_st=
ats.rx_auth_rs_ok++;=20
>
> >                                                          if=20
> (!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))=20
> > @@ -2048,7 +2048,7 @@ ieee80211_rx_frame_softmac(struct ieee80211_devic=
e=20
> *ieee, struct sk_buff *skb,=20
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
> > -                                                        }else{=20
> > +                                                        } else {=20
> >                                                                  /* b/g=
=20
> mode setting */=20
> >=20
>                                                                  /*TODO*/=
=20
> >=20
>                                                                  ieee->Se=
tWirelessMode(ieee->dev,=20
> IEEE_G);=20
> > @@ -2063,16 +2063,16 @@ ieee80211_rx_frame_softmac(struct=20
> ieee80211_device *ieee, struct sk_buff *skb,=20
> >=20
>                                                                  ieee->bH=
alfWirelessN24GMode=20
> =3D false;=20
> >=20
> >=20
>                                                          ieee80211_associ=
ate_step2(ieee);=20
>
> > -                                                }else{=20
> > +                                                } else {=20
> >=20
>                                                          ieee80211_auth_c=
hallenge(ieee,=20
> challenge, chlen);=20
> >                                                  }=20
> > -                                        }else{=20
> > +                                        } else {=20
> >=20
>                                                  ieee->softmac_stats.rx_a=
uth_rs_err++;=20
>
> >=20
>                                                  IEEE80211_DEBUG_MGMT("Au=
thentication=20
> response status code 0x%x",errcode);=20
> >=20
>                                                  ieee80211_associate_abor=
t(ieee);=20
>
> >                                          }=20
> >=20
> > -                                }else if (ieee->iw_mode =3D=3D=20
> IW_MODE_MASTER){=20
> > +                                } else if (ieee->iw_mode =3D=3D=20
> IW_MODE_MASTER) {=20
> >                                          ieee80211_rx_auth_rq(ieee,=20
> skb);=20
> >                                  }=20
> >                          }=20
> > @@ -2176,7 +2176,7 @@ void ieee80211_softmac_xmit(struct ieee80211_txb=
=20
> *txb, struct ieee80211_device *=20
> >  #else=20
> >                          skb_queue_tail(&ieee->skb_waitQ[queue_index],=
=20
> txb->fragments[i]);=20
> >  #endif=20
> > -                }else{=20
> > +                } else {=20
> >                          ieee->softmac_data_hard_start_xmit(=20
> >                                          txb->fragments[i],=20
> >                                          ieee->dev, ieee->rate);=20
> > @@ -2200,10 +2200,10 @@ static void ieee80211_resume_tx(struct=20
> ieee80211_device *ieee)=20
> >          int i;=20
> >          for (i =3D ieee->tx_pending.frag; i <=20
> ieee->tx_pending.txb->nr_frags; i++) {=20
> >=20
> > -                if (ieee->queue_stop){=20
> > +                if (ieee->queue_stop) {=20
> >                          ieee->tx_pending.frag =3D i;=20
> >                          return;=20
> > -                }else{=20
> > +                } else {=20
> >=20
> >                          ieee->softmac_data_hard_start_xmit(=20
> >                                  ieee->tx_pending.txb->fragments[i],=20
> > @@ -2226,7 +2226,7 @@ void ieee80211_reset_queue(struct ieee80211_devic=
e=20
> *ieee)=20
> >=20
> >          spin_lock_irqsave(&ieee->lock, flags);=20
> >          init_mgmt_queue(ieee);=20
> > -        if (ieee->tx_pending.txb){=20
> > +        if (ieee->tx_pending.txb) {=20
> >                  ieee80211_txb_free(ieee->tx_pending.txb);=20
> >                  ieee->tx_pending.txb =3D NULL;=20
> >          }=20
> > @@ -2248,8 +2248,8 @@ void ieee80211_wake_queue(struct ieee80211_device=
=20
> *ieee)=20
> >=20
> >          ieee->queue_stop =3D 0;=20
> >=20
> > -        if (ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE){=20
> > -                while (!ieee->queue_stop && (skb =3D=20
> dequeue_mgmt(ieee))){=20
> > +        if (ieee->softmac_features & IEEE_SOFTMAC_SINGLE_QUEUE) {=20
> > +                while (!ieee->queue_stop && (skb =3D dequeue_mgmt(ieee=
)))=20
> {=20
> >=20
> >                          header =3D (struct ieee80211_hdr_3addr  *)=20
> skb->data;=20
> >=20
> > @@ -2267,7 +2267,7 @@ void ieee80211_wake_queue(struct ieee80211_device=
=20
> *ieee)=20
> >          if (!ieee->queue_stop && ieee->tx_pending.txb)=20
> >                  ieee80211_resume_tx(ieee);=20
> >=20
> > -        if (!ieee->queue_stop && netif_queue_stopped(ieee->dev)){=20
> > +        if (!ieee->queue_stop && netif_queue_stopped(ieee->dev)) {=20
> >                  ieee->softmac_stats.swtxawake++;=20
> >                  netif_wake_queue(ieee->dev);=20
> >          }=20
> > @@ -2282,7 +2282,7 @@ void ieee80211_stop_queue(struct ieee80211_device=
=20
> *ieee)=20
> >          /* unsigned long flags;=20
> >          spin_lock_irqsave(&ieee->lock,flags); */=20
> >=20
> > -        if (! netif_queue_stopped(ieee->dev)){=20
> > +        if (! netif_queue_stopped(ieee->dev)) {=20
> >                  netif_stop_queue(ieee->dev);=20
> >                  ieee->softmac_stats.swtxstop++;=20
> >          }=20
> > @@ -2303,7 +2303,7 @@ void ieee80211_start_master_bss(struct=20
> ieee80211_device *ieee)=20
> >  {=20
> >          ieee->assoc_id =3D 1;=20
> >=20
> > -        if (ieee->current_network.ssid_len =3D=3D 0){=20
> > +        if (ieee->current_network.ssid_len =3D=3D 0) {=20
> >                  strncpy(ieee->current_network.ssid,=20
> >                          IEEE80211_DEFAULT_TX_ESSID,=20
> >                          IW_ESSID_MAX_SIZE);=20
> > @@ -2327,7 +2327,7 @@ void ieee80211_start_master_bss(struct=20
> ieee80211_device *ieee)=20
> >=20
> >  static void ieee80211_start_monitor_mode(struct ieee80211_device *ieee=
)=20
> >  {=20
> > -        if (ieee->raw_tx){=20
> > +        if (ieee->raw_tx) {=20
> >=20
> >                  if (ieee->data_hard_resume)=20
> >                          ieee->data_hard_resume(ieee->dev);=20
> > @@ -2347,13 +2347,13 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >           * (abort) this wq (when syncro scanning) before sleeping=20
> >           * on the semaphore=20
> >           */=20
> > -        if (!ieee->proto_started){=20
> > +        if (!ieee->proto_started) {=20
> >                  printk("=3D=3D=3D=3D=3D=3D=3D=3D=3D=3Doh driver down r=
eturn\n");=20
> >                  return;=20
> >          }=20
> >          down(&ieee->wx_sem);=20
> >=20
> > -        if (ieee->current_network.ssid_len =3D=3D 0){=20
> > +        if (ieee->current_network.ssid_len =3D=3D 0) {=20
> >                  strcpy(ieee->current_network.ssid,=20
> IEEE80211_DEFAULT_TX_ESSID);=20
> >                  ieee->current_network.ssid_len =3D=20
> strlen(IEEE80211_DEFAULT_TX_ESSID);=20
> >                  ieee->ssid_set =3D 1;=20
> > @@ -2384,12 +2384,12 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >                  ieee80211_start_scan_syncro(ieee);=20
> >=20
> >          /* the network definitively is not here.. create a new cell */=
=20
> > -        if (ieee->state =3D=3D IEEE80211_NOLINK){=20
> > +        if (ieee->state =3D=3D IEEE80211_NOLINK) {=20
> >                  printk("creating new IBSS cell\n");=20
> >                  if (!ieee->wap_set)=20
> >                          ieee80211_randomize_cell(ieee);=20
> >=20
> > -                if (ieee->modulation & IEEE80211_CCK_MODULATION){=20
> > +                if (ieee->modulation & IEEE80211_CCK_MODULATION) {=20
> >=20
> >                          ieee->current_network.rates_len =3D 4;=20
> >=20
> > @@ -2398,10 +2398,10 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >                          ieee->current_network.rates[2] =3D=20
> IEEE80211_BASIC_RATE_MASK | IEEE80211_CCK_RATE_5MB;=20
> >                          ieee->current_network.rates[3] =3D=20
> IEEE80211_BASIC_RATE_MASK | IEEE80211_CCK_RATE_11MB;=20
> >=20
> > -                }else=20
> > +                } else=20
> >                          ieee->current_network.rates_len =3D 0;=20
> >=20
> > -                if (ieee->modulation & IEEE80211_OFDM_MODULATION){=20
> > +                if (ieee->modulation & IEEE80211_OFDM_MODULATION) {=20
> >                          ieee->current_network.rates_ex_len =3D 8;=20
> >=20
> >                          ieee->current_network.rates_ex[0] =3D=20
> IEEE80211_BASIC_RATE_MASK | IEEE80211_OFDM_RATE_6MB;=20
> > @@ -2414,7 +2414,7 @@ static void ieee80211_start_ibss_wq(struct=20
> work_struct *work)=20
> >                          ieee->current_network.rates_ex[7] =3D=20
> IEEE80211_BASIC_RATE_MASK | IEEE80211_OFDM_RATE_54MB;=20
> >=20
> >                          ieee->rate =3D 108;=20
> > -                }else{=20
> > +                } else {=20
> >                          ieee->current_network.rates_ex_len =3D 0;=20
> >                          ieee->rate =3D 22;=20
> >                  }=20
> > @@ -2481,7 +2481,7 @@ void ieee80211_start_bss(struct ieee80211_device=
=20
> *ieee)=20
> >           */=20
> >          spin_lock_irqsave(&ieee->lock, flags);=20
> >=20
> > -        if (ieee->state =3D=3D IEEE80211_NOLINK){=20
> > +        if (ieee->state =3D=3D IEEE80211_NOLINK) {=20
> >                  ieee->actscanning =3D true;=20
> >                  ieee80211_start_scan(ieee);=20
> >          }=20
> > @@ -2635,12 +2635,12 @@ void ieee80211_start_protocol(struct=20
> ieee80211_device *ieee)=20
> >=20
> >          ieee->proto_started =3D 1;=20
> >=20
> > -        if (ieee->current_network.channel =3D=3D 0){=20
> > -                do{=20
> > +        if (ieee->current_network.channel =3D=3D 0) {=20
> > +                do {=20
> >                          ch++;=20
> >                          if (ch > MAX_CHANNEL_NUMBER)=20
> >                                  return; /* no channel found */=20
> > -                }while (!GET_DOT11D_INFO(ieee)->channel_map[ch]);=20
> > +                } while (!GET_DOT11D_INFO(ieee)->channel_map[ch]);=20
> >                  ieee->current_network.channel =3D ch;=20
> >          }=20
> >=20
> > @@ -2856,12 +2856,12 @@ static int ieee80211_wpa_set_auth_algs(struct=
=20
> ieee80211_device *ieee, int value)=20
> >                  sec.auth_mode =3D WLAN_AUTH_SHARED_KEY;=20
> >                  ieee->open_wep =3D 0;=20
> >                  ieee->auth_mode =3D 1;=20
> > -        } else if (value & AUTH_ALG_OPEN_SYSTEM){=20
> > +        } else if (value & AUTH_ALG_OPEN_SYSTEM) {=20
> >                  sec.auth_mode =3D WLAN_AUTH_OPEN;=20
> >                  ieee->open_wep =3D 1;=20
> >                  ieee->auth_mode =3D 0;=20
> >          }=20
> > -        else if (value & IW_AUTH_ALG_LEAP){=20
> > +        else if (value & IW_AUTH_ALG_LEAP) {=20
> >                  sec.auth_mode =3D WLAN_AUTH_LEAP;=20
> >                  ieee->open_wep =3D 1;=20
> >                  ieee->auth_mode =3D 2;=20
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
> https://groups.google.com/d/msgid/outreachy-kernel/1425316465-16949-1-git=
-send-email-haticeerturk27%40gmail.com.=20
>
> > For more options, visit https://groups.google.com/d/optout.=20
> >


------=_Part_851_1939386535.1425327236596
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr">This is a another patch. I told you.&nbsp; This patch cont=
ains also adding spaces before ' {' and the other ' (' adding spaces before=
. That's why another patch.<br><br>2 Mart 2015 Pazartesi 21:36:36 UTC+2 tar=
ihinde Julia Lawall yazd=C4=B1:<blockquote class=3D"gmail_quote" style=3D"m=
argin: 0;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;"=
>On Mon, 2 Mar 2015, Hatice ERT=C3=9CRK wrote:
<br>
<br>&gt; Space required before the open brace '{' and after the close brace=
 '}'
<br>&gt; This Error found with <a href=3D"http://checkpatch.pl" target=3D"_=
blank" rel=3D"nofollow">checkpatch.pl</a>
<br>
<br>I think that this is a v2, but you have not indicated that?
<br>
<br>julia
<br>
<br>&gt; Signed-off-by: Hatice ERTURK &lt;<a href=3D"javascript:" target=3D=
"_blank" gdf-obfuscated-mailto=3D"OmGY2-uerUUJ" rel=3D"nofollow">haticee...=
@gmail.com</a>&gt;
<br>&gt; ---
<br>&gt; &nbsp;.../staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c | 18=
4 ++++++++++-----------
<br>&gt; &nbsp;1 file changed, 92 insertions(+), 92 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_sof=
tmac.c b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c
<br>&gt; index 057d4d1..2c53763 100644
<br>&gt; --- a/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c
<br>&gt; +++ b/drivers/staging/rtl8192u/<wbr>ieee80211/ieee80211_softmac.c
<br>&gt; @@ -62,7 +62,7 @@ static void ieee80211_MFIE_Brate(struct ieee8021=
1_device *ieee, u8 **tag_p)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 *tag =3D =
*tag_p;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modu=
lation &amp; IEEE80211_CCK_MODULATION){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modu=
lation &amp; IEEE80211_CCK_MODULATION) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D MFIE_TYPE_RATES;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D 4;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D IEEE80211_BASIC_RATE_MASK | =
IEEE80211_CCK_RATE_1MB;
<br>&gt; @@ -79,7 +79,7 @@ static void ieee80211_MFIE_Grate(struct ieee8021=
1_device *ieee, u8 **tag_p)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 *tag =3D =
*tag_p;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_OFDM=
_MODULATION){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_OFDM=
_MODULATION) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D MFIE_TYPE_RATES_EX;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*tag++ =3D 8;
<br>&gt; @@ -192,7 +192,7 @@ static u8 MgntQuery_MgntFrameTxRate(<wbr>struc=
t ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;rate =3D ieee-&gt;basic_rate &amp; 0x7f=
;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate =3D=3D 0=
){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate =3D=3D 0=
) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* 2005.01.26, by rcnjko. */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;mode =3D=3D IEEE_A||
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; ieee-&gt;mode=3D=3D IEEE_N_5G||
<br>&gt; @@ -237,10 +237,10 @@ inline void softmac_mgmt_xmit(struct sk_buff=
 *skb, struct ieee80211_device *ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tcb_desc-&gt=
;<wbr>bTxDisableRateFallBack =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tcb_desc-&gt=
;<wbr>bTxUseDriverAssingedRate =3D 1;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (single){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;queue_stop){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (single) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;queue_stop) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>enqueue_mgmt(ieee, skb);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>header-&gt;seq_ctl =3D cpu_to_le16(ieee-&gt;seq_ctrl[0]&lt;<w=
br>&lt;4);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (ieee-&gt;seq_ctrl[0] =3D=3D 0xFFF)
<br>&gt; @@ -255,7 +255,7 @@ inline void softmac_mgmt_xmit(struct sk_buff *=
skb, struct ieee80211_device *ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_<wbr>irqrestore(&amp;ieee-&=
gt;lock, flags);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_unlock_<wbr>irqrestore(&amp;ieee-&=
gt;lock, flags);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_<wbr>irqsave(&amp;ieee-&gt;mg=
mt_tx_lock, flags);
<br>&gt;
<br>&gt; @@ -293,7 +293,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buf=
f *skb, struct ieee80211_device *i
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(struct ieee80211_hdr_3addr &nbsp;*) sk=
b-&gt;data;
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (single){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (single) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;header-&gt;seq_<wbr>ctl =3D cpu_to_le16=
(ieee-&gt;seq_ctrl[0] &lt;&lt; 4);
<br>&gt;
<br>&gt; @@ -306,7 +306,7 @@ inline void softmac_ps_mgmt_xmit(struct sk_buf=
f *skb, struct ieee80211_device *i
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;dev-&gt;<wbr>trans_start =3D j=
iffies;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_data_hard_start_x=
mit(<wbr>skb,ieee-&gt;dev,ieee-&gt;basic_<wbr>rate);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;header-&gt;seq_<wbr>ctl =3D cpu_to_le16=
(ieee-&gt;seq_ctrl[0] &lt;&lt; 4);
<br>&gt;
<br>&gt; @@ -369,7 +369,7 @@ static void ieee80211_send_beacon(struct ieee8=
0211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* unsigned =
long flags; */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skb =3D ieee=
80211_get_beacon_(ieee);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;softmac_mgmt_<wbr>xmit(skb, ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.tx_beacons+=
+;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* dev_kfree_skb_any(skb); edit by thom=
as */
<br>&gt; @@ -378,7 +378,7 @@ static void ieee80211_send_beacon(struct ieee8=
0211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(MSECS( ieee-&gt;current_network.beacon=
_<wbr>interval -5));
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;beacon_lock,flags); */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;beac=
on_txing &amp;&amp; ieee-&gt;ieee_up){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;beac=
on_txing &amp;&amp; ieee-&gt;ieee_up) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* if(!timer_pending(&amp;ieee-&gt;<wbr=
>beacon_timer))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;add_<wbr>timer(&amp;ieee-&gt;beacon_timer); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;mod_timer(&amp;<wbr>ieee-&gt;beacon_tim=
er,jiffies+(<wbr>MSECS(ieee-&gt;current_network.<wbr>beacon_interval-5)));
<br>&gt; @@ -404,7 +404,7 @@ static void ieee80211_send_probe(struct ieee80=
211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct sk_bu=
ff *skb;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;skb =3D ieee=
80211_probe_req(ieee);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;softmac_mgmt_<wbr>xmit(skb, ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.tx_probe_rq=
++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* dev_kfree_skb_any(skb); edit by thom=
as */
<br>&gt; @@ -413,7 +413,7 @@ static void ieee80211_send_probe(struct ieee80=
211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;static void ieee80211_send_probe_requests(<wbr>struct ieee80=
211_device *ieee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;acti=
ve_scan &amp;&amp; (ieee-&gt;softmac_features &amp; IEEE_SOFTMAC_PROBERQ)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;acti=
ve_scan &amp;&amp; (ieee-&gt;softmac_features &amp; IEEE_SOFTMAC_PROBERQ)) =
{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>send_probe(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>send_probe(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -433,11 +433,11 @@ void ieee80211_softmac_scan_syncro(<wbr>stru=
ct ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do {
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
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while (!channel_map[ch]);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} while (!channel_map[ch]);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* this function can be called in two s=
ituations
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * 1- We have switched to ad-hoc mode a=
nd we are
<br>&gt; @@ -478,7 +478,7 @@ void ieee80211_softmac_scan_syncro(<wbr>struct=
 ieee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;out:
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e &lt; IEEE80211_LINKED){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e &lt; IEEE80211_LINKED) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>actscanning =3D false;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;up(&amp;ieee-&gt;<wbr>scan_sem);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -501,7 +501,7 @@ static void ieee80211_softmac_scan_wq(<wbr>str=
uct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&g=
t;ieee_up)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down(&amp;ie=
ee-&gt;scan_sem)<wbr>;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>current_network.channel =
=3D
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;(<wbr>ieee-&gt;current_network.channel + 1) % MAX_CHANNEL_NUMBER;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (watchdog++ &gt; MAX_CHANNEL_NUMBER)
<br>&gt; @@ -512,7 +512,7 @@ static void ieee80211_softmac_scan_wq(<wbr>str=
uct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;goto out; /* =
no good chans */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while (!channel_=
map[ieee-&gt;current_<wbr>network.channel]);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} while (!channel=
_map[ieee-&gt;current_<wbr>network.channel]);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt=
;scanning =3D=3D 0 )
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;set=
_chan(ieee-&gt;<wbr>dev, ieee-&gt;current_network.channel)<wbr>;
<br>&gt; @@ -587,7 +587,7 @@ static void ieee80211_softmac_stop_scan(<wbr>s=
truct ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down(&amp;ie=
ee-&gt;scan_sem)<wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* spin_lock=
_irqsave(&amp;ieee-&gt;lock, flags); */
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;scan=
ning =3D=3D 1){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;scan=
ning =3D=3D 1) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>scanning =3D 0;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;cancel_<wbr>delayed_work(&amp;ieee-&gt;=
softmac_<wbr>scan_wq);
<br>&gt; @@ -616,12 +616,12 @@ static void ieee80211_start_scan(struct ieee=
80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>RESET_CIE_WATCHDOG(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;soft=
mac_features &amp; IEEE_SOFTMAC_SCAN){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;scanning =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;soft=
mac_features &amp; IEEE_SOFTMAC_SCAN) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;scanning =3D=3D 0) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;scanning =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>queue_delayed_work(ieee-&gt;wq, &amp;ieee-&gt;softmac_scan_wq=
, 0);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;start_<wbr>scan(ieee-&gt;dev);
<br>&gt;
<br>&gt; &nbsp;}
<br>&gt; @@ -803,7 +803,7 @@ static struct sk_buff *ieee80211_probe_resp(st=
ruct ieee80211_device *ieee, u8 *d
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D=
 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D=
 ieee-&gt;current_network.channel;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (atim_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (atim_len) {
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (erp_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (erp_len) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D MFIE_TYPE_ERP;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D erpinfo_content;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate_ex_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (rate_ex_len) =
{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D MFIE_TYPE_RATES_EX;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*(tag++) =3D rate_ex_len-2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memcpy(tag, ieee-&gt;current_network.ra=
tes_<wbr>ex, rate_ex_len-2);
<br>&gt; @@ -1169,7 +1169,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag +=3D osCcxVerNum.Length;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* HT cap el=
ement */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;ePeerHTSpecVer=
 !=3D HT_SPEC_VER_EWC)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag =3D skb_put(skb, ht_cap_len);
<br>&gt; @@ -1183,7 +1183,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* choose wh=
at wpa_supplicant gives to associate. */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag =3D skb_=
put(skb, wpa_ie_len);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (wpa_ie_len){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (wpa_ie_len) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;memcpy(tag, ieee-&gt;wpa_ie, ieee-&gt;w=
pa_ie_len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -1198,7 +1198,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;#endif
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTI=
nfo-&gt;<wbr>bCurrentHTSupport&amp;&amp;ieee-&gt;<wbr>pHTInfo-&gt;bEnableHT=
) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;ePeerHTSpecVer=
 =3D=3D HT_SPEC_VER_EWC)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag =3D skb_put(skb, ht_cap_len);
<br>&gt; @@ -1208,7 +1208,7 @@ inline struct sk_buff *ieee80211_association=
_req(<wbr>struct ieee80211_network *beaco
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag +=3D ht_cap_len -2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;<wbr>bCurrentRT2RTA=
ggregation){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;pHTInfo-&gt;<wbr>bCurrentRT2RTA=
ggregation) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;tag =3D skb_put(skb, realtek_ie_len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*tag+<wbr>+ =3D MFIE_TYPE_GENERIC;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*tag+<wbr>+ =3D realtek_ie_len - 2;
<br>&gt; @@ -1234,10 +1234,10 @@ void ieee80211_associate_abort(<wbr>struct=
 ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * Here we w=
ill check if there are good nets to associate
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * with, so =
we retry or just get back to NO_LINK and scanning
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_ASSOCIATING_<wbr>AUTHENTICATING){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_ASSOCIATING_<wbr>AUTHENTICATING) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE80211_<wbr>DEBUG_MGMT("Authenticati=
on failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.no_auth_rs+=
+;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE80211_<wbr>DEBUG_MGMT("Association =
failed\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.no_ass_rs++=
;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
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
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!timer_pending(&amp;ieee-&gt;<wbr>associ=
ate_timer)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!timer_pending(&amp;ieee-&gt;<wbr>associ=
ate_timer)) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;associate_timer.expires =3D jiffies + (HZ / 2);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;add_<wbr>timer(&amp;ieee-&gt;associate_timer);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1338,11 +1338,11 @@ static void ieee80211_associate_complete_<=
wbr>wq(struct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee8=
0211_device *ieee =3D container_of(work, struct ieee80211_device, associate=
_complete_wq);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_=
INFO "Associated successfully\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee8021=
1_is_54g(&amp;ieee-&gt;<wbr>current_network) &amp;&amp;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ieee-&gt;<wbr>modulation &amp; IEEE80211_OF=
DM_MODULATION)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ieee-&gt;<wbr>modulation &amp; IEEE80211_OF=
DM_MODULATION)) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;rate =3D 108;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>INFO"Using G rates:%d\=
n", ieee-&gt;rate);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;rate =3D 22;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk(KERN_<wbr>INFO"Using B rates:%d\=
n", ieee-&gt;rate);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1365,7 +1365,7 @@ static void ieee80211_associate_complete_<wb=
r>wq(struct work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>LinkDetectInfo.<wbr>NumRe=
cvDataInPeriod=3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;lin=
k_change(<wbr>ieee-&gt;dev);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;is_s=
ilent_reset =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;is_s=
ilent_reset =3D=3D 0) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3D=3D=3D&gt;normal associate\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;notify_wx_as=
soc_<wbr>event(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1431,7 +1431,7 @@ inline void ieee80211_softmac_new_net(<wbr>s=
truct ieee80211_device *ieee, struct ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;iw_m=
ode =3D=3D IW_MODE_INFRA || ieee-&gt;iw_mode =3D=3D IW_MODE_ADHOC){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;iw_m=
ode =3D=3D IW_MODE_INFRA || ieee-&gt;iw_mode =3D=3D IW_MODE_ADHOC) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* if the user specified the AP MAC, we=
 need also the essid
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * This could be obtained by beacons or=
, if the network does not
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * broadcast it, it can be put manually=
.
<br>&gt; @@ -1459,13 +1459,13 @@ inline void ieee80211_softmac_new_net(<wbr=
>struct ieee80211_device *ieee, struct ieee
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;/* if the ess=
id is hidden replace it with the
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;* essid provi=
ded by the user.
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;*/
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (!ssidbroad){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (!ssidbroad) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strncpy(tmp_ssid, ieee-&gt;current_netwo=
rk.ssid, IW_ESSID_MAX_SIZE);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tmp_ssid_len =3D ieee-&gt;current_networ=
k.ssid_<wbr>len;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;memcpy(&amp;i=
eee-&gt;current_<wbr>network, net, sizeof(struct ieee80211_network));
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (!ssidbroad){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (!ssidbroad) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strncpy(ieee-&gt;<wbr>current_network.ss=
id, tmp_ssid, IW_ESSID_MAX_SIZE);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;current_<wbr>network.ssid_len =
=3D tmp_ssid_len;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1473,7 +1473,7 @@ inline void ieee80211_softmac_new_net(<wbr>s=
truct ieee80211_device *ieee, struct ieee
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;/* ieee-&gt;p=
HTInfo-&gt;IOTAction =3D 0; */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;HTResetIOTSet=
ting(ieee-&gt;<wbr>pHTInfo);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (ieee-&gt;iw_mo=
de =3D=3D IW_MODE_INFRA){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;if (ieee-&gt;iw_mo=
de =3D=3D IW_MODE_INFRA) {
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
<br>&gt; @@ -1492,13 +1492,13 @@ inline void ieee80211_softmac_new_net(<wbr=
>struct ieee80211_device *ieee, struct ieee
<br>&gt;
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee80211_is_54g(&amp;ieee-&gt;<wbr>=
current_network) &amp;&amp;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;(ieee-&gt;<wbr>modulation &amp; IEEE80211_OFDM_MODULATION)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;(ieee-&gt;<wbr>modulation &amp; IEEE80211_OFDM_MODULATION)) {
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
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;printk(<wbr>KERN_INFO"Using G rates\n");
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;ieee-&gt;rate =3D 22;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;ieee-&gt;<wbr>SetWirelessMode(ieee-&gt;dev, IEEE_B);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;printk(<wbr>KERN_INFO"Using B rates\n");
<br>&gt; @@ -1542,16 +1542,16 @@ static inline u16 auth_parse(struct sk_buf=
f *skb, u8 **challenge, int *chlen)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee8=
0211_authentication *a;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u8 *t;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
lt; &nbsp;(sizeof(struct ieee80211_authentication)-<wbr>sizeof(struct ieee8=
0211_info_element))){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
lt; &nbsp;(sizeof(struct ieee80211_authentication)-<wbr>sizeof(struct ieee8=
0211_info_element))) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE80211_<wbr>DEBUG_MGMT("invalid len =
in auth resp: %d\n",skb-&gt;len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0xcafe;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*challenge =
=3D NULL;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;a =3D (struc=
t ieee80211_authentication *) skb-&gt;data;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
gt; (sizeof(struct ieee80211_authentication) +3)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
gt; (sizeof(struct ieee80211_authentication) +3)) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;t =3D skb-&gt;data + sizeof(struct ieee=
80211_authentication);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (*(t++) =3D=3D MFIE_TYPE_CHALLENGE){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (*(t++) =3D=3D MFIE_TYPE_CHALLENGE) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*<wbr>chlen =3D *(t++);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*<wbr>challenge =3D kmemdup(t, *chlen, GFP_ATOMIC);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (!*challenge)
<br>&gt; @@ -1568,7 +1568,7 @@ static int auth_rq_parse(struct sk_buff *skb=
, u8 *dest)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee8=
0211_authentication *a;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
lt; &nbsp;(sizeof(struct ieee80211_authentication)-<wbr>sizeof(struct ieee8=
0211_info_element))){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
lt; &nbsp;(sizeof(struct ieee80211_authentication)-<wbr>sizeof(struct ieee8=
0211_info_element))) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE80211_<wbr>DEBUG_MGMT("invalid len =
in auth request: %d\n",skb-&gt;len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return -1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1601,8 +1601,8 @@ static short probe_rq_parse(struct ieee80211=
_device *ieee, struct sk_buff *skb,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;tag =3D skb-=
&gt;data + sizeof (struct ieee80211_hdr_3addr &nbsp;);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (tag+1 &lt;=
 skbend){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (*tag =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (tag+1 &lt;=
 skbend) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (*tag =3D=3D 0) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ssid =3D tag+2;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>ssidlen =3D *(tag+1);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>break;
<br>&gt; @@ -1643,7 +1643,7 @@ static inline u16 assoc_parse(struct ieee802=
11_device *ieee, struct sk_buff *skb
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;struct ieee8=
0211_assoc_response_frame *response_head;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;u16 status_c=
ode;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
lt; &nbsp;sizeof(struct ieee80211_assoc_response_<wbr>frame)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (skb-&gt;len &=
lt; &nbsp;sizeof(struct ieee80211_assoc_response_<wbr>frame)) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;IEEE80211_<wbr>DEBUG_MGMT("invalid len =
in auth resp: %d\n", skb-&gt;len);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0xcafe;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -1658,7 +1658,7 @@ static inline u16 assoc_parse(struct ieee802=
11_device *ieee, struct sk_buff *skb
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbs=
p;(ieee-&gt;current_network.mode =3D=3D IEEE_N_24G) &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbs=
p;(ieee-&gt;AsocRetryCount++ &lt; (RT_ASOC_RETRY_LIMIT-1)))) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ieee-&gt;pHTInfo-&gt;IOTAction |=3D HT=
_IOT_ACT_PURE_N_MODE;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; ieee-&gt;AsocRetryCount =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -1673,7 +1673,7 @@ ieee80211_rx_probe_rq(struct ieee80211_devic=
e *ieee, struct sk_buff *skb)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* IEEE80211=
DMESG("Rx probe"); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sof=
tmac_stats.<wbr>rx_probe_rq++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* DMESG("De=
st is "MACSTR, MAC2STR(dest)); */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (probe_rq_pars=
e(ieee, skb, dest)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (probe_rq_pars=
e(ieee, skb, dest)) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* IEEE80211DMESG("Was for me!"); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.tx_probe_rs=
++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>resp_to_probe(ieee, dest=
);
<br>&gt; @@ -1704,7 +1704,7 @@ ieee80211_rx_assoc_rq(struct ieee80211_devic=
e *ieee, struct sk_buff *skb)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* unsigned =
long flags; */
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sof=
tmac_stats.<wbr>rx_ass_rq++;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (assoc_rq_pars=
e(skb,dest) !=3D -1){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (assoc_rq_pars=
e(skb,dest) !=3D -1) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>resp_to_assoc_rq(ieee, d=
est);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -1756,13 +1756,13 @@ static short ieee80211_sta_ps_sleep(struct=
 ieee80211_device *ieee, u32 *time_h,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;(ieee-&gt;mgmt_<wbr>queue_tail !=3D iee=
e-&gt;mgmt_queue_head))
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_l){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_l) {
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_h){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_h) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;*time_h =3D ieee-&gt;current_network.la=
st_<wbr>dtim_sta_time[1];
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (time_l &amp;&amp; *time_l &lt; ieee=
-&gt;current_network.last_<wbr>dtim_sta_time[0])
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;*<wbr>time_h +=3D 1;
<br>&gt; @@ -1800,16 +1800,16 @@ static inline void ieee80211_sta_ps(struct=
 ieee80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (sleep =
=3D=3D 0)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;goto out;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (sleep =3D=3D =
1){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (sleep =3D=3D =
1) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_sleep =3D=3D 1)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;enter_sleep_state(ieee-&gt;dev, th, tl);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt;sta_sleep =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (ieee-&gt;sta_sleep =3D=3D 0) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;/* printk("send null 1\n"); */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;spin_<wbr>lock_irqsave(&amp;ieee-&gt;mgmt_tx_<wbr>lock, flags2);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;if (ieee-&gt;ps_is_queue_empty(ieee-<wbr>&gt;dev)){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;if (ieee-&gt;ps_is_queue_empty(ieee-<wbr>&gt;dev)) {
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else if (sleep =
=3D=3D 2){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else if (sleep =
=3D=3D 2) {
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 0){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (nl){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 0) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (nl) {
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
<br>&gt; @@ -1857,7 +1857,7 @@ void ieee80211_sta_wakeup(struct ieee80211_d=
evice *ieee, short nl)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;sta=
_sleep =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (nl){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (nl) {
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 2){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;sta_=
sleep =3D=3D 2) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* Null frame with PS bit set */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (success){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (success) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;sta_sleep =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;enter_sleep_state(ieee-&gt;dev,<wbr>ieee-&gt;ps_th,i=
eee-&gt;ps_tl);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2014,7 +2014,7 @@ ieee80211_rx_frame_softmac(<wbr>struct ieee8=
0211_device *ieee, struct sk_buff *skb,
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;case IEEE802=
11_STYPE_AUTH:
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;softmac_features &amp; IEEE_SOF=
TMAC_ASSOCIATE){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;softmac_features &amp; IEEE_SOF=
TMAC_ASSOCIATE) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;if (ieee-&gt;state =3D=3D IEEE80211_ASSOCIATING_<wbr>AUTHENTICATIN=
G &amp;&amp;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;iw_mode =3D=3D IW_MODE_INFRA){
<br>&gt;
<br>&gt; @@ -2022,7 +2022,7 @@ ieee80211_rx_frame_softmac(<wbr>struct ieee8=
0211_device *ieee, struct sk_buff *skb,
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
sp;if (ieee-&gt;open_wep || !challenge){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;if (ieee-&gt;open_wep || !challenge) {
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
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!(ieee-&gt;pHTI=
nfo-&gt;IOTAction&amp;<wbr>HT_IOT_ACT_PURE_N_MODE))
<br>&gt; @@ -2048,7 +2048,7 @@ ieee80211_rx_frame_softmac(<wbr>struct ieee8=
0211_device *ieee, struct sk_buff *skb,
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
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}<wbr>else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* b/g mode setting */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/*TODO*/
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;SetWirelessMode(<wbr>ieee-&gt;de=
v, IEEE_G);
<br>&gt; @@ -2063,16 +2063,16 @@ ieee80211_rx_frame_softmac(<wbr>struct iee=
e80211_device *ieee, struct sk_buff *skb,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<=
wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>bHalfWirelessN24GMode =3D f=
alse;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>ieee80211_asso=
ciate_step2(<wbr>ieee);
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>ieee80211_auth=
_challenge(ieee, challenge, chlen);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;ieee-&gt;<wbr>softmac_stats.rx_auth_rs_err++<wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;IEEE80211_<wbr>DEBUG_MGMT("Authentication response status code 0x%x=
",errcode);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbs=
p;&nbsp;ieee80211_<wbr>associate_abort(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;}else if (ieee-&gt=
;iw_mode =3D=3D IW_MODE_MASTER){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&n=
bsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;} else if (ieee-&g=
t;iw_mode =3D=3D IW_MODE_MASTER) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_rx_auth_<wbr>rq(ieee, skb);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;}
<br>&gt; @@ -2176,7 +2176,7 @@ void ieee80211_softmac_xmit(struct ieee80211=
_txb *txb, struct ieee80211_device *
<br>&gt; &nbsp;#else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;skb_<wbr>queue_tail(&amp;ieee-&gt;skb_waitQ[<wbr>queue_index], txb=
-&gt;fragments[i]);
<br>&gt; &nbsp;#endif
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;softmac_data_hard_start_xmit(
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;txb-&gt;fragments[i],
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&=
nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;dev, ieee-&gt;rate);
<br>&gt; @@ -2200,10 +2200,10 @@ static void ieee80211_resume_tx(struct iee=
e80211_device *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;int i;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;for (i =3D i=
eee-&gt;tx_pending.frag; i &lt; ieee-&gt;tx_pending.txb-&gt;nr_<wbr>frags; =
i++) {
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;queue_stop){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;queue_stop) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;tx_pending.frag =3D i;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>return;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;softmac_data_hard_start_xmit(
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<wbr>&nbsp;&nbsp;&nbsp;ieee-&gt;tx_p=
ending.txb-&gt;<wbr>fragments[i],
<br>&gt; @@ -2226,7 +2226,7 @@ void ieee80211_reset_queue(struct ieee80211_=
device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;init_mgmt_qu=
eue(ieee)<wbr>;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;tx_p=
ending.txb){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;tx_p=
ending.txb) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>txb_free(ieee-&gt;tx_pen=
ding.txb)<wbr>;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;tx_<wbr>pending.txb =3D NULL;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2248,8 +2248,8 @@ void ieee80211_wake_queue(struct ieee80211_d=
evice *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;que=
ue_stop =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;soft=
mac_features &amp; IEEE_SOFTMAC_SINGLE_QUEUE){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (!ieee-&gt;queue_stop &amp;&amp; (skb =
=3D dequeue_mgmt(ieee))){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;soft=
mac_features &amp; IEEE_SOFTMAC_SINGLE_QUEUE) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;while (!ieee-&gt;queue_stop &amp;&amp; (skb =
=3D dequeue_mgmt(ieee))) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>header =3D (struct ieee80211_hdr_3addr &nbsp;*) skb-&gt;data;
<br>&gt;
<br>&gt; @@ -2267,7 +2267,7 @@ void ieee80211_wake_queue(struct ieee80211_d=
evice *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&g=
t;queue_stop &amp;&amp; ieee-&gt;tx_pending.txb)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>resume_tx(ieee);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;que=
ue_stop &amp;&amp; netif_queue_stopped(ieee-&gt;dev)<wbr>){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;que=
ue_stop &amp;&amp; netif_queue_stopped(ieee-&gt;dev)<wbr>) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.swtxawake++=
;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;netif_wake_<wbr>queue(ieee-&gt;dev);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2282,7 +2282,7 @@ void ieee80211_stop_queue(struct ieee80211_d=
evice *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* unsigned =
long flags;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;lock,flags); */
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (! netif_queue=
_stopped(ieee-&gt;dev)<wbr>){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (! netif_queue=
_stopped(ieee-&gt;dev)<wbr>) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;netif_stop_<wbr>queue(ieee-&gt;dev);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>softmac_stats.swtxstop++;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2303,7 +2303,7 @@ void ieee80211_start_master_bss(<wbr>struct =
ieee80211_device *ieee)
<br>&gt; &nbsp;{
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;ass=
oc_id =3D 1;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.ssid_<wbr>len =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.ssid_<wbr>len =3D=3D 0) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strncpy(ieee-<wbr>&gt;current_network.s=
sid,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>IEEE80211_DEFAULT_TX_ESSID,
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;IW_<wbr>ESSID_MAX_SIZE);
<br>&gt; @@ -2327,7 +2327,7 @@ void ieee80211_start_master_bss(<wbr>struct =
ieee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;static void ieee80211_start_monitor_mode(<wbr>struct ieee802=
11_device *ieee)
<br>&gt; &nbsp;{
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;raw_=
tx){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;raw_=
tx) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;data_hard_resume)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;data_hard_resume(ieee-&gt;dev);
<br>&gt; @@ -2347,13 +2347,13 @@ static void ieee80211_start_ibss_wq(struct=
 work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * (abort) t=
his wq (when syncro scanning) before sleeping
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; * on the se=
maphore
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;pro=
to_started){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;pro=
to_started) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("=3D=3D=3D=3D=3D<wbr>=3D=3D=3D=
=3D=3Doh driver down return\n");
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;return;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;down(&amp;ie=
ee-&gt;wx_sem);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.ssid_<wbr>len =3D=3D 0){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.ssid_<wbr>len =3D=3D 0) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;strcpy(ieee-&gt;<wbr>current_network.ss=
id, IEEE80211_DEFAULT_TX_ESSID);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>current_network.ssid_len =
=3D strlen(IEEE80211_DEFAULT_TX_<wbr>ESSID);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;ssid_<wbr>set =3D 1;
<br>&gt; @@ -2384,12 +2384,12 @@ static void ieee80211_start_ibss_wq(struct=
 work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>start_scan_syncro(ieee);
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;/* the netwo=
rk definitively is not here.. create a new cell */
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_NOLINK){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_NOLINK) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;printk("<wbr>creating new IBSS cell\n")=
;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (!ieee-&gt;wap_set)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;<wbr>ieee80211_randomize_cell(ieee)<wbr>;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_CCK_=
MODULATION){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_CCK_=
MODULATION) {
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_len =3D 4;
<br>&gt;
<br>&gt; @@ -2398,10 +2398,10 @@ static void ieee80211_start_ibss_wq(struct=
 work_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates[2] =3D IEEE80211_BASIC_RATE_MA=
SK | IEEE80211_CCK_RATE_5MB;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates[3] =3D IEEE80211_BASIC_RATE_MA=
SK | IEEE80211_CCK_RATE_11MB;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_len =3D 0;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_OFDM=
_MODULATION){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;modulation &amp; IEEE80211_OFDM=
_MODULATION) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_ex_len =3D 8;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_ex[0] =3D IEEE80211_BASIC_RATE=
_MASK | IEEE80211_OFDM_RATE_6MB;
<br>&gt; @@ -2414,7 +2414,7 @@ static void ieee80211_start_ibss_wq(struct w=
ork_struct *work)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_ex[7] =3D IEEE80211_BASIC_RATE=
_MASK | IEEE80211_OFDM_RATE_54MB;
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;rate =3D 108;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}else{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;current_network.rates_ex_len =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nb=
sp;&nbsp;ieee-<wbr>&gt;rate =3D 22;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2481,7 +2481,7 @@ void ieee80211_start_bss(struct ieee80211_de=
vice *ieee)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; */
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;spin_lock_ir=
qsave(&amp;<wbr>ieee-&gt;lock, flags);
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_NOLINK){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;stat=
e =3D=3D IEEE80211_NOLINK) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>actscanning =3D true;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee80211_<wbr>start_scan(ieee);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; @@ -2635,12 +2635,12 @@ void ieee80211_start_protocol(<wbr>struct =
ieee80211_device *ieee)
<br>&gt;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;pro=
to_started =3D 1;
<br>&gt;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.channel =3D=3D 0){
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do{
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;if (ieee-&gt;curr=
ent_network.channel =3D=3D 0) {
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;do {
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
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}while (!GET_DOT11D_INFO(ieee)-&gt;<wbr>chan=
nel_map[ch]);
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp=
;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} while (!GET_DOT11D_INFO(ieee)-&gt;<wbr>cha=
nnel_map[ch]);
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;<wbr>current_network.channel =
=3D ch;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt;
<br>&gt; @@ -2856,12 +2856,12 @@ static int ieee80211_wpa_set_auth_algs(<wb=
r>struct ieee80211_device *ieee, int value)
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sec.auth_mode =3D WLAN_AUTH_SHARED_KEY;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;open_<wbr>wep =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;auth_<wbr>mode =3D 1;
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else if (value =
&amp; AUTH_ALG_OPEN_SYSTEM){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;} else if (value =
&amp; AUTH_ALG_OPEN_SYSTEM) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sec.auth_mode =3D WLAN_AUTH_OPEN;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;open_<wbr>wep =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;auth_<wbr>mode =3D 0;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;}
<br>&gt; -&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (value &a=
mp; IW_AUTH_ALG_LEAP){
<br>&gt; +&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;else if (value &a=
mp; IW_AUTH_ALG_LEAP) {
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;sec.auth_mode =3D WLAN_AUTH_LEAP;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;open_<wbr>wep =3D 1;
<br>&gt; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;=
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;ieee-&gt;auth_<wbr>mode =3D 2;
<br>&gt; --
<br>&gt; 1.9.1
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups "outreachy-kernel" group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a href=3D"javascript:" target=3D"_blank" gdf-obfuscated-m=
ailto=3D"OmGY2-uerUUJ" rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups=
.com</a>.
<br>&gt; To post to this group, send email to <a href=3D"javascript:" targe=
t=3D"_blank" gdf-obfuscated-mailto=3D"OmGY2-uerUUJ" rel=3D"nofollow">outrea=
ch...@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/1425316465-16949-1-git-send-email-hati=
ceerturk27%40gmail.com" target=3D"_blank" rel=3D"nofollow">https://groups.g=
oogle.com/d/<wbr>msgid/outreachy-kernel/<wbr>1425316465-16949-1-git-send-<w=
br>email-haticeerturk27%40gmail.<wbr>com</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" target=3D"_blank" rel=3D"nofollow">https://groups.google.com/d/<wbr>op=
tout</a>.
<br>&gt;</blockquote></div>
------=_Part_851_1939386535.1425327236596--

------=_Part_850_1494422600.1425327236596--

