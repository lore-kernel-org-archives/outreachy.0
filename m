X-GM-THRID: 6616381756005154816
X-Received: by 2002:ac8:6993:: with SMTP id o19-v6mr2492904qtq.35.1540552988815;
        Fri, 26 Oct 2018 04:23:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b892:: with SMTP id y18ls586433qvf.6.gmail; Fri, 26 Oct
 2018 04:23:08 -0700 (PDT)
X-Received: by 2002:a0c:b503:: with SMTP id d3-v6mr2550193qve.28.1540552988270;
        Fri, 26 Oct 2018 04:23:08 -0700 (PDT)
Received: by 2002:a37:7783:0:0:0:0:0 with SMTP id s125-v6msqkc;
        Fri, 26 Oct 2018 03:34:36 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dD1rN1lpbah1/BrBaREBpJwbSQP2tskpOJGTimwJSLJJDocHRxXlNglsu89HVAAqGb8Bq3
X-Received: by 2002:a17:906:49d4:: with SMTP id w20-v6mr375187ejv.9.1540550075928;
        Fri, 26 Oct 2018 03:34:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540550075; cv=none;
        d=google.com; s=arc-20160816;
        b=jy+oDXZ7emKwSlsKDsmxobPGi27oSizdwLxLSVmyWy3m4WGAc5xKBr2hi/s3HbzGp2
         WHhXS6ihx78HZ9iYG2WJCc28xxOg3LUFgvcG84+sVUsa7XAmNp7ArJq59Rpii4tHpsyF
         sUsBbvsumBVQIh6mdkYgNYDEhXzywERFPyHdrVxiBKZinizJYajyrfqs5Hebsmr7NScQ
         Nx5qJLnJtrDFsMzJ3YHo6Gzl2eQvmwfRpaNpst6cLHifn0IAggW/d5+67hSBNqKijpoS
         0sGtNne9bBNh2Ml08UtXh/ChE6HU7PXgPsVeVo7nM2mdpvneQ94wSI5gjmx34azrxK1R
         sScA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=XYGUc1ATUYL8gpeUhaZaD4K0YAQd36Xi99NprINFxPs=;
        b=xW1qW58KRAGD72aPlbTyyN2fLCLtM6BrbgMrQdfrhj9iSTBol2vrmJT7yQ2xu2ItYb
         fg03uNlMi+3IfnoIQ2SMMsJqLHAv0ZhLEZblF904HFkZqDqef2Te8EiXaM/32YjVZ1Y2
         1hVjUXfX11sAnPuPqiuSW1WyRvybFN/laRaLqwTLxjgYvn1Ib9jmWeHDbqEiJQe6j/e3
         2ttHUwXU+7h+aUsP7+iLDgGfD6vSpkoKTem8XjrIgZCMAc/aH6CwZA06MQzhJfIXhFYo
         hrx4bFyHcK0jmksqsG3sqbBynqk5iBTNeeY8JqpDUPSqBqxPaVvAorOeRc22xu2N4lEY
         HSlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.67 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <hdegoede@redhat.com>
Received: from mail-ed1-f67.google.com (mail-ed1-f67.google.com. [209.85.208.67])
        by gmr-mx.google.com with ESMTPS id y16-v6si483364eds.0.2018.10.26.03.34.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 03:34:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.67 as permitted sender) client-ip=209.85.208.67;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.67 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: by mail-ed1-f67.google.com with SMTP id x31-v6so843899edd.8
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 03:34:35 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=XYGUc1ATUYL8gpeUhaZaD4K0YAQd36Xi99NprINFxPs=;
        b=MkJ2ISNJalagcjUcQGgdXyfecz3Yy6sUScDhw1WY90y1LOwwRHEcA8zPf0Yj3G1Pet
         WzhmrtNGjmFdk69Cy5w3/XUi9Osb4ovWG+hh3sigFTGS6h0lBPypFUG63xCAIUSomLBt
         HXIJFfByAuObsQhoGPDA5QI6w/Aj4TnciEZ0b/ljErB9VHaK7BvW4BY+tq2pCmR/a++j
         oEMnzBX8PBlX6HpqiaiMG1rGoejdd2Ol0Hr2ka3/7heTzGh4B530P9nUP8INA7kAgzMO
         hpVOQt2D9ku6tLnxaYgdtyYXVpnSPNtwod7Ph/DHYAJKG3yeyIEDV0IhlMf3ulOkUUkA
         ZBpA==
X-Gm-Message-State: AGRZ1gKpqj7CfcVPsSCg6B7PnspvHA2roBoEuiicioxVU5K2BjuBUDjH
	pHt9bUC0wTIQBsGYjNlaejhyD8WYl3Y=
X-Received: by 2002:a50:af22:: with SMTP id g31-v6mr2467737edd.106.1540550075282;
        Fri, 26 Oct 2018 03:34:35 -0700 (PDT)
Return-Path: <hdegoede@redhat.com>
Received: from shalem.localdomain (546A5441.cm-12-3b.dynamic.ziggo.nl. [84.106.84.65])
        by smtp.gmail.com with ESMTPSA id b25-v6sm2210655ejo.74.2018.10.26.03.34.34
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 03:34:34 -0700 (PDT)
Subject: Re: [PATCH 0/2] staging: vboxvideo: Remove chekpatch issues
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1540490962.git.shayenneluzmoura@gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <e59aeb92-b2f9-ae8d-f910-4410ba9c732a@redhat.com>
Date: Fri, 26 Oct 2018 12:34:33 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <cover.1540490962.git.shayenneluzmoura@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 25-10-18 21:40, Shayenne da Luz Moura wrote:
> This series cleans the following checkpatch.pl issues:
> 
> CHECK: Prefer kernel type 'u32' over 'uint32_t'
> CHECK: Avoid using bool structure members because of possible alignment issues
> 
> Shayenne da Luz Moura (2):
>    staging: vboxvideo: Change uint32_t to u32
>    staging: vboxvideo: Use unsigned int instead bool

Why am I receiving only the cover letter of this series? Please resend
so that I get all the patches.

Also at least the first patch is wrong, the drm headers use uint32_t
in the prototype definition of the callback functions we are defining,
so the vboxvideo code should use the same even if the compiler does not
warn about the callback implementation having different parameter types
in this case.

Regards,

Hans




> 
>   drivers/staging/vboxvideo/vbox_drv.h        | 14 +++++++-------
>   drivers/staging/vboxvideo/vbox_mode.c       |  2 +-
>   drivers/staging/vboxvideo/vboxvideo_guest.h |  2 +-
>   3 files changed, 9 insertions(+), 9 deletions(-)
> 

