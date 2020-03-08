X-GM-THRID: 6801809120095633408
X-Received: by 2002:ac8:65d1:: with SMTP id t17mr10581656qto.302.1583671127034;
        Sun, 08 Mar 2020 05:38:47 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:2764:: with SMTP id n91ls2636594qtd.0.gmail; Sun, 08 Mar
 2020 05:38:45 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvfPYrWS73XOn7OCrQbq0656Vd2+yJQaimXi76iHWZ0QWcNIXfa1it69UpflZrrhbI2b040
X-Received: by 2002:ac8:6f0f:: with SMTP id g15mr10636113qtv.255.1583671125751;
        Sun, 08 Mar 2020 05:38:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583671125; cv=none;
        d=google.com; s=arc-20160816;
        b=xJpSZ5yJmO8T6sMoFYY+KEEFQGjVbdM07lueR/PiUktopcTsgctcJokmgwMtdRM5h2
         I0SWKAERN0SZmI7Uu5RKyXAcrxvcyaLh5+V9GoHYarTy8qu9FJ/cTW9EAwE+08lNcECQ
         GRZcWpxbD68BCXBdXQixFcsC6qfQOQ+3yfhBC0BsaoTlQdoRhaYRjMr3XnmbBMiX2+0K
         tRdD7/gIeaVlX9C1Jz88YEGvwAMO5Y8CfmmmhU9gn1ealUU/vvcGHYtqAVlmHy6yW4h5
         vUynoffyzqH/PzQ/+j7bvFWJM16HTlodqLYBIQ7mp7BnTXeZr8eggOk2GSpPCtKT/Srt
         zfLQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=VE4OeqVR88osTkLkgoLv+yE7ai5EbNvPJyFGMaGIEYQ=;
        b=jGA90oxOWZl1YT4zCziDK2BHb/8JmIVuFxaW56ki0WP+ZFzsyOg/e7X3GCPlev+0rZ
         dhiyL7DtwjG9g6Fu9CzDQScw2JQJJab+7vyG+50C3AyCLNjVyK6doI1tKv+Ur6Sm/Obh
         unOzRxH+f9zWOPsjIRHo6zgAPh09U7MdyhKwjGYjZmtGhQARbZV3YF8D3YniNI1ZU4Is
         BW6eW6jby5IxGBC1473eb2+WjXvgtoUefYET5FpLb1zFvIMTTYddz92iLVgzyj3eb+L1
         E8lf/AWHBVsuWWh6QRKSP+k+EfCFMoYvhoBY94uLud58wn/jBGgsXpSOX9AL724gjeZX
         pG7g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=azSCUnWf;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-1.mimecast.com (us-smtp-1.mimecast.com. [205.139.110.61])
        by gmr-mx.google.com with ESMTPS id w53si434830qtb.4.2020.03.08.05.38.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 08 Mar 2020 05:38:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) client-ip=205.139.110.61;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=azSCUnWf;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 205.139.110.61 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1583671125;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=VE4OeqVR88osTkLkgoLv+yE7ai5EbNvPJyFGMaGIEYQ=;
	b=azSCUnWfiMDoD3UjfeWZ94an6EyO51j22p0JUCSCCnXqqGog5k3kPSg+QVaS7UlIt837bD
	hRwA8GFAI7NQcnDuN+OUC0j4Lm5B6Kc83gl23K8m+O9YgityJqw0dsLd5jb/LtpBfiKzBe
	Ex6hZDRsDdHOB5LrUQO1gejH+kNa5t0=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-326-fadVKaoHNySB007t1Cfv4g-1; Sun, 08 Mar 2020 08:38:40 -0400
X-MC-Unique: fadVKaoHNySB007t1Cfv4g-1
Received: from smtp.corp.redhat.com (int-mx02.intmail.prod.int.phx2.redhat.com [10.5.11.12])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 27981800D50;
	Sun,  8 Mar 2020 12:38:39 +0000 (UTC)
Received: from elisabeth (ovpn-200-26.brq.redhat.com [10.40.200.26])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id DF42960BFB;
	Sun,  8 Mar 2020 12:38:37 +0000 (UTC)
Date: Sun, 8 Mar 2020 13:38:32 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] [Outreachy kernel] staging: greybus: remove line over
 80 characters
Message-ID: <20200308133832.04351a17@elisabeth>
In-Reply-To: <20200308121307.2783-1-payalskshirsagar1234@gmail.com>
References: <20200308121307.2783-1-payalskshirsagar1234@gmail.com>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.79 on 10.5.11.12
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

Hi Payal,

On Sun,  8 Mar 2020 17:43:07 +0530
Payal Kshirsagar <payalskshirsagar1234@gmail.com> wrote:

> Remove line over 80 characters.
> 
> Signed-off-by: Payal Kshirsagar <payalskshirsagar1234@gmail.com>
> ---
>  drivers/staging/greybus/arche-platform.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/greybus/arche-platform.c b/drivers/staging/greybus/arche-platform.c
> index eebf0deb39f5..633b90adcc45 100644
> --- a/drivers/staging/greybus/arche-platform.c
> +++ b/drivers/staging/greybus/arche-platform.c
> @@ -47,7 +47,8 @@ struct arche_platform_drvdata {
>  	struct gpio_desc *svc_reset;
>  	bool is_reset_act_hi;
>  	struct gpio_desc *svc_sysboot;
> -	struct gpio_desc *wake_detect; /* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */
> +	struct gpio_desc *wake_detect;
> +	/* bi-dir,maps to WAKE_MOD & WAKE_FRAME signals */

The comment you are moving here needs to clearly refer to struct
gpio_desc *wake_detect. If you move it below, I think it's a bit less
clear.

As there's already an empty line after this, you might consider to add
a line before, move the comment before 'struct gpio_desc *wake_detect',
so that comment and field are clearly grouped together.

Also mind that the comment refers to two things:

- the GPIOs
  (https://en.wikipedia.org/wiki/General-purpose_input/output) handled
  here are bi-directional

- they map to those signals

...so you might want to fix that, too: a whitespace is clearly missing
after "bi-dir,".

-- 
Stefano


