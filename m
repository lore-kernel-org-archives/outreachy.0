X-GM-THRID: 6387958804710948864
X-Received: by 10.157.52.209 with SMTP id t17mr2009048otd.123.1487313182894;
        Thu, 16 Feb 2017 22:33:02 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.11.115 with SMTP id p48ls1040136otd.37.gmail; Thu, 16 Feb
 2017 22:33:02 -0800 (PST)
X-Received: by 10.237.41.165 with SMTP id o34mr1818411qtd.81.1487313182574;
        Thu, 16 Feb 2017 22:33:02 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-ot0-x244.google.com (mail-ot0-x244.google.com. [2607:f8b0:4003:c0f::244])
        by gmr-mx.google.com with ESMTPS id f73si47376ita.1.2017.02.16.22.33.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 16 Feb 2017 22:33:02 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c0f::244 as permitted sender) client-ip=2607:f8b0:4003:c0f::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4003:c0f::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-ot0-x244.google.com with SMTP id 45so874432otd.1
        for <outreachy-kernel@googlegroups.com>; Thu, 16 Feb 2017 22:33:02 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=iTgXnNVFJfAK+zeTba570XTJwajgxo/zJw6nDAU3UTk=;
        b=XDHv5Xg8WB/apKilpWmHbBPhjdtiq+IIdzBPfDgSwU20G53DfroujxT/sZExIiJwuz
         2F73/se8uXqI8MjXpH/8NoIYPjJp1bpURD8BitjXQe9+zQXGuNq3Mk2LjXFRag0csyCC
         eTa0zjAWCOiybwB+dkL7S3ih1bvMY351O+Xh+ujyhwKqyEog4A6UByiQpjdnvVMVOg3h
         g8D87J4Meqs9DbiF15lRc9CZkvatc3JpbVWzvohHZZpydxXm8Vv8f8gooMHJ678oQKj0
         f8vreIo2NaPA9RtB90Ws4WI6NwnKT4iPhUGZVvdgsL9uFQ/sef0XFo8QSA5hrvNh8tJ5
         /B3Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=iTgXnNVFJfAK+zeTba570XTJwajgxo/zJw6nDAU3UTk=;
        b=E8Ac/SpQBsR1GNXx75rg9ZRxThVaigua5lyvKr3zDhZ2txBqEkmMwRspUBDlw6dR3V
         C2s5NuH2DpLvQPHpoWDGwkAWwF+Jc31lde4Sy8y6qr1MIK7/7q9D8Ahf/1JJQ93ujv/o
         WaUTmxlODaY8qOF8Gnew2MRSy08yjM5h+vMl7ZUJfce2jHgw10a/UoNx8tMPU0IHA2gn
         7U2QK87ObyzLf7k2z0caaj0ajT3P9qA5peGXSn0kF15ZdBL10+H4sos/jcdFiYimwPIb
         xYS629qkwbwqoImMTLOORIT1aql2x4fKBQSNWjYwT6sBbQoYdkKMmfY0JwG3fmZyjO0C
         VYDQ==
X-Gm-Message-State: AMke39mvZRhYoT9+RbnSotReUKCzqwJ3Z6q2Pzvu0Q7SFDZdzXDEN0smZGTZLr1AUPHM6WRDdSvopNpgRV4MrA==
X-Received: by 10.157.15.220 with SMTP id m28mr3128193otd.67.1487313182088;
 Thu, 16 Feb 2017 22:33:02 -0800 (PST)
MIME-Version: 1.0
Received: by 10.182.107.100 with HTTP; Thu, 16 Feb 2017 22:33:01 -0800 (PST)
In-Reply-To: <14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095@gmail.com>
References: <cover.1487312015.git.gs051095@gmail.com> <14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095@gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Fri, 17 Feb 2017 12:03:01 +0530
Message-ID: <CAK-LDbLb=1rss2n7kzpGaTdtyJFrh56ay4WmD7vsJO67sewMwQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 2/6] staging: rtl8188eu: Fix block
 comments warning
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Fri, Feb 17, 2017 at 11:50 AM, Gargi Sharma <gs051095@gmail.com> wrote:
> Align * on each line and move final */ to a new line, to
> conform to the kernel coding style for block comments.

Typo there: s/conform/confirm

> Signed-off-by: Gargi Sharma <gs051095@gmail.com>
> ---
>  drivers/staging/rtl8188eu/core/rtw_mlme.c | 61 ++++++++++++++++---------------
>  1 file changed, 31 insertions(+), 30 deletions(-)
>
> diff --git a/drivers/staging/rtl8188eu/core/rtw_mlme.c b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> index a98a550..0215b65 100644
> --- a/drivers/staging/rtl8188eu/core/rtw_mlme.c
> +++ b/drivers/staging/rtl8188eu/core/rtw_mlme.c
> @@ -181,10 +181,10 @@ void _rtw_free_network_nolock(struct      mlme_priv *pmlmepriv, struct wlan_network *
>  }
>
>  /*
> -       return the wlan_network with the matching addr
> -
> -       Shall be calle under atomic context... to avoid possible racing condition...
> -*/
> + * return the wlan_network with the matching addr
> + *
> + * Shall be called under atomic context... to avoid possible racing condition...
> + */
>  struct wlan_network *rtw_find_network(struct __queue *scanned_queue, u8 *addr)
>  {
>         struct list_head *phead, *plist;
> @@ -408,8 +408,8 @@ static void update_current_network(struct adapter *adapter, struct wlan_bssid_ex
>  }
>
>  /*
> -Caller must hold pmlmepriv->lock first.
> -*/
> + * Caller must hold pmlmepriv->lock first.
> + */
>  void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *target)
>  {
>         struct list_head *plist, *phead;
> @@ -434,7 +434,8 @@ void rtw_update_scanned_network(struct adapter *adapter, struct wlan_bssid_ex *t
>                 plist = plist->next;
>         }
>         /* If we didn't find a match, then get a new network slot to initialize
> -        * with this beacon's information */
> +        * with this beacon's information
> +        */
>         if (phead == plist) {
>                 if (list_empty(&(pmlmepriv->free_bss_pool.queue))) {
>                         /* If there are no more slots, expire the oldest */
> @@ -726,8 +727,8 @@ static void free_scanqueue(struct   mlme_priv *pmlmepriv)
>  }
>
>  /*
> -*rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
> -*/
> + * rtw_free_assoc_resources: the caller has to lock pmlmepriv->lock
> + */
>  void rtw_free_assoc_resources(struct adapter *adapter)
>  {
>         struct  mlme_priv *pmlmepriv = &adapter->mlmepriv;
> @@ -738,8 +739,8 @@ void rtw_free_assoc_resources(struct adapter *adapter)
>  }
>
>  /*
> -*rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
> -*/
> + * rtw_free_assoc_resources_locked: the caller has to lock pmlmepriv->lock
> + */
>  void rtw_free_assoc_resources_locked(struct adapter *adapter)
>  {
>         struct wlan_network *pwlan = NULL;
> @@ -789,8 +790,8 @@ void rtw_free_assoc_resources_locked(struct adapter *adapter)
>  }
>
>  /*
> -*rtw_indicate_connect: the caller has to lock pmlmepriv->lock
> -*/
> + * rtw_indicate_connect: the caller has to lock pmlmepriv->lock
> + */
>  void rtw_indicate_connect(struct adapter *padapter)
>  {
>         struct mlme_priv        *pmlmepriv = &padapter->mlmepriv;
> @@ -815,8 +816,8 @@ void rtw_indicate_connect(struct adapter *padapter)
>  }
>
>  /*
> -*rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
> -*/
> + * rtw_indicate_disconnect: the caller has to lock pmlmepriv->lock
> + */
>  void rtw_indicate_disconnect(struct adapter *padapter)
>  {
>         struct  mlme_priv *pmlmepriv = &padapter->mlmepriv;
> @@ -1338,9 +1339,9 @@ void rtw_cpwm_event_callback(struct adapter *padapter, u8 *pbuf)
>  }
>
>  /*
> -* _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
> -* @adapter: pointer to struct adapter structure
> -*/
> + * _rtw_join_timeout_handler - Timeout/faliure handler for CMD JoinBss
> + * @adapter: pointer to struct adapter structure
> + */
>  void _rtw_join_timeout_handler (unsigned long data)
>  {
>         struct adapter *adapter = (struct adapter *)data;
> @@ -1380,9 +1381,9 @@ void _rtw_join_timeout_handler (unsigned long data)
>  }
>
>  /*
> -* rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
> -* @adapter: pointer to struct adapter structure
> -*/
> + * rtw_scan_timeout_handler - Timeout/Faliure handler for CMD SiteSurvey
> + * @adapter: pointer to struct adapter structure
> + */
>  void rtw_scan_timeout_handler (unsigned long data)
>  {
>         struct adapter *adapter = (struct adapter *)data;
> @@ -1437,10 +1438,10 @@ void rtw_dynamic_check_timer_handlder(unsigned long data)
>  #define RTW_SCAN_RESULT_EXPIRE 2000
>
>  /*
> -* Select a new join candidate from the original @param candidate and @param competitor
> -* @return true: candidate is updated
> -* @return false: candidate is not updated
> -*/
> + * Select a new join candidate from the original @param candidate and @param competitor
> + * @return true: candidate is updated
> + * @return false: candidate is not updated
> + */
>  static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
>         , struct wlan_network **candidate, struct wlan_network *competitor)
>  {
> @@ -1491,11 +1492,11 @@ static int rtw_check_join_candidate(struct mlme_priv *pmlmepriv
>  }
>
>  /*
> -Calling context:
> -The caller of the sub-routine will be in critical section...
> -The caller must hold the following spinlock
> -pmlmepriv->lock
> -*/
> + * Calling context:
> + * The caller of the sub-routine will be in critical section...
> + * The caller must hold the following spinlock
> + * pmlmepriv->lock
> + */
>
>  int rtw_select_and_join_from_scanned_queue(struct mlme_priv *pmlmepriv)
>  {
> --
> 2.7.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/14a9e39afeca192713f279577e381c908f98e5ba.1487312015.git.gs051095%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

