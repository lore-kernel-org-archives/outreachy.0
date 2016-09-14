X-GM-THRID: 6329968789142110208
X-Received: by 10.157.56.142 with SMTP id p14mr1121560otc.4.1473844884737;
        Wed, 14 Sep 2016 02:21:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.133.70 with SMTP id r67ls244954itd.6.canary; Wed, 14 Sep
 2016 02:21:24 -0700 (PDT)
X-Received: by 10.98.27.84 with SMTP id b81mr1101687pfb.1.1473844882522;
        Wed, 14 Sep 2016 02:21:22 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-yw0-x241.google.com (mail-yw0-x241.google.com. [2607:f8b0:4002:c05::241])
        by gmr-mx.google.com with ESMTPS id l185si305979ywb.5.2016.09.14.02.21.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Sep 2016 02:21:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) client-ip=2607:f8b0:4002:c05::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:4002:c05::241 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-yw0-x241.google.com with SMTP id t67so367161ywg.1
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Sep 2016 02:21:22 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=5xrIBVi+D3AMM5CrmjE6tYwmTjewjh9co/o3h4+Mxp4=;
        b=jQFL8lNnUIo6CAZc3TxR0mAObMDUzj7OSc5caLCcAI/0lS8ZOCez10T3FCTpnVI85b
         jn9me/vp956LHaCX0HyjFx6+fkvBDJAy2gOZFZYFciNTEGVYOKfwG5WzH/LByFSkXJdo
         cDa+0zfujFSKT9wCeUzX9lLedN9NQtDYrJIWGw/i5P+13u7ZN+YUEWUdoIzh/aNNWghL
         8UJwQFkiUFbX5sRq9qDT/UjP1CposB/p9fyMAgSMjS1MoF/MSbTNPWKpXxCE+3qpwPXE
         LXhawZ25hIgiRvvp755lrbhEwZC1nKs1Wv+5qH5CF0JkLvBF30oXW6ohWHHA71GP8Yy/
         o3+w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=5xrIBVi+D3AMM5CrmjE6tYwmTjewjh9co/o3h4+Mxp4=;
        b=CJSAxJm305Iz7N4bjnMJptK1bMOMtKTXxQeDY99zSIo1nOoOxEPx2sRvfjX9/pW429
         3uQspB0F/DNfSOtvbaAXhNTqGcANm6zNk1oRWgOzFDUZxddQiZjMNOxdKhlX84JaI4vm
         zJskqCcaVIbbDHVUo+ORbwyMZ+bgdUTBdH1eQ14IOeCN+hf4wk9m4MphBdzXiaiFq6nk
         gjwkpzIWHvl/WlDM55LbJ8XKZwd36Wn3EcReB06Kqh1oZdIGN+Y7AeOwzRoznPifgbDM
         L79x3p7lms9Z3BO2I3p1f4YJpUDaJyGQIvpPrc2zI0dRgKMEnKtjxhdht7OxvdZ5ZNM5
         KI6g==
X-Gm-Message-State: AE9vXwM2gM/y2jiPLV2vWju6pwcOoYp5wu2nZYEGrhmhF0Nj9Q2X1Z3pP3w8FR5am9ubuVS2nd7I55Gfp+RFRA==
X-Received: by 10.13.203.79 with SMTP id n76mr1311481ywd.122.1473844882319;
 Wed, 14 Sep 2016 02:21:22 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.31.81.3 with HTTP; Wed, 14 Sep 2016 02:21:21 -0700 (PDT)
In-Reply-To: <CAOCi2DFsEPQjsn8Ua60A7vbYbeUiqO6Z1R_6i_Pk5pLQQB7KVQ@mail.gmail.com>
References: <cover.1473809550.git.gs051095@gmail.com> <alpine.DEB.2.10.1609140741050.3395@hadrien>
 <CAOCi2DFsEPQjsn8Ua60A7vbYbeUiqO6Z1R_6i_Pk5pLQQB7KVQ@mail.gmail.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Wed, 14 Sep 2016 14:51:21 +0530
Message-ID: <CAK-LDbL_-xj8hYUJ8YsRaOnxNDBFpofN6EwDr1pVMXoKQpqPCg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/6] Cleaning xgifb/vb_setmode.c
To: Gargi Sharma <gs051095@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, arnaud.patard@rtp-net.org, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Sep 14, 2016 at 2:46 PM, Gargi Sharma <gs051095@gmail.com> wrote:
> Hi
> On Wed, Sep 14, 2016 at 11:11 AM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>> On Wed, 14 Sep 2016, Gargi Sharma wrote:
>>
>> > This patchset fixes various issues that come up in the checkpatch in
>> > patch 1, 3, 4 and 5. Patches 2 and 6 are based on Julia's suggestion when a
>> > one patch was sent fixing the checkpatch issue of moving && operator to
>> > previous line.
>>
>> This is actually a v2, because eg the first one was sent already.
>
> I'm sorry for all the stupid question but will the revision patches I send
> now to correct the commit subjects be v3 ?

Yes, with explaining changes since last 2 versions under --- .

> Thanks,
> gargi
>
>>
>> julia
>>
>> >
>> > Gargi Sharma (6):
>> >   staging: xgifb: move AND operator for logical continuation
>> >   staging: xgifb: remove unnecessary parentheses
>> >   staging: xgifb: remove blank line after open brace
>> >   staging: xgifb: add spaces around |
>> >   staging: xgifb: remove blank line before closing brace
>> >   staging: xgifb: fix alignment for if arguments
>> >
>> >  drivers/staging/xgifb/vb_setmode.c | 48
>> > ++++++++++++++------------------------
>> >  1 file changed, 17 insertions(+), 31 deletions(-)
>> >
>> > --
>> > 2.9.2
>> >
>> > --
>> > You received this message because you are subscribed to the Google
>> > Groups "outreachy-kernel" group.
>> > To unsubscribe from this group and stop receiving emails from it, send
>> > an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> > To post to this group, send email to outreachy-kernel@googlegroups.com.
>> > To view this discussion on the web visit
>> > https://groups.google.com/d/msgid/outreachy-kernel/cover.1473809550.git.gs051095%40gmail.com.
>> > For more options, visit https://groups.google.com/d/optout.
>> >
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/CAOCi2DFsEPQjsn8Ua60A7vbYbeUiqO6Z1R_6i_Pk5pLQQB7KVQ%40mail.gmail.com.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

