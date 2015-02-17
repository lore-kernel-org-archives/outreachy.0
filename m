X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.112.50.106 with SMTP id b10mr1110989lbo.8.1424167873528;
        Tue, 17 Feb 2015 02:11:13 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.153.5.33 with SMTP id cj1ls277763lad.53.gmail; Tue, 17 Feb
 2015 02:11:13 -0800 (PST)
X-Received: by 10.152.37.200 with SMTP id a8mr1255341lak.5.1424167873108;
        Tue, 17 Feb 2015 02:11:13 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-we0-x22d.google.com (mail-we0-x22d.google.com. [2a00:1450:400c:c03::22d])
        by gmr-mx.google.com with ESMTPS id ev8si5822818wib.3.2015.02.17.02.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 02:11:13 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) client-ip=2a00:1450:400c:c03::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c03::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-we0-f173.google.com with SMTP id w55so33972975wes.4
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 02:11:13 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=ssdtoyLV7vvhmUD58a/dVCEKiPCxiKadTC6ye42PfaM=;
        b=RNqK30LzHXufwO4kh6vaKaa8ui+kSGiR4ussBzzU0wu84HIMD9dltqupRHTidb7T6H
         EAFirksc9j8+0xsnCGCUR4emKHqg7NpM5GfVdZPGejJMJF7158IVNF9kWnquxY69FUHs
         rRYyqbAnhMmfZ+IIJwr0Emf2g5jLk78ZQEwUBfwHo8ClUnz3ZyhRGmFDBToL+fzZEMg+
         +cV70kLKk0vLiLEXs9jjjFcIebXlo57t3HB1EzIh6FIc1jNY6jHzV92JPN4daIo+YRB5
         uCjv6aR8ixnxxzYQ86aD3uYBN5qMRNs/FMgFKDZviJnA0Hd7V72800aWAwHxvJDCgwW2
         upkw==
MIME-Version: 1.0
X-Received: by 10.180.87.103 with SMTP id w7mr3188907wiz.48.1424167872680;
 Tue, 17 Feb 2015 02:11:12 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Tue, 17 Feb 2015 02:11:12 -0800 (PST)
In-Reply-To: <5088504.ztKkpVtGdP@wuerfel>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>
	<5088504.ztKkpVtGdP@wuerfel>
Date: Tue, 17 Feb 2015 15:41:12 +0530
Message-ID: <CAK-LDbLXghCwRVHATPSCcVU0-pH+_tQdTnWTN-Kykpzv5AyOWw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Arnd Bergmann <arnd@arndb.de>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 17, 2015 at 2:32 PM, Arnd Bergmann <arnd@arndb.de> wrote:
> On Tuesday 17 February 2015 10:12:57 Vaishali Thakkar wrote:
>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>> index da19145..0b7b156 100644
>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>> @@ -81,8 +81,6 @@ static void update_BCNTIM(struct adapter *padapter)
>>                 __le16 tim_bitmap_le;
>>                 uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>
>> -               tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>> -
>>                 p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>                 if (p != NULL && tim_ielen > 0) {
>>                         tim_ielen += 2;
>> @@ -139,7 +137,7 @@ static void update_BCNTIM(struct adapter *padapter)
>>                 if (tim_ielen == 4) {
>>                         *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>                 } else if (tim_ielen == 5) {
>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
>> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>                         dst_ie += 2;
>
> I think you are introducing the use of an uninitialized variable here, when
> tim_bitmap_le is accessed first.
>
> You should always compile the code you change to check for new warnings,
> and when you remove the use of a variable, check who else is using it
> and if it can be removed. In this case, I'd suggest removing the
> tim_bitmap_le variable entirely and fixing the other use as well.

I compiled the code before sending this. But it seems something went
wrong from my side.I am sorry for this. Can you please tell me which errors are
introduced by this patch as it is stillnot showing me any errors??

Also, here this Coccinelle semantic patch performs check for the variable
and if it is not used anywhere else then it removes the variable.Here,
in this case
tim_bitmap_le variable is used " *dst_ie++ = *(u8 *)&tim_bitmap_le;"
here. So, do
you want me to fix this line and then remove this variable?? I am
sorry but I am
confused here that's why asking again.

>         Arnd



-- 
Vaishali

