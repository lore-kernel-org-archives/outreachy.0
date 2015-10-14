X-GM-THRID: 6205509094362578944
X-Received: by 10.180.10.202 with SMTP id k10mr5783242wib.2.1444840721648;
        Wed, 14 Oct 2015 09:38:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.11.4 with SMTP id m4ls179645wib.10.gmail; Wed, 14 Oct 2015
 09:38:41 -0700 (PDT)
X-Received: by 10.180.210.71 with SMTP id ms7mr1114024wic.4.1444840721087;
        Wed, 14 Oct 2015 09:38:41 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x232.google.com (mail-wi0-x232.google.com. [2a00:1450:400c:c05::232])
        by gmr-mx.google.com with ESMTPS id q6si939050wif.2.2015.10.14.09.38.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 09:38:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) client-ip=2a00:1450:400c:c05::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::232 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x232.google.com with SMTP id ll6so5500864wic.0
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 09:38:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=m5qa07E14QebkYZBJQXVqee9KSbPN70mQ9God4B0UUo=;
        b=S0SJKoo4YN0BclcrxXuQouwPx034rSqH9Bk34tTieOBR9/Wue0dnAOigoinwB+aekW
         6oybge4Ek7a4qzejioSHkebmf++NSFx08WatB1ttZBOBnkyWnc8pm9TW3VPazNH3haSo
         QGZkwgz+O8JfTNI2fC51BE/xcH86UI/KxXFuH4m0SlSz4E+LdtOk5ugUH0UQNGadtBHk
         GOX70nbblFu4w7kXKG8hPIFdoD3t0IHfwB2aiZK8/FpeGIT2MgtJ9nKL6dbSaED3/u50
         QAL1EttScMkcUgHkPSiKk8dtWtnkjclW+5bOvin2bwm2Wgw5xU+S0uM0KY7r9p0ZyU3n
         NTVw==
MIME-Version: 1.0
X-Received: by 10.180.38.13 with SMTP id c13mr7232293wik.48.1444840721000;
 Wed, 14 Oct 2015 09:38:41 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 09:38:40 -0700 (PDT)
In-Reply-To: <CAKHNQQGXmgmC28yZMrKyu-8L5Tm_waXTnRbZv2et5tNp2uwHVQ@mail.gmail.com>
References: <20151014142414.GA17736@ubuntu>
	<alpine.DEB.2.10.1510141625572.2421@hadrien>
	<CAKHNQQHjzrqSggo57khaaV+Bsv28NKUawQcbbhEmnXVy_80OZA@mail.gmail.com>
	<alpine.DEB.2.10.1510141808580.2421@hadrien>
	<CAKHNQQGXmgmC28yZMrKyu-8L5Tm_waXTnRbZv2et5tNp2uwHVQ@mail.gmail.com>
Date: Wed, 14 Oct 2015 22:08:40 +0530
Message-ID: <CAKHNQQEQYMt3pHCOK9=wP_29hk1PD2=h5PkJx4=9WcYeGUB2iA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:40 PM, Shivani Bhardwaj <shivanib134@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 9:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>>
>>> On Wed, Oct 14, 2015 at 7:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>> >
>>> >
>>> > On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>>> >
>>> >> The variable frame_authorized is declared and mentioned in the code but
>>> >> is not used anywhere so, it should be removed.
>>> >> Semantic patch used:
>>> >> @@
>>> >> type T;
>>> >> identifier i;
>>> >> constant C;
>>> >> position p != e.p;
>>> >> @@
>>> >>
>>> >> - T i@p;
>>> >>   <+... when != i
>>> >> - i = C;
>>> >>   ...+>
>>> >>
>>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>>> >> ---
>>> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ---
>>> >>  1 file changed, 3 deletions(-)
>>> >>
>>> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>>> >> index 4b5f32d..ab60c3f 100644
>>> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>>> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>>> >> @@ -899,7 +899,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>>> >>       struct net_device *wds = NULL;
>>> >>       struct sk_buff *skb2 = NULL;
>>> >>       struct net_device *wds = NULL;
>>> >> -     int frame_authorized = 0;
>>> >>       int from_assoc_ap = 0;
>>> >>       void *sta = NULL;
>>> >>  #endif
>>> >> @@ -1106,10 +1105,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>>> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
>>> >>                                            wds != NULL)) {
>>> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
>>> >> -                     frame_authorized = 0;
>>> >>                       break;
>>> >>               case AP_RX_CONTINUE:
>>> >> -                     frame_authorized = 1;
>>> >>                       break;
>>> >
>>> > Should the cases be merged?  I don't know what is the common strategy in
>>> > the Linux kernel.
>>> >
>>> > julia
>>> >
>>>
>>> What do you suggest?
>>
>> case AP_RX_CONTINUE_NOT_AUTHORIZED:
>> case AP_RX_CONTINUE:
>>          break;
>>
>> Normally, falling through from one case to the next is a possible source
>> of errors, but when there is nothing to do, perhaps the code becomes more
>> concise and clear.
>>
>> julia
>>

Should I send this as a patch series? Or combining the cases will look
fine under the heading "removing extra code" with the other code?

>
> Fine. I'll do this.
> Thank you. :)
>
>>>
>>> >>               case AP_RX_DROP:
>>> >>                       goto rx_dropped;
>>> >> --
>>> >> 2.1.0
>>> >>
>>> >> --
>>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014142414.GA17736%40ubuntu.
>>> >> For more options, visit https://groups.google.com/d/optout.
>>> >>
>>>
>>> --
>>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQHjzrqSggo57khaaV%2BBsv28NKUawQcbbhEmnXVy_80OZA%40mail.gmail.com.
>>> For more options, visit https://groups.google.com/d/optout.
>>>

