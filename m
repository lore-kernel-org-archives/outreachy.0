X-GM-THRID: 6463164323927687168
X-Received: by 10.46.0.222 with SMTP id e91mr138440lji.21.1504858210639;
        Fri, 08 Sep 2017 01:10:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.232.43 with SMTP id f43ls111413lfh.46.gmail; Fri, 08 Sep
 2017 01:10:09 -0700 (PDT)
X-Received: by 10.25.216.209 with SMTP id r78mr141552lfi.43.1504858209032;
        Fri, 08 Sep 2017 01:10:09 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504858209; cv=none;
        d=google.com; s=arc-20160816;
        b=dqiTRiLCUI6CxK1hUchcH+EatmBRcd8FtsLeoBzyCTg0AI7UPTi+aJAQOZ56lOPuKm
         xbuo1b+/tepDENUNzatJjVxj13j93ph9ot/NNzIPgilCN/UB+cV/XWYE88SXKQanj5nI
         aIoh4Llai/365NA2JeCzS+xGAdrXqTuYfQ+0RgOq1Wcrbly4XMDGUTdJ9Ubjr7mXWGn5
         KTgKTo6KLADehw2A3wtCYDFaQG8oaDqasZ5F7/ZypGoDH3G66+3sxyf9BuPF5CV1ky+m
         l00oKhvjA3MoMKivuEJgrGbs4DP37OOFe1LapSa4Li+XaNDewAFShzSwJ5U7GXkzB/E5
         4oTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=+o91pib0UFXJ8l7xyjccnF9c6k3zixyHxpsptQNbL6Q=;
        b=XqUvyl0PrpWDIR/um2W/iEPLg0eMXai0mXvkWOMc36GNabrv+Sr45/E9ttBbt2ZTiM
         0dIhkWNHqa5bS3KbSYLz0okY0uGaOd7Cu0MRGJZaEf6+etHc2wKti8WlMnwEGCFehV7r
         mC+DKdrF27tV0OKa4iOxbipZKwGvFEalJ66HMoqqaQE4s8anQxW1eBHi2iciuE8E+Xfa
         2yepzYl3fQCw5nY8XBBv3L9Aoa5jEbQYlE0jrGMZhohw1pDtIeUMU839g3bbY6iHCGtH
         tvtwxjk973QELfH/HiAem0Btz55xpum9csg2QGZDHvyIdK1dh6XziTLuwNlvjuN1VZyJ
         qnmQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oBAf3EwX;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-lf0-x22f.google.com (mail-lf0-x22f.google.com. [2a00:1450:4010:c07::22f])
        by gmr-mx.google.com with ESMTPS id i90si89986wmh.5.2017.09.08.01.10.08
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 01:10:08 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) client-ip=2a00:1450:4010:c07::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=oBAf3EwX;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:4010:c07::22f as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-lf0-x22f.google.com with SMTP id l196so4003539lfl.1
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 01:10:08 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=+o91pib0UFXJ8l7xyjccnF9c6k3zixyHxpsptQNbL6Q=;
        b=oBAf3EwXOocWxZ0c5a017Us8NV36xythdTzw+nH9IgjSmP9s5otR87oOUmRh8n7LpZ
         EO1tRN7AZFqy5Mk2ayZ05H6kwy+dRKe252Zq+BH7CoGBSC9FJUFM+NPKKo2mJaQUWOPF
         5l0QvuN/9K+PLEXLr0uBsZ8KJpEKY9rKgyJ8qmJY9J627JYJ/ug2KDBFtzj2QepnDT8x
         PAtTvO4tlot3QiT71erzvXKYYYC++NnhfFUDp51yQ2FZa9XYkNekHebusVYYmzn0l4Mx
         okjAgEIvoxPEW3eEXXMBQzVxq13NLEU+HMzwmfi3mIWAgzREGs8PbnRKreYPEJ12nhl1
         EVEQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=+o91pib0UFXJ8l7xyjccnF9c6k3zixyHxpsptQNbL6Q=;
        b=IJlFoBRk211ckaGiNFaoend94Vn4KjE7WOwkRiEYfiV2YaNG4t8DFU60fH8Sd/MjJo
         BNb/h+AyKeqBQ3XXxn60iilhsuNy/21Bj4klMtdd156/VWelqZQtrDQJEIzPgQGs+2rA
         IErvQvYx4chvVFq9d/WmhG6PjGwqvrGkNYV16KPMb3WFzUr586gfKWGOC4s+T90WxmjO
         T52eV52R5CIt/hsYmaYVhqX9q6wB0b2Xru7HoHgslxURkRknQ9j1FhYWBMIyq3dObAbv
         sYyysAiAb1f0oGeTguWNl9flKGiJyNi7ey/wJ+qu43273SVk604VSj1orj3oOfyoUQIN
         VELg==
X-Gm-Message-State: AHPjjUgNRnNIb6kaHZvfWfrS/GL1uFL7MEfuGuTzCgfzMXuv5MwnATFJ
	DESLwuFaI7RBiTFgwuDP0TnQVX7qnA==
X-Google-Smtp-Source: AOwi7QA1hXpsWgynceOTEsx4BLcLpTwALbOaGiQrwLadSJbY2dWT1Cw/eXvlMT9vYy+fz6wp30Qkiu2aeaMud477hnI=
X-Received: by 10.46.77.141 with SMTP id c13mr699904ljd.150.1504858208650;
 Fri, 08 Sep 2017 01:10:08 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.25.87.137 with HTTP; Fri, 8 Sep 2017 01:10:07 -0700 (PDT)
In-Reply-To: <25af2cbf-7251-40c8-ae97-2c7f7360054f@googlegroups.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
 <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
 <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com> <20170908051133.GA22581@kroah.com>
 <e1ce502a-6e96-4289-90d1-942daed9266c@googlegroups.com> <25af2cbf-7251-40c8-ae97-2c7f7360054f@googlegroups.com>
From: Vaishali Thakkar <vthakkar1994@gmail.com>
Date: Fri, 8 Sep 2017 13:40:07 +0530
Message-ID: <CAK-LDbJ_XN2UhjiAsm8difSU92=7dFk+mOFTcwzfQHj700iSwQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
To: Neetu Yadav <yadavneet7@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 1:23 PM, Neetu Yadav <yadavneet7@gmail.com> wrote:
> this is my ~/.gitconfig :
>
> [user]
>     name = Neetu
>     email = yadavneet7@gmail.com
> [sendemail]
>      smtpuser = yadavneet7@gmail.com
>      smtpserver = smtp.gmail.com
>      smtpencryption = tls
>      smtpserverport = 587
>      suppresscc = self
>
> and I get this when sending a mail :
>
> neetu@neetu-Lenovo-G50-70:~/git/kernels/staging$ git send-email
> --smtp-debug=1 --to  f2015079@hyderabad.bits-pilani.ac.in
> 0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
> 0001-Staging-rtl8192e-dot11d.c-fixed-a-coding-style-issue.patch
> Net::SMTP>>> Net::SMTP(3.05)
> Net::SMTP>>>   Net::Cmd(3.05)
> Net::SMTP>>>     Exporter(5.72)
> Net::SMTP>>>   IO::Socket::IP(0.37)
> Net::SMTP>>>     IO::Socket(1.38)
> Net::SMTP>>>       IO::Handle(1.35)
> Net::SMTP: Net::Cmd::getline(): unexpected EOF on command channel:  at
> /usr/lib/git-core/git-send-email line 1360.
> Unable to initialize SMTP properly. Check config and use --smtp-debug.
> VALUES: server=smtp.gmail.com encryption=tls hello=localhost.localdomain
> port=587 at /usr/lib/git-core/git-send-email line 1383.
>
> any help regarding this?

Well, this is a common issue with gmail I guess. Have you done 'Gmail setup'
mentioned in a first patch tutorial?

Check out this stackoverflow link[1] as well. You need to allow gmail
for less secure
apps and in the case of 2 factor authentication, generate and use App password.

Also, please use your full name in the gitconfig [unrelatable to the issue you
are facing].

[1] https://stackoverflow.com/questions/28038662/unable-to-initialize-smtp-properly-using-git

> Thanks
>
> Neetu
>
> --
> You received this message because you are subscribed to the Google Groups
> "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an
> email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit
> https://groups.google.com/d/msgid/outreachy-kernel/25af2cbf-7251-40c8-ae97-2c7f7360054f%40googlegroups.com.
>
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali
http://vaishalithakkar.in/

