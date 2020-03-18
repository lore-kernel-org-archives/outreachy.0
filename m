X-GM-THRID: 6805399652543758336
X-Received: by 2002:aa7:95ae:: with SMTP id a14mr603243pfk.164.1584571529474;
        Wed, 18 Mar 2020 15:45:29 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a9c1:: with SMTP id b1ls14345413plr.11.gmail; Wed,
 18 Mar 2020 15:45:27 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vsAJ9ghdaNqLUuPmKPiM6hiy80rWN7cEeDUC5F5Gznucm0i1CfHUs79NM/tE0ckJGd70oz5
X-Received: by 2002:a17:902:aa49:: with SMTP id c9mr309168plr.145.1584571527854;
        Wed, 18 Mar 2020 15:45:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584571527; cv=none;
        d=google.com; s=arc-20160816;
        b=QWXgpX94e11zK1/QtqLIljiRH0Nl5fJO/HHJyszwDQakvCn4dmlsLkIbZ/FluWtAqL
         WTMfkvHBL+AUD7SzrfNmvBvjCsDNIDboRctUJzipJCK/xlZwb55tBYdNXTWp71NxDLtq
         BNNiWeg1XICUCZGv0a/s39qm1OqnsrXAZd/3RK9dPM+eAFH9Vxt0tpIP7u0dU8aDRYPy
         GduBmcaBlSHoAPmLWRK8XhT1drBZhh2bEWKsawkTGgOyczdlmFe/ea8QF/NUUEfeh5dX
         01yAygmIak6Hw1kJvRiCy72V1wG1f43u75aIGxnDxnUmNZN7xZJwCe/So9V+9eM0jwiK
         XcQA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=6z7HylxLPrJpHhQIeQIueH85+08lJiwZcM5DyPzkLl0=;
        b=N2h8JYBvL/18CYNBpocX3MLUxDhDd1/wvWJv+NvyWNo0WIj0Z2jKsPmJZQHkaL5f3V
         K3NW4A/e6i5q9kApilpOZ0zxlz7EfBlgLajLj2Vd54cZEVfmoEt5sXR8F8EAnQRdw1qY
         7yOupamWBDdr/ST2TVxLVwr0DdGFMvOIcrvqyo/esPKMim0RLUX+VkDjR1ovdKHszHeT
         xwXJEHhS/zrhpG7mdlsd5ik3/5xjQHuAjm7IK0iTLgjHdgwaKusZUdMQ64Ii1+ZcTMgA
         orwoygUXjJos5zEc4DWhM9q4pjbwcm6X733H06t5iDbJb+u/1bJNgGux/sAcA17kIzWE
         zVFw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dBVwH9rB;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id q66si36449pfq.3.2020.03.18.15.45.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 15:45:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=dBVwH9rB;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584571526;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=6z7HylxLPrJpHhQIeQIueH85+08lJiwZcM5DyPzkLl0=;
	b=dBVwH9rB59BZFWaHgEE/0ngcxfzWhjrstCNVljCNBZPftHkk4XIoVKh/OpdpJijR0Cbl5z
	6tbOJMfKtSywRqN5jJm2F7lneqORVumFFd9nAk+Vfp8L3PActGF8PSjY8DvE+OrHvPZW61
	iK91/WfKfXURei4VjP3WaqMT66A3NDg=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-109-SnMl5GA3OPidNGs0AGmG-A-1; Wed, 18 Mar 2020 18:45:22 -0400
X-MC-Unique: SnMl5GA3OPidNGs0AGmG-A-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0A99A800D4E;
	Wed, 18 Mar 2020 22:45:21 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id AD2D61001938;
	Wed, 18 Mar 2020 22:45:16 +0000 (UTC)
Date: Wed, 18 Mar 2020 23:45:10 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, lars@metafoo.de,
 Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
 pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Message-ID: <20200318234510.28b08a0d@elisabeth>
In-Reply-To: <89282ed6f355553eb1e81ae9b5f991eae4cd96ba.1584557481.git.mh12gx2825@gmail.com>
References: <cover.1584557481.git.mh12gx2825@gmail.com>
	<89282ed6f355553eb1e81ae9b5f991eae4cd96ba.1584557481.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22

On Thu, 19 Mar 2020 00:40:02 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Macro arguments are computed at the time of calling the macro. This
> makes the lines cross 80 column width. Add variables to perform the
> calculations before hand and use these variable in the macro calls instead.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 9 +++++----
>  1 file changed, 5 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index a5b6cc1fc375..2a9c68aa8260 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -480,14 +480,15 @@ static void ad7192_get_available_filter_freq(struct ad7192_state *st,
>  						    int *freq)
>  {
>  	unsigned int fadc;
> +	unsigned int sinc3_filter, sinc4_filter;
>  
>  	/* Formulas for filter at page 25 of the datasheet */
> -	fadc = DIV_ROUND_CLOSEST(st->fclk,
> -				 AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode));
> +	sinc4_filter = AD7192_SINC4_FILTER * AD7192_MODE_RATE(st->mode);
> +	fadc = DIV_ROUND_CLOSEST(st->fclk, sinc4_filter);

The name sinc4_filter is at least not derived from another typo anymore,
but it still doesn't make sense to me. Is it a filtering... factor,
as the name would suggest? No. It comes from a "mode" register and it
becomes a divisor of the output data rate.

Besides, you don't need separate variables (why two, even?). As I
already mentioned to you offline, DIV_ROUND_CLOSEST() is used. If '/'
is the DIV_ROUND_CLOSEST() operation, then, I guess:

	a = b / (x * y) <=> a = b / x / y

-- 
Stefano


