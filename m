X-GM-THRID: 6808244889450446848
X-Received: by 2002:a05:620a:12fc:: with SMTP id f28mr5351020qkl.31.1585176696401;
        Wed, 25 Mar 2020 15:51:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:1971:: with SMTP id g46ls1425134qtk.7.gmail; Wed, 25 Mar
 2020 15:51:35 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsVtKb+g2RV7iMIja/R9fIb1J1b8SfUSf7yzyyPyp2iS9YHAnVhdHT07SxosKwFG/9MPhKC
X-Received: by 2002:ac8:3543:: with SMTP id z3mr5255483qtb.214.1585176695231;
        Wed, 25 Mar 2020 15:51:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585176695; cv=none;
        d=google.com; s=arc-20160816;
        b=ed4Jo+wxmNKICrbzjcROgp4PyjhtxGnAZfWtZ2pcqzc7d+tcOL2fY+cIzg+7siFHCn
         fVBw4cKu+X6gjcVNdBJoaGD4VGIlYxK9zAM2URqgN1jaQG4tosygDm4ch9h+gPUYjCGV
         QxxZE7zBSpUVRwKHWcgzuj8afoBIQwNWoAsNmAwio9Z9PLvlZ7cOVQOPtTHc12qZC+i4
         TqC9IB3vWF/dg9dvGuhS4hMGpZT3ICPwdJ3fc/w1HjSTz0g6pqbTP5FKGhUm3kPsHVCo
         Fh0UNQEBlOo5oZJV3a52in5T1Dv6GLqiarHXNU2hqBJ0ZTBc0t1qJIxPq4It7AStgC8n
         zt0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature:dkim-filter;
        bh=BzdHH+13YMAkSiadH/JqQ++WFtXQZS/n4kHHOqncKJc=;
        b=FNtMhdO5dDZXZkiCnzikP/eezDEy9yKpQNPxj5odDetS19aKvtFVCrfAgoC58fh4id
         owAP0Ld0gAPY7FC9Wi6NFK92ydE7nnJ+e+NKD7sHHtXPRFur5cC8pMp/mq+7tVmih/Fr
         Wciu2WVqwCcg/sp4NvGoDFdHTaFSFPh6LHGt2wqzy0QRuACJUI8nWYEwBMG3qJqmbkc4
         zijPZzOMIdf8+0KwJbclRXpEZ7w03E7xUXX9/P/4IyjJYQ3OLUmtGmkJ47pQr5hOjzt1
         r34m7nIzi4+UjQ6zme/YoA1cni9ZLH+WnsReY9hQDJBc2yGd548pJDAQwIt2Ww0CUDko
         kGVg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=HyCIDKpb;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Return-Path: <nramas@linux.microsoft.com>
Received: from linux.microsoft.com (linux.microsoft.com. [13.77.154.182])
        by gmr-mx.google.com with ESMTP id e89si59223qtd.3.2020.03.25.15.51.35
        for <outreachy-kernel@googlegroups.com>;
        Wed, 25 Mar 2020 15:51:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) client-ip=13.77.154.182;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linux.microsoft.com header.s=default header.b=HyCIDKpb;
       spf=pass (google.com: domain of nramas@linux.microsoft.com designates 13.77.154.182 as permitted sender) smtp.mailfrom=nramas@linux.microsoft.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linux.microsoft.com
Received: from [192.168.0.109] (c-73-42-176-67.hsd1.wa.comcast.net [73.42.176.67])
	by linux.microsoft.com (Postfix) with ESMTPSA id 2A7F320B4737;
	Wed, 25 Mar 2020 15:51:34 -0700 (PDT)
DKIM-Filter: OpenDKIM Filter v2.11.0 linux.microsoft.com 2A7F320B4737
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=linux.microsoft.com;
	s=default; t=1585176694;
	bh=BzdHH+13YMAkSiadH/JqQ++WFtXQZS/n4kHHOqncKJc=;
	h=Subject:To:Cc:References:From:Date:In-Reply-To:From;
	b=HyCIDKpbDS47SEz0s6bWYu2oXpnivchsso4T5ia2shpNVGdO+qGTwrZ1SIBM3qGYQ
	 HBnJGafi90HefCk8OA42YQpLkSdPLlR3hJL4W+5vwt8eC5atkqYh+O7vl2oShh+hPk
	 D/qP3SVw21Hpl2dqxBXbwBaRtrGZbJNyl3dZXz78=
Subject: Re: [Outreachy kernel] [PATCH v2] staging: octeon-usb: line over 80
 characters
To: Gokce Kuler <gokcekuler@gmail.com>, outreachy-kernel@googlegroups.com
Cc: gregkh@linuxfoundation.org
References: <20200325223155.GA6515@siyah2>
From: Lakshmi Ramasubramanian <nramas@linux.microsoft.com>
Message-ID: <727b4f05-6f14-7397-513d-d6d4d2364e47@linux.microsoft.com>
Date: Wed, 25 Mar 2020 15:51:33 -0700
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.4.1
MIME-Version: 1.0
In-Reply-To: <20200325223155.GA6515@siyah2>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

On 3/25/20 3:31 PM, Gokce Kuler wrote:

> @@ -2641,9 +2641,9 @@ static int cvmx_usb_poll_channel(struct octeon_hcd *usb, int channel)
>   						     hcintmsk.u32);
>   				usbc_hcchar.s.chdis = 1;
>   				cvmx_usb_write_csr32(usb,
> -						     CVMX_USBCX_HCCHARX(
> -						     channel, usb->index),
> -						     usbc_hcchar.u32);
> +						CVMX_USBCX_HCCHARX(channel,
> +						       	usb->index),
> +						usbc_hcchar.u32);

This v2 patch is a diff from the v1. Right?
You should fix the v1 commit and generate the patch so that the diff is 
from the original code (I mean, the one prior to v1 change).

Could you please check?

Also, am not able to tell from the diff - please make sure the 
parameters are aligned with the previous line.

     cvmx_usb_write_csr32(usb,
                          CVMX_USBCX_HCCHARX(channel,
                                             usb->index),
                          usbc_hcchar.u32);

If I am not mistaken, that's the coding style followed now.

thanks,
  -lakshmi



