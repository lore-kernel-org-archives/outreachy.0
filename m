X-GM-THRID: 6466263123755008000
X-Received: by 10.98.87.201 with SMTP id i70mr14492564pfj.59.1505548604960;
        Sat, 16 Sep 2017 00:56:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.169.94 with SMTP id s91ls7840884ioe.35.gmail; Sat, 16 Sep
 2017 00:56:44 -0700 (PDT)
X-Received: by 10.36.69.198 with SMTP id c67mr3522973itd.16.1505548604159;
        Sat, 16 Sep 2017 00:56:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505548604; cv=none;
        d=google.com; s=arc-20160816;
        b=s086UaYT993RfhuIoE/PNg6V3/3v1QwD+8UHYe/ZKzzopoa5lGMWBeOLnZf5Qed/iI
         vKTnvaHmJy3J6KbM6Lubu6Wvc/l/0i3N1kYl9TnQWqGzJHn6XbY87CpOKrRIDlvWx7Bf
         jYtCkgqTpMqbO7BXPUI/jgkmTzPP76hQEVNFG+gAcQTC1J+EW4nOOzkF362hKvzD+Ilk
         bNpU9DX+xwLvaHRmtP4mzAG/yA8Mv27hwb8g+SV1y96xVckX4zWsM9ec5UaR0H2zqWKQ
         5jJ7OH4K3RyAXieLweGsitIBpHYy040R85qJrcDzhS0cdy/oZhBxGZETHBGyz/GxIsjG
         q+pg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=UqGztpyP+7JAADl+y5FGrUWYFm19dj7s2GU5YDj1Q3Q=;
        b=j4QIADJ3JQFODq0oDUL5pELlYOdZYewJAg6y5OYGP9G/xU46rPlN9JKFO9mCsegNFB
         SjJWH52HhqsMCPjiMlp4jHmiy9WTnCHFBueJR84zlxvhgVquhcb5K5Sr7/QusgrOgXqV
         0oPmu0kI4zdC3oi/vXdIVDSvXuiHuWLJkLQAs2X0MioBxJoez07tKS5MJbg3zCIwl5Jn
         JVo91t5c0ycnXYWkRCktbNEr8VySyr0PLBa/ArZVITcKO24MQ55gC/9t1RBwp5zgHUvk
         em13Uja6B2sSf2QbXP55Jd1c1Ufs7xq+sJ3fRnbyNXpXH3V/0BfhGBBySpgPj2TTZr/M
         QhBw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9/+6Giy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <aastha.gupta4104@gmail.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id t10si109614vkb.12.2017.09.16.00.56.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 16 Sep 2017 00:56:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Z9/+6Giy;
       spf=pass (google.com: domain of aastha.gupta4104@gmail.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=aastha.gupta4104@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-vk0-x244.google.com with SMTP id t10so1096575vke.2
        for <outreachy-kernel@googlegroups.com>; Sat, 16 Sep 2017 00:56:44 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=UqGztpyP+7JAADl+y5FGrUWYFm19dj7s2GU5YDj1Q3Q=;
        b=Z9/+6GiyRrzp7e5A2AddjU/r4DlAPqN3YcruroGvmxWN8S1VCcMo753BPf6Ni/Zq+h
         QM9lk2WnPNGGWy8hoNHN4ySAvkRrUUvptiTEfTjPw9mxBFxLdyhvTZc9WoaOg2I9Zh2k
         T0tcKyJtbxIvBFdnywD4eP27Pf9QMaQQJEmXzMD55JmzXANW2E7XRjPyQpTjtZTLrdmR
         R37g+mGD1W9PXPB3kxfFkHi4cvLxH7SSwRAfPpe751WiFTgNOpgC268yz0k3qGkim74l
         /uRqPsOqmN9Y36gj8R+NMD6GA/Yys/hDyLINvken0pmdSvkllcV1yLK4MrTbOh95Lvj/
         FkCg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=UqGztpyP+7JAADl+y5FGrUWYFm19dj7s2GU5YDj1Q3Q=;
        b=eMf5LS81Ya0AOLtr3k8Mz3qH7z9eKKP73XAR06QxzIPy2oBuEcTjNS5dphZy+AoMc9
         9nR6vS/QbduvFWw5eggps+dSRBrLcSEGfO/brM7NreF9xS275Bt1xpF3upnVjKELVrZf
         E1H4oVCgzDGO/263zYwi+isD6/fgdnIyYuRvqjkcZoWMIch5UBgqc3NJt7G2TUTXIzCS
         7JDsqZfVjJWoVzR/RTdTBe6Ux4zTuqFgFrvuKG9Rg0fOziI8nVL5+tQRjaJyWirH6pM6
         hnZC/kLma0hZJsYn1PAm5gW/mVAUjFrx/K3/OQnI6y/z4OSDKu5a8d/2P3T/0je0hWMr
         8eGQ==
X-Gm-Message-State: AHPjjUi9amHQn5auup9RMPq7Goos9q4pXqdgAfJNgGfcZ+B82qXikspH
	z2wuPOtkBkywFwJU1PVZFbV44hMkaHBWb8vW1DL2uA==
X-Google-Smtp-Source: AOwi7QBY0XEt7+b2FMVsjK9hBfEM9QOVnDBmiGujJeqV9lZI9O+tZnu5M78Nwja74Zr4ilr4qcyGi3WGxF2Lki6hapw=
X-Received: by 10.31.141.14 with SMTP id p14mr20645754vkd.53.1505548603821;
 Sat, 16 Sep 2017 00:56:43 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.176.2.149 with HTTP; Sat, 16 Sep 2017 00:56:43 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709160948260.2943@hadrien>
References: <1505544199-13800-1-git-send-email-aastha.gupta4104@gmail.com> <alpine.DEB.2.20.1709160948260.2943@hadrien>
From: Aastha Gupta <aastha.gupta4104@gmail.com>
Date: Sat, 16 Sep 2017 13:26:43 +0530
Message-ID: <CAHXiS5-uqsTyjXv3KjnGnL9T7hKfEnMPL+RW-CXQE+U-oDFq2Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: most: hdm-usb: add comment
 for struct mutex definition
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

On Sat, Sep 16, 2017 at 1:18 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Sat, 16 Sep 2017, Aastha Gupta wrote:
>
>> This patch fixes following checkpatch.pl checks:
>> CHECK: struct mutex definition without comment
>>
>> Signed-off-by: Aastha Gupta <aastha.gupta4104@gmail.com>
>> ---
>>  drivers/staging/most/hdm-usb/hdm_usb.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/most/hdm-usb/hdm_usb.c b/drivers/staging/most/hdm-usb/hdm_usb.c
>> index 85775da..9c58598 100644
>> --- a/drivers/staging/most/hdm-usb/hdm_usb.c
>> +++ b/drivers/staging/most/hdm-usb/hdm_usb.c
>> @@ -122,7 +122,7 @@ struct most_dev {
>>       bool is_channel_healthy[MAX_NUM_ENDPOINTS];
>>       struct clear_hold_work clear_work[MAX_NUM_ENDPOINTS];
>>       struct usb_anchor *busy_urbs;
>> -     struct mutex io_mutex;
>> +     struct mutex io_mutex; /* synchronize I/O with disconnect */
>
> Why did you choose this comment?
>
> julia

The use of this struct mutex was mentioned before in the code.

Aastha
>
>>       struct timer_list link_stat_timer;
>>       struct work_struct poll_work_obj;
>>       void (*on_netinfo)(struct most_interface *, unsigned char,
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1505544199-13800-1-git-send-email-aastha.gupta4104%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

