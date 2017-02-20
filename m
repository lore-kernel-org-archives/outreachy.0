X-GM-THRID: 6388887439725821952
Date: Sun, 19 Feb 2017 23:49:05 -0800 (PST)
From: Arushi Singhal <arushisinghal19971997@gmail.com>
To: outreachy-kernel <outreachy-kernel@googlegroups.com>
Cc: arushisinghal19971997@gmail.com, gregkh@linuxfoundation.org,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org
Message-Id: <f41dab07-08d8-4545-93fb-88c9845767bb@googlegroups.com>
In-Reply-To: <alpine.DEB.2.20.1702200759420.2222@hadrien>
References: <20170220065310.GA21888@arushi-HP-Pavilion-Notebook>
 <alpine.DEB.2.20.1702200759420.2222@hadrien>
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: ks7010: Unnecessary
 parentheses are removed.
MIME-Version: 1.0
Content-Type: multipart/mixed; 
	boundary="----=_Part_1911_240896586.1487576945323"
X-Google-Token: EPG-qsUFrXAeQhsjdT80
X-Google-IP: 14.139.82.6

------=_Part_1911_240896586.1487576945323
Content-Type: multipart/alternative; 
	boundary="----=_Part_1912_624240686.1487576945324"

------=_Part_1912_624240686.1487576945324
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit



On Monday, February 20, 2017 at 12:32:22 PM UTC+5:30, Julia Lawall wrote:
>
>
>
> On Mon, 20 Feb 2017, Arushi Singhal wrote: 
>
> > Unnecessary parentheses should be avoided as reported by checkpatch.pl. 
> > Remove unnecessary parentheses, as reported by checkpatch as are nicer 
> > to read.For example:- 
> > It's often nicer to read if &(foo[0]) is converted to foo like: 
> >      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN); 
> >      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN); 
>
> The commit message is not well presented.  One has the impression that all 
> of the changes are related to 0 array elements.  It would be better to 
> split the patch into two: one for removing parentheses, and one for making 
> the &x[0] -> x change.  They don't really have anything to do with each 
> other. 
>
> julia 
>


Hi 
So should I change the commit message to more appropriate one so that it
better explain the changes? 

>
>
> > 
> > Signed-off-by: Arushi Singhal <arushising...@gmail.com> 
> > --- 
> >  drivers/staging/ks7010/ks_hostif.c   | 20 ++++++++++---------- 
> >  drivers/staging/ks7010/ks_wlan_net.c | 20 ++++++++++---------- 
> >  2 files changed, 20 insertions(+), 20 deletions(-) 
> > 
> > diff --git a/drivers/staging/ks7010/ks_hostif.c 
> b/drivers/staging/ks7010/ks_hostif.c 
> > index ba283ab741a7..2d5ec57c5cfd 100644 
> > --- a/drivers/staging/ks7010/ks_hostif.c 
> > +++ b/drivers/staging/ks7010/ks_hostif.c 
> > @@ -239,19 +239,19 @@ int get_ap_information(struct ks_wlan_private 
> *priv, struct ap_info_t *ap_info, 
> >                                          *(bp + 1)); 
> >                                  ap->ssid.size = SSID_MAX_SIZE; 
> >                          } 
> > -                        memcpy(&(ap->ssid.body[0]), bp + 2, 
> ap->ssid.size); 
> > +                        memcpy(ap->ssid.body, bp + 2, ap->ssid.size); 
> >                          break; 
> >                  case 1:        /* rate */ 
> >                  case 50:        /* ext rate */ 
> >                          if ((*(bp + 1) + ap->rate_set.size) <= 
> >                              RATE_SET_MAX_SIZE) { 
> > 
> -                                memcpy(&(ap->rate_set.body[ap->rate_set.size]), 
>
> > 
> +                                memcpy(&ap->rate_set.body[ap->rate_set.size], 
>
> >                                         bp + 2, *(bp + 1)); 
> >                                  ap->rate_set.size += *(bp + 1); 
> >                          } else { 
> >                                  DPRINTK(1, "size over :: rate 
> size=%d\n", 
> >                                          (*(bp + 1) + 
> ap->rate_set.size)); 
> > 
> -                                memcpy(&(ap->rate_set.body[ap->rate_set.size]), 
>
> > 
> +                                memcpy(&ap->rate_set.body[ap->rate_set.size], 
>
> >                                         bp + 2, 
> >                                         RATE_SET_MAX_SIZE - 
> ap->rate_set.size); 
> >                                  ap->rate_set.size += 
> > @@ -269,7 +269,7 @@ int get_ap_information(struct ks_wlan_private *priv, 
> struct ap_info_t *ap_info, 
> >                                          *(bp + 1)); 
> >                                  ap->rsn_ie.size = RSN_IE_BODY_MAX; 
> >                          } 
> > -                        memcpy(&(ap->rsn_ie.body[0]), bp + 2, 
> ap->rsn_ie.size); 
> > +                        memcpy(ap->rsn_ie.body, bp + 2, 
> ap->rsn_ie.size); 
> >                          break; 
> >                  case 221:        /* WPA */ 
> >                          if (!memcmp(bp + 2, "\x00\x50\xf2\x01", 4)) 
> {        /* WPA OUI check */ 
> > @@ -282,7 +282,7 @@ int get_ap_information(struct ks_wlan_private *priv, 
> struct ap_info_t *ap_info, 
> >                                                  *(bp + 1)); 
> >                                          ap->wpa_ie.size = 
> RSN_IE_BODY_MAX; 
> >                                  } 
> > -                                memcpy(&(ap->wpa_ie.body[0]), bp + 2, 
> > +                                memcpy(ap->wpa_ie.body, bp + 2, 
> >                                         ap->wpa_ie.size); 
> >                          } 
> >                          break; 
> > @@ -832,8 +832,8 @@ void hostif_scan_indication(struct ks_wlan_private 
> *priv) 
> >          if (priv->scan_ind_count != 0) { 
> >                  for (i = 0; i < priv->aplist.size; i++) {        /* 
> bssid check */ 
> >                          if (!memcmp 
> > -                            (&(ap_info->bssid[0]), 
> > -                             &(priv->aplist.ap[i].bssid[0]), ETH_ALEN)) 
> { 
> > +                            (ap_info->bssid, 
> > +                             &priv->aplist.ap[i].bssid[0], ETH_ALEN)) { 
> >                                  if (ap_info->frame_type == 
> >                                      FRAME_TYPE_PROBE_RESP) 
> >                                          get_ap_information(priv, 
> ap_info, 
> > @@ -2652,7 +2652,7 @@ int hostif_init(struct ks_wlan_private *priv) 
> > 
> >          priv->aplist.size = 0; 
> >          for (i = 0; i < LOCAL_APLIST_MAX; i++) 
> > -                memset(&(priv->aplist.ap[i]), 0, sizeof(struct 
> local_ap_t)); 
> > +                memset(&priv->aplist.ap[i], 0, sizeof(struct 
> local_ap_t)); 
> >          priv->infra_status = 0; 
> >          priv->current_rate = 4; 
> >          priv->connect_status = DISCONNECT_STATUS; 
> > @@ -2675,12 +2675,12 @@ int hostif_init(struct ks_wlan_private *priv) 
> >          INIT_WORK(&priv->ks_wlan_wakeup_task, ks_wlan_hw_wakeup_task); 
> > 
> >          /* WPA */ 
> > -        memset(&(priv->wpa), 0, sizeof(priv->wpa)); 
> > +        memset(&priv->wpa, 0, sizeof(priv->wpa)); 
> >          priv->wpa.rsn_enabled = 0; 
> >          priv->wpa.mic_failure.failure = 0; 
> >          priv->wpa.mic_failure.last_failure_time = 0; 
> >          priv->wpa.mic_failure.stop = 0; 
> > -        memset(&(priv->pmklist), 0, sizeof(priv->pmklist)); 
> > +        memset(&priv->pmklist, 0, sizeof(priv->pmklist)); 
> >          INIT_LIST_HEAD(&priv->pmklist.head); 
> >          for (i = 0; i < PMK_LIST_MAX; i++) 
> >                  INIT_LIST_HEAD(&priv->pmklist.pmk[i].list); 
> > diff --git a/drivers/staging/ks7010/ks_wlan_net.c 
> b/drivers/staging/ks7010/ks_wlan_net.c 
> > index 8c55428b71c7..9f4bd7c3ea12 100644 
> > --- a/drivers/staging/ks7010/ks_wlan_net.c 
> > +++ b/drivers/staging/ks7010/ks_wlan_net.c 
> > @@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct net_device *dev, 
> struct iw_request_info *info, 
> > 
> >          /* for SLEEP MODE */ 
> >          if ((priv->connect_status & CONNECT_STATUS_MASK) == 
> CONNECT_STATUS) 
> > -                memcpy(awrq->sa_data, &(priv->current_ap.bssid[0]), 
> ETH_ALEN); 
> > +                memcpy(awrq->sa_data, priv->current_ap.bssid, 
> ETH_ALEN); 
> >          else 
> >                  eth_zero_addr(awrq->sa_data); 
> > 
> > @@ -1364,7 +1364,7 @@ static int ks_wlan_get_aplist(struct net_device 
> *dev, 
> >                  return -EPERM; 
> >          /* for SLEEP MODE */ 
> >          for (i = 0; i < priv->aplist.size; i++) { 
> > -                memcpy(address[i].sa_data, 
> &(priv->aplist.ap[i].bssid[0]), 
> > +                memcpy(address[i].sa_data, 
> &priv->aplist.ap[i].bssid[0], 
> >                         ETH_ALEN); 
> >                  address[i].sa_family = ARPHRD_ETHER; 
> >                  qual[i].level = 256 - priv->aplist.ap[i].rssi; 
> > @@ -1454,7 +1454,7 @@ static inline char *ks_wlan_translate_scan(struct 
> net_device *dev, 
> >          iwe.u.data.flags = 1; 
> >          current_ev = 
> >              iwe_stream_add_point(info, current_ev, end_buf, &iwe, 
> > -                                 &(ap->ssid.body[0])); 
> > +                                 ap->ssid.body); 
> > 
> >          /* Add mode */ 
> >          iwe.cmd = SIOCGIWMODE; 
> > @@ -1496,7 +1496,7 @@ static inline char *ks_wlan_translate_scan(struct 
> net_device *dev, 
> >          iwe.u.data.length = 0; 
> >          current_ev = 
> >              iwe_stream_add_point(info, current_ev, end_buf, &iwe, 
> > -                                 &(ap->ssid.body[0])); 
> > +                                 ap->ssid.body); 
> > 
> >          /* Rate : stuffing multiple values in a single event require a 
> bit 
> >           * more of magic - Jean II */ 
> > @@ -1612,7 +1612,7 @@ static int ks_wlan_get_scan(struct net_device 
> *dev, 
> >                  current_ev = ks_wlan_translate_scan(dev, current_ev, 
> >  //                                                  extra + 
> IW_SCAN_MAX_DATA, 
> >                                                      extra + 
> dwrq->length, 
> > -                                                   
>  &(priv->current_ap)); 
> > +                                                    &priv->current_ap); 
> >          } 
> >  #endif 
> >          /* Read and parse all entries */ 
> > @@ -1625,7 +1625,7 @@ static int ks_wlan_get_scan(struct net_device 
> *dev, 
> >                  current_ev = ks_wlan_translate_scan(dev, info, 
> current_ev, 
> >  //                                                  extra + 
> IW_SCAN_MAX_DATA, 
> >                                                      extra + 
> dwrq->length, 
> > -                                                   
>  &(priv->aplist.ap[i])); 
> > +                                                   
>  &priv->aplist.ap[i]); 
> >          } 
> >          /* Length of data */ 
> >          dwrq->length = (current_ev - extra); 
> > @@ -2080,7 +2080,7 @@ static int ks_wlan_set_pmksa(struct net_device 
> *dev, 
> >                  } 
> >                  break; 
> >          case IW_PMKSA_FLUSH: 
> > -                memset(&(priv->pmklist), 0, sizeof(priv->pmklist)); 
> > +                memset(&priv->pmklist, 0, sizeof(priv->pmklist)); 
> >                  INIT_LIST_HEAD(&priv->pmklist.head); 
> >                  for (i = 0; i < PMK_LIST_MAX; i++) 
> >                          INIT_LIST_HEAD(&priv->pmklist.pmk[i].list); 
> > @@ -2178,7 +2178,7 @@ static int ks_wlan_get_firmware_version(struct 
> net_device *dev, 
> >  { 
> >          struct ks_wlan_private *priv = 
> >              (struct ks_wlan_private *)netdev_priv(dev); 
> > -        strcpy(extra, &(priv->firmware_version[0])); 
> > +        strcpy(extra, priv->firmware_version); 
> >          dwrq->length = priv->version_size + 1; 
> >          return 0; 
> >  } 
> > @@ -2433,7 +2433,7 @@ static int ks_wlan_data_read(struct net_device 
> *dev, 
> >                  read_length = priv->dev_size[priv->dev_count]; 
> > 
> >          /* Copy data */ 
> > -        memcpy(extra, &(priv->dev_data[priv->dev_count][0]), 
> read_length); 
> > +        memcpy(extra, &priv->dev_data[priv->dev_count][0], 
> read_length); 
> > 
> >          spin_unlock(&priv->dev_read_lock);        /* release spin lock 
> */ 
> > 
> > @@ -3254,7 +3254,7 @@ static int ks_wlan_netdev_ioctl(struct net_device 
> *dev, struct ifreq *rq, 
> > 
> >          switch (cmd) { 
> >          case SIOCIWFIRSTPRIV + 20:        /* KS_WLAN_SET_STOP_REQ */ 
> > -                rc = ks_wlan_set_stop_request(dev, NULL, 
> &(wrq->u.mode), NULL); 
> > +                rc = ks_wlan_set_stop_request(dev, NULL, &wrq->u.mode, 
> NULL); 
> >                  break; 
> >                  // All other calls are currently unsupported 
> >          default: 
> > -- 
> > 2.11.0 
> > 
> > -- 
> > You received this message because you are subscribed to the Google 
> Groups "outreachy-kernel" group. 
> > To unsubscribe from this group and stop receiving emails from it, send 
> an email to outreachy-kern...@googlegroups.com. 
> > To post to this group, send email to outreach...@googlegroups.com. 
> > To view this discussion on the web visit 
> https://groups.google.com/d/msgid/outreachy-kernel/20170220065310.GA21888%40arushi-HP-Pavilion-Notebook. 
>
> > For more options, visit https://groups.google.com/d/optout. 
> > 
>

------=_Part_1912_624240686.1487576945324
Content-Type: text/html; charset=utf-8
Content-Transfer-Encoding: quoted-printable

<div dir=3D"ltr"><br><br>On Monday, February 20, 2017 at 12:32:22 PM UTC+5:=
30, Julia Lawall wrote:<blockquote class=3D"gmail_quote" style=3D"margin: 0=
;margin-left: 0.8ex;border-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>On Mon, 20 Feb 2017, Arushi Singhal wrote:
<br>
<br>&gt; Unnecessary parentheses should be avoided as reported by <a href=
=3D"http://checkpatch.pl" rel=3D"nofollow">checkpatch.pl</a>.
<br>&gt; Remove unnecessary parentheses, as reported by checkpatch as are n=
icer
<br>&gt; to read.For example:-
<br>&gt; It&#39;s often nicer to read if &amp;(foo[0]) is converted to foo =
like:
<br>&gt; =C2=A0 =C2=A0 =C2=A0memcpy(&amp;(ap-&gt;bssid[0]), &amp;(ap_info-&=
gt;bssid[0]), ETH_ALEN);
<br>&gt; =C2=A0 =C2=A0 =C2=A0memcpy(ap-&gt;bssid, ap_info-&gt;bssid, ETH_AL=
EN);
<br>
<br>The commit message is not well presented. =C2=A0One has the impression =
that all
<br>of the changes are related to 0 array elements. =C2=A0It would be bette=
r to
<br>split the patch into two: one for removing parentheses, and one for mak=
ing
<br>the &amp;x[0] -&gt; x change. =C2=A0They don&#39;t really have anything=
 to do with each
<br>other.
<br>
<br>julia
<br></blockquote><div><br><br>Hi <br>So should I change the commit message =
to more appropriate one so that it<br>better explain the changes? <br></div=
><blockquote class=3D"gmail_quote" style=3D"margin: 0;margin-left: 0.8ex;bo=
rder-left: 1px #ccc solid;padding-left: 1ex;">
<br>
<br>&gt;
<br>&gt; Signed-off-by: Arushi Singhal &lt;<a rel=3D"nofollow">arushising..=
.@gmail.<wbr>com</a>&gt;
<br>&gt; ---
<br>&gt; =C2=A0drivers/staging/ks7010/ks_<wbr>hostif.c =C2=A0 | 20 ++++++++=
++----------
<br>&gt; =C2=A0drivers/staging/ks7010/ks_<wbr>wlan_net.c | 20 ++++++++++---=
-------
<br>&gt; =C2=A02 files changed, 20 insertions(+), 20 deletions(-)
<br>&gt;
<br>&gt; diff --git a/drivers/staging/ks7010/ks_<wbr>hostif.c b/drivers/sta=
ging/ks7010/ks_<wbr>hostif.c
<br>&gt; index ba283ab741a7..2d5ec57c5cfd 100644
<br>&gt; --- a/drivers/staging/ks7010/ks_<wbr>hostif.c
<br>&gt; +++ b/drivers/staging/ks7010/ks_<wbr>hostif.c
<br>&gt; @@ -239,19 +239,19 @@ int get_ap_information(struct ks_wlan_privat=
e *priv, struct ap_info_t *ap_info,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*(bp + 1));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ap-&gt;ssid.s=
ize =3D SSID_MAX_SIZE;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>memcpy(&amp;(ap-&gt;ssid.body[0]), bp + 2, ap-&gt;ssid.size);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>memcpy(ap-&gt;ssid.body, bp + 2, ap-&gt;ssid.size);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 1:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0/* rate */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 50:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0/* ext rate */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if ((*(bp + 1) + ap-&gt;rate_set.size) &lt;=3D
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0RATE_SET_MAX_SIZE) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0memcpy(&amp;(ap-=
&gt;rate_set.body[<wbr>ap-&gt;rate_set.size]),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0memcpy(&amp;ap-&=
gt;rate_set.body[<wbr>ap-&gt;rate_set.size],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 bp + 2, *(bp + 1));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ap-&gt;rate_s=
et.size +=3D *(bp + 1);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0} else {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0DPRINTK(1, &q=
uot;size over :: rate size=3D%d\n&quot;,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0(*(bp + 1) + ap-&gt;rate_set.size));
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0memcpy(&amp;(ap-=
&gt;rate_set.body[<wbr>ap-&gt;rate_set.size]),
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0memcpy(&amp;ap-&=
gt;rate_set.body[<wbr>ap-&gt;rate_set.size],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 bp + 2,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 RATE_SET_MAX_SIZE - ap-&gt;rate_set.size);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ap-&gt;rate_s=
et.size +=3D
<br>&gt; @@ -269,7 +269,7 @@ int get_ap_information(struct ks_wlan_private =
*priv, struct ap_info_t *ap_info,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0*(bp + 1));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0ap-&gt;rsn_ie=
.size =3D RSN_IE_BODY_MAX;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>memcpy(&amp;(ap-&gt;rsn_ie.body[0]), bp + 2, ap-&gt;rsn_ie.size)=
;
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0<wbr>memcpy(ap-&gt;rsn_ie.body, bp + 2, ap-&gt;rsn_ie.size);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case 221:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0/* WPA */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (!memcmp(bp + 2, &quot;\x00\x50\xf2\x01&quot;, 4)) {=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* WPA OUI check */
<br>&gt; @@ -282,7 +282,7 @@ int get_ap_information(struct ks_wlan_private =
*priv, struct ap_info_t *ap_info,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0*(bp + 1));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0ap-&gt;wpa_ie.size =3D RSN_IE_BODY_MAX;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0}
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0memcpy(&amp;(ap-=
&gt;wpa_ie.body[0]<wbr>), bp + 2,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0memcpy(ap-&gt;wp=
a_ie.body, bp + 2,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0 =C2=A0 ap-&gt;wpa_ie.size);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0<wbr>break;
<br>&gt; @@ -832,8 +832,8 @@ void hostif_scan_indication(struct ks_wlan_pri=
vate *priv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if (priv-&gt=
;scan_ind_count !=3D 0) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; priv-&gt;aplist.si=
ze; i++) {=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* bssid check */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0if (!memcmp
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0(&amp;(ap_info-&gt;bssid[0]),
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 &amp;(priv-&gt;aplist.ap[i].bssid[0])<wbr>, ETH_ALEN))=
 {
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0(ap_info-&gt;bssid,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0 &amp;priv-&gt;aplist.ap[i].bssid[0], ETH_ALEN)) {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0if (ap_info-&=
gt;frame_type =3D=3D
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0FRAME_TYPE_PROBE_RESP)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0get_ap_information(<wbr>priv, ap_info,
<br>&gt; @@ -2652,7 +2652,7 @@ int hostif_init(struct ks_wlan_private *priv=
)
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;apl=
ist.size =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; LOCAL_APLIST_MAX; i++)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;(<wbr>priv-&gt;aplist.ap[i]), =
0, sizeof(struct local_ap_t));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;priv-<wbr>&gt;aplist.ap[i], 0,=
 sizeof(struct local_ap_t));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;inf=
ra_status =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;cur=
rent_rate =3D 4;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;con=
nect_status =3D DISCONNECT_STATUS;
<br>&gt; @@ -2675,12 +2675,12 @@ int hostif_init(struct ks_wlan_private *pr=
iv)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_WORK(&a=
mp;priv-&gt;ks_<wbr>wlan_wakeup_task, ks_wlan_hw_wakeup_task);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* WPA */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;(priv=
-&gt;wpa), 0, sizeof(priv-&gt;wpa));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;priv-=
&gt;wpa, 0, sizeof(priv-&gt;wpa));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;wpa=
.rsn_enabled =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;wpa=
.mic_<wbr>failure.failure =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;wpa=
.mic_<wbr>failure.last_failure_time =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0priv-&gt;wpa=
.mic_<wbr>failure.stop =3D 0;
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;(priv=
-&gt;<wbr>pmklist), 0, sizeof(priv-&gt;pmklist));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;priv-=
&gt;<wbr>pmklist, 0, sizeof(priv-&gt;pmklist));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_LIST_HE=
AD(&amp;priv-<wbr>&gt;pmklist.head);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; PMK_LIST_MAX; i++)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_LIST_<wbr>HEAD(&amp;priv-&gt;pmkli=
st.pmk[i].<wbr>list);
<br>&gt; diff --git a/drivers/staging/ks7010/ks_<wbr>wlan_net.c b/drivers/s=
taging/ks7010/ks_<wbr>wlan_net.c
<br>&gt; index 8c55428b71c7..9f4bd7c3ea12 100644
<br>&gt; --- a/drivers/staging/ks7010/ks_<wbr>wlan_net.c
<br>&gt; +++ b/drivers/staging/ks7010/ks_<wbr>wlan_net.c
<br>&gt; @@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct net_device *=
dev, struct iw_request_info *info,
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* for SLEEP=
 MODE */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0if ((priv-&g=
t;connect_status &amp; CONNECT_STATUS_MASK) =3D=3D CONNECT_STATUS)
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(awrq-&gt;<wbr>sa_data, &amp;(priv-&=
gt;current_ap.bssid[0]), ETH_ALEN);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(awrq-&gt;<wbr>sa_data, priv-&gt;cur=
rent_ap.bssid, ETH_ALEN);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0else
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0eth_zero_<wbr>addr(awrq-&gt;sa_data);
<br>&gt;
<br>&gt; @@ -1364,7 +1364,7 @@ static int ks_wlan_get_aplist(struct net_dev=
ice *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return -EPERM;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* for SLEEP=
 MODE */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0=
; i &lt; priv-&gt;aplist.size; i++) {
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(<wbr>address[i].sa_data, &amp;(priv=
-&gt;aplist.ap[i].bssid[0])<wbr>,
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(<wbr>address[i].sa_data, &amp;priv-=
&gt;aplist.ap[i].bssid[0],
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=A0 =C2=A0 ETH_ALEN);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0address[i].<wbr>sa_family =3D ARPHRD_ET=
HER;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0qual[i].level =3D 256 - priv-&gt;aplist=
.ap[i].rssi;
<br>&gt; @@ -1454,7 +1454,7 @@ static inline char *ks_wlan_translate_scan(s=
truct net_device *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iwe.u.data.f=
lags =3D 1;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0current_ev =
=3D
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0iwe_stream_add_point(info, current_ev, end_buf, &amp;iwe,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 &amp;(ap-&gt;ss=
id.body[0]));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 ap-&gt;ssid.bod=
y);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Add mode =
*/
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iwe.cmd =3D =
SIOCGIWMODE;
<br>&gt; @@ -1496,7 +1496,7 @@ static inline char *ks_wlan_translate_scan(s=
truct net_device *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0iwe.u.data.l=
ength =3D 0;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0current_ev =
=3D
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0iwe_stream_add_point(info, current_ev, end_buf, &amp;iwe,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 &amp;(ap-&gt;ss=
id.body[0]));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0 ap-&gt;ssid.bod=
y);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Rate : st=
uffing multiple values in a single event require a bit
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 * more of m=
agic - Jean II */
<br>&gt; @@ -1612,7 +1612,7 @@ static int ks_wlan_get_scan(struct net_devic=
e *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0current_ev =3D ks_wlan_translate_scan(d=
ev, current_ev,
<br>&gt; =C2=A0// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0extra + IW_SCAN_MAX_DATA,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0extra + dwrq-&gt;length,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0&amp;(priv-&gt;current_ap));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0&amp;priv-&gt;current_ap);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0#endif
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Read and =
parse all entries */
<br>&gt; @@ -1625,7 +1625,7 @@ static int ks_wlan_get_scan(struct net_devic=
e *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0current_ev =3D ks_wlan_translate_scan(d=
ev, info, current_ev,
<br>&gt; =C2=A0// =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =
=C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=
=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0 =C2=A0extra + IW_SCAN_MAX_DATA,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0 =C2=A0 =C2=A0extra + dwrq-&gt;length,
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0&amp;(priv-&gt;aplist.ap[i]));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0<wbr>=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0 =C2=A0 =C2=A0&amp;priv-&gt;aplist.ap[i]);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Length of=
 data */
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwrq-&gt;len=
gth =3D (current_ev - extra);
<br>&gt; @@ -2080,7 +2080,7 @@ static int ks_wlan_set_pmksa(struct net_devi=
ce *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0}
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case IW_PMKS=
A_FLUSH:
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;(<wbr>priv-&gt;pmklist), 0, si=
zeof(priv-&gt;pmklist));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memset(&amp;priv-<wbr>&gt;pmklist, 0, size=
of(priv-&gt;pmklist));
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0INIT_LIST_<wbr>HEAD(&amp;priv-&gt;pmkli=
st.head);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0for (i =3D 0; i &lt; PMK_LIST_MAX; i++)
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0INIT_<wbr>LIST_HEAD(&amp;priv-&gt;pmklist.pmk[<wbr>i].list);
<br>&gt; @@ -2178,7 +2178,7 @@ static int ks_wlan_get_firmware_version(<wbr=
>struct net_device *dev,
<br>&gt; =C2=A0{
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0struct ks_wl=
an_private *priv =3D
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0 =C2=A0 =C2=
=A0(struct ks_wlan_private *)netdev_priv(dev);
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0strcpy(extra, &am=
p;(priv-&gt;firmware_version[0]));
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0strcpy(extra, pri=
v-&gt;firmware_version);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0dwrq-&gt;len=
gth =3D priv-&gt;version_size + 1;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0return 0;
<br>&gt; =C2=A0}
<br>&gt; @@ -2433,7 +2433,7 @@ static int ks_wlan_data_read(struct net_devi=
ce *dev,
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0read_length =3D priv-&gt;dev_size[priv-=
&gt;dev_<wbr>count];
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* Copy data=
 */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(extra, &am=
p;(priv-&gt;dev_data[priv-&gt;dev_<wbr>count][0]), read_length);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0memcpy(extra, &am=
p;priv-&gt;dev_data[priv-&gt;dev_<wbr>count][0], read_length);
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0spin_unlock(=
&amp;priv-&gt;<wbr>dev_read_lock);=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0/* release spin lock */
<br>&gt;
<br>&gt; @@ -3254,7 +3254,7 @@ static int ks_wlan_netdev_ioctl(struct net_d=
evice *dev, struct ifreq *rq,
<br>&gt;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0switch (cmd)=
 {
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0case SIOCIWF=
IRSTPRIV + 20:=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0/* KS_WLAN_SE=
T_STOP_REQ */
<br>&gt; -=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D ks_wlan_set_stop_request(dev, NULL,=
 &amp;(wrq-&gt;u.mode), NULL);
<br>&gt; +=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=
=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0rc =3D ks_wlan_set_stop_request(dev, NULL,=
 &amp;wrq-&gt;u.mode, NULL);
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0break;
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=
=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0// All other calls are currently unsupp=
orted
<br>&gt; =C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0=C2=A0default:
<br>&gt; --
<br>&gt; 2.11.0
<br>&gt;
<br>&gt; --
<br>&gt; You received this message because you are subscribed to the Google=
 Groups &quot;outreachy-kernel&quot; group.
<br>&gt; To unsubscribe from this group and stop receiving emails from it, =
send an email to <a rel=3D"nofollow">outreachy-kern...@<wbr>googlegroups.co=
m</a>.
<br>&gt; To post to this group, send email to <a rel=3D"nofollow">outreach.=
..@googlegroups.<wbr>com</a>.
<br>&gt; To view this discussion on the web visit <a href=3D"https://groups=
.google.com/d/msgid/outreachy-kernel/20170220065310.GA21888%40arushi-HP-Pav=
ilion-Notebook" rel=3D"nofollow">https://groups.google.com/d/<wbr>msgid/out=
reachy-kernel/<wbr>20170220065310.GA21888%<wbr>40arushi-HP-Pavilion-Noteboo=
k</a>.
<br>&gt; For more options, visit <a href=3D"https://groups.google.com/d/opt=
out" rel=3D"nofollow">https://groups.google.com/d/<wbr>optout</a>.
<br>&gt;
<br></blockquote></div>
------=_Part_1912_624240686.1487576945324--

------=_Part_1911_240896586.1487576945323--

