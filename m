X-GM-THRID: 6203334269363814400
X-Received: by 10.182.70.4 with SMTP id i4mr7195435obu.15.1444331056679;
        Thu, 08 Oct 2015 12:04:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.166 with SMTP id 38ls662837ioq.71.gmail; Thu, 08 Oct
 2015 12:04:16 -0700 (PDT)
X-Received: by 10.50.78.170 with SMTP id c10mr4432185igx.6.1444331056094;
        Thu, 08 Oct 2015 12:04:16 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-ig0-x22a.google.com (mail-ig0-x22a.google.com. [2607:f8b0:4001:c05::22a])
        by gmr-mx.google.com with ESMTPS id rr9si392069igb.1.2015.10.08.12.04.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 12:04:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) client-ip=2607:f8b0:4001:c05::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c05::22a as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-ig0-x22a.google.com with SMTP id x6so19798254igx.1
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 12:04:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=38OMp21aPxyo6/TveKwfp7EOrzmPsTddTiWVYSvgGnw=;
        b=rrSsxsTl0bdi4B/1bbD8RA4sUSqhaNibN7HiHl1//RRDNT5RNgfZ1wDucnJ33T/8sC
         yyK9tVa7VUtCU7uomuaw/ky2lOJ+gQPJPK4mFovN2DE2tP9SED2eUaqJoVG2wvh3Ofnn
         urp8JtXLcWRI93F4M7FrjX2srQZeIIcxtqnUdYMNCXl1o3w3xDTy4GxNdEbxZ+zmd+t5
         +WlT0RFKtrlopJtWeQ0gFA/D0V66Pu2Y+TqFAO+Anheox1LQn3o5U5UV1UM5BdtyswAo
         R8q3Xxl8TDvJr5G8gjEWXBJ53Eqxwa5JNYNbYkEvptBUA8wcVFGjZFm26icR9YnsRv0h
         Px2g==
MIME-Version: 1.0
X-Received: by 10.50.111.83 with SMTP id ig19mr5721727igb.82.1444331055931;
 Thu, 08 Oct 2015 12:04:15 -0700 (PDT)
Received: by 10.107.158.211 with HTTP; Thu, 8 Oct 2015 12:04:15 -0700 (PDT)
In-Reply-To: <20151008183503.GA10133@kroah.com>
References: <1444326298-12640-1-git-send-email-ksenija.stanojevic@gmail.com>
	<20151008183503.GA10133@kroah.com>
Date: Thu, 8 Oct 2015 21:04:15 +0200
Message-ID: <CAL7P5jLWB15mVHA8AGG1bNXiAeij9Qnvofy=VkpA17bpqXCaYg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: vt6655: Replace switch by
 if-else statement
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Greg KH <greg@kroah.com>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 8, 2015 at 8:35 PM, Greg KH <greg@kroah.com> wrote:
> On Thu, Oct 08, 2015 at 07:44:58PM +0200, Ksenija Stanojevic wrote:
>> Use of switch statement is wrong here, better use if-else statement
>> instead.
>
> Why is it "wrong"?  It looks cleaner to me as a switch statement, easier
> to read and understand.  Why change it?
>
>
>>
>> Signed-off-by: Ksenija Stanojevic<ksenija.stanojevic@gmail.com>
>> ---
>>  drivers/staging/vt6655/channel.c | 33 +++++++++++++--------------------
>>  1 file changed, 13 insertions(+), 20 deletions(-)
>>
>> diff --git a/drivers/staging/vt6655/channel.c b/drivers/staging/vt6655/channel.c
>> index 7a71782..3d12da6 100644
>> --- a/drivers/staging/vt6655/channel.c
>> +++ b/drivers/staging/vt6655/channel.c
>> @@ -132,26 +132,10 @@ void vnt_init_bands(struct vnt_private *priv)
>>       struct ieee80211_channel *ch;
>>       int i;
>>
>> -     switch (priv->byRFType) {
>> -     case RF_AIROHA7230:
>> -     case RF_UW2452:
>> -     case RF_NOTHING:
>> -     default:
>> -             ch = vnt_channels_5ghz;
>> +     if (priv->byRFType == RF_RFMD2959 || priv->byRFType == RF_AIROHA ||
>> +         priv->byRFType == RF_AL2230S || priv->byRFType == RF_UW2451 ||
>> +         priv->byRFType == RF_VT3226) {
>
> That's hard to read which types are and are not included here, right?
>
>
>>
>> -             for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
>> -                     ch[i].max_power = 0x3f;
>> -                     ch[i].flags = IEEE80211_CHAN_NO_HT40;
>> -             }
>> -
>> -             priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
>> -                                             &vnt_supported_5ghz_band;
>> -     /* fallthrough */
>> -     case RF_RFMD2959:
>> -     case RF_AIROHA:
>> -     case RF_AL2230S:
>> -     case RF_UW2451:
>> -     case RF_VT3226:
>>               ch = vnt_channels_2ghz;
>>
>>               for (i = 0; i < ARRAY_SIZE(vnt_channels_2ghz); i++) {
>> @@ -161,7 +145,16 @@ void vnt_init_bands(struct vnt_private *priv)
>>
>>               priv->hw->wiphy->bands[IEEE80211_BAND_2GHZ] =
>>                                               &vnt_supported_2ghz_band;
>> -             break;
>> +     } else {
>> +             ch = vnt_channels_5ghz;
>> +
>> +             for (i = 0; i < ARRAY_SIZE(vnt_channels_5ghz); i++) {
>> +                     ch[i].max_power = 0x3f;
>> +                     ch[i].flags = IEEE80211_CHAN_NO_HT40;
>> +             }
>> +
>> +             priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] =
>> +                                             &vnt_supported_5ghz_band;
>
> I think you are changing the logic here a bit, are you sure it's still
> identical?

Break is missing so I thought that in cases
RF_RFMD2959, RF_AIROHA, RF_AL2230S, RF_UW2451, RF_VT3226
ch and priv->hw->wiphy->bands[IEEE80211_BAND_5GHZ] will be overwritten
but I see now that in that part of the code
priv->hw->wiphy->bands[IEEE80211_BAND_2GHZ] is used, so the change is
not correct

Ksenija

