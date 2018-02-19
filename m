X-GM-THRID: 6523432871904935936
X-Received: by 10.101.67.129 with SMTP id m1mr3088679pgp.70.1519036810874;
        Mon, 19 Feb 2018 02:40:10 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.101.96.153 with SMTP id t25ls1664412pgu.9.gmail; Mon, 19 Feb
 2018 02:40:09 -0800 (PST)
X-Google-Smtp-Source: AH8x227uvS+oWWRATQAYAWJrk6hsvsb8R3hSQEPjXvMdT5ARGIk6wvnJZYEUY6NDSKtUUPuugWdZ
X-Received: by 10.99.96.68 with SMTP id u65mr3123410pgb.52.1519036809835;
        Mon, 19 Feb 2018 02:40:09 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519036809; cv=none;
        d=google.com; s=arc-20160816;
        b=n7ByjXcWMIs37S7PiogL29JOlCjLnZw6G99PEQv6igJH0IDCBjiGgtSfHYRTqND9Ge
         0ewc9YTdOjUVeXk38UVP2Q9dy2UyimBWqIt/erEc2q+620F/+y6Kc3qr2U17MiMyYbm0
         EK0IHtHHYClA8aE1iBS4mMyNjEKR3TQ/nHoObLiJISrl1Phqtwb6cX3PzH2dXE8a0U5G
         R8odj08KksybWqEstXFa3/JfJFj/hAFATRJDXOF83PKeZ9i0aYluQoCDFMomGd/Dxc1n
         4KI4H5k1JXMxrDrzMtFMaygu/pT5X7OF0Q3nvflI88ZqgN/d0NJpeCZzx5U0KfY3Q1lf
         hkrg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=3FUlrs2GZeswRgpyD8e8KmTUXkI6+xOFp9+716xdq8o=;
        b=IWBI9+o3G/XRwYYbzc27zyR0DWa08JUUmXJt81BhXt2e+AOEK3Xd6jriWlpjNF5qvy
         TIhWDC+nc8ijmr8yMx5HY5cFgfuVc4Yre7Nf15AaD9RTZ46RjAqUWL+11yabP1470wRv
         sFm76/VjjNlR44OHUgAWsl7OSO980DQmq3EHwnylx4fTJW2oK+02p68FwSdKxhYSBtp+
         eQSKeInHaAuzVhjcxtI+ExFtUXmzHpB+qpebHuQ9Z5j6hQJJ1XZ5pzEVy7fkr5dQRFR0
         6zGVJ/w1Oj4QUuqpKfaryQrc1RUZgUzOrnOuk5wFvTjJQ8R4dldOKIAwOu16hS6/G+SD
         pQNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.89 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp89.iad3a.emailsrvr.com (smtp89.iad3a.emailsrvr.com. [173.203.187.89])
        by gmr-mx.google.com with ESMTPS id m193si333006pga.5.2018.02.19.02.40.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 02:40:09 -0800 (PST)
Received-SPF: neutral (google.com: 173.203.187.89 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=173.203.187.89;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.89 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from smtp20.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
	by smtp20.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id ED4E324A64;
	Mon, 19 Feb 2018 05:40:08 -0500 (EST)
X-Auth-ID: siepeng@mev.co.uk
Received: by smtp20.relay.iad3a.emailsrvr.com (Authenticated sender: siepeng-AT-mev.co.uk) with ESMTPSA id 6A22524A77;
	Mon, 19 Feb 2018 05:40:08 -0500 (EST)
X-Sender-Id: siepeng@mev.co.uk
Received: from [10.0.0.185] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 19 Feb 2018 05:40:08 -0500
Subject: Re: [PATCH v2] staging: comedi: Remove a newline inside a dereference
To: Eisha Chen-yen-su <chenyensu0@gmail.com>, gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com, outreachy-kernel@googlegroups.com
References: <20180217081047.5763-1-chenyensu0@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <86b6dad5-922f-6d5f-db1f-f401823fefea@mev.co.uk>
Date: Mon, 19 Feb 2018 10:40:07 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180217081047.5763-1-chenyensu0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 17/02/18 08:10, Eisha Chen-yen-su wrote:
> This patch fixes the checkpatch.pl warning:
> 
> WARNING: Avoid multiple line dereference - prefer 'devpriv->ao_buffer_bus_addr[i]'
> 
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
> Changes in v2:
>    - Change the commit log to mention what I have done.
>    - Remove the unnecessary cited lines from checkpatch inside the commit body.
> 
>   drivers/staging/comedi/drivers/cb_pcidas64.c | 3 +--
>   1 file changed, 1 insertion(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/comedi/drivers/cb_pcidas64.c b/drivers/staging/comedi/drivers/cb_pcidas64.c
> index b657beedd5ff..eea44435a2aa 100644
> --- a/drivers/staging/comedi/drivers/cb_pcidas64.c
> +++ b/drivers/staging/comedi/drivers/cb_pcidas64.c
> @@ -1490,8 +1490,7 @@ static int alloc_and_init_dma_members(struct comedi_device *dev)
>   			devpriv->ao_buffer[i] =
>   				dma_alloc_coherent(&pcidev->dev,
>   						   DMA_BUFFER_SIZE,
> -						   &devpriv->
> -						   ao_buffer_bus_addr[i],
> +						   &devpriv->ao_buffer_bus_addr[i],
>   						   GFP_KERNEL);

That makes the line go over 80 columns.  You could avoid that by moving 
the whole dma_alloc_coherent() call back 4 columns (so the amount of 
indentation after the line break following the '=' is reduced from 8 to 
4).  You could even move it back by 8 columns (so the amount of 
indentation would be 0), but I think it looks better with *some* 
indentation.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

