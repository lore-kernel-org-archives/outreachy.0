X-GM-THRID: 6205299530591633408
X-Received: by 10.112.151.9 with SMTP id um9mr488243lbb.19.1444814247215;
        Wed, 14 Oct 2015 02:17:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.77.106 with SMTP id r10ls85750wiw.42.gmail; Wed, 14 Oct
 2015 02:17:26 -0700 (PDT)
X-Received: by 10.194.156.193 with SMTP id wg1mr488357wjb.3.1444814246868;
        Wed, 14 Oct 2015 02:17:26 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id h2si883513wiy.0.2015.10.14.02.17.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 02:17:26 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id q12so70927939wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 02:17:26 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=NiZ4ob0hEQ9tG1uC9E9mfIAcL8bPIGtw5awmjm0OAXc=;
        b=o1aHjKapiwK22xv26NtnoFXtWNYhyPaYtgADarIMLAK8T4T1HPwDoPIVS/YxWSKLu/
         eTguy4sORMeAVXZjxC2GhE6sbjBLSM3lpL5w9U3pJ2aa/YVqI3DQod+Q3uowD1r+zdHT
         nk0dunSzyj9EGJR9ccKPvZyLRwnIcWQFPPINelKfwr8n3lQhEczyuScfaxeQnhwXEm0k
         X9f3uCX5VfPfLgedKouVd0DRCKP436Kb64nm6+lxjU18yoaZOGjsEYWZLmZdS4DEJ3TP
         dZ05AgVnXwt05MFhmuUM/RMU+12mrgumMgRbAURntKo4Bx64ta0vqT/7SXy7kW6hazD1
         MokQ==
MIME-Version: 1.0
X-Received: by 10.180.87.74 with SMTP id v10mr24636854wiz.66.1444814246277;
 Wed, 14 Oct 2015 02:17:26 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 02:17:26 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141113100.2421@hadrien>
References: <20151014005112.GA26569@ubuntu>
	<alpine.DEB.2.02.1510140748240.2038@localhost6.localdomain6>
	<CAKHNQQHkNOgY71D6eo5-R-OGBALnJ5H8fyHgkN0xcNMjDZ+T0Q@mail.gmail.com>
	<CAKHNQQEo5dKJzZABVyD3kfv2-FwCFEP8etzxFtj8CHoomnrBcg@mail.gmail.com>
	<alpine.DEB.2.10.1510141113100.2421@hadrien>
Date: Wed, 14 Oct 2015 14:47:26 +0530
Message-ID: <CAKHNQQFLg22-kf2SBNBQw8tF9HP6bU7GM-eQEpsDppPmYUWtuQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: rtw_xmit: Remove
 extra NULL tests
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 2:44 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Wed, Oct 14, 2015 at 2:38 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
>> > On Wed, Oct 14, 2015 at 11:18 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>> >>
>> >>> Variables already tested for NULL value are checked again so, the extra
>> >>> NULL tests should be removed.
>> >>> Semantic patch used:
>> >>>
>> >>> @@ expression E; @@
>> >>> if(E==NULL) {... return...;}
>> >>> - if(E)
>> >>
>> >> This is not a valid semantic patch.  The if needs at least a then branch.
>> >>
>> >> julia
>> >>
>> >>
>> >
>> > @@ expression E;
>> statement S; @@
>> > if(E==NULL) {... return ...;}
>> > else S
>> > -if(E==NULL){
>> > +{
>> > ...
>> > }
>> > -else S
>
> It is strange to remove the { and add it back.  Your semantic patch can
> have more newlines than the actual C code, so you don't have to put the {
> on the same line as the if.
>
> julia
>

@@ expression E;
 statement S; @@
 if(E==NULL) {... return ...;}
 else S
 - if(E==NULL)
 {
 ...
 }
 - else S

How about this?

>> >
>> > Can you check this one, Julia?
>> >
>> >>>
>> >>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >>> ---
>> >>>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>> >>>  1 file changed, 9 deletions(-)
>> >>>
>> >>> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >>> index a4b6bb6..0ea521b 100644
>> >>> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >>> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> >>> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >>>
>> >>>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>> >>>               /* encode mic code */
>> >>> -             if (stainfo) {
>> >>>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>> >>>                                        0x0, 0x0, 0x0, 0x0,
>> >>>                                        0x0, 0x0, 0x0, 0x0,
>> >>> @@ -792,10 +791,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>> >>>                                        *(payload + curfragnum + 6),
>> >>>                                        *(payload + curfragnum + 7));
>> >>>                       }
>> >>> -             } else {
>> >>> -                     RT_TRACE(_module_rtl871x_xmit_c_, _drv_err_,
>> >>> -                              "xmitframe_addmic: rtw_get_stainfo23a ==NULL!!!\n");
>> >>> -             }
>> >>>       }
>> >>>
>> >>>       return _SUCCESS;
>> >>> @@ -934,7 +929,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>> >>>               /* TODO: fill HT Control Field */
>> >>>
>> >>>               /* Update Seq Num will be handled by f/w */
>> >>> -             if (psta) {
>> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority]++;
>> >>>                       psta->sta_xmitpriv.txseq_tid[pattrib->priority] &= 0xFFF;
>> >>>                       pattrib->seqnum = psta->sta_xmitpriv.txseq_tid[pattrib->priority];
>> >>> @@ -970,7 +964,6 @@ static int rtw_make_wlanhdr(struct rtw_adapter *padapter, u8 *hdr,
>> >>>                                       pattrib->ampdu_en = true;/* AGG EN */
>> >>>                               }
>> >>>                       }
>> >>> -             }
>> >>>       }
>> >>>  exit:
>> >>>       return res;
>> >>> @@ -1132,7 +1125,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>> >>>
>> >>>               /* adding icv, if necessary... */
>> >>>               if (pattrib->iv_len) {
>> >>> -                     if (psta) {
>> >>>                               switch (pattrib->encrypt) {
>> >>>                               case WLAN_CIPHER_SUITE_WEP40:
>> >>>                               case WLAN_CIPHER_SUITE_WEP104:
>> >>> @@ -1158,7 +1150,6 @@ int rtw_xmitframe_coalesce23a(struct rtw_adapter *padapter, struct sk_buff *skb,
>> >>>                                                      psta->dot11txpn, 0);
>> >>>                                       break;
>> >>>                               }
>> >>> -                     }
>> >>>
>> >>>                       memcpy(pframe, pattrib->iv, pattrib->iv_len);
>> >>>
>> >>> --
>> >>> 2.1.0
>> >>>
>> >>> --
>> >>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014005112.GA26569%40ubuntu.
>> >>> For more options, visit https://groups.google.com/d/optout.
>> >>>
>>

