X-GM-THRID: 6388887439725821952
X-Received: by 10.46.33.82 with SMTP id h79mr2200443ljh.7.1487580520163;
        Mon, 20 Feb 2017 00:48:40 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.72.209 with SMTP id v200ls376905lfa.52.gmail; Mon, 20 Feb
 2017 00:48:38 -0800 (PST)
X-Received: by 10.25.141.85 with SMTP id p82mr277464lfd.8.1487580518908;
        Mon, 20 Feb 2017 00:48:38 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id f7si769127wmg.3.2017.02.20.00.48.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 20 Feb 2017 00:48:38 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,185,1484002800"; 
   d="scan'208";a="261246679"
Received: from vaio-julia.rsr.lip6.fr ([132.227.76.33])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 20 Feb 2017 09:48:38 +0100
Date: Mon, 20 Feb 2017 09:48:33 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Arushi Singhal <arushisinghal19971997@gmail.com>
cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    gregkh@linuxfoundation.org, devel@driverdev.osuosl.org, 
    linux-kernel@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 2/2] staging: ks7010: Unnecessary
 parentheses are removed.
In-Reply-To: <f41dab07-08d8-4545-93fb-88c9845767bb@googlegroups.com>
Message-ID: <alpine.DEB.2.20.1702200947590.3114@hadrien>
References: <20170220065310.GA21888@arushi-HP-Pavilion-Notebook> <alpine.DEB.2.20.1702200759420.2222@hadrien> <f41dab07-08d8-4545-93fb-88c9845767bb@googlegroups.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: multipart/mixed; BOUNDARY="8323329-1097825655-1487580514=:3114"

--8323329-1097825655-1487580514=:3114
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 8BIT



On Sun, 19 Feb 2017, Arushi Singhal wrote:

>
>
> On Monday, February 20, 2017 at 12:32:22 PM UTC+5:30, Julia Lawall wrote:
>
>
>       On Mon, 20 Feb 2017, Arushi Singhal wrote:
>
>       > Unnecessary parentheses should be avoided as reported by
>       checkpatch.pl.
>       > Remove unnecessary parentheses, as reported by checkpatch as
>       are nicer
>       > to read.For example:-
>       > It's often nicer to read if &(foo[0]) is converted to foo
>       like:
>       >      memcpy(&(ap->bssid[0]), &(ap_info->bssid[0]), ETH_ALEN);
>       >      memcpy(ap->bssid, ap_info->bssid, ETH_ALEN);
>
>       The commit message is not well presented.  One has the
>       impression that all
>       of the changes are related to 0 array elements.  It would be
>       better to
>       split the patch into two: one for removing parentheses, and one
>       for making
>       the &x[0] -> x change.  They don't really have anything to do
>       with each
>       other.
>
>       julia
>
>
>
> Hi
> So should I change the commit message to more appropriate one so that it
> better explain the changes?

Yes please.  Remember to put v2 in the subject line and to explain the
change you made under the ---

julia

>
>
>       >
>       > Signed-off-by: Arushi Singhal <arushising...@gmail.com>
>       > ---
>       >  drivers/staging/ks7010/ks_hostif.c   | 20
>       ++++++++++----------
>       >  drivers/staging/ks7010/ks_wlan_net.c | 20
>       ++++++++++----------
>       >  2 files changed, 20 insertions(+), 20 deletions(-)
>       >
>       > diff --git a/drivers/staging/ks7010/ks_hostif.c
>       b/drivers/staging/ks7010/ks_hostif.c
>       > index ba283ab741a7..2d5ec57c5cfd 100644
>       > --- a/drivers/staging/ks7010/ks_hostif.c
>       > +++ b/drivers/staging/ks7010/ks_hostif.c
>       > @@ -239,19 +239,19 @@ int get_ap_information(struct
>       ks_wlan_private *priv, struct ap_info_t *ap_info,
>       >                                          *(bp + 1));
>       >                                  ap->ssid.size =
>       SSID_MAX_SIZE;
>       >                          }
>       > -                        memcpy(&(ap->ssid.body[0]), bp + 2,
>       ap->ssid.size);
>       > +                        memcpy(ap->ssid.body, bp + 2,
>       ap->ssid.size);
>       >                          break;
>       >                  case 1:        /* rate */
>       >                  case 50:        /* ext rate */
>       >                          if ((*(bp + 1) + ap->rate_set.size)
>       <=
>       >                              RATE_SET_MAX_SIZE) {
>       >-                                memcpy(&(ap->rate_set.body[ap->rate_set.si
>       ze]),
>       >+                                memcpy(&ap->rate_set.body[ap->rate_set.siz
>       e],
>       >                                         bp + 2, *(bp + 1));
>       >                                  ap->rate_set.size += *(bp +
>       1);
>       >                          } else {
>       >                                  DPRINTK(1, "size over :: rate
>       size=%d\n",
>       >                                          (*(bp + 1) +
>       ap->rate_set.size));
>       >-                                memcpy(&(ap->rate_set.body[ap->rate_set.si
>       ze]),
>       >+                                memcpy(&ap->rate_set.body[ap->rate_set.siz
>       e],
>       >                                         bp + 2,
>       >                                         RATE_SET_MAX_SIZE -
>       ap->rate_set.size);
>       >                                  ap->rate_set.size +=
>       > @@ -269,7 +269,7 @@ int get_ap_information(struct
>       ks_wlan_private *priv, struct ap_info_t *ap_info,
>       >                                          *(bp + 1));
>       >                                  ap->rsn_ie.size =
>       RSN_IE_BODY_MAX;
>       >                          }
>       > -                        memcpy(&(ap->rsn_ie.body[0]), bp + 2,
>       ap->rsn_ie.size);
>       > +                        memcpy(ap->rsn_ie.body, bp + 2,
>       ap->rsn_ie.size);
>       >                          break;
>       >                  case 221:        /* WPA */
>       >                          if (!memcmp(bp + 2,
>       "\x00\x50\xf2\x01", 4)) {        /* WPA OUI check */
>       > @@ -282,7 +282,7 @@ int get_ap_information(struct
>       ks_wlan_private *priv, struct ap_info_t *ap_info,
>       >                                                  *(bp + 1));
>       >                                          ap->wpa_ie.size =
>       RSN_IE_BODY_MAX;
>       >                                  }
>       > -                                memcpy(&(ap->wpa_ie.body[0]),
>       bp + 2,
>       > +                                memcpy(ap->wpa_ie.body, bp +
>       2,
>       >                                         ap->wpa_ie.size);
>       >                          }
>       >                          break;
>       > @@ -832,8 +832,8 @@ void hostif_scan_indication(struct
>       ks_wlan_private *priv)
>       >          if (priv->scan_ind_count != 0) {
>       >                  for (i = 0; i < priv->aplist.size; i++)
>       {        /* bssid check */
>       >                          if (!memcmp
>       > -                            (&(ap_info->bssid[0]),
>       > -                             &(priv->aplist.ap[i].bssid[0]),
>       ETH_ALEN)) {
>       > +                            (ap_info->bssid,
>       > +                             &priv->aplist.ap[i].bssid[0],
>       ETH_ALEN)) {
>       >                                  if (ap_info->frame_type ==
>       >                                      FRAME_TYPE_PROBE_RESP)
>       >
>                                                get_ap_information(priv,
>       ap_info,
>       > @@ -2652,7 +2652,7 @@ int hostif_init(struct ks_wlan_private
>       *priv)
>       >
>       >          priv->aplist.size = 0;
>       >          for (i = 0; i < LOCAL_APLIST_MAX; i++)
>       > -                memset(&(priv->aplist.ap[i]), 0,
>       sizeof(struct local_ap_t));
>       > +                memset(&priv->aplist.ap[i], 0, sizeof(struct
>       local_ap_t));
>       >          priv->infra_status = 0;
>       >          priv->current_rate = 4;
>       >          priv->connect_status = DISCONNECT_STATUS;
>       > @@ -2675,12 +2675,12 @@ int hostif_init(struct ks_wlan_private
>       *priv)
>       >          INIT_WORK(&priv->ks_wlan_wakeup_task,
>       ks_wlan_hw_wakeup_task);
>       >
>       >          /* WPA */
>       > -        memset(&(priv->wpa), 0, sizeof(priv->wpa));
>       > +        memset(&priv->wpa, 0, sizeof(priv->wpa));
>       >          priv->wpa.rsn_enabled = 0;
>       >          priv->wpa.mic_failure.failure = 0;
>       >          priv->wpa.mic_failure.last_failure_time = 0;
>       >          priv->wpa.mic_failure.stop = 0;
>       > -        memset(&(priv->pmklist), 0, sizeof(priv->pmklist));
>       > +        memset(&priv->pmklist, 0, sizeof(priv->pmklist));
>       >          INIT_LIST_HEAD(&priv->pmklist.head);
>       >          for (i = 0; i < PMK_LIST_MAX; i++)
>       >                  INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
>       > diff --git a/drivers/staging/ks7010/ks_wlan_net.c
>       b/drivers/staging/ks7010/ks_wlan_net.c
>       > index 8c55428b71c7..9f4bd7c3ea12 100644
>       > --- a/drivers/staging/ks7010/ks_wlan_net.c
>       > +++ b/drivers/staging/ks7010/ks_wlan_net.c
>       > @@ -423,7 +423,7 @@ static int ks_wlan_get_wap(struct
>       net_device *dev, struct iw_request_info *info,
>       >
>       >          /* for SLEEP MODE */
>       >          if ((priv->connect_status & CONNECT_STATUS_MASK) ==
>       CONNECT_STATUS)
>       > -                memcpy(awrq->sa_data,
>       &(priv->current_ap.bssid[0]), ETH_ALEN);
>       > +                memcpy(awrq->sa_data, priv->current_ap.bssid,
>       ETH_ALEN);
>       >          else
>       >                  eth_zero_addr(awrq->sa_data);
>       >
>       > @@ -1364,7 +1364,7 @@ static int ks_wlan_get_aplist(struct
>       net_device *dev,
>       >                  return -EPERM;
>       >          /* for SLEEP MODE */
>       >          for (i = 0; i < priv->aplist.size; i++) {
>       > -                memcpy(address[i].sa_data,
>       &(priv->aplist.ap[i].bssid[0]),
>       > +                memcpy(address[i].sa_data,
>       &priv->aplist.ap[i].bssid[0],
>       >                         ETH_ALEN);
>       >                  address[i].sa_family = ARPHRD_ETHER;
>       >                  qual[i].level = 256 -
>       priv->aplist.ap[i].rssi;
>       > @@ -1454,7 +1454,7 @@ static inline char
>       *ks_wlan_translate_scan(struct net_device *dev,
>       >          iwe.u.data.flags = 1;
>       >          current_ev =
>       >              iwe_stream_add_point(info, current_ev, end_buf,
>       &iwe,
>       > -                                 &(ap->ssid.body[0]));
>       > +                                 ap->ssid.body);
>       >
>       >          /* Add mode */
>       >          iwe.cmd = SIOCGIWMODE;
>       > @@ -1496,7 +1496,7 @@ static inline char
>       *ks_wlan_translate_scan(struct net_device *dev,
>       >          iwe.u.data.length = 0;
>       >          current_ev =
>       >              iwe_stream_add_point(info, current_ev, end_buf,
>       &iwe,
>       > -                                 &(ap->ssid.body[0]));
>       > +                                 ap->ssid.body);
>       >
>       >          /* Rate : stuffing multiple values in a single event
>       require a bit
>       >           * more of magic - Jean II */
>       > @@ -1612,7 +1612,7 @@ static int ks_wlan_get_scan(struct
>       net_device *dev,
>       >                  current_ev = ks_wlan_translate_scan(dev,
>       current_ev,
>       >  //                                                  extra +
>       IW_SCAN_MAX_DATA,
>       >                                                      extra +
>       dwrq->length,
>       > -                                                  
>        &(priv->current_ap));
>       > +                                                  
>        &priv->current_ap);
>       >          }
>       >  #endif
>       >          /* Read and parse all entries */
>       > @@ -1625,7 +1625,7 @@ static int ks_wlan_get_scan(struct
>       net_device *dev,
>       >                  current_ev = ks_wlan_translate_scan(dev,
>       info, current_ev,
>       >  //                                                  extra +
>       IW_SCAN_MAX_DATA,
>       >                                                      extra +
>       dwrq->length,
>       > -                                                  
>        &(priv->aplist.ap[i]));
>       > +                                                  
>        &priv->aplist.ap[i]);
>       >          }
>       >          /* Length of data */
>       >          dwrq->length = (current_ev - extra);
>       > @@ -2080,7 +2080,7 @@ static int ks_wlan_set_pmksa(struct
>       net_device *dev,
>       >                  }
>       >                  break;
>       >          case IW_PMKSA_FLUSH:
>       > -                memset(&(priv->pmklist), 0,
>       sizeof(priv->pmklist));
>       > +                memset(&priv->pmklist, 0,
>       sizeof(priv->pmklist));
>       >                  INIT_LIST_HEAD(&priv->pmklist.head);
>       >                  for (i = 0; i < PMK_LIST_MAX; i++)
>       >
>                                INIT_LIST_HEAD(&priv->pmklist.pmk[i].list);
>       > @@ -2178,7 +2178,7 @@ static int
>       ks_wlan_get_firmware_version(struct net_device *dev,
>       >  {
>       >          struct ks_wlan_private *priv =
>       >              (struct ks_wlan_private *)netdev_priv(dev);
>       > -        strcpy(extra, &(priv->firmware_version[0]));
>       > +        strcpy(extra, priv->firmware_version);
>       >          dwrq->length = priv->version_size + 1;
>       >          return 0;
>       >  }
>       > @@ -2433,7 +2433,7 @@ static int ks_wlan_data_read(struct
>       net_device *dev,
>       >                  read_length =
>       priv->dev_size[priv->dev_count];
>       >
>       >          /* Copy data */
>       > -        memcpy(extra, &(priv->dev_data[priv->dev_count][0]),
>       read_length);
>       > +        memcpy(extra, &priv->dev_data[priv->dev_count][0],
>       read_length);
>       >
>       >          spin_unlock(&priv->dev_read_lock);        /* release
>       spin lock */
>       >
>       > @@ -3254,7 +3254,7 @@ static int ks_wlan_netdev_ioctl(struct
>       net_device *dev, struct ifreq *rq,
>       >
>       >          switch (cmd) {
>       >          case SIOCIWFIRSTPRIV + 20:        /*
>       KS_WLAN_SET_STOP_REQ */
>       > -                rc = ks_wlan_set_stop_request(dev, NULL,
>       &(wrq->u.mode), NULL);
>       > +                rc = ks_wlan_set_stop_request(dev, NULL,
>       &wrq->u.mode, NULL);
>       >                  break;
>       >                  // All other calls are currently unsupported
>       >          default:
>       > --
>       > 2.11.0
>       >
>       > --
>       > You received this message because you are subscribed to the
>       Google Groups "outreachy-kernel" group.
>       > To unsubscribe from this group and stop receiving emails from
>       it, send an email to outreachy-kern...@googlegroups.com.
>       > To post to this group, send email to
>       outreach...@googlegroups.com.
>       > To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/20170220065310.GA21888%4
>       0arushi-HP-Pavilion-Notebook.
>       > For more options, visit https://groups.google.com/d/optout.
>       >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visithttps://groups.google.com/d/msgid/outreachy-kernel/f41dab07-08d8-4545-93fb-
> 88c9845767bb%40googlegroups.com.
> For more options, visit https://groups.google.com/d/optout.
>
>
--8323329-1097825655-1487580514=:3114--

