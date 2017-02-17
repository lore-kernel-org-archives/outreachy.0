X-GM-THRID: 6387958804710948864
X-Received: by 10.46.9.206 with SMTP id 197mr601796ljj.12.1487313350651;
        Thu, 16 Feb 2017 22:35:50 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.38.143 with SMTP id m137ls182304lfm.51.gmail; Thu, 16 Feb
 2017 22:35:49 -0800 (PST)
X-Received: by 10.46.8.74 with SMTP id g10mr598515ljd.1.1487313349649;
        Thu, 16 Feb 2017 22:35:49 -0800 (PST)
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id h62si18950wme.2.2017.02.16.22.35.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:35:49 -0800 (PST)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.35,171,1484002800"; 
   d="scan'208";a="260872615"
Received: from 198.67.28.109.rev.sfr.net (HELO hadrien) ([109.28.67.198])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 17 Feb 2017 07:35:49 +0100
Date: Fri, 17 Feb 2017 07:35:48 +0100 (CET)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Vaishali Thakkar <vthakkar1994@gmail.com>
cc: Gargi Sharma <gs051095@gmail.com>, 
    outreachy-kernel <outreachy-kernel@googlegroups.com>, 
    Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8188eu: Fix block
 comments warning
In-Reply-To: <CAK-LDbLb=1rss2n7kzpGaTdtyJFrh56ay4WmD7vsJO67sewMwQ@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1702170735310.2062@hadrien>
References: <cover.1487312015.git.gs051095@gmail.com> <14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095@gmail.com> <CAK-LDbLb=1rss2n7kzpGaTdtyJFrh56ay4WmD7vsJO67sewMwQ@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII

On Fri, 17 Feb 2017, Vaishali Thakkar wrote:

> On Fri, Feb 17, 2017 at 11:50 AM, Gargi Sharma <gs051095@gmail.com> wrote:
> > Align * on each line and move final */ to a new line, to
> > conform to the kernel coding style for block comments.
>
> Typo there: s/conform/confirm

Conform is correct.

julia

>
> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> > ---
> >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 61 ++++++++++++++++---------------
> >  1 file changed, 31 insertions(+), 30 deletions(-)
> >
> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > index a98a550..0215b65 100644
> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> > @@ -181,10 +181,10 @@ void _rtw_free_network_nolock(struct      mlme_priv *pmlmepriv, struct wlan_network *
> >  }
> >
> >  /*
> > -       return the wlan_network with the matching addr
> > -
> > -       Shall be calle under atomic context... to avoid possible racing condition...
> > -*/
> > + * return the wlan_network with the matching addr
> > + *
> > + * Shall be called under atomic context... to avoid possible racing condition...
> > + */
> >  struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
> >  {
> >         struct list_head *phead, *plist;
> > @@ -408,8 +408,8 @@ static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex
> >  }
> >
> >  /*
> > -Caller must hold pmlmepriv->lock first.
> > -*/
> > + * Caller must hold pmlmepriv->lock first.
> > + */
> >  void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target)
> >  {
> >         struct list_head *plist, *phead;
> > @@ -434,7 +434,8 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
> >                 plist = plist->next;
> >         }
> >         /* If we didn't find a match, then get a new network slot to initialize
> > -        * with this beacon's information */
> > +        * with this beacon's information
> > +        */
> >         if (phead == plist) {
> >                 if (list_empty(&(pmlmepriv->free_bss_pool.queue))) {
> >                         /* If there are no more slots, expire the oldest */
> > @@ -726,8 +727,8 @@ static void free_scanqueue(struct   mlme_priv *pmlmepriv)
> >  }
> >
> >  /*
> > -*rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
> > -*/
> > + * rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
> > + */
> >  void rtw_free_assoc_resources(struct adapter *adapter)
> >  {
> >         struct  mlme_priv *pmlmepriv = &adapter->mlmepriv;
> > @@ -738,8 +739,8 @@ void rtw_free_assoc_resources(struct adapter *adapter)
> >  }
> >
> >  /*
> > -*rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
> > -*/
> > + * rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
> > + */
> >  void rtw_free_assoc_resources_locked(struct adapter *adapter)
> >  {
> >         struct wlan_network *pwlan = NULL;
> > @@ -789,8 +790,8 @@ void rtw_free_assoc_resources_locked(struct adapter *adapter)
> >  }
> >
> >  /*
> > -*rtw_indicate_connect: the caller has to lock pmlmepriv->lock
> > -*/
> > + * rtw_indicate_connect: the caller has to lock pmlmepriv->lock
> > + */
> >  void rtw_indicate_connect(struct adapter *padapter)
> >  {
> >         struct mlme_priv        *pmlmepriv = &padapter->mlmepriv;
> > @@ -815,8 +816,8 @@ void rtw_indicate_connect(struct adapter *padapter)
> >  }
> >
> >  /*
> > -*rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
> > -*/
> > + * rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
> > + */
> >  void rtw_indicate_disconnect(struct adapter *padapter)
> >  {
> >         struct  mlme_priv *pmlmepriv = &padapter->mlmepriv;
> > @@ -1338,9 +1339,9 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
> >  }
> >
> >  /*
> > -* _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
> > -* @adapter: pointer to struct adapter structure
> > -*/
> > + * _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
> > + * @adapter: pointer to struct adapter structure
> > + */
> >  void _rtw_join_timeout_handler (unsigned long data)
> >  {
> >         struct adapter *adapter = (struct adapter *)data;
> > @@ -1380,9 +1381,9 @@ void _rtw_join_timeout_handler (unsigned long data)
> >  }
> >
> >  /*
> > -* rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
> > -* @adapter: pointer to struct adapter structure
> > -*/
> > + * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
> > + * @adapter: pointer to struct adapter structure
> > + */
> >  void rtw_scan_timeout_handler (unsigned long data)
> >  {
> >         struct adapter *adapter = (struct adapter *)data;
> > @@ -1437,10 +1438,10 @@ void rtw_dynamic_check_timer_handlder(unsigned long data)
> >  #define RTW_SCAN_RESULT_EXPIRE 2000
> >
> >  /*
> > -* Select a new join candidate from the original @param candidate and @param competitor
> > -* @return true: candidate is updated
> > -* @return false: candidate is not updated
> > -*/
> > + * Select a new join candidate from the original @param candidate and @param competitor
> > + * @return true: candidate is updated
> > + * @return false: candidate is not updated
> > + */
> >  static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
> >         , struct wlan_network **candidate, struct wlan_network *competitor)
> >  {
> > @@ -1491,11 +1492,11 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
> >  }
> >
> >  /*
> > -Calling context:
> > -The caller of the sub-routine will be in critical section...
> > -The caller must hold the following spinlock
> > -pmlmepriv->lock
> > -*/
> > + * Calling context:
> > + * The caller of the sub-routine will be in critical section...
> > + * The caller must hold the following spinlock
> > + * pmlmepriv->lock
> > + */
> >
> >  int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
> >  {
> > --
> > 2.7.4
> >
> > --
> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> > To post to this group, send email to outreachy-kernel@googlegroups.com.
> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095%40gmail.com.
> > For more options, visit https://groups.google.com/d/optout.
>
>
>
> --
> Vaishali
> http://vaishalithakkar.in/
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbLb%3D1rss2n7kzpGaTdtyJFrh56ay4WmD7vsJO67sewMwQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

