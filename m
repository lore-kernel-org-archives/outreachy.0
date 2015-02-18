X-GM-THRID: 75436654592
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,bead06cd7830e23e
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.101.101 with SMTP id ff5mr3013wib.5.1424223155593;
        Tue, 17 Feb 2015 17:32:35 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.83.226 with SMTP id t2ls6wiy.27.canary; Tue, 17 Feb 2015
 17:32:34 -0800 (PST)
X-Received: by 10.194.11.70 with SMTP id o6mr3936259wjb.6.1424223154886;
        Tue, 17 Feb 2015 17:32:34 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id o3si3824439wib.2.2015.02.17.17.32.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 17 Feb 2015 17:32:34 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-f173.google.com with SMTP id bs8so37767448wib.0
        for <outreachy-kernel@googlegroups.com>; Tue, 17 Feb 2015 17:32:34 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=CMsqwyqmZAN7TeTNMy8TlIN3EmAfciAXYFo+yTg7trQ=;
        b=CGZpHadO2LvLeuiQ70kPN0TZ+t05j3ouSYqF1HC6idozDgYQIC4lWEbTLa/BEWAYp2
         u8gMlcygJOFSt1hSPef8rO7q+gMMBSPQAbGHzShoZBEk3ZHYTVStFtFMo3vRAPlHfiZX
         KjLhC1yklU/Vx6FhU0iuGUEiT+HFKwC9iPSUfig03/dVkQNniY5TPkLBmFaw2RPZmMK+
         IEqTS9/osK4bl+7bf+7VQcFUbgq6qf16BE9VJMc78lyILaaJCh59NsRHJQ8CjSQuMeIt
         PpIz3iixuUL8Oew6ZYk9Dz0kfzGV57WmbcLD8vGKbKkFouC3Bxqycle8eNfkXDH6mD1G
         Yz+g==
MIME-Version: 1.0
X-Received: by 10.194.77.99 with SMTP id r3mr66338438wjw.149.1424223154790;
 Tue, 17 Feb 2015 17:32:34 -0800 (PST)
Received: by 10.194.13.168 with HTTP; Tue, 17 Feb 2015 17:32:34 -0800 (PST)
In-Reply-To: <54E392AB.2020405@gmail.com>
References: <20150217044257.GA3424@vaishali-Ideapad-Z570>
	<5088504.ztKkpVtGdP@wuerfel>
	<CAK-LDbLXghCwRVHATPSCcVU0-pH+_tQdTnWTN-Kykpzv5AyOWw@mail.gmail.com>
	<54E392AB.2020405@gmail.com>
Date: Wed, 18 Feb 2015 07:02:34 +0530
Message-ID: <CAK-LDbLbpQ0d7eyGbYfJPLWGASC9CJLfebpY+QwYeVFrdFssMg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Use put_unaligned_le16
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Jes Sorensen <jes.sorensen@gmail.com>
Cc: Arnd Bergmann <arnd@arndb.de>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Feb 18, 2015 at 12:42 AM, Jes Sorensen <jes.sorensen@gmail.com> wrote:
> On 02/17/15 05:11, Vaishali Thakkar wrote:
>> On Tue, Feb 17, 2015 at 2:32 PM, Arnd Bergmann <arnd@arndb.de> wrote:
>>> On Tuesday 17 February 2015 10:12:57 Vaishali Thakkar wrote:
>>>> diff --git a/drivers/staging/rtl8188eu/core/rtw_ap.c b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>> index da19145..0b7b156 100644
>>>> --- a/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>> +++ b/drivers/staging/rtl8188eu/core/rtw_ap.c
>>>> @@ -81,8 +81,6 @@ static void update_BCNTIM(struct adapter *padapter)
>>>>                 __le16 tim_bitmap_le;
>>>>                 uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>>>
>>>> -               tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>>>> -
>>>>                 p = rtw_get_ie(pie + _FIXED_IE_LENGTH_, _TIM_IE_, &tim_ielen, pnetwork_mlmeext->IELength - _FIXED_IE_LENGTH_);
>>>>                 if (p != NULL && tim_ielen > 0) {
>>>>                         tim_ielen += 2;
>>>> @@ -139,7 +137,7 @@ static void update_BCNTIM(struct adapter *padapter)
>>>>                 if (tim_ielen == 4) {
>>>>                         *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>>>                 } else if (tim_ielen == 5) {
>>>> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
>>>> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>>                         dst_ie += 2;
>>>
>>> I think you are introducing the use of an uninitialized variable here, when
>>> tim_bitmap_le is accessed first.
>>>
>>> You should always compile the code you change to check for new warnings,
>>> and when you remove the use of a variable, check who else is using it
>>> and if it can be removed. In this case, I'd suggest removing the
>>> tim_bitmap_le variable entirely and fixing the other use as well.
>>
>> I compiled the code before sending this. But it seems something went
>> wrong from my side.I am sorry for this. Can you please tell me which errors are
>> introduced by this patch as it is stillnot showing me any errors??
>>
>> Also, here this Coccinelle semantic patch performs check for the variable
>> and if it is not used anywhere else then it removes the variable.Here,
>> in this case
>> tim_bitmap_le variable is used " *dst_ie++ = *(u8 *)&tim_bitmap_le;"
>> here. So, do
>> you want me to fix this line and then remove this variable?? I am
>> sorry but I am
>> confused here that's why asking again.
>
> Your use of put_unaligned_le16() if good, the main issue is the above
> assignment as you mention. Since you got rid of the tim_bitmap_le =
> portion, the *dst_ie++ = is going to assigning random garbage since
> tim_bitmap_le is not set.
>
> One way to solve the problem would be to make that line say
>
>                 if (tim_ielen == 4) {
> -                       *dst_ie++ = *(u8 *)&tim_bitmap_le;
> +                       *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>                 } else if (tim_ielen == 5) {
> -                       memcpy(dst_ie, &tim_bitmap_le, 2);
> +                       put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>
> and hopefully eliminate the tim_bitmap_le variable completely.

Yes. This makes sense. And as there is only one use of tim_bitmap_le
variable this will eliminate it completely. Should I go for v2 now, with this
change?? I have one more such case in rtl8723au driver also. I think now
I can go for it also.

> Jes
>



-- 
Vaishali

