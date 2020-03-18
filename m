X-GM-THRID: 6805399652543758336
X-Received: by 2002:a25:acd6:: with SMTP id x22mr4583413ybd.246.1584520344396;
        Wed, 18 Mar 2020 01:32:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:5cc:: with SMTP id 195ls8073806ybf.10.gmail; Wed, 18 Mar
 2020 01:32:22 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvkTuGWxVc6DqTNzY1NGtpJYXV0qy/eJxlisHalq9j0ET9NSG5mdjhRi+0XeKOonOlvzk2l
X-Received: by 2002:a25:b7d3:: with SMTP id u19mr4486561ybj.466.1584520342832;
        Wed, 18 Mar 2020 01:32:22 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584520342; cv=none;
        d=google.com; s=arc-20160816;
        b=APWjTrY+iu2g5xrl3gpS2lff9TNIkMCvXzUFxZt5eSN/nFw698toNGovRwEl5R+eP1
         KuAxcC9q5jKVSKM10aVW8LT/ugKygusEskno2R034bXJh3e7jL281cg1rlWxEY0jO+I2
         KMyM65Lnd1oZLtSYIHnnlszIfqN6bquZZvVc3TDAkA1lyJFZ1CzBFhLxO35k06e1Q6YN
         oTBbOl9tjlG6jR8RI50pu+cnCGz4iAGLafBKw0CS9J5oNu7K4oXsdMhNjq+Y0hUHHN+/
         JdIUeVq9Z5Nb/4pC5O3j4dPA3wB67SZZSaBrwhkPuk/iHdANsXq2LWPmaeeN9H3iPjjx
         jOfA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=z79lHSDt0noyr40g8ID42S9HyUErCw79rl+KttIKyYI=;
        b=OWceiOCxvW5ORdklGTJD14c0X8ERbGUtzon4w2ZcZO/s/vMRhjujumeZgx6mjBQwgH
         gyqUktPDtgXgki8+N9TZwuKjclbfLq/4O7twlb5tMMP0jHbIeQGc4SzZguSkad0DQwdD
         H45EBRObRUbuyGe3gJeQUiSFQjiGzwRMJeSFY4O4mPaNMJboIJZYwzLKAZGS/8IqwsMz
         40r4BmGkGdNKZwzUnY0PuoXcfhUMqSwDViDXhF4IriG23+zD4YLn6HKp1x+fwd4/Ht08
         zpy1pv51GvSbfiNTiEBbA6RYj+5YlwTGm9bTO3zwi6Eby3Mee38bZIHB8sP5929sGUXf
         avUg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=El3OqkWe;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [216.205.24.74])
        by gmr-mx.google.com with ESMTPS id x13si532165ybs.4.2020.03.18.01.32.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2020 01:32:22 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) client-ip=216.205.24.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=El3OqkWe;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 216.205.24.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584520342;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=z79lHSDt0noyr40g8ID42S9HyUErCw79rl+KttIKyYI=;
	b=El3OqkWemjjyNIrUub9zLABbIp8tyIQ99aTTmoXNxm5P+Usiqrwby9P0qraIGoN8YoZxqp
	R43+Df298wmEpqZETlIX+fHzxAcuCSuaYt2cs/sqvcYhK4rqY6gBpf61lnLhWeSP+yTp/z
	lorfGghhQ+87APSIdI+Oh35Uxm8rS28=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-103-G_93vxqiN8eWaDwSbmwjbA-1; Wed, 18 Mar 2020 04:32:18 -0400
X-MC-Unique: G_93vxqiN8eWaDwSbmwjbA-1
Received: from smtp.corp.redhat.com (int-mx03.intmail.prod.int.phx2.redhat.com [10.5.11.13])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 566D21857BE4;
	Wed, 18 Mar 2020 08:32:16 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.69])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id B7F857E301;
	Wed, 18 Mar 2020 08:32:11 +0000 (UTC)
Date: Wed, 18 Mar 2020 09:31:58 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com, kieran.bingham@ideasonboard.com, lars@metafoo.de,
 Michael.Hennerich@analog.com, stefan.popa@analog.com, jic23@kernel.org,
 knaack.h@gmx.de, pmeerw@pmeerw.net, linux-iio@vger.kernel.org
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: iio: adc: ad7192:
 Reformat lines crossing 80 columns
Message-ID: <20200318093158.192a27ce@elisabeth>
In-Reply-To: <50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
References: <cover.1584505215.git.mh12gx2825@gmail.com>
	<50419988d636c90511a07da256c91aa3b3e33bff.1584505215.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.13

On Wed, 18 Mar 2020 09:56:59 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> Macro arguments are computed at the time of macro invocation. This makes
> the lines cross 80 column width. Add variables to perform the
> calculations before hand and use these new variable in the macro calls
> instead.
> 
> Also re-indent enum members to address checkpatch warning / check messages.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/iio/adc/ad7192.c | 15 ++++++++-------
>  1 file changed, 8 insertions(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/iio/adc/ad7192.c b/drivers/staging/iio/adc/ad7192.c
> index bf3e2a9cc07f..0265f6607d75 100644
> --- a/drivers/staging/iio/adc/ad7192.c
> +++ b/drivers/staging/iio/adc/ad7192.c
> @@ -156,8 +156,8 @@
>   */
>  
>  enum {
> -   AD7192_SYSCALIB_ZERO_SCALE,
> -   AD7192_SYSCALIB_FULL_SCALE,
> +	AD7192_SYSCALIB_ZERO_SCALE,
> +	AD7192_SYSCALIB_FULL_SCALE,
>  };
>  
>  struct ad7192_state {
> @@ -477,17 +477,18 @@ static ssize_t ad7192_set(struct device *dev,
>  }
>  
>  static void ad7192_get_available_filter_freq(struct ad7192_state *st,
> -						    int *freq)
> +					     int *freq)
>  {
>  	unsigned int fadc;
> +	unsigned int sync3_filter, sync4_filter;
>  
>  	/* Formulas for filter at page 25 of the datasheet */
> -	fadc = DIV_ROUND_CLOSEST(st->fclk,
> -				 AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode));
> +	sync4_filter = AD7192_SYNC4_FILTER * AD7192_MODE_RATE(st->mode);

Have you read page 25 of the datasheet? Why is this called
sync4_filter, with a 'y'?

-- 
Stefano


