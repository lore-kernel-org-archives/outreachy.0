X-GM-THRID: 6464551056446586880
X-Received: by 10.36.50.204 with SMTP id j195mr76349ita.56.1505147787067;
        Mon, 11 Sep 2017 09:36:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.69.1 with SMTP id s1ls4300580ioa.32.gmail; Mon, 11 Sep
 2017 09:34:39 -0700 (PDT)
X-Received: by 10.13.212.12 with SMTP id w12mr7976352ywd.147.1505147679327;
        Mon, 11 Sep 2017 09:34:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505147679; cv=none;
        d=google.com; s=arc-20160816;
        b=wa1vxDp4gom6IEdu6XddTGOEVRVg6N31Y76F339yBVnaB4b5RbFcACUdoSv//dQsNy
         9SujtfiHMxAnHzBTG0x0PXEcT5/g/xxulqCCZkzJi07NV4I9nuya1+VvP45yZFMTV0Z5
         fw+qvyCYpeqwzgLjjSWAg58RNNlb0wdp0KYbBg/SB61hC538GnvxNS5CtD8YIp5n0TdC
         rgBMepKdtZgAjPvpqqsR+Ro1DRF7V+Tcpk9BXO/J7kCS6rMaCX4nGNrssr94JrpLL7YP
         QhTkulpi/ox9g/fLAD7g9h93n9FtfoOjgFWYlIpii6aZrTnt9lxV3fs4xR7bFgL4Z0lK
         gMYg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=oyuHxakj77acBr57WO/0N0i4TgYrMdQ6Wk1wF2wFrBA=;
        b=SE7lv0NzXwHfMPJHBJplB8cLAOyE71+mQpnq7qsJDrs3iz3u8rF06WFpUCNTB2hXQN
         ruJDzdvjJRI+JSQSfhTM3QtlMQscxp2jOi4KOjkIn8Z/wWOHQn9ip4fD6kpqtsVLK34M
         0Srmsy0NNdZMr/sLO/vRYzlyLuhgZ2sy3amTY4sKrx5WcSuGSmjMTz1BYQENPXQoSghf
         Atwgska8SX8mXU4r4kwP+5+UA3mROmDz6/B1SMyWuSg9IRQji8g9xB6scQcCA9iOajR2
         PtOb42FYVCSQqWi9A8y7usPO05760iQKVEjKGrBIK9Cs0LfvFFimOXwwiw973lqHB/C9
         MruQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+qmo4tt;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qt0-x241.google.com (mail-qt0-x241.google.com. [2607:f8b0:400d:c0d::241])
        by gmr-mx.google.com with ESMTPS id v85si187747ywc.0.2017.09.11.09.34.39
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 11 Sep 2017 09:34:39 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) client-ip=2607:f8b0:400d:c0d::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=O+qmo4tt;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c0d::241 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qt0-x241.google.com with SMTP id u48so2995272qtc.4
        for <outreachy-kernel@googlegroups.com>; Mon, 11 Sep 2017 09:34:39 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=oyuHxakj77acBr57WO/0N0i4TgYrMdQ6Wk1wF2wFrBA=;
        b=O+qmo4tt9sHPAF4rwGnbQ7+7i+jWDpucTgrLFipTY/DPq+862WsX9GMo8U/afID7w6
         C6d3leg3QoFXsXYcz5A4mi0HrrLYhsSPzDXQwjorlnFmcNdCu1wYjpU+A1ZR8+63YdKe
         QVGdb/hYL8Tl1+YNv1UPEHy3IwM9padRq/Xy0RjJCITXZKa9o/R3F9K5E5SQc8oHebHV
         2ZYi7fF89NboaPytT8M/RDBn4qiXP9aZQmHblH5/+X0m2B63Otx/oxRH8t3wpT1v6sRD
         /nfZQObBK+BYRTwqXjNn/02u+eF9ax6qTkPE6hHlZUNuMHVQBRKm+LUlZaxHOHn1KTlm
         9wmg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=oyuHxakj77acBr57WO/0N0i4TgYrMdQ6Wk1wF2wFrBA=;
        b=nlDHZU6BcLC9bNdBrll+fdUdp19+FUP/45vp+rXzSGY/3M7ZoYiwQhJOjCsPpXzzXe
         pnz039WUJ25EEZEXOzGZmMaxkp+JsccikTtjGF6nwxQfLs6/cRyx6G6SKlURuq6S61yN
         OCXEwvC4oyQvw8bbU2dsOuqcXcNAQjeiz1woggYDjsFLYWGxJVs8Q4x2YXpRMnhnRLIx
         2s79KV7A5Ic2iyqWQeCsE8XGyAuU6RAQxQnKnwrJkDkJeRgOwlAisTDuQydXpfJlfxs9
         HjT9Tggy26u3Rh5cj5D7H9JNEQycy6WjI76/XVaQ5j5YzY4PLDq1k64UpohKJP+9RHRT
         X3QQ==
X-Gm-Message-State: AHPjjUgrcZdR7ijA3QO8DUKy1dmpEtc/Z8TpaRxgfinTkSLjzWj1aJWB
	yS8vJwx1IShYLXSGECpszZq0Q/lwIg==
X-Google-Smtp-Source: AOwi7QDPZncH82R3kC0Sg+9Lj+6Al2oX7fq8/JC1biachEx1fxCw19AVdXEGDmXGEiF52QkJc9dhRDlhAvXgjWkGrXg=
X-Received: by 10.237.63.15 with SMTP id p15mr16681792qtf.117.1505147678919;
 Mon, 11 Sep 2017 09:34:38 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Mon, 11 Sep 2017 09:34:38 -0700 (PDT)
In-Reply-To: <CAB3L5oxwadCBOwir99x=D4Rmby6ZWPfDtFrMNwtFOpv8zhO4iQ@mail.gmail.com>
References: <1505145571-11248-1-git-send-email-srishtishar@gmail.com>
 <20170911160449.GA11886@kroah.com> <CAB3L5oxcyhgyy8EuGuPo9QtJQd-W7JTgQQE1PfopZFmSx58P9g@mail.gmail.com>
 <alpine.DEB.2.20.1709111809180.13726@hadrien> <CAB3L5oxwadCBOwir99x=D4Rmby6ZWPfDtFrMNwtFOpv8zhO4iQ@mail.gmail.com>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Mon, 11 Sep 2017 22:04:38 +0530
Message-ID: <CAB3L5ozXiJLwwjqKVLOTyv6aQoaR9J8gF7u3Z-dyFipcbMr=Cg@mail.gmail.com>
Subject: Re: [Outreachy kernel] Re: [PATCH] Staging: ccree: Don't use volatile
 for monitor_lock
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, Gilad Ben-Yossef <gilad@benyossef.com>, 
	Linux Crypto Mailing List <linux-crypto@vger.kernel.org>, driverdev-devel@linuxdriverproject.org, 
	devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Mon, Sep 11, 2017 at 9:45 PM, Srishti Sharma <srishtishar@gmail.com> wrote:
> On Mon, Sep 11, 2017 at 9:41 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>>
>>
>> On Mon, 11 Sep 2017, Srishti Sharma wrote:
>>
>>> On Mon, Sep 11, 2017 at 9:34 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
>>> > On Mon, Sep 11, 2017 at 09:29:31PM +0530, Srishti Sharma wrote:
>>> >> The use of volatile for the variable monitor_lock is unnecessary.
>>> >>
>>> >> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>>> >> ---
>>> >>  drivers/staging/ccree/ssi_request_mgr.c | 2 +-
>>> >>  1 file changed, 1 insertion(+), 1 deletion(-)
>>> >>
>>> >> diff --git a/drivers/staging/ccree/ssi_request_mgr.c b/drivers/staging/ccree/ssi_request_mgr.c
>>> >> index e5c2f92..7d77941 100644
>>> >> --- a/drivers/staging/ccree/ssi_request_mgr.c
>>> >> +++ b/drivers/staging/ccree/ssi_request_mgr.c
>>> >> @@ -49,7 +49,7 @@ struct ssi_request_mgr_handle {
>>> >>       dma_addr_t dummy_comp_buff_dma;
>>> >>       struct cc_hw_desc monitor_desc;
>>> >>
>>> >> -     volatile unsigned long monitor_lock;
>>> >> +     unsigned long monitor_lock;
>>> >
>>> > While volatile is not right, odds are, this is still totally wrong as
>>> > well.  How about using a "real" lock instead?
>>>
>>> I tried to find where is this variable being used in the code, but I
>>> didn't find any usage of it . It might be an important attribute of
>>> this structure definition but, I don't see it's value being set to
>>> anything or being used somewhere .
>>
>> Try removing it and see if the code still compiles.  There is always a
>> danger that a use of something could be constructed using ## in a macro,
>> although given the uses of ## for this driver, it doesn't seem likely
>> here.

It compiles, so I have removed the variable and sent another patch

Thanks,
Srishti

>
> Yes, I'll do that.
>
> Regards,
> Srishti
>>
>> julia

