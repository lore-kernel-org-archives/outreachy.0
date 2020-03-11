X-GM-THRID: 6802954785072873472
X-Received: by 2002:aa7:de8d:: with SMTP id j13mr3350127edv.348.1583939167463;
        Wed, 11 Mar 2020 08:06:07 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:cac4:: with SMTP id l4ls1574129edt.4.gmail; Wed, 11 Mar
 2020 08:06:05 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvjwdbf0mLQbSE9U66GftV6QmxCNKhBZNYIXdTe78wwTrTQSqNKToDs3vhaxoYoYTUDlU8b
X-Received: by 2002:aa7:d452:: with SMTP id q18mr3419232edr.17.1583939165338;
        Wed, 11 Mar 2020 08:06:05 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583939165; cv=none;
        d=google.com; s=arc-20160816;
        b=y9YwhleWgwVtNr92uySidlvUHziZKlIDZhAUHfTT9dMH789MTl0/ZiC0Fqv7hqC1+z
         gHBQWgk2QoCJu/y7t0wk+esRUfUaGy5CW9yCq/+bqBLdeHl7i4gb0nAUH4/mnFUAFwSE
         BQpS6bHN2/8bNcmsJrFGKqb2G5ICrYPM0DNbQzH42PDSrrcUXucyQel5TmsRUuZZLY9L
         9Kip+MkCKHvkDyO4A4i9BgesifLo+ZpAP/pXkSaLn5nq37nwAE6kxrafUaQSoD9MIfLk
         i/VpHz794qTtBTTP3S7DDB/G2jIJUZ9YH7q9f/QlhFfzV70bDyC4nPK/MWdQw1oiPs5X
         zahw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=4G6yq6oACl1fCMZb1bigXv4/d+Aw/27xcqRMlTx0MCY=;
        b=RhEbDkjsa1cOqjsN66x6AX0Sz5BQ43Lrx1ZpMaEkzt2IpVNv38VWtGO8xn9B8BQ9qT
         YIidCSUjM6jUZ7XLH2faXmWAbA1ChdMWB7pizV3pomuiJu7ml91Jv3p+9z6fTuQ5EDXT
         1UFAFkMBoJtxPxQajJGa47NMjBCsJZZL0So3e0PxndzfKOcoAUInhaE6q83Xj3f7IVTe
         GpkwbFiyxnDs9JH5WHGcFQW/CTfhU9d984cvvv/5jW0KLCpLEWixB+WzmGW9ulhYlR/q
         fKtpZeWjhoENqftFgaFmR3g9+cW8V1W8sMKvoeD8ebeIS1qpWCtp3DaftZqUKCxFTuW5
         1Ncg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
Return-Path: <julia.lawall@inria.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id h10si140947edn.1.2020.03.11.08.06.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 11 Mar 2020 08:06:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of julia.lawall@inria.fr designates 192.134.164.104 as permitted sender) smtp.mailfrom=julia.lawall@inria.fr
X-IronPort-AV: E=Sophos;i="5.70,541,1574118000"; 
   d="scan'208";a="342028802"
Received: from dt-lawall.paris.inria.fr ([128.93.67.65])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 11 Mar 2020 16:05:21 +0100
Date: Wed, 11 Mar 2020 16:05:21 +0100 (CET)
From: Julia Lawall <julia.lawall@inria.fr>
X-X-Sender: julia@hadrien
To: Enrique Vargas <jevargas@seas.upenn.edu>
cc: Manish Chopra <manishc@marvell.com>, GR-Linux-NIC-Dev@marvell.com, 
    Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: qlge: include newline after
 declarations
In-Reply-To: <20200311142836.GA17614@evX1>
Message-ID: <alpine.DEB.2.21.2003111604560.6155@hadrien>
References: <20200311142836.GA17614@evX1>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Wed, 11 Mar 2020, Enrique Vargas wrote:

> Add newline following coding conventions, to eliminate WARNING found
> using checkpath.
>
> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
>  drivers/staging/qlge/qlge_dbg.c | 1 +
>  1 file changed, 1 insertion(+)
>
> diff --git a/drivers/staging/qlge/qlge_dbg.c b/drivers/staging/qlge/qlge_dbg.c
> index 670361873d1d..52704c67e110 100644
> --- a/drivers/staging/qlge/qlge_dbg.c
> +++ b/drivers/staging/qlge/qlge_dbg.c
> @@ -1332,6 +1332,7 @@ static void ql_dump_intr_states(struct ql_adapter *qdev)
>  {
>  	int i;
>  	u32 value;
> +
>  	for (i = 0; i < qdev->intr_count; i++) {
>  		ql_write32(qdev, INTR_EN, qdev->intr_context[i].intr_read_mask);
>  		value = ql_read32(qdev, INTR_EN);

It looks better now, thanks.

Acked-by: Julia Lawall <julia.lawall@inria.fr>


> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200311142836.GA17614%40evX1.
>

