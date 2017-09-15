X-GM-THRID: 6466090633212723200
X-Received: by 10.13.195.129 with SMTP id f123mr16859118ywd.21.1505510057448;
        Fri, 15 Sep 2017 14:14:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.144.9 with SMTP id s9ls7589888iod.18.gmail; Fri, 15 Sep
 2017 14:14:16 -0700 (PDT)
X-Received: by 10.36.36.67 with SMTP id f64mr2950402ita.27.1505510056750;
        Fri, 15 Sep 2017 14:14:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505510056; cv=none;
        d=google.com; s=arc-20160816;
        b=jIOpQ+Mv9IdwHa0c3TIGTwwPJbT8W2JeO0M1Qb58kYM9gHSF1xFDLcAbcVyKtDVIcr
         1BzbZ9W68j969zP0pru4eVQUwDDv/v7gBlu49JiY+d7MfhdJqaBCLtC16ENz7zI1oxXJ
         MHSSfWrdZOpq/CYk/PkNE1YiLYGgNuKFXep/mjuSMwzRNzsu08081POHKlw1pb6jOI0H
         ebF6ntdCL56RfLxx+Osmm6jxux7NHiHg+46LYsCsDgOIZOtQALkc3kF7Tq3Qcz5DBoTl
         bmbaUROd7wlSXFQTe+08SSMpOvKWnvPr54VYdaDwAykbIQcKXzaxufyEHxKa/akjBxDz
         PjaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=UoU8+cFtbnfNyRZluS1bc8beMXbmhYLm4Rt9Lz5210Q=;
        b=rFoSu9QAcuDOX0Da4JRSROdB7+ZOh/Y4CZ8D7uJNdD8snZR05fTBKErnvqpGyZl1K8
         SXyrjmiCl91iCi6r/n5i69rDNkv1I3gWp7dkue3lWcARpqmus60PjI5GlYyH92nrucUo
         AWOQAoKWB1dmT4CB6JO0gsKzAwC2weBOwt2cv4x2K/wK+vdCuOo/M+HmREsMWih0o7xA
         4DfNKYOxWfmkhP4wuDMoKZPtHWAHrBeNyY1Dl6MRj8U7NnLrePZOd3Xlui0nzXYr0C2v
         7FRWnj5CXVrrMWDDV/bWb2F7127lUGVK0YZbeH2E4CL5s39zfp3Tp9rA/5V3hdM1tuEv
         4yHA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vOhJrVUO;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x244.google.com (mail-qt0-x244.google.com. [2607:f8b0:400d:c0d::244])
        by gmr-mx.google.com with ESMTPS id u123si102424ywf.8.2017.09.15.14.14.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 15 Sep 2017 14:14:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) client-ip=2607:f8b0:400d:c0d::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=vOhJrVUO;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::244 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x244.google.com with SMTP id t46so2248154qtj.3
        for <outreachy-kernel@googlegroups.com>; Fri, 15 Sep 2017 14:14:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=UoU8+cFtbnfNyRZluS1bc8beMXbmhYLm4Rt9Lz5210Q=;
        b=vOhJrVUOzQd9dbaAWK8Au381se7hidgRVKNlQXMn9j7ZQWKxie13yRcO7H1+JThbOF
         3H4U2HKgwpCKUS38+6fw2epOS+XEe81h5EoMhb+MZaEvDIpL2ESk069piq1sm2TOkESc
         E0S6TYSHzVUpnNwo3kXAp62055AUtqVPaaErxW7EAs1+aAGtIsVTASHZnCV6WqtsCt4B
         NWhph30WAsOcAQD/r/JyAX9sYsR1eFtlUzJcDyc1IZ02likOOOlLxuMoj+1505RgAUns
         AKlOy+gKZRGbBLilkPwJ92wD6MjGhGaDFPqkeVp7Y1ppB535Zd7MBL0gzvmm38utNyFD
         WSRA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=UoU8+cFtbnfNyRZluS1bc8beMXbmhYLm4Rt9Lz5210Q=;
        b=LWDyExGA8m/bwORX0L8DjDmBFGqh+owzsmJdTnyK3k1kj/oA1w9s/CCA4ny1Q4qGPm
         c8XBWINiQmFixG1UOtyL1ylM/qNkYZHULjvbN/nZUN7Dy9timY6km9uOt11WDN52t1N/
         Kgb/ZORs9p9qZMjYEhIRWf4XLNl5Rmlu7a2hYIaoBs3cCRxOA7NhkGr8HYEtnMxLi0WZ
         JJ5HIqgmHAHgz+larVplQFFqLt3LxjXkqAHu1S1PbXxoe1X0zKMjMCG3iJpVOiTgDA5f
         d3d8S7nn6poUWiJheZplhHezSywECNWFusBvOgSVT36lNvqgXklNdAQ5pXpA2RYjwSpD
         FicQ==
X-Gm-Message-State: AHPjjUj+teWpgewdJRNeauIj/o9jsA9fgFVWiBzr1epwv9MKhD8VoSmX
	2l6yH51b3W10WKPnZPzLnImVzEE9h9EnmeU+7NY=
X-Google-Smtp-Source: AOwi7QDzmGXrNeCU72DjhoNx7bFBRMIi0grtvbVlidmDRzkIXivqbsmkLChClimju+NWqeGJizaU1U+cIhhpdvgjO8s=
X-Received: by 10.200.27.6 with SMTP id y6mr39900183qtj.247.1505510056409;
 Fri, 15 Sep 2017 14:14:16 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 15 Sep 2017 14:14:16 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709152308300.2533@hadrien>
References: <1505504680-22167-1-git-send-email-srishtishar@gmail.com>
 <alpine.DEB.2.20.1709152200030.2533@hadrien> <CAB3L5oxr5K5aMo06ROCVV9ejY6a_g1+uUkjU=Z5bKTJtzUs7sA@mail.gmail.com>
 <alpine.DEB.2.20.1709152308300.2533@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Sat, 16 Sep 2017 02:44:16 +0530
Message-ID: <CAB3L5owPRwtE=tYxqTDgQZ6cCCetQ3mSfmoXJOvsnVhF9z=K8A@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: irda: Don't use assignment
 inside if statement
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: samuel@sortiz.org, Greg KH <gregkh@linuxfoundation.org>, netdev@vger.kernel.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 2:39 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 16 Sep 2017, Srishti Sharma wrote:
>
>> On Sat, Sep 16, 2017 at 1:30 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>> >
>> >
>> > On Sat, 16 Sep 2017, Srishti Sharma wrote:
>> >
>> >> Write assignment statement outside the if statement. Done using
>> >> the following semantic patch by coccinelle.
>> >>
>> >> @@
>> >> identifier E;
>> >> expression F;
>> >> statement S;
>> >> @@
>> >>
>> >> -if((E = F))
>> >> +E = F;
>> >> +if(E)
>> >>   S
>> >>
>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> >
>> > Acked-by: Julia Lawall <julia.lawall@lip6.fr>
>>
>> Have sent a patchset for this instead .
>
> Thanks.  Actually, you should have copied the ack.

Oh.. Sorry didn't realise I could do that :)

Regards,
Srishti

>
> julia
>
>>
>> Regards,
>> Srishti
>> >
>> >> ---
>> >> Changes in v2:
>> >>  -Semicolon was missing in one of the statements of the
>> >>   semantic patch
>> >>
>> >>  drivers/staging/irda/drivers/irda-usb.c | 4 ++--
>> >>  drivers/staging/irda/drivers/mcs7780.c  | 9 ++++++---
>> >>  drivers/staging/irda/net/irqueue.c      | 3 ++-
>> >>  3 files changed, 10 insertions(+), 6 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/irda/drivers/irda-usb.c b/drivers/staging/irda/drivers/irda-usb.c
>> >> index 723e49b..82bfc05 100644
>> >> --- a/drivers/staging/irda/drivers/irda-usb.c
>> >> +++ b/drivers/staging/irda/drivers/irda-usb.c
>> >> @@ -334,9 +334,9 @@ static void irda_usb_change_speed_xbofs(struct irda_usb_cb *self)
>> >>       urb->transfer_flags = 0;
>> >>
>> >>       /* Irq disabled -> GFP_ATOMIC */
>> >> -     if ((ret = usb_submit_urb(urb, GFP_ATOMIC))) {
>> >> +     ret = usb_submit_urb(urb, GFP_ATOMIC);
>> >> +     if (ret)
>> >>               net_warn_ratelimited("%s(), failed Speed URB\n", __func__);
>> >> -     }
>> >>  }
>> >>
>> >>  /*------------------------------------------------------------------*/
>> >> diff --git a/drivers/staging/irda/drivers/mcs7780.c b/drivers/staging/irda/drivers/mcs7780.c
>> >> index c3f0b25..2b674d5 100644
>> >> --- a/drivers/staging/irda/drivers/mcs7780.c
>> >> +++ b/drivers/staging/irda/drivers/mcs7780.c
>> >> @@ -605,19 +605,22 @@ static int mcs_speed_change(struct mcs_cb *mcs)
>> >>       if (mcs->new_speed <= 115200) {
>> >>               rval &= ~MCS_FIR;
>> >>
>> >> -             if ((rst = (mcs->speed > 115200)))
>> >> +             rst = (mcs->speed > 115200);
>> >> +             if (rst)
>> >>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 0);
>> >>
>> >>       } else if (mcs->new_speed <= 1152000) {
>> >>               rval &= ~MCS_FIR;
>> >>
>> >> -             if ((rst = !(mcs->speed == 576000 || mcs->speed == 1152000)))
>> >> +             rst = !(mcs->speed == 576000 || mcs->speed == 1152000);
>> >> +             if (rst)
>> >>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>> >>
>> >>       } else {
>> >>               rval |= MCS_FIR;
>> >>
>> >> -             if ((rst = (mcs->speed != 4000000)))
>> >> +             rst = (mcs->speed != 4000000);
>> >> +             if (rst)
>> >>                       mcs_set_reg(mcs, MCS_MINRXPW_REG, 5);
>> >>
>> >>       }
>> >> diff --git a/drivers/staging/irda/net/irqueue.c b/drivers/staging/irda/net/irqueue.c
>> >> index 160dc89..5aab072 100644
>> >> --- a/drivers/staging/irda/net/irqueue.c
>> >> +++ b/drivers/staging/irda/net/irqueue.c
>> >> @@ -217,7 +217,8 @@ static __u32 hash( const char* name)
>> >>
>> >>       while(*name) {
>> >>               h = (h<<4) + *name++;
>> >> -             if ((g = (h & 0xf0000000)))
>> >> +             g = (h & 0xf0000000);
>> >> +             if (g)
>> >>                       h ^=g>>24;
>> >>               h &=~g;
>> >>       }
>> >> --
>> >> 2.7.4
>> >>
>> >> --
>> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505504680-22167-1-git-send-email-srishtishar%40gmail.com.
>> >> For more options, visit https://groups.google.com/d/optout.
>> >>
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAB3L5oxr5K5aMo06ROCVV9ejY6a_g1%2BuUkjU%3DZ5bKTJtzUs7sA%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

