X-GM-THRID: 6205299530591633408
X-Received: by 10.180.210.71 with SMTP id ms7mr654329wic.4.1444816977801;
        Wed, 14 Oct 2015 03:02:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.102.194 with SMTP id fq2ls98428wib.3.gmail; Wed, 14 Oct
 2015 03:02:57 -0700 (PDT)
X-Received: by 10.180.9.104 with SMTP id y8mr5309236wia.7.1444816977455;
        Wed, 14 Oct 2015 03:02:57 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22d.google.com (mail-wi0-x22d.google.com. [2a00:1450:400c:c05::22d])
        by gmr-mx.google.com with ESMTPS id bh7si860321wib.1.2015.10.14.03.02.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 03:02:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) client-ip=2a00:1450:400c:c05::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22d as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22d.google.com with SMTP id q8so71024047wij.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 03:02:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=DJbbpeBFmyCmdJinwi35Gy/fO9GYoivg0ZUI2Z6OGdo=;
        b=LlB/hvEAQtDGwYtdXQcRRy6pCWOVvpiA6opYlkzUb+qzRBaKb0d2/VGJW+0md371ZL
         2Hkk6hqIHzBlr9+0kLbQOd6Gr5BU/YgNFkqZzh57S41tfRJA5Z4m0zhh4QcCL6P9zpii
         DRWhdDqgOUIN5QvDrDM7h5dOYDTRaIWHL3go6o/lHVshQhC4txvdOXq3sGcMN2lgqAoR
         xm0S9jZ17rYy3WqxQSTl4wnT357xdbaJdTtg1K/HCE4u9FBGhVAYiVoG0W52netPviPN
         JPKx56qAgIdznH35K8a4VWB7AmQ58czlJPzJmfE8GdWTWHtaqB7wNr+Pq1EVR7wA07Bn
         hG0A==
MIME-Version: 1.0
X-Received: by 10.180.189.102 with SMTP id gh6mr24549617wic.95.1444816977355;
 Wed, 14 Oct 2015 03:02:57 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 03:02:57 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141158411.2421@hadrien>
References: <20151014005112.GA26569@ubuntu>
	<alpine.DEB.2.02.1510140748240.2038@localhost6.localdomain6>
	<CAKHNQQHkNOgY71D6eo5-R-OGBALnJ5H8fyHgkN0xcNMjDZ+T0Q@mail.gmail.com>
	<CAKHNQQEo5dKJzZABVyD3kfv2-FwCFEP8etzxFtj8CHoomnrBcg@mail.gmail.com>
	<alpine.DEB.2.10.1510141113100.2421@hadrien>
	<CAKHNQQFLg22-kf2SBNBQw8tF9HP6bU7GM-eQEpsDppPmYUWtuQ@mail.gmail.com>
	<alpine.DEB.2.10.1510141149260.2421@hadrien>
	<CAKHNQQE_-M8Gp_xchNb_NV6HRG2MRHiFeoKUz+f8O8Hudb5qQQ@mail.gmail.com>
	<alpine.DEB.2.10.1510141158411.2421@hadrien>
Date: Wed, 14 Oct 2015 15:32:57 +0530
Message-ID: <CAKHNQQHnXptyPgO5xbNNUGkHCxP82C6RRNXdL-zvKqG5bcu=YQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_xmit: Remove
 extra NULL tests
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 3:30 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Wed, Oct 14, 2015 at 3:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> @@ expression E;
>> >>  statement S; @@
>> >>  if(E==NULL) {... return ...;}
>> >>  else S
>> >>  - if(E==NULL)
>> >>  {
>> >>  ...
>> >>  }
>> >>  - else S
>> >>
>> >> How about this?
>> >
>> > That's better.  But actually, you don't care about whether there are
>> > braces, so you could just put S1.
>> >
>> > Actually, there is also no need to require that the else of the second if
>> > is the same as the else of the first one.  So you should have a different
>> > statement metavariable in each case.
>> >
>> > julia
>> >
>> @@ expression E;
>>  statement S1, S2; @@
>>  if(E==NULL) {... return ...;}
>>  else S1
>> - if(E==NULL)
>> - else S2
>>
>> This should be fine, I think?
>
> No, an if has two branches, then an else.  You can omit the else, but here
> you have omitted the then, so it doesn't work.
>
> Actually, you can check your semantic patch by putting it in a file
> file.cocci, and then running spatch --parse-cocci file.cocci
>
> julia
>

Right! I omitted the content inside if, which should not happen. I get
it now. Thanks, Julia! :)

>>
>> >>
>> >> >> >
>> >> >> > Can you check this one, Julia?
>> >> >> >
>> >> >> >>>
>> >> >> >>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> >> >>> ---
>> >> >> >>>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>> >> >> >>>  1 file changed, 9 deletions(-)
>> >> >> >>>
>> >> >> >>> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >> >>> index a4b6bb6..0ea521b 100644
>> >> >> >>> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >> >>> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >> >>> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >> >> >>>
>> >> >> >>>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>> >> >> >>>               /* encode mic code */
>> >> >> >>> -             if (stainfo) {
>> >> >> >>>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>> >> >> >>>                                        0x0, 0x0, 0x0, 0x0,
>> >> >> >>>                                        0x0, 0x0, 0x0, 0x0,
>> >> >> >>> @@ -792,10 +791,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >> >> >>>                                        *(payload + curfragnum + 6),
>> >> >> >>>                                        *(payload + curfragnum + 7));
>> >> >> >>>                       }
>> >> >> >>> -             } else {
>> >> >> >>> -                     RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
>> >> >> >>> -                              "xmitframe_addmic: rtw_get_stainfo23a ==NULL!!!\n");
>> >> >> >>> -             }
>> >> >> >>>       }
>> >> >> >>>
>> >> >> >>>       return _SUCCESS;
>> >> >> >>> @@ -934,7 +929,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>> >> >> >>>               /* TODO: fill HT Control Field */
>> >> >> >>>
>> >> >> >>>               /* Update Seq Num will be handled by f/w */
>> >> >> >>> -             if (psta) {
>> >> >> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
>> >> >> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
>> >> >> >>>                       pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
>> >> >> >>> @@ -970,7 +964,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>> >> >> >>>                                       pattrib->ampdu_en = true;/* AGG EN */
>> >> >> >>>                               }
>> >> >> >>>                       }
>> >> >> >>> -             }
>> >> >> >>>       }
>> >> >> >>>  exit:
>> >> >> >>>       return res;
>> >> >> >>> @@ -1132,7 +1125,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>> >> >> >>>
>> >> >> >>>               /* adding icv, if necessary... */
>> >> >> >>>               if (pattrib->iv_len) {
>> >> >> >>> -                     if (psta) {
>> >> >> >>>                               switch (pattrib->encrypt) {
>> >> >> >>>                               case WLAN_CIPHER_SUITE_WEP40:
>> >> >> >>>                               case WLAN_CIPHER_SUITE_WEP104:
>> >> >> >>> @@ -1158,7 +1150,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>> >> >> >>>                                                      psta->dot11txpn, 0);
>> >> >> >>>                                       break;
>> >> >> >>>                               }
>> >> >> >>> -                     }
>> >> >> >>>
>> >> >> >>>                       memcpy(pframe, pattrib->iv, pattrib->iv_len);
>> >> >> >>>
>> >> >> >>> --
>> >> >> >>> 2.1.0
>> >> >> >>>
>> >> >> >>> --
>> >> >> >>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> >> >>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> >> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> >> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014005112.GA26569%40ubuntu.
>> >> >> >>> For more options, visit https://groups.google.com/d/optout.
>> >> >> >>>
>> >> >>
>> >>
>>

