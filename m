Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.remote-ip=209.85.210.50
ARC-Seal: i=1; d=subspace.kernel.org; s=arc20261015; a=rsa-sha256; cv=none;
	t=1792759738;
	b=I4ts6rlDlBhvMd3NYfyK2l6k1XZK7yR0h/sUmiT1XrcFddTIjJbh42fMPF4LTRQLUTpB
	 qLWjHNGV5Pfe9TUiyYzwSicDc9Zk4tXkw0Xvqa7/T0oQrolceTOeQ3u2xWKQX9AYvjuip
	 9iUUS2Pcw5H3aLV3TKElHA5BYPpDJmwV1LNrR8ZujJExkb8lzFxhSnAM5/xP4O836m8Bb
	 p+uyxIrE7h9O2X3ShypACFOvqJUy80Je9h/UFbXKD1et1hQMznTIwsg7lg0N3F310k7/7
	 GfRKQHXlCHu3zZgHOLKseX0D+FtVVG7eh2/DkcX1uPJL5S8VN+5j7BxQ+d9BESs6+Dg==
ARC-Message-Signature: i=1; d=subspace.kernel.org; s=arc20261015;
	a=rsa-sha256; c=relaxed/relaxed; t=1792759738;
	h=DMARC-Filter:Received:DKIM-Signature:X-Google-DKIM-Signature:
	 X-Forwarded-Encrypted:X-Gm-Message-State:X-Gm-Gg:X-Received:Received:
	 Message-ID:Date:MIME-Version:User-Agent:Subject:To:Cc:References:
	 Content-Language:From:In-Reply-To:Content-Type:
	 Content-Transfer-Encoding;
	bh=AauMIhJF1QGD9945xyHgO/hlfJd5Li+gb8s1bXigGyc=;
	b=L+a9OFcbm1/b5Yb/+7/x1xraK1g9tRWcU2iHX6Sjlsa5g9uYqR4pbqVfSWpUV/PGdslh
	 kHwGW3BVr/7Hdxb9GCHGeiw5Fe4HteG7QjDqKfQqK2yzU50ncLth/DqCQgQ6zG4VP3NPJ
	 366VCBYYF7N2ej5s8JvQACFe0G3QejkONh/J3t/MFnS/RBifY+GOUKlE0peA+KJ2HL/iQ
	 cekEAFUDgkLDv1+l+cQi4kmEamtrjh43Ex/JOpP6g6TPiGSj/ZJ+XWTFDY1szs6TdaiiJ
	 VP+R7/sfwK86HOP6EYF5XrQVEKJIH7007+AO34DslEqhmoadLABnOcbCs5r6ouc7Iow==
ARC-Authentication-Results: i=1; smtp.subspace.kernel.org; 
	dmarc=pass header.from=riscstar.com;
	spf=pass smtp.mailfrom=riscstar.com;
	dkim=pass header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=BaQM0NBu;
	arc=none smtp.remote-ip=209.85.210.50
Received: from mail-ot1-f50.google.com (mail-ot1-f50.google.com [209.85.210.50])
	(using TLSv1.3 with cipher TLS_AES_128_GCM_SHA256 (128/128 bits)
	 key-exchange X25519 server-signature ECDSA (prime256v1) server-digest SHA256)
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35690606A31A
	for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 12:48:57 +0000 (UTC)
DMARC-Filter: OpenDMARC Filter v1.4.2 smtp.subspace.kernel.org 35690606A31A
Authentication-Results: smtp.subspace.kernel.org; dmarc=pass (p=none dis=none) header.from=riscstar.com
Authentication-Results: smtp.subspace.kernel.org; spf=pass smtp.mailfrom=riscstar.com
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key, unprotected) header.d=riscstar-com.20251104.gappssmtp.com header.i=@riscstar-com.20251104.gappssmtp.com header.a=rsa-sha256 header.s=20251104 header.b=BaQM0NBu
Received: by mail-ot1-f50.google.com with SMTP id 46e09a7af769-84e513874f8so483063a34.2
        for <outreachy@lists.linux.dev>; Fri, 23 Oct 2026 05:48:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=riscstar-com.20251104.gappssmtp.com; s=20251104; t=1792759736; x=1793364536; darn=lists.linux.dev;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:from:to:cc:subject:date:message-id:reply-to
         :content-type;
        bh=AauMIhJF1QGD9945xyHgO/hlfJd5Li+gb8s1bXigGyc=;
        b=BaQM0NBuFlAUgCaiWa6udwcOV4/krxkJt8kb4AaA8u7PPB3rVSwOPhnnxlsVV18m11
         U+WQTE6Zf025qe7FoHItRTX1OQm61R8yRmweODuDJsuDOHbcQmYhcgBTpRBftTwnWpEM
         QSWIt13+SfsFDcH/uS78qFIDGdGOhK3YimDvNJnhC2SWIj2M7+Ua4YBVu1f5mc1Dc+QI
         wZTA1zbk+8pnriixs/nXazF9rqQKIVSbtwx08cssjTEM/S+aRyOTfg9+jYWnBoArJGRL
         QfeX68QFfmED0ksMaCFQ4dTWDFVS4WIUvJkd1uLjWBVvXRlM3vyKAvjOdfEsnIoF1BRG
         v2uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20260707; t=1792759736; x=1793364536;
        h=content-transfer-encoding:content-type:in-reply-to:from
         :content-language:references:cc:to:subject:user-agent:mime-version
         :date:message-id:x-gm-gg:x-gm-message-state:from:to:cc:subject:date
         :message-id:reply-to:content-type;
        bh=AauMIhJF1QGD9945xyHgO/hlfJd5Li+gb8s1bXigGyc=;
        b=xdbFpgtVkrCqd1qtVaeYxOrmbi8oiazOHETr11us+3W8Um3uNDrPvZ4KVamxlPr12A
         /Q+Ib7NGnMYC1F/FiurUy/6W1WNvv4mXpBugI+ci9fmkRq//FSrkHauChj+or8Z/Dqa/
         8FzzUfsaYfiazQ64rT4ZJf5osZ3oGV0rs2KjYMCDeRxS24grqu0jsEPFPPrgNhd+tlUS
         xnW0OMGWeaSokYYIMdCRIag0aQIOlsgfghyPV9c9BTgOtUmp/UlKM5DdRQaAXNJstNhZ
         cQA4cM4DULEvEJmWQJubg2LGfUkIyOQ6XIFvHs9ADz+QXa53jhgPdZGtJ79V9Kgws67s
         IvYQ==
X-Forwarded-Encrypted: i=1; AKwUvBwxs3wOs6ALBzxsJ1d1LN2YRN8DWcgsOv+qwzqhQa7XBH8F0D4BZCPWa+QbUOfT0naqJLHnjN6BP6s=@lists.linux.dev
X-Gm-Message-State: AFq9FYK45M4Q7SIH5cY2RYJNtH3dBZIxzVGSGjvHYj9UUn3ylwYOhGK7
	mTXVCDLunOBrv+uqRV8cpDBczQCCgsKJL5RWjYsKrH4Jyd0UcAEfITem1QwNHylrgr4=
X-Gm-Gg: AYBFou38qX2rIH1VwxtjmcRi80GuuXtJAer8VgCYAEzvjxzTFZuYbSb24yF0pyi1nGd
	Ahx70sAX78ic1+htysXZbjHVa9g3dG4sQzOZAXAAMG1MHCSnl40ciSMdzElReg2tfaIjUjKJDx2
	pYlIEsrenZlbtrabw6ZPyTdGuPtCTksZA2jiyielhtqk799UbGVSUCHTgCM+ukPd38QIQKP+re0
	APkU2awYNB4bm9JVCwulmxMMeoDRQkaVHQVWQwnochPKXte0YT1wayGbV6hurY6OuwNvMb6ZmCw
	Bx6lZ9uZnpnxTb7Y3Mm2nvhjvV/RZkVDQH/nL171nKKETGj0S1zYaOFXkMPgLprToWwk7y9VjXe
	HA4IFnRCUQfxl0bHI4zvzFRhFFGIzUu75CV/YLlM2aM8RiPWfa8ye/aVoFSewDeASYxE9bA4xtk
	HHdL1FoKWdWQDwAPKyZPerHDWWGfzG8f8rTDd7eRxEx2bH2yvMsfuVKaZjpR84qOx6WPuFVCX//
	k8KGJrmI9W8X3qOQyH8nQoRyUnr4ODE90iFpTp+iMs5XHUEW0HwBoEUoEzFLdpL2h1av9wxe4ub
	hy8=
X-Received: by 2002:a05:6830:264a:b0:819:1804:d208 with SMTP id 46e09a7af769-84fb2906f38mr1294739a34.13.1792759736186;
        Fri, 23 Oct 2026 05:48:56 -0700 (PDT)
Received: from [172.22.22.28] ([73.62.185.64])
        by smtp.gmail.com with ESMTPSA id 46e09a7af769-84fbe66cab7sm1910704a34.23.2026.10.23.05.48.55
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2026 05:48:55 -0700 (PDT)
Message-ID: <a411ee0e-22c4-4797-9fdc-3ac11fa20d60@riscstar.com>
Date: Fri, 23 Oct 2026 07:48:54 -0500
X-Mailing-List: outreachy@lists.linux.dev
List-Id: <outreachy.lists.linux.dev>
List-Post: <mailto:outreachy@lists.linux.dev>
List-Help: <mailto:outreachy+help@lists.linux.dev>
List-Subscribe: <mailto:outreachy+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:outreachy+unsubscribe@lists.linux.dev>
List-Owner: <mailto:outreachy+owner@lists.linux.dev>
Precedence: list
MIME-Version: 1.0
User-Agent: Mozilla Thunderbird
Subject: Re: [PATCH v2] staging: greybus: loopback: Use fsleep() for delay
To: pavankumaryalagada@gmail.com, greybus-dev@lists.linaro.org,
 outreachy@lists.linux.dev
Cc: pure.logic@nexus-software.ie, johan@kernel.org, elder@kernel.org,
 gregkh@linuxfoundation.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org
References: <20261022202455.104142-1-pavankumaryalagada@gmail.com>
Content-Language: en-US
From: Alex Elder <elder@riscstar.com>
In-Reply-To: <20261022202455.104142-1-pavankumaryalagada@gmail.com>
Content-Type: text/plain; charset=UTF-8; format=flowed
Content-Transfer-Encoding: 7bit

On 10/22/26 3:24 PM, pavankumaryalagada@gmail.com wrote:
> From: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>
> 
> In the loopback function, usleep_range() is used for short delays
> and msleep() for longer delays. This requires choosing the delay
> function based on the requested time and converting microseconds
> to milliseconds when using msleep().
> 
> Replace both functions with fsleep(), which chooses a delay
> delay method based on the requested time. For short delays,

s/delay delay/delay/

I think "checkpatch.pl" would have caught this.

Maybe Greg can fix this up.


> fsleep() allows up to 25% extra time instead of the fixed 100
> microseconds. For longer delays, the old code rounds the
> requested time down to whole milliseconds, while fsleep() rounds
> it up when using msleep().
> 
> These changes may affect time between loopback operations and
> the reported performance.
> 
> Suggested-by: Alex Elder <elder@riscstar.com>
> Signed-off-by: Yalagada Pavan Kumar <pavankumaryalagada@gmail.com>

Looks good to me.  Nice job.

Reviewed-by: Alex Elder <elder@riscstar.com>

> ---
> v2:
> - Add more details about how fsleep() affects delays.
> - Update the subject to include the loopback module.
> 
> v1: https://lore.kernel.org/outreachy/c482704b-903e-413d-ba7b-5bf31c0a6104@riscstar.com/T/#t
> ---
>   drivers/staging/greybus/loopback.c | 8 ++------
>   1 file changed, 2 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/greybus/loopback.c b/drivers/staging/greybus/loopback.c
> index efc69c10cffe..2fe845eaef29 100644
> --- a/drivers/staging/greybus/loopback.c
> +++ b/drivers/staging/greybus/loopback.c
> @@ -898,12 +898,8 @@ static int gb_loopback_fn(void *data)
>   		gb->send_count++;
>   		mutex_unlock(&gb->mutex);
>   
> -		if (us_wait) {
> -			if (us_wait < 20000)
> -				usleep_range(us_wait, us_wait + 100);
> -			else
> -				msleep(us_wait / 1000);
> -		}
> +		if (us_wait)
> +			fsleep(us_wait);
>   	}
>   
>   	gb_pm_runtime_put_autosuspend(bundle);

