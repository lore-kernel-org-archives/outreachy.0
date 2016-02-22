X-GM-THRID: 6254007511915954176
X-Received: by 10.140.240.129 with SMTP id l123mr157108qhc.8.1456149012479;
        Mon, 22 Feb 2016 05:50:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.62.104 with SMTP id x8ls627887igr.18.gmail; Mon, 22 Feb
 2016 05:50:12 -0800 (PST)
X-Received: by 10.107.135.93 with SMTP id j90mr22452387iod.27.1456149012162;
        Mon, 22 Feb 2016 05:50:12 -0800 (PST)
Return-Path: <bhaktipriya96@gmail.com>
Received: from mail-qk0-x230.google.com (mail-qk0-x230.google.com. [2607:f8b0:400d:c09::230])
        by gmr-mx.google.com with ESMTPS id l85si1200038ywb.2.2016.02.22.05.50.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Feb 2016 05:50:12 -0800 (PST)
Received-SPF: pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) client-ip=2607:f8b0:400d:c09::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bhaktipriya96@gmail.com designates 2607:f8b0:400d:c09::230 as permitted sender) smtp.mailfrom=bhaktipriya96@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x230.google.com with SMTP id s5so55597943qkd.0
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Feb 2016 05:50:12 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc:content-type;
        bh=ciSr3IyLAjfczgIKZD2dyVwFZsX2azAMjzSmFsjXBeo=;
        b=mhJbtafFUeBYoYXqKgpR63cHh96ztqsh1WlrHz3JtL+31KbnDBb4KZOL6UWP8Om4KY
         iyC3Kf1FS6DZ7c3nafxNeTu7bV2FBKMmCVFj8Pxb6nboRVyKt0BCogiluFyhTuY9DjGq
         txy9wGiD8iHqVLxqLZ5wLwY32iWF0pU4OxYtMdJrEQ0g/ukQ8Qmm9wdrPoDTL8lfkvQm
         gN/F1BJ+x2eIG9CKctQGz6DAh6OLLV1rlJ2Opt+M5xYl4o26gZGnWRXmxYeuTGLVQCbE
         WyxzqMdEWTB4IwmUBCchNkQROW2v84T5/9Sdkrqgjp8SIE4PnYWkoQFqTxtmfWiszeSj
         HvmQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc:content-type;
        bh=ciSr3IyLAjfczgIKZD2dyVwFZsX2azAMjzSmFsjXBeo=;
        b=YmRBsF4eUxnGR0nfUwnnj8e95sgABosC9xF7JavTyhJsne5uHvXdfzAZY5vSs9hd9b
         ELB1PV/rCgNlBy7v94HuSwMPSpkkKfN5fUR/EPZtJr2s7O/Cn/dCDHToFBNRI19fPDm8
         M3uNa3Skl2uKXj0AYgsk0yxyR9dRRlic2aVR8lp3ut6SuxL6ILxzDXrBpOjTBZHDdAH6
         JcYN5moVOUMKJJIFTyniQjMerK7YYGwdz1UHNV67E+VFMtc0WsdUFGmPInFrz8Gd8KCc
         rlOd3cS8d7lnAEZ/klBrEBHm2XUDXVOQdwUtrXYjF5Z7N6rWl+yT/N8sFK1OBw43XEDZ
         OC8w==
X-Gm-Message-State: AG10YOSYqiazAGdhbmDmbh1Q5BFP3aVX8KaHfrExc0tC8RoiNa241Qrx/hc7bew+bUAi5b9Xl66J5nqK5GaZIA==
X-Received: by 10.55.81.2 with SMTP id f2mr34351997qkb.87.1456149012022; Mon,
 22 Feb 2016 05:50:12 -0800 (PST)
MIME-Version: 1.0
Received: by 10.55.209.65 with HTTP; Mon, 22 Feb 2016 05:49:32 -0800 (PST)
In-Reply-To: <alpine.DEB.2.10.1602220822050.2532@hadrien>
References: <20160222070345.GA10232@Karyakshetra> <alpine.DEB.2.10.1602220534590.2685@hadrien>
 <alpine.DEB.2.10.1602220637570.2655@hadrien> <CAFNHFT85ZZkLBR8Tr9rMgvynHRdnzugvUFGiACydvEqKYD721g@mail.gmail.com>
 <alpine.DEB.2.10.1602220822050.2532@hadrien>
From: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Date: Mon, 22 Feb 2016 19:19:32 +0530
Message-ID: <CAFNHFT_YGuuZ6fOfvF_2JRcwGWNhWrnoZVg7sYYusceWGSXBXA@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: lnet: Use list_for_each_entry
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

Hello Julia,

On Mon, Feb 22, 2016 at 6:53 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Mon, 22 Feb 2016, Bhaktipriya Shridhar wrote:
>
>> Hello Julia,
>>
>> Thank you for your reply.  I ran the rule that you mentioned on the
>> entire kernel.
>> I found that  around 70 files will be needing this change.
>
> Cool.  Do the changes look correct as well?
>
Yes . The changes look fine.

> I'll get back to you on how you can make it suitable for incusion in the
> Linux kernel.
>

Sure.  Looking forward to hearing from you soon.

Thanks,
Bhaktipriya

