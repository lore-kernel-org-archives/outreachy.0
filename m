X-GM-THRID: 6208553968461676544
X-Received: by 10.112.140.202 with SMTP id ri10mr4465322lbb.10.1445582016028;
        Thu, 22 Oct 2015 23:33:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.157.135 with SMTP id g129ls366404lfe.84.gmail; Thu, 22 Oct
 2015 23:33:35 -0700 (PDT)
X-Received: by 10.112.173.170 with SMTP id bl10mr4544553lbc.7.1445582015389;
        Thu, 22 Oct 2015 23:33:35 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x233.google.com (mail-wi0-x233.google.com. [2a00:1450:400c:c05::233])
        by gmr-mx.google.com with ESMTPS id l1si7195wmb.3.2015.10.22.23.33.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 22 Oct 2015 23:33:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) client-ip=2a00:1450:400c:c05::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::233 as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x233.google.com with SMTP id q8so62214808wik.1
        for <outreachy-kernel@googlegroups.com>; Thu, 22 Oct 2015 23:33:35 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=6B3C47hTYjlqydcCAJOX27VMFlr3HnD9dkxQHT4FBG4=;
        b=bLTExzL/2EL18L1AkdyU9p6DKhwh44HP9XuMTJ+zO8A9qI/SyE+xMb1qyzJeQWXFQU
         UibzLD7Fy56MmDyDm1Dga6gPeeOvQrI+zb504st3ANJEoJemZxvbs8izLR6CzBzSg2lG
         n68bB7wbC7hqVuDvZa6Y/D3wCaVYOp08AnaxS7iQPGvGbCzTWI7SbHqJx6sG9vy0zvoD
         wAZDuv99KECzm8CN0v48svxS2vFCuroxq0ob1JdBzqDBIPDCwKRcLpxpqWdAFOMFFo3u
         BfMRkZN4xK1L39S3PQdbm5STnfyzygDqxMk3zLHLNVHkW1E+DubG1YvwaN79JA3FZa0s
         gnvA==
MIME-Version: 1.0
X-Received: by 10.194.7.97 with SMTP id i1mr24256024wja.87.1445582015288; Thu,
 22 Oct 2015 23:33:35 -0700 (PDT)
Received: by 10.27.186.23 with HTTP; Thu, 22 Oct 2015 23:33:35 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.02.1510230824070.2068@localhost6.localdomain6>
References: <20151022192006.GA23576@ubuntu>
	<alpine.DEB.2.02.1510222128020.2066@localhost6.localdomain6>
	<CAKHNQQGaEZ8DofL6F4psu-8Xg_PS5BShLh6Z=btxUDN8xLDNBQ@mail.gmail.com>
	<alpine.DEB.2.02.1510230718540.2068@localhost6.localdomain6>
	<CAKHNQQFZVD0CNUFpQpsyq876O87vLeYy9R92CpOCudsC3012eg@mail.gmail.com>
	<alpine.DEB.2.02.1510230824070.2068@localhost6.localdomain6>
Date: Fri, 23 Oct 2015 12:03:35 +0530
Message-ID: <CAKHNQQHXzyAXQVFXF3LMTDee=x-wmhcQJv1nPATn5c9b6ke=2g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: coreconfigurator:
 Remove unnecessary wrapper function
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Fri, Oct 23, 2015 at 11:54 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 23 Oct 2015, Shivani Bhardwaj wrote:
>
>> On Fri, Oct 23, 2015 at 10:50 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Fri, 23 Oct 2015, Shivani Bhardwaj wrote:
>> >
>> >> On Fri, Oct 23, 2015 at 12:59 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >> > On Fri, 23 Oct 2015, Shivani Bhardwaj wrote:
>> >> >
>> >> >> Remove the function get_current_channel() and replace its calls by
>> >> >> get_current_channel_802_11n() as the former function's definition
>> >> >> involves only returning the value of latter function.
>> >> >> Semantic patch used to find out the issue:
>> >> >>
>> >> >> @@
>> >> >> identifier f,g;
>> >> >> @@
>> >> >>
>> >> >> *f(...) {
>> >> >>  return g(...); }
>> >> >>
>> >> >> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> >> >> ---
>> >> >>  drivers/staging/wilc1000/coreconfigurator.c | 14 +++++---------
>> >> >>  1 file changed, 5 insertions(+), 9 deletions(-)
>> >> >>
>> >> >> diff --git a/drivers/staging/wilc1000/coreconfigurator.c b/drivers/staging/wilc1000/coreconfigurator.c
>> >> >> index 6dfe26d..f20f2f3 100644
>> >> >> --- a/drivers/staging/wilc1000/coreconfigurator.c
>> >> >> +++ b/drivers/staging/wilc1000/coreconfigurator.c
>> >> >> @@ -331,13 +331,6 @@ u8 get_current_channel_802_11n(u8 *pu8msa, u16 u16RxLen)
>> >> >>       return 0;  /* no MIB here */
>> >> >>  }
>> >> >>
>> >> >> -u8 get_current_channel(u8 *pu8msa, u16 u16RxLen)
>> >> >> -{
>> >> >> -     /* Extract current channel information from */
>> >> >> -     /* the beacon/probe response frame          */
>> >> >> -     return get_current_channel_802_11n(pu8msa, u16RxLen);
>> >> >> -}
>> >> >> -
>> >> >>  /**
>> >> >>   *  @brief                      parses the received 'N' message
>> >> >>   *  @details
>> >> >> @@ -425,8 +418,11 @@ s32 parse_network_info(u8 *pu8MsgBuffer, tstrNetworkInfo **ppstrNetworkInfo)
>> >> >>               /* Get BSSID */
>> >> >>               get_BSSID(pu8msa, pstrNetworkInfo->au8bssid);
>> >> >>
>> >> >> -             /* Get the current channel */
>> >> >> -             pstrNetworkInfo->u8channel = get_current_channel(pu8msa, (u16RxLen + FCS_LEN));
>> >> >> +             /*
>> >> >> +              * Extract current channel information from
>> >> >> +              * the beacon/probe response frame
>> >> >> +              */
>> >> >> +             pstrNetworkInfo->u8channel = get_current_channel_802_11n(pu8msa, (u16RxLen + FCS_LEN));
>> >> >
>> >> > This goes way over 80 characters.  I know the code went over 80 characters
>> >> > before, but in constructing the new code, you could respect the 80
>> >> > character limit at the same time.
>> >> >
>> >> > Another issue, if someone is looking for something to do with Coccinelle,
>> >> > is that the parentheses on the second argument above and on the addition
>> >> > below are not necessary.  But fixing that shouldn't be in the same patch.
>> >> >
>> >>
>> >> I don't understand this issue, can you please elaborate a tad bit more?
>> >
>> > See below.
>> >
>> >> > julia
>> >> >
>> >> >>
>> >> >>               /* Get beacon period */
>> >> >>               u8index = (MAC_HDR_LEN + TIME_STAMP_LEN);
>> >
>> > This code could be u8index = MAC_HDR_LEN + TIME_STAMP_LEN;.  Parentheses
>> > on the outside of an expression don't help anything.
>> >
>> > julia
>> >
>>
>> I get that. Thanks. I'm sending v2.
>
> Dropping the parens shouldn't be in the same patch.  It could be in a
> series.
>
> julia
>

I'll take care. Thanks!

>>
>> >> >> 2.1.0
>> >> >>
>> >> >> --
>> >> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20151022192006.GA23576%40ubuntu.
>> >> >> For more options, visit https://groups.google.com/d/optout.
>> >> >>
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAKHNQQGaEZ8DofL6F4psu-8Xg_PS5BShLh6Z%3DbtxUDN8xLDNBQ%40mail.gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>

