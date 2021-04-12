X-GM-THRID: 6950201228210995200
X-Received: by 2002:a63:3244:: with SMTP id y65mr26952212pgy.197.1618220465631;
        Mon, 12 Apr 2021 02:41:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:90a:c70c:: with SMTP id o12ls3389777pjt.3.canary-gmail;
 Mon, 12 Apr 2021 02:41:04 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwfq0NcWlfTOJ27fz651Pd77l9AJRLRSklLDLbzRwDUpZP7ijl7mgDgEZb2cSO1j/IC3yfw
X-Received: by 2002:a17:902:d2ce:b029:eb:364:a2a0 with SMTP id n14-20020a170902d2ceb02900eb0364a2a0mr3102093plc.0.1618220464253;
        Mon, 12 Apr 2021 02:41:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618220464; cv=none;
        d=google.com; s=arc-20160816;
        b=JQbCXCOL4odSgNxG3BrhYfORCk8O6h+39RErLBWp/MqJldfQgSHevKzZB1aswl0bs0
         53HilWA9nD/4b5x/9dFUwfd2VVpRpqoU2rMl0Tl81o1/bgCEJDOA0VUwOXPd2owK+oFa
         eYtuO+dTQi0fmT5GyZtN9eunClNn5uUCHzQYOnc8nx1NBxH+gAkkVTKyoTnfd38zswf/
         DJjhAPamkBVuDIRpmjtmxKDKH5SS05Fo3HFcHFO8e6fOn52EyDbFiTWmFQG6XsRxRJn8
         o2jwYw+Hb+nB84T/saTs5LjOOO84fEl4EEiyOPytP0Id3CYpute/qcu0aSStW4I43UC7
         XjZQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:organization:from:references:cc:to
         :subject:dkim-signature;
        bh=wPQyNvybnIkp4uiNXfNMELmxDgQV5qQb8uzwF7DMhCU=;
        b=egsLe9L8GD014Y5CbRbRMPUCccB64ZSp7Ic2O/5AAk4hsXlH70LKsbgybaLsQRwoF9
         sqwFIjPFF2VMAl3YjcTIssnlpPDc882xDdMET6S2X9/yx2FEdZwEAYYvEwhKij1lyetH
         Rm/OAKDqZMDPS39787p6uPe0By91Gc4AmlJ4AmhWTvR43A2YUzHj/YqH9eqmXk6ql64w
         6bRmfzNkMyAqAA+kO5VPtQ6HPXdSexEFgHLGcgBAbs1sNpmCs53ybBhLC2cVYKbAn/di
         LkB+T/ENk/zoQZtEP5+g1bzM5hO+vWJqpP+5JIKuxNY/6MFgCRlsAPC+DdcgTUGp4hQT
         e2zQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=EwyKCaMQ;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.85 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp85.iad3a.emailsrvr.com (smtp85.iad3a.emailsrvr.com. [173.203.187.85])
        by gmr-mx.google.com with ESMTPS id u21si728973pfc.0.2021.04.12.02.41.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 12 Apr 2021 02:41:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.85 as permitted sender) client-ip=173.203.187.85;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@mev.co.uk header.s=20190130-41we5z8j header.b=EwyKCaMQ;
       spf=pass (google.com: domain of abbotti@mev.co.uk designates 173.203.187.85 as permitted sender) smtp.mailfrom=abbotti@mev.co.uk
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=mev.co.uk;
	s=20190130-41we5z8j; t=1618220463;
	bh=Ua6N2tbUCxSpcHBTulhre/77HwGvuvWxXpGJ7l1JK0s=;
	h=Subject:To:From:Date:From;
	b=EwyKCaMQ7nsqi8IM6thFgUadq0MOtx5aR/cGtnz7gy5EGf5znd6l8ELBoiI+hJS2g
	 kIEPeOMbFi9fKpMQdxgb+NAYtcmszCNrntXmZOqmoeJ7z1ljpFrN7V/LNwpCf3c+xL
	 CdbZkByEMLbgJ7420cnfFn3J356X/TynaqRM6RgU=
X-Auth-ID: abbotti@mev.co.uk
Received: by smtp19.relay.iad3a.emailsrvr.com (Authenticated sender: abbotti-AT-mev.co.uk) with ESMTPSA id 6CEDE4FB0;
	Mon, 12 Apr 2021 05:41:02 -0400 (EDT)
Subject: Re: [PATCH] Staging: Remove line to fix checkpatch error
To: tawahpeggy <tawahpeggy98@gmail.com>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 outreachy-kernel@googlegroups.com
Cc: linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org
References: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
From: Ian Abbott <abbotti@mev.co.uk>
Organization: MEV Ltd.
Message-ID: <25a33398-483e-931c-f023-61bac56c72ef@mev.co.uk>
Date: Mon, 12 Apr 2021 10:41:01 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <20210411204933.GA3524@peggy-Lenovo-V130-15IKB>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit
X-Classification-ID: 508ff95b-300f-4d57-ad4a-8069f2518623-1-1

On 11/04/2021 21:49, tawahpeggy wrote:
> remove one empty line.CHECK: Please don't use multiple blank lines
> 
> Signed-off-by: tawahpeggy <tawahpeggy98@gmail.com>
> 
> ---
>   drivers/staging/comedi/comedi_pcmcia.mod.c | 1 -
>   1 file changed, 0 insertion(+), 1 deletion(-)
>   create mode 100644 drivers/staging/comedi/comedi_pcmcia.mod.c
> 
> diff --git a/drivers/staging/comedi/comedi_pcmcia.mod.c b/drivers/staging/comedi/comedi_pcmcia.mod.c
> index 0904b8765afs96..3984db1a39c8
> --- /dev/null
> +++ b/drivers/staging/comedi/comedi_pcmcia.mod.c

The .mod.c files are not really part of the Linux kernel source code. 
They are generated during the kernel build process.  There is no point 
checking them with checkpatch.pl.  If you are adding them to your git 
repository, then you are doing something wrong.

-- 
-=( Ian Abbott <abbotti@mev.co.uk> || MEV Ltd. is a company  )=-
-=( registered in England & Wales.  Regd. number: 02862268.  )=-
-=( Regd. addr.: S11 & 12 Building 67, Europa Business Park, )=-
-=( Bird Hall Lane, STOCKPORT, SK3 0XA, UK. || www.mev.co.uk )=-

