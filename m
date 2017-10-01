X-GM-THRID: 6470117861435113472
X-Received: by 10.129.226.70 with SMTP id z6mr20894743ywl.172.1506858974782;
        Sun, 01 Oct 2017 04:56:14 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.37.70.196 with SMTP id t187ls1411858yba.1.gmail; Sun, 01 Oct
 2017 04:56:14 -0700 (PDT)
X-Received: by 10.129.77.68 with SMTP id a65mr952952ywb.17.1506858974031;
        Sun, 01 Oct 2017 04:56:14 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1506858974; cv=none;
        d=google.com; s=arc-20160816;
        b=yBxlcPQH8ztLDAiNsD7HFM3AufQJPbeCXJDcry/SuNmS1ByysYktlj2UBSasnokGlc
         0izhU4u6kRA2v4tmJXGcvIR8Elpgd9oG6wwiQ3Lx+yvFfbhHT4SpVPxWljozhp3acTBH
         uj3qTeNwDtXZAmh0v/FsAZGR5+fQTI9QVV1N2bYr4P0fO/l3Tk1NhXtnqj8S/ninP1aK
         3u7rXDVHj5+pPcpEKHPDnEEcjT0F+HREdhSxxEWUSyu1aEelwmPa05XVM22DwLNJuQzy
         oYTVXLmaOH+GKe6r6iyDZT4ea8OAOcsYrvWBUNPPLOrZ4vV2Tdp+ez65wkpZGpBq3nJb
         rv3g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=KzQVSU+GFRsZ8HK+2DApT3/ngLqzlU1lr7OBJfFdLaA=;
        b=AHgaZFO20+XEoM4LyJl1sakTkvfAlQ1l9PxlUB5LX0kA3e/WI0dTFIAISNTzzZwUro
         wafsqRqVsAMtkxkRpRq9um4+mm9fTDLARrdEU0kXOw8j2WHiSM7yx5AcFSXeGOBg7cd6
         4AlTN1DZ9hrl9ugHZhFANuSbxO2mu5v7zpIb8D5kie9qfqBjnAlYxsKblL6vCCV2Zqy6
         BmEmBbwDjY4OG3OmVsTpFybQ/51bzJHKFbN3Vkmzy33PxCwJFQBGBkkrOvAH3Axy/jmz
         ksg0r6p7iF5EVzgD6vSpfrHjTvxqrXEDUPsyO0IRfzaP77/9rSj++i6YSkdM+XgA8kjL
         OhNw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=myOmnjAX;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <georgiana.chelu93@gmail.com>
Received: from mail-qt0-x243.google.com (mail-qt0-x243.google.com. [2607:f8b0:400d:c0d::243])
        by gmr-mx.google.com with ESMTPS id p204si134490ywe.34.2017.10.01.04.56.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 01 Oct 2017 04:56:14 -0700 (PDT)
Received-SPF: pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) client-ip=2607:f8b0:400d:c0d::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=myOmnjAX;
       spf=pass (google.com: domain of georgiana.chelu93@gmail.com designates 2607:f8b0:400d:c0d::243 as permitted sender) smtp.mailfrom=georgiana.chelu93@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x243.google.com with SMTP id e19so494715qta.13
        for <outreachy-kernel@googlegroups.com>; Sun, 01 Oct 2017 04:56:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=KzQVSU+GFRsZ8HK+2DApT3/ngLqzlU1lr7OBJfFdLaA=;
        b=myOmnjAXKaZzvFPdv7l0sxaEtHwn1uV1mDnmGLzxetNMAICi/sJVwAZk7nMXqhD8PF
         RXSh+TDWFI3wvHhtoXPKVEK/b89/FdDW34pdrlgbZzeCGQNl8U1UyaReeDvmA+J+C/Tm
         7ybrtmaxLaEqkUc1xRAK5orGh2WmxZAh79E3ZI88+4C93+u56Kdt8tFbh1XtnauSw/2f
         dTVMLYpK7RFqSNbDkYvkd+R2hCSp99wdeqlIpcuCn/eg9pe/TFR+1KrqK/0VD3Vbc3kk
         ul+HaUz9DtTNCAm285CDlpOq8yuhKthGcx42I0+ISJjfszgTCv6Nf1YhjnpWfBrXpIOM
         9DiA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=KzQVSU+GFRsZ8HK+2DApT3/ngLqzlU1lr7OBJfFdLaA=;
        b=GWRb/hKf3OHLUa9PYe6zn5RAHAaujbMOmtEyPb5x+8UkVWy6fCj1oiHWoZG242xXf0
         ssjgRHMwYP2wWMnYW0NbPg2L0A9WlvpvNn/jJBXM+n889N278eKpzDNWum2usGfSLOR8
         VC9L2zj4TOFd09u6efvWNfZsa/TDxUdBoLAdGeBv7Cv5iO6qz2br8ODzsd1egIi534Zj
         X4VhI+e3jlJneU2Wec1BhQ83OA6SV2A5druhrEVXaPhZ0o5heGGEHpmwhc5SwM+YjKEz
         K9z/DE4ktZFXeBLl9D0TliNypFdrckUeVt3o1lB6z34GyxmLfPomi9B5Rw/RCZRwW3iR
         7I5Q==
X-Gm-Message-State: AMCzsaVaAGxOIH/NwWpdBN8TYaWXxG09TklUQ/r3+NscpDsFR6K3pkfu
	mjW5fT85OOiVxSHuNGcaMgiEPCfy/RdDWxikALU=
X-Google-Smtp-Source: AOwi7QCK9AlDKe7zC/wI12JY8sUI7qhnh0Xh+XRUl9mknvBS+ZBJiE7I+HI4jjIJZjlWMvD0KdW3dV2tVgB4TRQyW0M=
X-Received: by 10.200.28.47 with SMTP id a44mr15066599qtk.256.1506858973711;
 Sun, 01 Oct 2017 04:56:13 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.140.105.75 with HTTP; Sun, 1 Oct 2017 04:56:13 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1710011346330.2031@hadrien>
References: <cover.1506436974.git.georgiana.chelu93@gmail.com>
 <6994f57188755df17d3ef47a36a4f4ec032dcb4d.1506436974.git.georgiana.chelu93@gmail.com>
 <20170929133417.GA4057@kroah.com> <CALta04wMbvf3BDh9+_7TT_VbnApMt3HfqwD+_4qSNBpY2xaUQQ@mail.gmail.com>
 <alpine.DEB.2.20.1710011346330.2031@hadrien>
From: Georgiana Chelu <georgiana.chelu93@gmail.com>
Date: Sun, 1 Oct 2017 14:56:13 +0300
Message-ID: <CALta04xHah1KVgOBfQBPXzvAqhf4pkESi1-Q060Hf2tHS-RLyg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 02/10] Staging: media: atomisp:
 Remove useless 'out of memory' messages
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Mauro Carvalho Chehab <mchehab@kernel.org>
Content-Type: text/plain; charset="UTF-8"

On 1 October 2017 at 14:47, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sun, 1 Oct 2017, Georgiana Chelu wrote:
>
>> On 29 September 2017 at 16:34, Greg Kroah-Hartman
>> <gregkh@linuxfoundation.org> wrote:
>> > On Tue, Sep 26, 2017 at 09:01:30AM -0700, Georgiana Chelu wrote:
>> >> OOM (Out Of Memory Manager) reports memory allocation fails,
>> >> so there is no need for the error messages.
>> >>
>> >> Signed-off-by: Georgiana Chelu <georgiana.chelu93@gmail.com>
>> >> ---
>> >>
>> >> Changes in v2:
>> >> * this is a new patch added to the patchset
>> >>
>> >>  drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c | 4 ----
>> >>  1 file changed, 4 deletions(-)
>> >>
>> >> diff --git a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> >> index 5232327..8667466 100644
>> >> --- a/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> >> +++ b/drivers/staging/media/atomisp/pci/atomisp2/hmm/hmm_bo.c
>> >> @@ -728,7 +728,6 @@ static int alloc_private_pages(struct hmm_buffer_object *bo,
>> >>       bo->page_obj = kmalloc_array(pgnr, sizeof(struct hmm_page_object),
>> >>                               GFP_KERNEL);
>> >>       if (unlikely(!bo->page_obj)) {
>> >> -             dev_err(atomisp_dev, "out of memory for bo->page_obj\n");
>> >>               return -ENOMEM;
>> >>       }
>> >
>> > The { } should also be removed when you do this.  Please fix that up
>> > here.
>> >
>>
>> This fix is done in
>> [PATCH v2 07/10] Staging: media: atomisp:
>>     Remove braces {} for single statement blocks
>>
>> Do you say that is better to remove the {} in 02/10?
>
> Yes.  When you make a change, you should clean immediately up any
> checkpatch warnings that you introduce.
>

I see .. Thank you very much! I will resend the patchset.


Georgiana

> julia
>
>>
>> Thank you,
>> Georgiana
>>
>> > thanks,
>> >
>> > greg k-h
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/CALta04wMbvf3BDh9%2B_7TT_VbnApMt3HfqwD%2B_4qSNBpY2xaUQQ%40mail.gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

