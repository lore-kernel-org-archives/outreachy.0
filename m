X-GM-THRID: 6803435195586314240
X-Received: by 2002:a92:cd4e:: with SMTP id v14mr6241594ilq.231.1584308809882;
        Sun, 15 Mar 2020 14:46:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:1557:: with SMTP id v84ls486219ilk.11.gmail; Sun, 15 Mar
 2020 14:46:48 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vuiAFLzbITxh9XYTMGnFijAebjL5TUEDM/bPU8Is+bT3byvGh3d+v0rHccS7DTR5QMupCjo
X-Received: by 2002:a92:cb8b:: with SMTP id z11mr24672881ilo.240.1584308808683;
        Sun, 15 Mar 2020 14:46:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584308808; cv=none;
        d=google.com; s=arc-20160816;
        b=HvG/5/FifArqpHxoEMjc9NhqG1iW1bGytpdxix0SfipOlDr4jk6QA5AzqK/FzPXzdu
         qMj68dZX+G3QTrLJz2UbgZ8moYWJwYKZkbssiP2t4e/3HU+SMnhtFCLozoTY2KlwmbEk
         1lkQxi8QF/+qIJbBhuEZKaxYclXf7RAfkaSTLDoCEdidDTpqK1FCVqcKQn39TV0ikVBA
         g2YCU3eQgFDbxfa5ptMixkwpMZFQKSgJ87EviRBY6wUfPHKZTxSbQAa0/At0HYDSgu7u
         tjqQE6OLTBrVUfqJ3h/cOSHwAu6mXqV/Db/CxKrLYiCS5msGoTcUxex8Mn7cXUhsFhm2
         1uyw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=Y2/G1wfhiSwG4DInEau/82uwqCxnDXZg5g5D6qTL+LM=;
        b=A5AwMIB087di6Z4Z+4tRwfHcor4I0aWAj+fiRG0wjfd9Y2QMecWnCv+Rha45Heib5d
         SetPRRPtv6qcuDLg35HeYZJ7mDKUKUmiL3NLamhuNP1fk5RFbk02XN1CGKfd/sS0f125
         8BDHCvDpXLQdrSVQA3q81+abK4mhdN5obEDRk7W9N58mdaqfm2+IEHFw626U19sgcQSk
         jI3aGKxLJQWbH46UX1S3D5n3/e6XXeLe0qmI6QYJ8tF1yOYMgeDiPk4n6OImx9+RWVAT
         bZyVdC8XrOmdEC2Qx9sAGKoK+r5NHXX40ISwAPbKObNbx9bE339e//du/yc/27Lxbt6P
         pvBQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VMuFmZHw;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-1.mimecast.com (us-smtp-delivery-1.mimecast.com. [207.211.31.120])
        by gmr-mx.google.com with ESMTPS id v13si705994ilg.4.2020.03.15.14.46.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2020 14:46:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) client-ip=207.211.31.120;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=VMuFmZHw;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 207.211.31.120 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584308808;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=Y2/G1wfhiSwG4DInEau/82uwqCxnDXZg5g5D6qTL+LM=;
	b=VMuFmZHwUwEC6br/tB/ZfdVLJ0TZLrYdEHKihhP+bmDqetkAAX6hHaNVyZlKSUEOUBQBBc
	JlfunYzF8KALEgXJchrnLqFrNv3V9a++gvh6DevH/OGmrXD5KR8Fsj+fWa/vuaqWNA3Xsw
	ZB0ko/fojsh8F6hx0VaTFHf2xbxIAdQ=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-79-0aU0zstNNpadwEZh8MKAhA-1; Sun, 15 Mar 2020 17:46:46 -0400
X-MC-Unique: 0aU0zstNNpadwEZh8MKAhA-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 2C9C1800D50;
	Sun, 15 Mar 2020 21:46:45 +0000 (UTC)
Received: from elisabeth (ovpn-200-18.brq.redhat.com [10.40.200.18])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 949F560BFB;
	Sun, 15 Mar 2020 21:46:42 +0000 (UTC)
Date: Sun, 15 Mar 2020 22:46:34 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Deepak R Varma <mh12gx2825@gmail.com>
Cc: outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org,
 daniel.baluta@gmail.com
Subject: Re: [Outreachy kernel] [PATCH v2 3/4] staging: fbtft: simplify
 array index computation
Message-ID: <20200315224634.65f3efda@elisabeth>
In-Reply-To: <34620c89e9ecfd91ef35571fa1a167f33c777d52.1584105606.git.mh12gx2825@gmail.com>
References: <cover.1584105606.git.mh12gx2825@gmail.com>
	<34620c89e9ecfd91ef35571fa1a167f33c777d52.1584105606.git.mh12gx2825@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hmm, this isn't exactly simplifying if one looks at the diffstat:

On Fri, 13 Mar 2020 19:14:02 +0530
Deepak R Varma <mh12gx2825@gmail.com> wrote:

> An array index is being computed by mathematical calculation on the
> Lvalue side of the expression. This also further results in the staement
> exceeding 80 character statement length.
> 
> A local variable can store the value of the array index computation. The
> variable can then be used as array index. This improves readability of
> the code and also address 80 character warning raised by checkpatch.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> ---
>  drivers/staging/fbtft/fbtft-sysfs.c | 6 +++++-
>  1 file changed, 5 insertions(+), 1 deletion(-)
                   ^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

More on that below:

> 
> diff --git a/drivers/staging/fbtft/fbtft-sysfs.c b/drivers/staging/fbtft/fbtft-sysfs.c
> index 2a5c630dab87..4d505a13f7ab 100644
> --- a/drivers/staging/fbtft/fbtft-sysfs.c
> +++ b/drivers/staging/fbtft/fbtft-sysfs.c
> @@ -25,6 +25,7 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
>  	unsigned long val = 0;
>  	int ret = 0;
>  	int curve_counter, value_counter;
> +	int counter = 0;

...there's no need to initialise this.

>  
>  	fbtft_par_dbg(DEBUG_SYSFS, par, "%s() str=\n", __func__);
>  
> @@ -68,7 +69,10 @@ int fbtft_gamma_parse_str(struct fbtft_par *par, u32 *curves,
>  			ret = get_next_ulong(&curve_p, &val, " ", 16);
>  			if (ret)
>  				goto out;
> -			curves[curve_counter * par->gamma.num_values + value_counter] = val;
> +
> +			counter = curve_counter * par->gamma.num_values +
> +					value_counter;

value_counter is summed to the whole thing, so it should be aligned
under curve_counter.

> +			curves[counter] = val;

And here, I think, the actual problem is variable naming itself. See
section "4) Naming" of Documentation/process/coding-style.rst -- this
looks a bit like Java. The "_counter" suffix doesn't add much here, I
guess those could just be "curve" and "value". I haven't checked for
ambiguities (could you have a look?), but if there's any, even "_count"
would make this a bit more tolerable.

-- 
Stefano


