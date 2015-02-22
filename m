X-GM-THRID: 2063631122432
X-Received: by 10.152.26.74 with SMTP id j10mr757322lag.10.1424619554752;
        Sun, 22 Feb 2015 07:39:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.43.48 with SMTP id t16ls415328lal.55.gmail; Sun, 22 Feb
 2015 07:39:14 -0800 (PST)
X-Received: by 10.152.36.132 with SMTP id q4mr761872laj.6.1424619554314;
        Sun, 22 Feb 2015 07:39:14 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x235.google.com (mail-lb0-x235.google.com. [2a00:1450:4010:c04::235])
        by gmr-mx.google.com with ESMTPS id xl7si3423833lbb.1.2015.02.22.07.39.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 22 Feb 2015 07:39:14 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::235 as permitted sender) client-ip=2a00:1450:4010:c04::235;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::235 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x235.google.com with SMTP id b6so14352945lbj.2
        for <outreachy-kernel@googlegroups.com>; Sun, 22 Feb 2015 07:39:14 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/LXW2814p3cT6uWYNUR4r/75Es8XfJll4z9hdIhZVkA=;
        b=szwwJ/QiOYjxtj7sA8RQPK52NKj4q376pJwosE7gnAHCNRoW+VPjoWYbYBXWOJItTE
         mqtq8tJLjPvRFc+QOX19GDO+MQndKE0Yl7FN/lD+6Ehz4Uyym1+15jMtJACVN9T53OQC
         6aVZB9cLYki3FrtMEHimAvBSpgtxptvnGFF8jMx3TXdOaYOOICRkO7OHGNlSVJqSqSfx
         02uvxpD7wnJK2bwxUZGWNYuxm2jqJZMunZMrnQt9AG/7X3NuAwuXhvA/6QoBppzm6oRw
         2DoyEriB6F8pSyr9AuhLiKOx0jGbwyNK+olQ6QKQdclbEF1df5q6TOmWzV9CswKH26Ds
         tGlg==
MIME-Version: 1.0
X-Received: by 10.152.87.3 with SMTP id t3mr6165299laz.19.1424619554230; Sun,
 22 Feb 2015 07:39:14 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Sun, 22 Feb 2015 07:39:14 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1502221633300.2612@hadrien>
References: <cover.1424618906.git.ksenija.stanojevic@gmail.com>
	<b62ce2160ca51b14093fb75772bef5b27cb14993.1424618906.git.ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.10.1502221633300.2612@hadrien>
Date: Sun, 22 Feb 2015 16:39:14 +0100
Message-ID: <CAL7P5jKWZFpOKGj9YCnPiX3dsS3akkGiRcCPmBrq6y+YvtsN9g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/2] Staging: rtl8192u: Convert
 comments from C99 to C89 style
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

Should I make version 3?

On Sun, Feb 22, 2015 at 4:34 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> On Sun, 22 Feb 2015, Ksenija Stanojevic wrote:
>
>> Kernel style for comments is C89 style. Issue found by checkpatch.pl.
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>> v2: Remove linux/config.h because it is not used in modern linux versions.
>
> Actually, the choice about what to do with linux/config.h should be above
> the ---
>
> julia
>
>>  .../staging/rtl8192u/ieee80211/ieee80211_module.c  | 52 +++++++++++-----------
>>  1 file changed, 26 insertions(+), 26 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
>> index afbd09d..4d6bd2e 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_module.c
>> @@ -31,7 +31,6 @@
>>  *******************************************************************************/
>>
>>  #include <linux/compiler.h>
>> -//#include <linux/config.h>
>>  #include <linux/errno.h>
>>  #include <linux/if_arp.h>
>>  #include <linux/in6.h>
>> @@ -141,7 +140,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>>       spin_lock_init(&ieee->wpax_suitlist_lock);
>>       spin_lock_init(&ieee->bw_spinlock);
>>       spin_lock_init(&ieee->reorder_spinlock);
>> -     //added by WB
>> +     /* added by WB */
>>       atomic_set(&(ieee->atm_chnlop), 0);
>>       atomic_set(&(ieee->atm_swbw), 0);
>>
>> @@ -152,8 +151,8 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>>       ieee->privacy_invoked = 0;
>>       ieee->ieee802_1x = 1;
>>       ieee->raw_tx = 0;
>> -     //ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead.
>> -     ieee->hwsec_active = 0; //disable hwsec, switch it on when necessary.
>> +     /* ieee->hwsec_support = 1; //defalt support hw security. //use module_param instead. */
>> +     ieee->hwsec_active = 0; /* disable hwsec, switch it on when necessary. */
>>
>>       ieee80211_softmac_init(ieee);
>>
>> @@ -164,7 +163,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>>               goto failed;
>>       }
>>       HTUpdateDefaultSetting(ieee);
>> -     HTInitializeHTInfo(ieee); //may move to other place.
>> +     HTInitializeHTInfo(ieee); /* may move to other place. */
>>       TSInitialize(ieee);
>>
>>       for (i = 0; i < IEEE_IBSS_MAC_HASH_SIZE; i++)
>> @@ -176,7 +175,7 @@ struct net_device *alloc_ieee80211(int sizeof_priv)
>>         ieee->last_packet_time[i] = 0;
>>       }
>>
>> -//These function were added to load crypte module autoly
>> +/* These function were added to load crypte module autoly */
>>       ieee80211_tkip_null();
>>       ieee80211_wep_null();
>>       ieee80211_ccmp_null();
>> @@ -195,8 +194,8 @@ void free_ieee80211(struct net_device *dev)
>>  {
>>       struct ieee80211_device *ieee = netdev_priv(dev);
>>       int i;
>> -     //struct list_head *p, *q;
>> -//   del_timer_sync(&ieee->SwBwTimer);
>> +     /* struct list_head *p, *q; */
>> +     /* del_timer_sync(&ieee->SwBwTimer); */
>>       kfree(ieee->pHTInfo);
>>       ieee->pHTInfo = NULL;
>>       RemoveAllTS(ieee);
>> @@ -222,24 +221,25 @@ void free_ieee80211(struct net_device *dev)
>>
>>  u32 ieee80211_debug_level;
>>  static int debug = \
>> -     //                  IEEE80211_DL_INFO   |
>> -     //                  IEEE80211_DL_WX     |
>> -     //                  IEEE80211_DL_SCAN   |
>> -     //                  IEEE80211_DL_STATE  |
>> -     //                  IEEE80211_DL_MGMT   |
>> -     //                  IEEE80211_DL_FRAG   |
>> -     //                  IEEE80211_DL_EAP    |
>> -     //                  IEEE80211_DL_DROP   |
>> -     //                  IEEE80211_DL_TX     |
>> -     //                  IEEE80211_DL_RX     |
>> -                         //IEEE80211_DL_QOS    |
>> -     //                  IEEE80211_DL_HT     |
>> -     //                  IEEE80211_DL_TS     |
>> -//                       IEEE80211_DL_BA     |
>> -     //                  IEEE80211_DL_REORDER|
>> -//                       IEEE80211_DL_TRACE  |
>> -                         //IEEE80211_DL_DATA |
>> -                         IEEE80211_DL_ERR      //awayls open this flags to show error out
>> +                      /* IEEE80211_DL_INFO   | */
>> +                      /* IEEE80211_DL_WX     | */
>> +                      /* IEEE80211_DL_SCAN   | */
>> +                      /* IEEE80211_DL_STATE  | */
>> +                      /* IEEE80211_DL_MGMT   | */
>> +                      /* IEEE80211_DL_FRAG   | */
>> +                      /* IEEE80211_DL_EAP    | */
>> +                      /* IEEE80211_DL_DROP   | */
>> +                      /* IEEE80211_DL_TX     | */
>> +                      /* IEEE80211_DL_RX     | */
>> +                      /* IEEE80211_DL_QOS    | */
>> +                      /* IEEE80211_DL_HT     | */
>> +                      /* IEEE80211_DL_TS     | */
>> +                      /* IEEE80211_DL_BA     | */
>> +                      /* IEEE80211_DL_REORDER| */
>> +                      /* IEEE80211_DL_TRACE  | */
>> +                      /* IEEE80211_DL_DATA   | */
>> +                         IEEE80211_DL_ERR      /* awayls open this flags
>> +                                                * to show error out */
>>                           ;
>>  static struct proc_dir_entry *ieee80211_proc;
>>
>> --
>> 1.9.1
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/b62ce2160ca51b14093fb75772bef5b27cb14993.1424618906.git.ksenija.stanojevic%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

