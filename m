X-GM-THRID: 6617138679585439744
X-Received: by 2002:a19:2d47:: with SMTP id t7-v6mr748055lft.13.1540672978080;
        Sat, 27 Oct 2018 13:42:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:9999:: with SMTP id w25-v6ls588497lji.20.gmail; Sat, 27
 Oct 2018 13:42:56 -0700 (PDT)
X-Google-Smtp-Source: AJdET5drTz2VDGo3bKioe+j032eSrA6/3cS8ENeOMykD2QrmsP6hVE5YwjX2KmiqWMQN8s0Ei40s
X-Received: by 2002:a2e:8786:: with SMTP id n6-v6mr193498lji.29.1540672976901;
        Sat, 27 Oct 2018 13:42:56 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540672976; cv=none;
        d=google.com; s=arc-20160816;
        b=a2tddtaQuihGIX8zCYySG2W92Oj11DUo6kJA7rHWdfbRAk6XzkDyfRX3XCH0rtEQTu
         KwqHGWW2X2Vtz3HfaQ/0Eq0XuXufY7S/xEucn4TaZSYGq5/d9vj+EJW3Sfve+m7PhPIi
         5jAS0zqcZBiqjNddWZlxRDEU1oNkYWLa/JK55jpqfP6gtWoUD/+EfDeskKGqT0xp7Fke
         ZRR3C5czXitOM9/BJNYiGE2Ea644YD24qiqwk+ew1VEvgLs2qOslPVSJ8QnpNwjpfPWd
         h+F6ECbGnxkXOp1yzM6EX/fZTE4bLlbbz+FCNbMD1wH08ZLxzdgq8EZgK+yT2whMM6is
         ix8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=mime-version:user-agent:references:message-id:in-reply-to:subject
         :cc:to:from:date;
        bh=rUlH/BeKvCzsAQTv/US7iuXMYOCOqa3ZBeXF5nUVbxQ=;
        b=pR5n9LiQd8jG5h2Xfkf7AKFNGrPnSHd3fDrUL2GLjr+yBC0nQJst1bWvkrhISfpwQQ
         o1l5CP28hrsn83uz9+OvBar43I8K3I3OyQ0jLILeyeZ7+k+fVvL1vO82C242xTILnKuZ
         48A63F57FUb82QIvvR9chki6RnQx1GV5wZWM6zESGhFyWftYnwBH/yeDlqLMAF83QEL0
         OmufXejcN1Ntr2SJR1Dr0WNStC/MjVC/z60sSO6Ig25HDRw4b2y8S6gT87vqfZYXkhvd
         TB13THtLZVcZgnEi3OpJEsfxp3Rw++IRTcn7kZ68+OSxlSJ3jinsk5h7nlEbfhKIab/D
         fVZg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
Return-Path: <julia.lawall@lip6.fr>
Received: from mail3-relais-sop.national.inria.fr (mail3-relais-sop.national.inria.fr. [192.134.164.104])
        by gmr-mx.google.com with ESMTPS id a79-v6si505271ljf.1.2018.10.27.13.42.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 27 Oct 2018 13:42:56 -0700 (PDT)
Received-SPF: neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) client-ip=192.134.164.104;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 192.134.164.104 is neither permitted nor denied by domain of julia.lawall@lip6.fr) smtp.mailfrom=julia.lawall@lip6.fr
X-IronPort-AV: E=Sophos;i="5.54,433,1534802400"; 
   d="scan'208";a="283522700"
Received: from 89-157-201-244.rev.numericable.fr (HELO hadrien) ([89.157.201.244])
  by mail3-relais-sop.national.inria.fr with ESMTP/TLS/DHE-RSA-AES256-GCM-SHA384; 27 Oct 2018 22:42:55 +0200
Date: Sat, 27 Oct 2018 22:42:55 +0200 (CEST)
From: Julia Lawall <julia.lawall@lip6.fr>
X-X-Sender: jll@hadrien
To: Dafna Hirschfeld <dafna3@gmail.com>
cc: helen.koike@collabora.com, hverkuil@xs4all.nl, mchehab@kernel.org, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH vicodec 1/1] media: vicodec: Add empty
 callbacks to prepare for the request API
In-Reply-To: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
Message-ID: <alpine.DEB.2.21.1810272242400.5204@hadrien>
References: <fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3@gmail.com>
User-Agent: Alpine 2.21 (DEB 202 2017-01-01)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII



On Sat, 27 Oct 2018, Dafna Hirschfeld wrote:

> Add the callbacks `_req_validate` `_req_queue` of the struct
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

Thanks for making it const :)

julia

>  static inline struct vicodec_ctx *file2ctx(struct file *file)
>  {
>  	return container_of(file->private_data, struct vicodec_ctx, fh);
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/fb11134ccd7459f5b88f277f52f40b6a1f901bc7.1540672323.git.dafna3%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.
>

