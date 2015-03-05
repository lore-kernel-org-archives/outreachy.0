X-GM-THRID: 6698286710784
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,2deb176d8a883d04
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.152.1.5 with SMTP id 5mr1650437lai.4.1425571714872;
        Thu, 05 Mar 2015 08:08:34 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.181.29.6 with SMTP id js6ls384015wid.46.gmail; Thu, 05 Mar
 2015 08:08:34 -0800 (PST)
X-Received: by 10.180.8.67 with SMTP id p3mr4807989wia.7.1425571714461;
        Thu, 05 Mar 2015 08:08:34 -0800 (PST)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-la0-x231.google.com (mail-la0-x231.google.com. [2a00:1450:4010:c03::231])
        by gmr-mx.google.com with ESMTPS id xl7si673878lbb.1.2015.03.05.08.08.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 05 Mar 2015 08:08:34 -0800 (PST)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) client-ip=2a00:1450:4010:c03::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2a00:1450:4010:c03::231 as permitted sender) smtp.mail=ksenija.stanojevic@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-la0-x231.google.com with SMTP id gf13so27877282lab.5
        for <outreachy-kernel@googlegroups.com>; Thu, 05 Mar 2015 08:08:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=fWfbQ3+Ox8fL1MbbcMPOY310txM+O4ok3UrJeVDFhJg=;
        b=odT6LMqbeQABwpNyhLRDiywPOcpbvLJTEAX0tEE8ZVM/p4sSvuM9OM7KsELe6PpSxS
         ZhOvaPSXBNJQYeO1v59WGh4VC4k5EbDkQkLKt+Eg3saBUNzsTbJ7op+PsV/rdEbCOlEW
         /1yx/aUoU5ukJFH2DwPwcN6B7Oj+x4/TQHbtTVpxsEuKNLgxlOoludQyKoXJJZHFjdAG
         uw216Ny37ZioqT7wGgr0urChucRlqBuLFSdGumQ/FMec6vZGhcUBW2WEKdAJCpCEEFqF
         Gg02f/9+ArU7KhF/Ezwo9BOugzRBMD0nBxTiQ0QRnyi3yQxn8i9365IlMNDJFUOTUJ2k
         bafg==
MIME-Version: 1.0
X-Received: by 10.152.1.135 with SMTP id 7mr8578408lam.41.1425571714349; Thu,
 05 Mar 2015 08:08:34 -0800 (PST)
Received: by 10.114.221.8 with HTTP; Thu, 5 Mar 2015 08:08:34 -0800 (PST)
In-Reply-To: <54F7B3A7.2010402@gmail.com>
References: <1425513106-22425-1-git-send-email-ksenija.stanojevic@gmail.com>
	<54F7B3A7.2010402@gmail.com>
Date: Thu, 5 Mar 2015 17:08:34 +0100
Message-ID: <CAL7P5jKJPtGkQu-82BYT4G=gcnAk6u39V+xSkaGVqfgN+PJvNA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Replace TRUE with true
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Mar 5, 2015 at 2:38 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 03/04/15 18:51, Ksenija Stanojevic wrote:
>> This patch replaces TRUE by true, since Linux kernel has already a
>> boolean type, bool, defined in linux/stddef.h
>>
>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c | 8 ++++----
>>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> Getting rid of their ugly TRUE is a good thing - however it would be
> good to do the entire driver in one patch, and also get rid of the
> #define of TRUE at the same time.

Hi, I already got rid of a macros TRUE and FALSE defined in rtl8192U.h,
and I did a patchset on this, but it seems that this file via recursive headers
has access to a macros  defined outside of this driver. Also its
better practice to first
replace TRUE and FALSE and then remove the macro. And yes I plan to do that, but
thanks for your observation

Ksenija

> Cheers,
> Jes
>
>> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
>> index 96ab304..9f68c65 100644
>> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
>> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_tx.c
>> @@ -553,16 +553,16 @@ static void ieee80211_txrate_selectmode(struct ieee80211_device *ieee,
>>  #ifdef TO_DO_LIST
>>       if(!IsDataFrame(pFrame))
>>       {
>> -             pTcb->bTxDisableRateFallBack = TRUE;
>> -             pTcb->bTxUseDriverAssingedRate = TRUE;
>> +             pTcb->bTxDisableRateFallBack = true;
>> +             pTcb->bTxUseDriverAssingedRate = true;
>>               pTcb->RATRIndex = 7;
>>               return;
>>       }
>>
>>       if(pMgntInfo->ForcedDataRate!= 0)
>>       {
>> -             pTcb->bTxDisableRateFallBack = TRUE;
>> -             pTcb->bTxUseDriverAssingedRate = TRUE;
>> +             pTcb->bTxDisableRateFallBack = true;
>> +             pTcb->bTxUseDriverAssingedRate = true;
>>               return;
>>       }
>>  #endif
>>
>

