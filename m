X-GM-THRID: 6250666971081211904
X-Received: by 10.140.155.14 with SMTP id b14mr5540361qhb.5.1455350662860;
        Sat, 13 Feb 2016 00:04:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.42.66 with SMTP id b60ls2318401qga.56.gmail; Sat, 13 Feb
 2016 00:04:22 -0800 (PST)
X-Received: by 10.129.51.2 with SMTP id z2mr5533136ywz.49.1455350662137;
        Sat, 13 Feb 2016 00:04:22 -0800 (PST)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id v71si502929vkd.3.2016.02.13.00.04.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 13 Feb 2016 00:04:22 -0800 (PST)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id e185so5567254vkb.2
        for <outreachy-kernel@googlegroups.com>; Sat, 13 Feb 2016 00:04:22 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=FswfjhP8KDcLjybesZ/AdofuWOj/KQ2ISPEHWZllf+Q=;
        b=XsnOMjQyQBI0iC30xQKQjC/GLhobAM8/HZlN/2DD+H+s0k/4+bBL42IZB6MyIdGmAB
         y9p7mD02CQfCQkOhSIMd8gkwblL2h9tcOusjoqGEHmbdflV1Za0cCB2I7C7fHelniGRv
         Mxs+wySFndleN+A7VKNIj2mRU6EqWfm/KN6ql4ZC9tR2cLnkKpdLUNOqLwCEa/fZ4XkQ
         Qph5lumKgnmMw8tslS2bsw0g54fPVJTZhnSg82mIuJ6XWhO41kCthOAPG8RfmtyoPabP
         gJCpkP/2gYlOdRMT+ig1E7o6vqBXPiR0HhqGtzYSXAWEicl3l80KtACBpa6lCcYN58uY
         y9gw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:mime-version:in-reply-to:references:date
         :message-id:subject:from:to:cc:content-type;
        bh=FswfjhP8KDcLjybesZ/AdofuWOj/KQ2ISPEHWZllf+Q=;
        b=d5cQ2gqLIGgv0XSAYt/vq9QK/1rIYxyjwoHMdFWKd1dU4BoaEhZ/FvJ3mfRl0STkhw
         lOTtgYIF0V4bJ1vCBSW2NfJKW3v3tAKfJwkTouoDrO0zNLTwHeLstQBWSBaL7dyPnieF
         lW3AuAwPUu1MUcF/K24+okwXfHKA3W5E4Pg7ZxY5pWrEW6rIEwmr7RyHgr1yW7oFNOt4
         S6gIOg22putCu1/Dlaeou4tHwrMSE0bhXAF/rGFYo1JtUFecgXy/XzPf/KnzFoKJsN9J
         47Mc4eOWmitmq1CcXvsGpxOAIrYQ3BFdxK4QZRz09DNNJfaesp98Bss/joe71JTw/eQU
         vfOw==
X-Gm-Message-State: AG10YOTTeqtkmazrgIqikTudqOmyVwEqeyNEkCCYz78yazwjKmfMepAMASZLFPw4431Jy4IiljnCuPA+n2vb8w==
MIME-Version: 1.0
X-Received: by 10.31.161.195 with SMTP id k186mr4307486vke.129.1455350661919;
 Sat, 13 Feb 2016 00:04:21 -0800 (PST)
Received: by 10.31.142.129 with HTTP; Sat, 13 Feb 2016 00:04:21 -0800 (PST)
In-Reply-To: <20160213070010.GA21006@amitoj-Inspiron-3542>
References: <20160213070010.GA21006@amitoj-Inspiron-3542>
Date: Sat, 13 Feb 2016 13:34:21 +0530
Message-ID: <CAK-LDbKkUTk8g_SX4edTWJoDq6EEq+tQg+kYCteYXHnP3AUWAw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/2] staging: rtl8192u: ieee80211:
 Remove msleep_interruptible_rsl MACRO and its single instance
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Sat, Feb 13, 2016 at 12:30 PM, Amitoj Kaur Chawla
<amitoj1606@gmail.com> wrote:
> This patchset removes the driver specific msleep_interruptible_rsl Macro
> by replacing it with a direct call to msleep_interruptible.

Good catch!

You can also check if other network drivers have similar driver specific macros.
And if so, you can go for them as well.

> Amitoj Kaur Chawla (2):
>   staging: rtl8192u: ieee80211: ieee80211_softmac: Replace driver
>     specific macro msleep_interruptible_rsl
>   staging: rtl8192u: ieee80211: Remove msleep_interruptible_rsl Macro
>
>  drivers/staging/rtl8192u/ieee80211/ieee80211.h         | 2 --
>  drivers/staging/rtl8192u/ieee80211/ieee80211_softmac.c | 2 +-
>  2 files changed, 1 insertion(+), 3 deletions(-)
>
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20160213070010.GA21006%40amitoj-Inspiron-3542.
> For more options, visit https://groups.google.com/d/optout.



-- 
Vaishali

