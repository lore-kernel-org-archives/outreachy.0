X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.42.103.197 with SMTP id n5mr26285821ico.13.1424200366053;
        Tue, 17 Feb 2015 11:12:46 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.163 with SMTP id k3ls1180942igx.13.gmail; Tue, 17 Feb
 2015 11:12:45 -0800 (PST)
X-Received: by 10.42.157.134 with SMTP id d6mr28565811icx.27.1424200365858;
        Tue, 17 Feb 2015 11:12:45 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22b.google.com (mail-qa0-x22b.google.com. [2607:f8b0:400d:c00::22b])
        by gmr-mx.google.com with ESMTPS id q2si4052810qcn.2.2015.02.17.11.12.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:12:45 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22b as permitted sender) client-ip=2607:f8b0:400d:c00::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22b as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-x22b.google.com with SMTP id bm13so27667301qab.2
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 11:12:45 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=UixvVokiVfMPe0WdEtbmyP0SRHHR/aW9a2+n2r6FhMA=;
        b=r43sju2TND74R7ypTwqT34klRoHgd6fm4RXpR3kS9aX7CbYASCVQSl7Mv22p5oOwDc
         m4F1t3Molte5RgzDRS8cfMmu+Eu4Rjrl7a5YGMsmwhOlzaDMzfOEh62aHwfUc8MGFGG/
         9Fd1BlKQgvSTcHBccs24CKVJvE2eOa+9duyN+TOmyjw/DJuhcHD7VUMVU/HiL2xwb3u2
         N8gCVbJtr5rLy2DcRFZytM8nQaErmRALof3GE9jFrhvOkJIMJUBfqgwV7r4fVdXzr8jX
         Oqb6SEkmaYXoUv8DCQeS7ksdxA7z8O/vvmdnizrq6AL/lhAVKVoWLFB11B2TLvLSIw98
         IJ0g==
X-Received: by 10.140.134.198 with SMTP id 189mr1252820qhg.7.1424200365745;
        Tue, 17 Feb 2015 11:12:45 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id u20sm14590913qah.12.2015.02.17.11.12.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 11:12:45 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E392AB.2020405@gmail.com>
Date: Tue, 17 Feb 2015 14:12:43 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>, 
 Arnd Bergmann <arnd@arndb.de>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>	<5088504.ztKkpVtGdP@wuerfel> <CAK-LDbLXghCwRVHATPSCcVU0-pH+_tQdTnWTN-Kykpzv5AyOWw@mail.gmail.com>
In-Reply-To: <CAK-LDbLXghCwRVHATPSCcVU0-pH+_tQdTnWTN-Kykpzv5AyOWw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/17/15 05:11, Vaishali Thakkar wrote:
> On Tue, Feb 17, 2015 at 2:32 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>> On Tuesday 17 February 2015 10:12:57 Vaishali Thakkar wrote:
>>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>> index da19145..0b7b156 100644
>>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>> @@ -81,8 +81,6 @@ static void update_BCNTIM(struct adapter *padapter)
>>>                 __le16 tim_bitmap_le;
>>>                 uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>>
>>> -               tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>>> -
>>>                 p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>>                 if (p != NULL && tim_ielen > 0) {
>>>                         tim_ielen += 2;
>>> @@ -139,7 +137,7 @@ static void update_BCNTIM(struct adapter *padapter)
>>>                 if (tim_ielen == 4) {
>>>                         *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>>                 } else if (tim_ielen == 5) {
>>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
>>> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>                         dst_ie += 2;
>>
>> I think you are introducing the use of an uninitialized variable here, when
>> tim_bitmap_le is accessed first.
>>
>> You should always compile the code you change to check for new warnings,
>> and when you remove the use of a variable, check who else is using it
>> and if it can be removed. In this case, I'd suggest removing the
>> tim_bitmap_le variable entirely and fixing the other use as well.
> 
> I compiled the code before sending this. But it seems something went
> wrong from my side.I am sorry for this. Can you please tell me which errors are
> introduced by this patch as it is stillnot showing me any errors??
> 
> Also, here this Coccinelle semantic patch performs check for the variable
> and if it is not used anywhere else then it removes the variable.Here,
> in this case
> tim_bitmap_le variable is used " *dst_ie++ = *(u8 *)&tim_bitmap_le;"
> here. So, do
> you want me to fix this line and then remove this variable?? I am
> sorry but I am
> confused here that's why asking again.

Your use of put_unaligned_le16() if good, the main issue is the above
assignment as you mention. Since you got rid of the tim_bitmap_le =
portion, the *dst_ie++ = is going to assigning random garbage since
tim_bitmap_le is not set.

One way to solve the problem would be to make that line say

 		if (tim_ielen == 4) {
-			*dst_ie++ = *(u8 *)&tim_bitmap_le;
+ 			*dst_ie++ = pstapriv->tim_bitmap & 0xff;
 		} else if (tim_ielen == 5) {
-			memcpy(dst_ie, &tim_bitmap_le, 2);
+			put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);

and hopefully eliminate the tim_bitmap_le variable completely.

Jes


