X-GM-THRID: 6463409376999768064
X-Received: by 10.107.10.162 with SMTP id 34mr1718761iok.63.1504880223784;
        Fri, 08 Sep 2017 07:17:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.73.220 with SMTP id e89ls1323474itd.8.gmail; Fri, 08 Sep
 2017 07:17:03 -0700 (PDT)
X-Received: by 10.202.178.70 with SMTP id b67mr1707973oif.70.1504880223028;
        Fri, 08 Sep 2017 07:17:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504880222; cv=none;
        d=google.com; s=arc-20160816;
        b=HjInjI2UYhH0VX1+VIK+Z6C0a4lKiIJYC9Z8dnfWWBlSTVmykJ+P5OlynSm/j4fnux
         CTPERSa1EnUTSxGVUrqFrZsPcTcwfCvxknMwD9UJX8JP/YooZqXf2X+IiCZesuahjss0
         AJKRV0LBxIl05jXRywkt/SdXwHHJBvpTtZhydKNKJ4x3sK/ddpjVy87Mj0jyQ8vnP+PI
         0EU2HME6oiD2AuGFm7wXA4q5L0GEfyZ3kPhEZNN/xAV+F7fiT89N9FNG4C5Jxz4+hhwX
         j/8OQE9ezY3mJqLxaxuzzpUv9A+dfJFT7YxC2USEd/uf9C6tp0BZ8JZKVrlgMj01WXq6
         1JaQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=qrDrX28vRauj/ZzrUHXMqO1KURC8KMc4F9W4AUBq90M=;
        b=0OLSshn1+8eeNozbSKVZQ8IzUzEl+sPYiMgWK9QPUCP3yi/LlZfJK5Aar4iNvT7rx6
         20UnvYdpy9OKx7FLIQGWM0g4IjEseYxjcV2+rHh2Uzl9IhE3IF2FGbCsz1CjJpFlGVm8
         RFcliWD7Yf3nG8xV2Cl5VZOjvzugYuRDinSJkCnTt6MDPBcuQZ33Ti0zeeLtNuBwyQZ+
         VRmGLzDBv/xk8GhciIcT65JmR59OcAWe4I2sFPxWGLowGW0h+YSDxvIYEdbKfCnn+3JT
         fjUlkx62NkGKw9AbLqsddws9TQBBSA0dGrbrGi3U83mr6Dl+ELLZphKGmKosieWRMEvJ
         glfg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkLePgll;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <srishtishar@gmail.com>
Received: from mail-qk0-x243.google.com (mail-qk0-x243.google.com. [2607:f8b0:400d:c09::243])
        by gmr-mx.google.com with ESMTPS id l1si164269ywh.0.2017.09.08.07.17.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 07:17:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) client-ip=2607:f8b0:400d:c09::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=nkLePgll;
       spf=pass (google.com: domain of srishtishar@gmail.com designates 2607:f8b0:400d:c09::243 as permitted sender) smtp.mailfrom=srishtishar@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-qk0-x243.google.com with SMTP id i14so1594034qke.3
        for <outreachy-kernel@googlegroups.com>; Fri, 08 Sep 2017 07:17:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=qrDrX28vRauj/ZzrUHXMqO1KURC8KMc4F9W4AUBq90M=;
        b=nkLePgllTEn3fs6U9WbwC5TUISFuq5bWSM+6gPSdsTbncUYFMNG0rEIC8DJ7GuJv4R
         vZ54P2imNoDuQo7JpabObAMM7aD5Y+f3u25mq1Ktm5Tu/h6v+rdsMacCRV28x69g1lIS
         zq0RMJYIp5ZywJaMJS7Vp5AdDVzLPiMJmy/+paKlNRzOadtIeK53AHP6BU/zJxSn7FD6
         rl5Ox0INfHaRDcJkYR8sDkeL6mBzwymJ9MsAvZGSVS0ggwT8MQolzX8m3XtkvkKicPdl
         6+21Bmo9WnOutbGHH8UW/37vH7sLT5EucZu8TkDn4ank2lWrOll2xv1bvKQCT+bgEMSW
         /ReA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=qrDrX28vRauj/ZzrUHXMqO1KURC8KMc4F9W4AUBq90M=;
        b=CTs8vt23Fj6+kgd+9ncG6xiyPXhLMalcFxfwcj0DDJNsGon4wbqARj0ShC0gWGGjN9
         ZqpVG9PBASQWWGWrUznY+wxDNXOaM2LPOgAGqP44KuLIXq6hCFbNRBgqN7iTdF9lJYzH
         kVLUnR69w743Rety0bWv5/dCf/sQv9a3WbIcMRKU3KH9ivRS7Xl/Z7FR8ZJYC5Jz3O7i
         1I2vJo91yv+dVYJF9d4dA2FPrb11ymSy1ynXh/z07v7XDrxShpASWtbauYVDOrj2g/f4
         adc1/EHocFvyhucWpuIQucETkkGFvpkQH2pah0opi1Z+DSuleK+mWPQfgm1Zbl+r1EZj
         nltw==
X-Gm-Message-State: AHPjjUiyIcMMkTLJG8BUssHIQPxiuj7gEkDYOvTrwF4iM1WabMs3P2/Z
	dliczwuOSdubWQkniNvc1vs3A+1LyA==
X-Google-Smtp-Source: AOwi7QBiu+CwjkU6UxJ0uf7itNceuJmlBXWEoEVGDPFtLF0g76UqQ2C9S+Aln87fubJ6TLbLjY0cmAmg7YKTXGMWlXo=
X-Received: by 10.55.150.71 with SMTP id y68mr3896558qkd.36.1504880222578;
 Fri, 08 Sep 2017 07:17:02 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.200.55.118 with HTTP; Fri, 8 Sep 2017 07:17:02 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709081609440.3165@hadrien>
References: <1504879698-5855-1-git-send-email-srishtishar@gmail.com> <alpine.DEB.2.20.1709081609440.3165@hadrien>
From: Srishti Sharma <srishtishar@gmail.com>
Date: Fri, 8 Sep 2017 19:47:02 +0530
Message-ID: <CAB3L5oyyQFa5Z-eWzpbe6QCNF=U4W2mnkwgt3-uE46nEuPWpEg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] Staging: media: omap4iss: Use
 WARN_ON() instead of BUG_ON().
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Greg KH <gregkh@linuxfoundation.org>, laurent.pinchart@ideasonboard.com, 
	mchehab@kernel.org, linux-media@vger.kernel.org, devel@driverdev.osuosl.org, 
	Linux kernel mailing list <linux-kernel@vger.kernel.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"

On Fri, Sep 8, 2017 at 7:40 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Fri, 8 Sep 2017, Srishti Sharma wrote:
>
>> Use WARN_ON() instead of BUG_ON() to avoid crashing the kernel.
>>
>> Signed-off-by: Srishti Sharma <srishtishar@gmail.com>
>> ---
>>  drivers/staging/media/omap4iss/iss.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
>> index c26c99fd..b1036ba 100644
>> --- a/drivers/staging/media/omap4iss/iss.c
>> +++ b/drivers/staging/media/omap4iss/iss.c
>> @@ -893,7 +893,7 @@ void omap4iss_put(struct iss_device *iss)
>>               return;
>>
>>       mutex_lock(&iss->iss_mutex);
>> -     BUG_ON(iss->ref_count == 0);
>> +     WARN_ON(iss->ref_count == 0);
>>       if (--iss->ref_count == 0) {
>
> Won't this then infinite loop?

 Oh.. yes ! It would, sorry . Please drop this patch .

 Regards,
 Srishti

>
> julia
>
>>               iss_disable_interrupts(iss);
>>               /* Reset the ISS if an entity has failed to stop. This is the
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1504879698-5855-1-git-send-email-srishtishar%40gmail.com.
>> For more options, visit https://groups.google.com/d/optout.
>>

