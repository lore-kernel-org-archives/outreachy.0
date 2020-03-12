X-GM-THRID: 6802850530437627904
X-Received: by 2002:a17:90b:19ca:: with SMTP id nm10mr4022789pjb.157.1584018566572;
        Thu, 12 Mar 2020 06:09:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:7744:: with SMTP id s65ls2471611pgc.3.gmail; Thu, 12 Mar
 2020 06:09:25 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtJrWzkGF+5pWY0oYnWVha0b2gFcdFjs2hDDgX+Fz2WUj7MGa7ZeUuhqAc60YGesawtlAYD
X-Received: by 2002:a65:6414:: with SMTP id a20mr8066649pgv.48.1584018564928;
        Thu, 12 Mar 2020 06:09:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584018564; cv=none;
        d=google.com; s=arc-20160816;
        b=xObVqnLcZCdy7OFJPyERSjGvgqPFkwTIICu85R5hZemZyPdXosXsInzWbaBA+VtdGk
         XOSIqAMwrW/2ljcZeBf6+N7g20AUfhZze4SKo1LnsndTkF0wKQSslLfr4kFuFE3fAMKi
         FztLWNBFhBBfNJANElj+nXw8bZCeJ8D1xlOupqTamNHGB+7ThjDs/YBxU9b/BycgUO71
         TvjKljwOeKZGNlJjCjWsUtlYu+fRrm55IiNoDsBVynhvxaw3LfoH7fC0oBxagx4SI8VK
         PU52FDBydjNnQoNIzGjiiNacab0LGBN4oss0kUxdUua2rfVZucJZf9wKWTvfVjoQSWB2
         enZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=message-id:from:cc:to:subject:content-transfer-encoding
         :mime-version:references:in-reply-to:user-agent:date:dkim-signature;
        bh=rUe24luD5QHEIuNQx//i9Eg2GI3DU4SG0abhzfELmQA=;
        b=1DgcrPRv2T1sow3EVLZDsYw3cIQ4Z2QwaqCi4KNH/c8XWZjWq5P/RuI8BnQPNvh3pm
         qCOAMiU8unmIXC2MphTqx4LYBc2RkO2PfjN9muLEEMJNvhi7eJ7XYS35rIx4Ids9Zbrv
         1wvILoTauif1MBehoCbyoaOFP9gipg+j30FmQ/yPLLbeV4HH1G+yoolYNj86FdN4yykx
         6lvLgdiILehM0nQCjYetrHYMF9r/KkcC6yhRRM448ouEsPP4vu0cOhTHx17FMfvHG5mA
         MzRtFUL+oPI4z6Gs9IOAzFO9qHj2UER0Qf4ESSG+kRF6bmcUHeZmIrTXPikU4aCI0WxH
         7ddA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JsxlvDOR;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from mail-pg1-x541.google.com (mail-pg1-x541.google.com. [2607:f8b0:4864:20::541])
        by gmr-mx.google.com with ESMTPS id c10si520922pjo.2.2020.03.12.06.09.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Thu, 12 Mar 2020 06:09:24 -0700 (PDT)
Received-SPF: pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) client-ip=2607:f8b0:4864:20::541;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=JsxlvDOR;
       spf=pass (google.com: domain of payalskshirsagar1234@gmail.com designates 2607:f8b0:4864:20::541 as permitted sender) smtp.mailfrom=payalskshirsagar1234@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pg1-x541.google.com with SMTP id h8so3058401pgs.9
        for <outreachy-kernel@googlegroups.com>; Thu, 12 Mar 2020 06:09:24 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:user-agent:in-reply-to:references:mime-version
         :content-transfer-encoding:subject:to:cc:from:message-id;
        bh=rUe24luD5QHEIuNQx//i9Eg2GI3DU4SG0abhzfELmQA=;
        b=JsxlvDORML/QcwWEHF3jBaib2bEokZsraP9f2a5219h/G0donUC8dTteVHV3A9WgaK
         PdYnJawCasGe32q/gQ2BFeOhbueVZDqWgRIkRoVmC7DQFWWzlY983zEhJzYzjKne/EV/
         EZfKpOvmk68bXlJWanYpaYjJsLAgrgjixsl0fc+R0gGVJaq0ouECS+zYWMdbcuxzaJpY
         ilMyyY8kAPYPzLM5JPe9Qynkmq7uuIJPIkr4YiLJcoklUPrfOroYaXGwRjCZfOHssfv5
         OmLUJBH48ZSmm7RPI7e5xEVm2kPb+CX5nysIPfxlbMN2qi+kU6+3ADvU3oZoDMk822nD
         lTQA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:user-agent:in-reply-to:references
         :mime-version:content-transfer-encoding:subject:to:cc:from
         :message-id;
        bh=rUe24luD5QHEIuNQx//i9Eg2GI3DU4SG0abhzfELmQA=;
        b=DfUwj/4ytOGuWm4CAjp/bz7xAqVTxpAfC6azdis6u0UbvA+jHTe/t7TUEkIRhXiEZR
         CbE2s52wvVPQH3dT9LxelApEqr5RIdOj66R9UB+RkfYFQROheVxOR8KAqX8APkdf8DNP
         wKBL93HxXbSPLqEav0Aq0oiMJYIvoNnBl9uMoL7PPSJPRGlGQmYFV1CuxT0/yN8MQ1SN
         s0/ODPwWC5HDvCjxkQZU0JHdGyChzDsPxnicv/InM3DS1ZpY8s0kbvt0AM0refiJZlBt
         /Gkz2cDMs/GC+e4GYMCNUJzH/OZSOGzopsVZLZlI8Z4yyzKLlsCGVRk6SbkN3NTBWwlD
         gHoA==
X-Gm-Message-State: ANhLgQ3bb0VV+DcnlG6NFjT5tlBj4d2er0LvlG1O4j24xHhrM03VI6Ci
	W2tTXRHeT3gUC9HXto32CZs=
X-Received: by 2002:a63:8042:: with SMTP id j63mr7586062pgd.224.1584018564464;
        Thu, 12 Mar 2020 06:09:24 -0700 (PDT)
Return-Path: <payalskshirsagar1234@gmail.com>
Received: from ?IPv6:2409:4042:221f:a089::232d:c0a5? ([2409:4042:221f:a089::232d:c0a5])
        by smtp.gmail.com with ESMTPSA id x197sm5977307pfc.99.2020.03.12.06.09.22
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 12 Mar 2020 06:09:23 -0700 (PDT)
Date: Thu, 12 Mar 2020 18:39:17 +0530
User-Agent: K-9 Mail for Android
In-Reply-To: <alpine.DEB.2.21.2003121358500.2418@hadrien>
References: <20200311073418.7476-1-payalskshirsagar1234@gmail.com> <20200312082739.GA54601@kroah.com> <13eb3ca2d7db751231b3a755e1609e385ce3c36a.camel@gmail.com> <alpine.DEB.2.21.2003121335310.2418@hadrien> <53433b4e1b0e28e1ebf25f8bb5f395f6880f39ba.camel@gmail.com> <alpine.DEB.2.21.2003121358500.2418@hadrien>
MIME-Version: 1.0
Content-Type: text/plain;
 charset=utf-8
Content-Transfer-Encoding: quoted-printable
Subject: Re: [PATCH v2] [Outreachy kernel] staging: rtl8188eu: hal: remove an unneeded variable
To: Julia Lawall <julia.lawall@inria.fr>
CC: Greg KH <gregkh@linuxfoundation.org>,outreachy-kernel@googlegroups.com
From: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Message-ID: <B0606EBC-3845-44BE-9D42-EEC3AA6FBB11@gmail.com>



On March 12, 2020 6:29:51 PM GMT+05:30, Julia Lawall <julia=2Elawall@inria=
=2Efr> wrote:
>
>> I deleted the declaration because it will be of no use if I delete
>> other two lines which is the only use of that variable=2E
>> I am Extremly sorry, but I am not understanding what need to be done=2E
>
>As far as I could see there was another use of the variable in an if
>branch=2E  Those can be easy to overlook=2E  Just be sure that you get a =
=2Eo
>file after compiling the code that you changed and you should be mostly
>ok=2E
>

Okay, Thank You:)

>julia

