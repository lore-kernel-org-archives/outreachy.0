X-GM-THRID: 6257098330259587072
X-Received: by 10.107.167.148 with SMTP id q142mr23295083ioe.17.1456846021342;
        Tue, 01 Mar 2016 07:27:01 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.159.143 with SMTP id i137ls1744969ioe.15.gmail; Tue, 01
 Mar 2016 07:27:00 -0800 (PST)
X-Received: by 10.50.109.136 with SMTP id hs8mr2905827igb.12.1456846020806;
        Tue, 01 Mar 2016 07:27:00 -0800 (PST)
Return-Path: <bhumirks@gmail.com>
Received: from mail-ob0-x22d.google.com (mail-ob0-x22d.google.com. [2607:f8b0:4003:c01::22d])
        by gmr-mx.google.com with ESMTPS id ph8si39808igb.0.2016.03.01.07.27.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 01 Mar 2016 07:27:00 -0800 (PST)
Received-SPF: pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22d as permitted sender) client-ip=2607:f8b0:4003:c01::22d;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhumirks@gmail.com designates 2607:f8b0:4003:c01::22d as permitted sender) smtp.mailfrom=bhumirks@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-ob0-x22d.google.com with SMTP id fz5so37339771obc.0
        for <outreachy-kernel@googlegroups.com>; Tue, 01 Mar 2016 07:27:00 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc;
        bh=oxM0LIk2/34+LWfzVvTZ8KG5blSGDe/O9gStlT5dFVY=;
        b=yT6EtYlP9tf/5KGLhbwTePAOoiXpJI+tgXep+Ef7yhGQx1A6qjNsGXU4PAk4EJD3Yd
         2gKnoxJyLWk4RWFzjCundY1hgcTfhaClyxqOvrqKrf1FnVg/2Nx85gg0tlKabhedtaO0
         QYXLFn3CnOcVlSXdUaZyEWHhORU39T5Q5NlP1oNLyWTqI5jpXEoKW9NJGCrgkDSKz8Mi
         VJbRCr1yVDTkZ6Bxsj5ReIG332xOwpJuGZxEFvye/bSx/LciaWFM4vvQMaU4ic9DQMJ3
         xrtvgZsbIIIak4ls8SBTIiY3Lh+pidNeVJV2ZQxrIO34K21EJthKeX/N/jMY1xTnMubl
         3AxQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc;
        bh=oxM0LIk2/34+LWfzVvTZ8KG5blSGDe/O9gStlT5dFVY=;
        b=DwWEHQV8mdoSfAwfQaDQ0tPT6e16XHw71Dq2B20p6pvPTcUcISM9k8R9AM/9qkWlQe
         czGG9FjT4vb2/yVOgJ1zatJv4CYCFqC3hmDsfyvUMMleBiLFAvIdsp0jzai8/zjFNP14
         DluvlU1BFAMcveneUKSYirNOob4n8nLxv3szhVFc9JCa3yxMXMb/7ZpKMPEfpGtmjOYE
         qVaj4+kVIK2TGMx6hIfuBCL+ZpQhlKYJwVPLT4Bzfx09nr3Ske3SLiobbcTi8y3b95EU
         MYrrXus7/yHRY1yqmoYTpBQss8kZZdTdWk/DJvzcOqepuoOClpAYd83XyMEDSrs/9xU3
         5A7g==
X-Gm-Message-State: AD7BkJIehCf3Qu/wE/BQqUZUkfF28cLjLtdBv+1ArQV4pjqC4Lsrgju3F26Jz16xBYtQOCCYoX4h8zhiZ0GmEg==
MIME-Version: 1.0
X-Received: by 10.182.186.105 with SMTP id fj9mr16588661obc.17.1456846020459;
 Tue, 01 Mar 2016 07:27:00 -0800 (PST)
Received: by 10.157.40.174 with HTTP; Tue, 1 Mar 2016 07:27:00 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1603011615480.2624@hadrien>
References: <1456844212-29057-1-git-send-email-bhumirks@gmail.com>
	<alpine.DEB.2.10.1603011601100.2624@hadrien>
	<CAOH+1jG58L8Mjg2bO3t48bMoCJgR0=Di-sbHi0vj7DCWqOBbqw@mail.gmail.com>
	<alpine.DEB.2.10.1603011615480.2624@hadrien>
Date: Tue, 1 Mar 2016 20:57:00 +0530
Message-ID: <CAOH+1jEACWU7f8PkFp0vpagn4NiEFygp7BgBcd6zjLSG0gBemw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192e: Use kzalloc instead
 of kmalloc and memset
From: Bhumika Goyal <bhumirks@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Tue, Mar 1, 2016 at 8:47 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Tue, 1 Mar 2016, Bhumika Goyal wrote:
>
>> On Tue, Mar 1, 2016 at 8:31 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> > On Tue, 1 Mar 2016, Bhumika Goyal wrote:
>> >
>> >> The code in this patch allocates some memory and then clears it. The
>> >> function kzalloc does the both so replace kmalloc and memset with
>> >> kzalloc.
>> >> Done using coccinelle:
>> >>
>> >> @@
>> >> expression e,e1,e2;
>> >> @@
>> >> - e=kmalloc(e1,e2);
>> >> + e=kzalloc(e1,e2);
>> >> if(!e)
>> >>   return NULL;
>> >> ...
>> >> - memset(e,...);
>> >>
>> >> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
>> >> ---
>> >>  drivers/staging/rtl8192e/rtllib_tx.c | 3 +--
>> >>  1 file changed, 1 insertion(+), 2 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/rtl8192e/rtllib_tx.c b/drivers/staging/rtl8192e/rtllib_tx.c
>> >> index 58fc70e..1642f29 100644
>> >> --- a/drivers/staging/rtl8192e/rtllib_tx.c
>> >> +++ b/drivers/staging/rtl8192e/rtllib_tx.c
>> >> @@ -221,12 +221,11 @@ static struct rtllib_txb *rtllib_alloc_txb(int nr_frags, int txb_size,
>> >>       struct rtllib_txb *txb;
>> >>       int i;
>> >>
>> >> -     txb = kmalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
>> >> +     txb = kzalloc(sizeof(struct rtllib_txb) + (sizeof(u8 *) * nr_frags),
>> >>                     gfp_mask);
>> >>       if (!txb)
>> >>               return NULL;
>> >>
>> >> -     memset(txb, 0, sizeof(struct rtllib_txb));
>> >
>> > The sizes are not the same.  I don't know if this is a performance issue.
>> >
>>
>> By sizes do you mean the size of memory allocated by kmalloc and
>> kzalloc?  I think this won't be an issue when the second argument is
>> GFP_KERNEL.
>
> The size that is allocated is A + B.
> The size that is zeroed is only A.
>
> In your code, the size that is zeroed is A + B.  Since B contains a
> multiplication, that might be much bigger.  In at least some contexts
> zeroing takes time.
>
> julia
>

Thanks for explaining. I will find issues where the size allocated and
zeroed is only A .

Thanks,
Bhumika
>>
>> Thanks,
>> Bhumika
>> > julia
>> >
>> >>       txb->nr_frags = nr_frags;
>> >>       txb->frag_size = cpu_to_le16(txb_size);
>> >>
>> >> --
>> >> 1.9.1
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1456844212-29057-1-git-send-email-bhumirks%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAOH%2B1jG58L8Mjg2bO3t48bMoCJgR0%3DDi-sbHi0vj7DCWqOBbqw%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

