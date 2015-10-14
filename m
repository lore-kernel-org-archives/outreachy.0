X-GM-THRID: 6205509094362578944
X-Received: by 10.180.35.132 with SMTP id h4mr5740750wij.5.1444839068564;
        Wed, 14 Oct 2015 09:11:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.82.73 with SMTP id g9ls190149wiy.30.gmail; Wed, 14 Oct
 2015 09:11:08 -0700 (PDT)
X-Received: by 10.195.18.100 with SMTP id gl4mr977183wjd.4.1444839068013;
        Wed, 14 Oct 2015 09:11:08 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22b.google.com (mail-wi0-x22b.google.com. [2a00:1450:400c:c05::22b])
        by gmr-mx.google.com with ESMTPS id hs5si963444wib.1.2015.10.14.09.11.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 09:11:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) client-ip=2a00:1450:400c:c05::22b;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22b as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22b.google.com with SMTP id q12so90163305wie.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 09:11:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=oE53EAJob4AWOaxod7u9Xt2XvVpDIotRd136XiLP1W4=;
        b=YwXCQ5AiShPi4wlDtPibe8Wkx+n5w2adgnJiOAAP4uDJL3fXlLRIxOcOU5Z8Qo5Tp+
         1G/fdMAc61XU9bkA6KGW2U0Lz77hKO70eOjc1Qf6RX2X60tQu75G+r9L6PZ4tLW/ZWYz
         5AeYrBMljcxQGKPSBT4/0EkwhTY2Px7nxUkbrnNZE5HwKoU5ghjwuhqEWGxN7RME95ux
         ii8UsO/t9jJb3DkjKJfZtoQ+imK2CdBGzoXLc529YgQ3VNOQUk4aDO0/E186AkYcquvp
         MzTSFPD5KPiNSXygtv9RBQYQoWFPsezQtHw9rmnrds9yi6mUxxeBnDJUpE/iuvFldvET
         AywQ==
MIME-Version: 1.0
X-Received: by 10.180.189.41 with SMTP id gf9mr5070578wic.95.1444839054609;
 Wed, 14 Oct 2015 09:10:54 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Wed, 14 Oct 2015 09:10:54 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.10.1510141808580.2421@hadrien>
References: <20151014142414.GA17736@ubuntu>
	<alpine.DEB.2.10.1510141625572.2421@hadrien>
	<CAKHNQQHjzrqSggo57khaaV+Bsv28NKUawQcbbhEmnXVy_80OZA@mail.gmail.com>
	<alpine.DEB.2.10.1510141808580.2421@hadrien>
Date: Wed, 14 Oct 2015 21:40:54 +0530
Message-ID: <CAKHNQQGXmgmC28yZMrKyu-8L5Tm_waXTnRbZv2et5tNp2uwHVQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: ieee80211_rx:
 Remove unused code
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:39 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Wed, Oct 14, 2015 at 7:56 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Wed, 14 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> The variable frame_authorized is declared and mentioned in the code but
>> >> is not used anywhere so, it should be removed.
>> >> Semantic patch used:
>> >> @@
>> >> type T;
>> >> identifier i;
>> >> constant C;
>> >> position p != e.p;
>> >> @@
>> >>
>> >> - T i@p;
>> >>   <+... when != i
>> >> - i = C;
>> >>   ...+>
>> >>
>> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> ---
>> >>  drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c | 3 ---
>> >>  1 file changed, 3 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> >> index 4b5f32d..ab60c3f 100644
>> >> --- a/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> >> +++ b/drivers/staging/rtl8192u/ieee80211/ieee80211_rx.c
>> >> @@ -899,7 +899,6 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>> >>       struct net_device *wds = NULL;
>> >>       struct sk_buff *skb2 = NULL;
>> >>       struct net_device *wds = NULL;
>> >> -     int frame_authorized = 0;
>> >>       int from_assoc_ap = 0;
>> >>       void *sta = NULL;
>> >>  #endif
>> >> @@ -1106,10 +1105,8 @@ int ieee80211_rx(struct ieee80211_device *ieee, struct sk_buff *skb,
>> >>               switch (hostap_handle_sta_rx(ieee, dev, skb, rx_stats,
>> >>                                            wds != NULL)) {
>> >>               case AP_RX_CONTINUE_NOT_AUTHORIZED:
>> >> -                     frame_authorized = 0;
>> >>                       break;
>> >>               case AP_RX_CONTINUE:
>> >> -                     frame_authorized = 1;
>> >>                       break;
>> >
>> > Should the cases be merged?  I don't know what is the common strategy in
>> > the Linux kernel.
>> >
>> > julia
>> >
>>
>> What do you suggest?
>
> case AP_RX_CONTINUE_NOT_AUTHORIZED:
> case AP_RX_CONTINUE:
>          break;
>
> Normally, falling through from one case to the next is a possible source
> of errors, but when there is nothing to do, perhaps the code becomes more
> concise and clear.
>
> julia
>

Fine. I'll do this.
Thank you. :)

>>
>> >>               case AP_RX_DROP:
>> >>                       goto rx_dropped;
>> >> --
>> >> 2.1.0
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151014142414.GA17736%40ubuntu.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQHjzrqSggo57khaaV%2BBsv28NKUawQcbbhEmnXVy_80OZA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

