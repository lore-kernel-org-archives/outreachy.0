X-GM-THRID: 6466263123755008000
X-Received: by 10.46.87.30 with SMTP id l30mr52010ljb.1.1505550205560;
        Sat, 16 Sep 2017 01:23:25 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.4.129 with SMTP id a1ls590851ljf.4.gmail; Sat, 16 Sep 2017
 01:23:24 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBmsb3NA6gC/VVECl76aliMz/lEh3OSdUgS0k5bqptg/qRqSzpATnanY/dxOiruoR1Sk6Fm
X-Received: by 10.46.83.71 with SMTP id t7mr2259232ljd.13.1505550204081;
        Sat, 16 Sep 2017 01:23:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505550203; cv=none;
        d=google.com; s=arc-20160816;
        b=dP/qoKfjbNxEMrYdI4x5fvKQABq9VLAjmuBE5v5ORXklTT8M8MG0wYBNYnaO2l55pD
         Uz7d8RLppe6uHZ6o64lPwrbOHv16GN8Bf7sY+hIaz/bcDxX7mIy2gyiemUQPTGdrB+Ao
         mLKmxTd04I7wJ9zNCeTm71m/ovynk1dp5mVyLd8FcaZKu12Uqe/X7cC4/cLIcdGb1j2d
         LnpGu0uZloGkZYnvVw5L5pOljbvH9wCvn5Ifk0vtBorAf5l5WE8L3seDhmWj7psBCieZ
         kww3gQTt9hA2q/KdxJjyxoPHN9q36SM51Chg2DZsckVv9LuNNtyr+9n27h5S+Fe8HwI7
         aEvw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date:arc-authentication-results;
        bh=w8BbhtmVfJPcYF7ysS7koXKAktFFrMhxgwoxvJFGlso=;
        b=d1yEwtU8qdicahSh6ALcOkvdcL2shrcH3/EyA4mUzQiX5sis7sPGEFanQTtKMbLGqt
         EcwkswRsWWpoDzF8ifdBj/84A1mXQ6Bp72b6N9UAXiGvu5GjexMNUd8ulfKXhWM4UpQ6
         NcgHTJFBigTR882T7vNspeIvDdRt1od8vR1BLYpEP6gJ3RTo8OHDaVta2j64cl6CHyWe
         KlWMVt7IN/yQrQiVjwVkQG8pxLi/quUQHOK8qTULMg03QMqLmaUfG1rzNejEhwu+Ew8e
         q5dwDk/FUTbt/wJo2vQc2bM8BYzJfSkV8Xcxpu6jKZQUMebHey3NMs49q6KpksbqZSBR
         QGDg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail2-relais-roc.national.inria.fr (mail2-relais-roc.national.inria.fr. [192.134.164.83])
        by gmr-mx.google.com with ESMTPS id t142si92162wmt.2.2017.09.16.01.23.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 01:23:23 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.83;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.83 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.42,400,1500933600"; 
   d="scan'208";a="291363824"
Received: from 85-171-60-79.rev.numericable.fr (HELO [192.168.0.15]) ([85.171.60.79])
  by mail2-relais-roc.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 16 Sep 2017 10:23:23 +0200
Date: Sat, 16 Sep 2017 10:23:23 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Aastha Gupta <aastha.gupta4104@gmail.com>
cc: outreachy-kernel@googlegroups.com, joe@perches.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
In-Reply-To: <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>
Message-ID: <alpine.DEB.2.20.1709161020120.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709160948260.2943@hadrien> <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>
User-Agent: Alpine 2.20 (DEB 67 2015-01-07)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 16 Sep 2017, Aastha Gupta wrote:

> On Sat, Sep 16, 2017 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
> >
> >
> > On Sat, 16 Sep 2017, Aastha Gupta wrote:
> >
> >> This patch fixes following checkpatch.pl checks:
> >> CHECK: struct mutex definition without comment
> >>
> >> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
> >> ---
> >>  drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
> >>  1 file changed, 1 insertion(+), 1 deletion(-)
> >>
> >> diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
> >> index 85775da..9c58598 100644
> >> --- a/drivers/staging/most/hdm-usb/hdm_usb.c
> >> +++ b/drivers/staging/most/hdm-usb/hdm_usb.c
> >> @@ -122,7 +122,7 @@ struct most_dev {
> >>       bool is_channel_healthy[MAX_NUM_ENDPOINTS];
> >>       struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
> >>       struct usb_anchor *busy_urbs;
> >> -     struct mutex io_mutex;
> >> +     struct mutex io_mutex; /* synchronize I/O with disconnect */
> >
> > Why did you choose this comment?
> >
> > julia
>
> The use of this struct mutex was mentioned before in the code.

I see that it is just in the doc of the same structure.  I'm not sure that
a double comment is needed in this case. I wonder if checkpatch
should/could be extended to address this.

julia

>
> Aastha
> >
> >>       struct timer_list link_stat_timer;
> >>       struct work_struct poll_work_obj;
> >>       void (*on_netinfo)(struct most_interface *, unsigned char,
> >> --
> >> 2.7.4
> >>
> >> --
> >> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> >> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> >> To post to this group, send email to outreachy-kernel@googlegroups.com.
> >> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505544199-13800-1-git-send-email-aastha.gupta4104%40gmail.com.
> >> For more options, visit https://groups.google.com/d/optout.
> >>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL%2BRW-CXQE%2BU-oDFq2Q%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

