X-GM-THRID: 6387958804710948864
X-Received: by 10.31.12.18 with SMTP id 18mr1629604vkm.32.1487313763382;
        Thu, 16 Feb 2017 22:42:43 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.9.199 with SMTP id 68ls1045555ioj.3.gmail; Thu, 16 Feb
 2017 22:42:42 -0800 (PST)
X-Received: by 10.99.181.67 with SMTP id u3mr2159203pgo.66.1487313762626;
        Thu, 16 Feb 2017 22:42:42 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-ot0-x244.google.com (mail-ot0-x244.google.com. [2607:f8b0:4003:c0f::244])
        by gmr-mx.google.com with ESMTPS id n132si80551ith.0.2017.02.16.22.42.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:42:42 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c0f::244 as permitted sender) client-ip=2607:f8b0:4003:c0f::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c0f::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ot0-x244.google.com with SMTP id l26so3786120ota.3
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:42:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=F1PR8V1GywDCMCpZgj4Xaae3ss7oNGYd2VHvHIoHFwI=;
        b=FkRHBnZ07RceRo39DBeNjvIF1I3s4onOcfIWytD/3O556U0qYdxlkn2aSzrWDnItVn
         x6Yv3gTJUoK6/8wlCSuEt0xf+mwbuxdU85GaFKP7RAkm0UmwJ50XKRjP126egl3i4DYC
         fWyia+XNAgdPGZwifps0p2j+ZnS54yikLpiRCY6coGNbJA9Gw0/L8nFfIAXE4v2N/6Gz
         vEuZQqWkYWk6SXoR+HvrfMRfGEG6PeNK2g2zhWpyQ16LwTXjOkPg0kwnawbgJMvuHiM3
         Wm1L3J3NDEoSAuCMogIEm+lJFNz1p3MevAH8L02tTSGmOlCYkLvGJxtOZoXkmZJW1NJ7
         XBPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=F1PR8V1GywDCMCpZgj4Xaae3ss7oNGYd2VHvHIoHFwI=;
        b=JfVSy2Cd3zTP3MhqLUcPvevKArASd1lrqdRIW3HUwt8YzyI/Izw9U1zsvae6I+Ep9C
         f19HX4H+tgz1n42gCAa+ljbeKYsarLyl1nxfrl+h2NqQVnzduvQAA+i1q/IkxMhNgoCn
         Qp130X7CqknAg4U7AbGsQcvoNxFplUZ6hNfuYO/M6CS4g9KMhpRd9kUxJ1sF9ML3SlO7
         NLm8EheK3JtkcNuze4N6RrpdE10qUbhv5jF2NHMCzBCCnNCYjA/SSy49IMylhJo+HoXk
         JpMPYS+nZTj1VvWOle3UWi4ibdEIMbzG4dHWUVmVVBlludlOR12JxMfRirAI1GET9/6o
         ysDQ==
X-Gm-Message-State: AMke39lp6vMJpqpXCFOY0Pq1udPlHQWP9dMmSqRVLF1r/spcyeZ6ovwuBZiIjPXKX6ZD9c47R4aukSFDBQHQdg==
X-Received: by 10.157.15.220 with SMTP id m28mr3140868otd.67.1487313762170;
 Thu, 16 Feb 2017 22:42:42 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.107.100 with HTTP; Thu, 16 Feb 2017 22:42:41 -0800 (PST)
In-Reply-To: <alpine.DEB.2.20.1702170735310.2062@hadrien>
References: <cover.1487312015.git.gs051095@gmail.com> <14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095@gmail.com>
 <CAK-LDbLb=1rss2n7kzpGaTdtyJFrh56ay4WmD7vsJO67sewMwQ@mail.gmail.com> <alpine.DEB.2.20.1702170735310.2062@hadrien>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Fri, 17 Feb 2017 12:12:41 +0530
Message-ID: <CAK-LDbL8+Af6uNy=g-w+aUva0V4=YGbk1M2OXPe5aPj6Q0xy1w@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8188eu: Fix block
 comments warning
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Gargi Sharma <gs051095@gmail.com>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 17, 2017 at 12:05 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Fri, 17 Feb 2017, Vaishali Thakkar wrote:
>
>> On Fri, Feb 17, 2017 at 11:50 AM, Gargi Sharma <gs051095@gmail.com> wrote:
>> > Align * on each line and move final */ to a new line, to
>> > conform to the kernel coding style for block comments.
>>
>> Typo there: s/conform/confirm
>
> Conform is correct.

Oops! My bad! :)

> julia
>
>>
>> > Signed-off-by: Gargi Sharma <gs051095@gmail.com>
>> > ---
>> >  drivers/staging/rtl8188eu/core/rtw_mlme.c | 61 ++++++++++++++++---------------
>> >  1 file changed, 31 insertions(+), 30 deletions(-)
>> >
>> > diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
>> > index a98a550..0215b65 100644
>> > --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
>> > +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
>> > @@ -181,10 +181,10 @@ void _rtw_free_network_nolock(struct      mlme_priv *pmlmepriv, struct wlan_network *
>> >  }
>> >
>> >  /*
>> > -       return the wlan_network with the matching addr
>> > -
>> > -       Shall be calle under atomic context... to avoid possible racing condition...
>> > -*/
>> > + * return the wlan_network with the matching addr
>> > + *
>> > + * Shall be called under atomic context... to avoid possible racing condition...
>> > + */
>> >  struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
>> >  {
>> >         struct list_head *phead, *plist;
>> > @@ -408,8 +408,8 @@ static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex
>> >  }
>> >
>> >  /*
>> > -Caller must hold pmlmepriv->lock first.
>> > -*/
>> > + * Caller must hold pmlmepriv->lock first.
>> > + */
>> >  void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target)
>> >  {
>> >         struct list_head *plist, *phead;
>> > @@ -434,7 +434,8 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
>> >                 plist = plist->next;
>> >         }
>> >         /* If we didn't find a match, then get a new network slot to initialize
>> > -        * with this beacon's information */
>> > +        * with this beacon's information
>> > +        */
>> >         if (phead == plist) {
>> >                 if (list_empty(&(pmlmepriv->free_bss_pool.queue))) {
>> >                         /* If there are no more slots, expire the oldest */
>> > @@ -726,8 +727,8 @@ static void free_scanqueue(struct   mlme_priv *pmlmepriv)
>> >  }
>> >
>> >  /*
>> > -*rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
>> > -*/
>> > + * rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
>> > + */
>> >  void rtw_free_assoc_resources(struct adapter *adapter)
>> >  {
>> >         struct  mlme_priv *pmlmepriv = &adapter->mlmepriv;
>> > @@ -738,8 +739,8 @@ void rtw_free_assoc_resources(struct adapter *adapter)
>> >  }
>> >
>> >  /*
>> > -*rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
>> > -*/
>> > + * rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
>> > + */
>> >  void rtw_free_assoc_resources_locked(struct adapter *adapter)
>> >  {
>> >         struct wlan_network *pwlan = NULL;
>> > @@ -789,8 +790,8 @@ void rtw_free_assoc_resources_locked(struct adapter *adapter)
>> >  }
>> >
>> >  /*
>> > -*rtw_indicate_connect: the caller has to lock pmlmepriv->lock
>> > -*/
>> > + * rtw_indicate_connect: the caller has to lock pmlmepriv->lock
>> > + */
>> >  void rtw_indicate_connect(struct adapter *padapter)
>> >  {
>> >         struct mlme_priv        *pmlmepriv = &padapter->mlmepriv;
>> > @@ -815,8 +816,8 @@ void rtw_indicate_connect(struct adapter *padapter)
>> >  }
>> >
>> >  /*
>> > -*rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
>> > -*/
>> > + * rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
>> > + */
>> >  void rtw_indicate_disconnect(struct adapter *padapter)
>> >  {
>> >         struct  mlme_priv *pmlmepriv = &padapter->mlmepriv;
>> > @@ -1338,9 +1339,9 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
>> >  }
>> >
>> >  /*
>> > -* _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
>> > -* @adapter: pointer to struct adapter structure
>> > -*/
>> > + * _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
>> > + * @adapter: pointer to struct adapter structure
>> > + */
>> >  void _rtw_join_timeout_handler (unsigned long data)
>> >  {
>> >         struct adapter *adapter = (struct adapter *)data;
>> > @@ -1380,9 +1381,9 @@ void _rtw_join_timeout_handler (unsigned long data)
>> >  }
>> >
>> >  /*
>> > -* rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
>> > -* @adapter: pointer to struct adapter structure
>> > -*/
>> > + * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
>> > + * @adapter: pointer to struct adapter structure
>> > + */
>> >  void rtw_scan_timeout_handler (unsigned long data)
>> >  {
>> >         struct adapter *adapter = (struct adapter *)data;
>> > @@ -1437,10 +1438,10 @@ void rtw_dynamic_check_timer_handlder(unsigned long data)
>> >  #define RTW_SCAN_RESULT_EXPIRE 2000
>> >
>> >  /*
>> > -* Select a new join candidate from the original @param candidate and @param competitor
>> > -* @return true: candidate is updated
>> > -* @return false: candidate is not updated
>> > -*/
>> > + * Select a new join candidate from the original @param candidate and @param competitor
>> > + * @return true: candidate is updated
>> > + * @return false: candidate is not updated
>> > + */
>> >  static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
>> >         , struct wlan_network **candidate, struct wlan_network *competitor)
>> >  {
>> > @@ -1491,11 +1492,11 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
>> >  }
>> >
>> >  /*
>> > -Calling context:
>> > -The caller of the sub-routine will be in critical section...
>> > -The caller must hold the following spinlock
>> > -pmlmepriv->lock
>> > -*/
>> > + * Calling context:
>> > + * The caller of the sub-routine will be in critical section...
>> > + * The caller must hold the following spinlock
>> > + * pmlmepriv->lock
>> > + */
>> >
>> >  int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
>> >  {
>> > --
>> > 2.7.4
>> >
>> > --
>> > You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>>
>>
>>
>> --
>> Vaishali
>> http://vaishalithakkar.in/
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAK-LDbLb%3D1rss2n7kzpGaTdtyJFrh56ay4WmD7vsJO67sewMwQ%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>



-- 
Vaishali
http://vaishalithakkar.in/

