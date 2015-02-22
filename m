X-GM-THRID: 2104888393728
X-Received: by 10.180.80.35 with SMTP id o3mr608933wix.0.1424589165967;
        Sat, 21 Feb 2015 23:12:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.9.103 with SMTP id y7ls42813wia.24.gmail; Sat, 21 Feb 2015
 23:12:45 -0800 (PST)
X-Received: by 10.180.94.134 with SMTP id dc6mr566554wib.2.1424589165659;
        Sat, 21 Feb 2015 23:12:45 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-lb0-x22b.google.com (mail-lb0-x22b.google.com. [2a00:1450:4010:c04::22b])
        by gmr-mx.google.com with ESMTPS id mv2si3350780lbc.0.2015.02.21.23.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 21 Feb 2015 23:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) client-ip=2a00:1450:4010:c04::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c04::22b as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x22b.google.com with SMTP id z12so13159684lbi.11
        for <outreachy-kernel@googlegroups.com>; Sat, 21 Feb 2015 23:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=/UZq1UBGLMnepzQTyfC6Fua/G/8Se9LI1oUypyOzxWs=;
        b=pc/vc1ukU1sRJJa13sgQdnhIKt49oAQlHj6rQmD676KLi50RvR4TtZzraVgWMdZwjh
         tAFQucNJwb3TE/GD0fWhNHeBvdku4qE6ovGvYTkTsfdaqPg0Q/3vI0UJUsSbvYiO8b6h
         3V7bLy0HrHV23XzS6ambrSAfRenGG5jNxOiUDtu5dfKrFNJwCe8yfmJEi6P63K+5P8Yi
         DabSW9+RsOmpQWANDVW/vVhEAZeh+Ti5mFHsjkbTW6G23EllkU7GcbZU0nsfA5Kh38jS
         jOj8EdwVPCfYOb90zIF9307TrdxDd2K3DXkH2cgHcv3ewmBuhpeVxUUQibN/OLnFpNFf
         DQ6w==
MIME-Version: 1.0
X-Received: by 10.112.126.162 with SMTP id mz2mr4658289lbb.51.1424589165565;
 Sat, 21 Feb 2015 23:12:45 -0800 (PST)
Received: by 10.114.182.9 with HTTP; Sat, 21 Feb 2015 23:12:45 -0800 (PST)
In-Reply-To: <alpine.DEB.2.02.1502212207091.2296@localhost6.localdomain6>
References: <1424549883-29082-1-git-send-email-ksenija.stanojevic@gmail.com>
	<alpine.DEB.2.02.1502212207091.2296@localhost6.localdomain6>
Date: Sun, 22 Feb 2015 08:12:45 +0100
Message-ID: <CAL7P5j+ivFBOca1aEUUW+9sH32H14VkRqRCfAZgA27PbTzOW=A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Convert comments
 from C99 to C89
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 21, 2015 at 10:09 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> @@ -195,8 +195,8 @@ void free_ieee80211(struct net_device *dev)
>>  {
>>       struct ieee80211_device *ieee = netdev_priv(dev);
>>       int i;
>> -     //struct list_head *p, *q;
>> -//   del_timer_sync(&ieee->SwBwTimer);
>> +     /* struct list_head *p, *q; */
>> +/* del_timer_sync(&ieee->SwBwTimer); */
>
> The code shouldn't be moved out to the left.  Indent the comment like on
> the line before.
>
>>       kfree(ieee->pHTInfo);
>>       ieee->pHTInfo = NULL;
>>       RemoveAllTS(ieee);
>> @@ -222,24 +222,24 @@ void free_ieee80211(struct net_device *dev)
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
Do I have to align the comment above with the rest (move to left)?
>> -     //                  IEEE80211_DL_HT     |
>> -     //                  IEEE80211_DL_TS     |
>> -//                       IEEE80211_DL_BA     |
>> -     //                  IEEE80211_DL_REORDER|
>> -//                       IEEE80211_DL_TRACE  |
>> -                         //IEEE80211_DL_DATA |
>> -                         IEEE80211_DL_ERR      //awayls open this flags to show error out
>> +     /* IEEE80211_DL_INFO    | */
>> +     /* IEEE80211_DL_WX      | */
>> +     /* IEEE80211_DL_SCAN    | */
>> +     /* IEEE80211_DL_STATE   | */
>> +     /* IEEE80211_DL_MGMT    | */
>> +     /* IEEE80211_DL_FRAG    | */
>> +     /* IEEE80211_DL_EAP     | */
>> +     /* IEEE80211_DL_DROP    | */
>> +     /* IEEE80211_DL_TX      | */
>> +     /* IEEE80211_DL_RX      | */
>> +                         /* IEEE80211_DL_QOS    | */
>> +     /* IEEE80211_DL_HT      | */
>> +     /* IEEE80211_DL_TS      | */
>> +/* IEEE80211_DL_BA   | */
>> +     /* IEEE80211_DL_REORDER| */
>> +/* IEEE80211_DL_TRACE  | */
>> +                         /* IEEE80211_DL_DATA        | */
>> +                         IEEE80211_DL_ERR      /* awayls open this flags to show error out */

After fixing this comments I get warnings line over 80 characters,
should i fix it or leave it for another patch?

> The indentation should be uniform.  You could make a patch series and fix
> the spelling mistake: awayls -> always
> julia
>
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
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1424549883-29082-1-git-send-email-ksenija.stanojevic%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

