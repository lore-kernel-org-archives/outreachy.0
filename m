X-GM-THRID: 6205299530591633408
X-Received: by 10.180.208.7 with SMTP id ma7mr637244wic.5.1444816487030;
        Wed, 14 Oct 2015 02:54:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.21.77 with SMTP id l74ls19691lfi.20.gmail; Wed, 14 Oct 2015
 02:54:46 -0700 (PDT)
X-Received: by 10.112.140.202 with SMTP id ri10mr541868lbb.10.1444816486500;
        Wed, 14 Oct 2015 02:54:46 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id hs5si904939wib.1.2015.10.14.02.54.46
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:54:46 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id ge5so93103166wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 02:54:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=OIt3XAiC/M/P1Fq0nZJxoUY3sYD1d9ueGEU77giHdDU=;
        b=yIC+KSyfkcBNtncE7oXjmOmCwM0VrF8ps3e/O+lw6VqJPTsvRJpSrOJ6UP8Fh0Mjck
         KPeoj87NR4V2aM7m57vn7oztKZyfxenXm9uiFqXdmqTVEgcjZpk4XBpxGptpmtC+yx3Y
         0yaI8Dz9k874z82nhgYuGA/Slpz3eQ3qdjSUJtftQnSxU/7hGxnPsHnm6ZrhoxCVft7y
         22ikkA/MNSifeIWwJq49yREI+ZnA1rKvF5ZUvRoVuVyEwwxl3eyO8AhwruhpLcbVUdM2
         R8gxcJKqy72ibaXa/tudYSX5Ysmk93VRASKNG/D2qOJdHzX6+eWo3zPDsY1a1oJ+HqnZ
         Ok6g==
MIME-Version: 1.0
X-Received: by 10.180.38.13 with SMTP id c13mr5015524wik.48.1444816486376;
 Wed, 14 Oct 2015 02:54:46 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 02:54:46 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141149260.2421@hadrien>
References: <20151014005112.GA26569@ubuntu>
	<alpine.DEB.2.02.1510140748240.2038@localhost6.localdomain6>
	<CAKHNQQHkNOgY71D6eo5-R-OGBALnJ5H8fyHgkN0xcNMjDZ+T0Q@mail.gmail.com>
	<CAKHNQQEo5dKJzZABVyD3kfv2-FwCFEP8etzxFtj8CHoomnrBcg@mail.gmail.com>
	<alpine.DEB.2.10.1510141113100.2421@hadrien>
	<CAKHNQQFLg22-kf2SBNBQw8tF9HP6bU7GM-eQEpsDppPmYUWtuQ@mail.gmail.com>
	<alpine.DEB.2.10.1510141149260.2421@hadrien>
Date: Wed, 14 Oct 2015 15:24:46 +0530
Message-ID: <CAKHNQQE_-M8Gp_xchNb_NV6HRG2MRHiFeoKUz+f8O8Hudb5qQQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_xmit: Remove
 extra NULL tests
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 3:21 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> @@ expression E;
>>  statement S; @@
>>  if(E==NULL) {... return ...;}
>>  else S
>>  - if(E==NULL)
>>  {
>>  ...
>>  }
>>  - else S
>>
>> How about this?
>
> That's better.  But actually, you don't care about whether there are
> braces, so you could just put S1.
>
> Actually, there is also no need to require that the else of the second if
> is the same as the else of the first one.  So you should have a different
> statement metavariable in each case.
>
> julia
>
@@ expression E;
 statement S1, S2; @@
 if(E==NULL) {... return ...;}
 else S1
- if(E==NULL)
- else S2

This should be fine, I think?

>>
>> >> >
>> >> > Can you check this one, Julia?
>> >> >
>> >> >>>
>> >> >>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> >>> ---
>> >> >>>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>> >> >>>  1 file changed, 9 deletions(-)
>> >> >>>
>> >> >>> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >>> index a4b6bb6..0ea521b 100644
>> >> >>> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >>> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >> >>> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >> >>>
>> >> >>>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>> >> >>>               /* encode mic code */
>> >> >>> -             if (stainfo) {
>> >> >>>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>> >> >>>                                        0x0, 0x0, 0x0, 0x0,
>> >> >>>                                        0x0, 0x0, 0x0, 0x0,
>> >> >>> @@ -792,10 +791,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >> >>>                                        *(payload + curfragnum + 6),
>> >> >>>                                        *(payload + curfragnum + 7));
>> >> >>>                       }
>> >> >>> -             } else {
>> >> >>> -                     RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
>> >> >>> -                              "xmitframe_addmic: rtw_get_stainfo23a ==NULL!!!\n");
>> >> >>> -             }
>> >> >>>       }
>> >> >>>
>> >> >>>       return _SUCCESS;
>> >> >>> @@ -934,7 +929,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>> >> >>>               /* TODO: fill HT Control Field */
>> >> >>>
>> >> >>>               /* Update Seq Num will be handled by f/w */
>> >> >>> -             if (psta) {
>> >> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
>> >> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
>> >> >>>                       pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
>> >> >>> @@ -970,7 +964,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>> >> >>>                                       pattrib->ampdu_en = true;/* AGG EN */
>> >> >>>                               }
>> >> >>>                       }
>> >> >>> -             }
>> >> >>>       }
>> >> >>>  exit:
>> >> >>>       return res;
>> >> >>> @@ -1132,7 +1125,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>> >> >>>
>> >> >>>               /* adding icv, if necessary... */
>> >> >>>               if (pattrib->iv_len) {
>> >> >>> -                     if (psta) {
>> >> >>>                               switch (pattrib->encrypt) {
>> >> >>>                               case WLAN_CIPHER_SUITE_WEP40:
>> >> >>>                               case WLAN_CIPHER_SUITE_WEP104:
>> >> >>> @@ -1158,7 +1150,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>> >> >>>                                                      psta->dot11txpn, 0);
>> >> >>>                                       break;
>> >> >>>                               }
>> >> >>> -                     }
>> >> >>>
>> >> >>>                       memcpy(pframe, pattrib->iv, pattrib->iv_len);
>> >> >>>
>> >> >>> --
>> >> >>> 2.1.0
>> >> >>>
>> >> >>> --
>> >> >>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> >>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014005112.GA26569%40ubuntu.
>> >> >>> For more options, visit https://groups.google.com/d/optout.
>> >> >>>
>> >>
>>

