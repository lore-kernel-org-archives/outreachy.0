X-GM-THRID: 6617138679585439744
X-Received: by 2002:ac2:4241:: with SMTP id m1-v6mr65413lfl.1.1540851300741;
        Mon, 29 Oct 2018 15:15:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a19:d75e:: with SMTP id o91-v6ls732104lfg.26.gmail; Mon, 29
 Oct 2018 15:14:59 -0700 (PDT)
X-Google-Smtp-Source: AJdET5dkxC5gp9iC0awUORseNXKpR0FktR2+geqNlziQFAYDJ7f6GlP1+Ww+tJFRF+eTdvjKh31C
X-Received: by 2002:a19:99d0:: with SMTP id b199-v6mr65999lfe.4.1540851299617;
        Mon, 29 Oct 2018 15:14:59 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540851299; cv=none;
        d=google.com; s=arc-20160816;
        b=YSp3O8PvBakr9LwTGUMgDCDSgAxvVZ8dqztqHo0RD+GD1GflRzPVMu0eAWJGf7Hx1t
         FemnNWNAh15guozlVFEtU9WcdsvSgEjzO6UMuIMcNqgsCHmZ8keZ0JNm7awHDGZDlYcO
         uqZ6XqetT0xzCqGO2f4r14sJnRh6rn6G/KlvRp511iy/X/frMYRTINP2GN5cbAEHCSds
         QNnEVn0AHpwqdFZ11CfjNkz/+OF8oSICzWAbBaXJuCj80kYGe9EZOkdmmQ8DZxlW8Mau
         9K0LmZJs5LmtpeIdfGZTJ9eE3xoCwL88LKGLh9WKH39DmNo+bUQJgiA3zF/Ta8NkXulz
         uHHA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:autocrypt:openpgp:from:references:cc:to
         :subject;
        bh=YpdpoVXI1Qv/XzGDbvuExGOF8WalGFQXcbzU5Qp1/LA=;
        b=wJ637fxRxDDxJyzDoqL0J5srzZd6V/Rh6/VGT5mSd90oycRb+z2XnFAeIIOpj2ExiF
         M3KlT4WOwhoTCYnyBGSUcs615qeP3anKFpn9/aMY8w/LjGQDyyWkuwgxxA3IyrRsrzAx
         +Wj51GrronNPZzd4O7ylwLa+oXjuIDR81MVgHUE4eGZBHsVv6HRyPdKazL/hEwrIIOos
         iJTxOnO/8Zj/mie1OqgQmPaT0Z1gQKlmTOd4Bfeq31bO7u8aZpLR0OJ1sC+Z7b31IB1r
         /U2b6qynMi/Fd8VLLrTnJlAZZei36obINS7T1fIGJPxrnCausxTg42aICROeXLYpYzCd
         jFog==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Return-Path: <helen.koike@collabora.com>
Received: from bhuna.collabora.co.uk (bhuna.collabora.co.uk. [46.235.227.227])
        by gmr-mx.google.com with ESMTPS id f192-v6si592890lff.4.2018.10.29.15.14.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Mon, 29 Oct 2018 15:14:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) client-ip=46.235.227.227;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of helen.koike@collabora.com designates 46.235.227.227 as permitted sender) smtp.mailfrom=helen.koike@collabora.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=collabora.com
Received: from [IPv6:2804:431:9719:368d:db92:5ac9:c170:2b7b] (unknown [IPv6:2804:431:9719:368d:db92:5ac9:c170:2b7b])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	(Authenticated sender: koike)
	by bhuna.collabora.co.uk (Postfix) with ESMTPSA id 75105276ECA;
	Mon, 29 Oct 2018 22:14:56 +0000 (GMT)
Subject: Re: [PATCH vicodec v2] media: vicodec: Add empty callbacks to prepare
 for the request API
To: Dafna Hirschfeld <dafna3@gmail.com>, hverkuil@xs4all.nl,
 mchehab@kernel.org
Cc: outreachy-kernel@googlegroups.com
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
 <dec3fa1828acce7720c56a1160d24f327914bf0c.1540816621.git.dafna3@gmail.com>
From: Helen Koike <helen.koike@collabora.com>
Openpgp: preference=signencrypt
Autocrypt: addr=helen.koike@collabora.com; keydata=
 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
Message-ID: <0822be01-02a6-2d56-ab8f-8d7898b49a24@collabora.com>
Date: Mon, 29 Oct 2018 19:14:51 -0300
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:60.0) Gecko/20100101
 Thunderbird/60.0
MIME-Version: 1.0
In-Reply-To: <dec3fa1828acce7720c56a1160d24f327914bf0c.1540816621.git.dafna3@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 8bit



On 10/29/18 10:42 AM, Dafna Hirschfeld wrote:
> Add the callbacks `req_validate` `req_queue` of the struct
> `media_device_ops` as empty functions.
> Those will be implemented later.
> 
> Signed-off-by: Dafna Hirschfeld <dafna3@gmail.com>
> ---
>  drivers/media/platform/vicodec/vicodec-core.c | 14 ++++++++++++++
>  1 file changed, 14 insertions(+)
> 
> diff --git a/drivers/media/platform/vicodec/vicodec-core.c b/drivers/media/platform/vicodec/vicodec-core.c
> index fdd77441a47b..238a59cdf3d6 100644
> --- a/drivers/media/platform/vicodec/vicodec-core.c
> +++ b/drivers/media/platform/vicodec/vicodec-core.c
> @@ -130,6 +130,20 @@ struct vicodec_ctx {
>  	bool			comp_has_next_frame;
>  };
>  
> +static int vicodec_request_validate(struct media_request *req)
> +{
> +	return 0;
> +}
> +
> +void vicodec_request_queue(struct media_request *req)
> +{
> +}
> +
> +static const struct media_device_ops vicodec_m2m_media_ops = {
> +	.req_validate   = vicodec_request_validate,
> +	.req_queue      = vicodec_request_queue,
> +};
> +
>  static inline struct vicodec_ctx *file2ctx(struct file *file)
>  {
>  	return container_of(file->private_data, struct vicodec_ctx, fh);
> 

Hi Dafna,

Thanks for your patch.

I believe we won't merge this patch now, this is just the base so we
could know that you are able to find your ways through the code, which
you did :)

Regards,
Helen

