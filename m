X-GM-THRID: 1080518770688
X-Received: by 10.43.117.72 with SMTP id fl8mr9018941icc.23.1424417918521;
        Thu, 19 Feb 2015 23:38:38 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.86.230 with SMTP id p93ls1003391qgd.35.gmail; Thu, 19 Feb
 2015 23:38:38 -0800 (PST)
X-Received: by 10.140.146.68 with SMTP id 65mr8914642qhs.4.1424417918329;
        Thu, 19 Feb 2015 23:38:38 -0800 (PST)
Return-Path: <preeti@linux.vnet.ibm.com>
Received: from e39.co.us.ibm.com (e39.co.us.ibm.com. [32.97.110.160])
        by gmr-mx.google.com with ESMTPS id q2si5337072qcn.2.2015.02.19.23.38.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1 cipher=ECDHE-RSA-RC4-SHA bits=128/128);
        Thu, 19 Feb 2015 23:38:38 -0800 (PST)
Received-SPF: none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) client-ip=32.97.110.160;
Authentication-Results: gmr-mx.google.com;
       spf=none (google.com: preeti@linux.vnet.ibm.com does not designate permitted sender hosts) smtp.mail=preeti@linux.vnet.ibm.com
Received: from /spool/local
	by e39.co.us.ibm.com with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted
	for <outreachy-kernel@googlegroups.com> from <preeti@linux.vnet.ibm.com>;
	Fri, 20 Feb 2015 00:38:37 -0700
Received: from d01dlp02.pok.ibm.com (9.56.250.167)
	by e39.co.us.ibm.com (192.168.1.139) with IBM ESMTP SMTP Gateway: Authorized Use Only! Violators will be prosecuted;
	Fri, 20 Feb 2015 00:38:36 -0700
Received: from b01cxnp23034.gho.pok.ibm.com (b01cxnp23034.gho.pok.ibm.com [9.57.198.29])
	by d01dlp02.pok.ibm.com (Postfix) with ESMTP id E2F276E8041
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:30:26 -0500 (EST)
Received: from d01av03.pok.ibm.com (d01av03.pok.ibm.com [9.56.224.217])
	by b01cxnp23034.gho.pok.ibm.com (8.14.9/8.14.9/NCO v10.0) with ESMTP id t1K7cZai31391916
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 07:38:35 GMT
Received: from d01av03.pok.ibm.com (localhost [127.0.0.1])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVout) with ESMTP id t1K7cZp1003292
	for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 02:38:35 -0500
Received: from preeti.in.ibm.com ([9.77.198.76])
	by d01av03.pok.ibm.com (8.14.4/8.14.4/NCO v10.0 AVin) with ESMTP id t1K7cQKd002950;
	Fri, 20 Feb 2015 02:38:29 -0500
Message-ID: <54E6E471.8090107@linux.vnet.ibm.com>
Date: Fri, 20 Feb 2015 13:08:25 +0530
From: Preeti U Murthy <preeti@linux.vnet.ibm.com>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:24.0) Gecko/20100101 Thunderbird/24.6.0
MIME-Version: 1.0
To: Vaishali Thakkar <vthakkar1994@gmail.com>,
        Julia Lawall <julia.lawall@lip6.fr>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: rtl8723au: Use put_unaligned_le16
References: <cover.1424402536.git.vthakkar1994@gmail.com> <9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994@gmail.com> <alpine.DEB.2.02.1502200816570.2045@localhost6.localdomain6> <CAK-LDbKo2E2gua_=z+5ibpnY-Qf3qnzaJZLW6AdG_KekBH9BZQ@mail.gmail.com>
In-Reply-To: <CAK-LDbKo2E2gua_=z+5ibpnY-Qf3qnzaJZLW6AdG_KekBH9BZQ@mail.gmail.com>
Content-Type: text/plain; charset=UTF-8
Content-Transfer-Encoding: 7bit
X-TM-AS-MML: disable
X-Content-Scanned: Fidelis XPS MAILER
x-cbid: 15022007-0033-0000-0000-000003BC119E


On 02/20/2015 12:54 PM, Vaishali Thakkar wrote:
> On Fri, Feb 20, 2015 at 12:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> On Fri, 20 Feb 2015, Vaishali Thakkar wrote:
>>
>>> Using byte ordering functions and then memcpy() is risky and
>>> prone to hide errors which are hard to track down. So, this
>>> patch introduces the use of function put_unaligned_le16 which
>>> makes the code clear. Here, use of variable tim_bitmap_le
>>> and variable itself is removed. Also, to be compatible with the
>>> changes header file is added too.
>>>
>>> Coccinelle is used to do this change and semantic patch used for
>>> this is as follows:
>>>
>>> @a@
>>> typedef __le16;
>>> __le16 e16;
>>> identifier tmp;
>>> expression ptr;
>>> expression y,e;
>>> type T;
>>> @@
>>>
>>> - tmp = cpu_to_le16(y);
>>>
>>> <+... when != tmp
>>> (
>>> - memcpy(ptr, (T)&tmp, \(2\|sizeof(__le16)\|sizeof(e16)\));
>>> + put_unaligned_le16(y,ptr);
>>> |
>>> - memcpy(ptr, (T)&tmp, ...);
>>> + put_unaligned_le16(y,ptr);
>>> )
>>> ...+>
>>> ? tmp = e
>>>
>>> @@ type T; identifier a.tmp; @@
>>>
>>> - T tmp;
>>> ...when != tmp
>>>
>>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>>> ---
>>> Changes since v1:
>>>       -Edit commit log
>>>       -Merge this patch in a patch series
>>
>> So in this case there is no change since v2?  Maybe it would be better to
>> make that explicit.
> 
> Actually there is no v2 of this patch but as this patch is merged in a
> series with
> v3 of patch Staging: rtl8188eu: Use put_unaligned_le16 it comes as a v3.
> 
> Should I clear this in a cover letter and then resend the patch series?

Yes I would suggest that. I missed this. Additionally I would recommend
in this case to not prefix any version number to the cover letter.
Instead prefix the appropriate version numbers to the individual patches
mentioning the changes from the previous versions.

Regards
Preeti U Murthy
> 
>> julia
>>
>>
>>>  drivers/staging/rtl8723au/core/rtw_ap.c | 8 +++-----
>>>  1 file changed, 3 insertions(+), 5 deletions(-)
>>>
>>> diff --git a/drivers/staging/rtl8723au/core/rtw_ap.c b/drivers/staging/rtl8723au/core/rtw_ap.c
>>> index c6327c0..7fa4352 100644
>>> --- a/drivers/staging/rtl8723au/core/rtw_ap.c
>>> +++ b/drivers/staging/rtl8723au/core/rtw_ap.c
>>> @@ -20,6 +20,7 @@
>>>  #include <wifi.h>
>>>  #include <rtl8723a_cmd.h>
>>>  #include <rtl8723a_hal.h>
>>> +#include <asm/unaligned.h>
>>>
>>>  extern unsigned char WMM_OUI23A[];
>>>  extern unsigned char WPS_OUI23A[];
>>> @@ -72,11 +73,8 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
>>>       struct wlan_bssid_ex *pnetwork_mlmeext = &pmlmeinfo->network;
>>>       unsigned char *pie = pnetwork_mlmeext->IEs;
>>>       u8 *p, *dst_ie, *premainder_ie = NULL, *pbackup_remainder_ie = NULL;
>>> -     __le16 tim_bitmap_le;
>>>       uint offset, tmp_len, tim_ielen, tim_ie_offset, remainder_ielen;
>>>
>>> -     tim_bitmap_le = cpu_to_le16(pstapriv->tim_bitmap);
>>> -
>>>       p = rtw_get_ie23a(pie, WLAN_EID_TIM, &tim_ielen,
>>>                         pnetwork_mlmeext->IELength);
>>>       if (p != NULL && tim_ielen > 0) {
>>> @@ -143,9 +141,9 @@ static void update_BCNTIM(struct rtw_adapter *padapter)
>>>               *dst_ie++ = 0;
>>>
>>>       if (tim_ielen == 4) {
>>> -             *dst_ie++ = *(u8 *)&tim_bitmap_le;
>>> +             *dst_ie++ = pstapriv->tim_bitmap & 0xff;
>>>       } else if (tim_ielen == 5) {
>>> -             memcpy(dst_ie, &tim_bitmap_le, 2);
>>> +             put_unaligned_le16(pstapriv->tim_bitmap, dst_ie);
>>>               dst_ie += 2;
>>>       }
>>>
>>> --
>>> 1.9.1
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/9defe79e0f212c883f260e27a67bff9f9ba013ba.1424402536.git.vthakkar1994%40gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>>
> 
> 
> 


