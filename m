X-GM-THRID: 6949235058169348096
X-Received: by 2002:a2e:9710:: with SMTP id r16mr22170026lji.25.1618324372243;
        Tue, 13 Apr 2021 07:32:52 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6512:3b95:: with SMTP id g21ls4856265lfv.1.gmail; Tue,
 13 Apr 2021 07:32:50 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyI+0JuIlob7Txp480WffGCnqF4mr7qmoCr88PH5wpvg5zXp0/H86I2hWlvNEPqjJVjVcVu
X-Received: by 2002:a05:6512:b9e:: with SMTP id b30mr8064276lfv.278.1618324370448;
        Tue, 13 Apr 2021 07:32:50 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618324370; cv=none;
        d=google.com; s=arc-20160816;
        b=Xr15QsB57Bw7N3tXh9A8isSMgsgxjoZp09Cqkk9h8iq6sqyptswdeC7xQ+9oAMb8sj
         Hkhf7uz9NOaAcNo+DLbQ444htYx1yaH47sQPiUbecXDPBqOLMa4xOXxLcJW6dZHMNAi1
         7z131/6x+HW61m0hSiimPDZRfELVNh4PQmIBo3mwya7ptsOWbWIDd3JOCKvgrijWwl2j
         QIUOR89YR8q1xC3fauBCo/zOS3uWk2ty1iNM1sAhTAP790zDEfOpSPTOHgdZwFZjB7dH
         znORmgIS9zYUGOA8ZCb1DWV1jXH0M7B4r227UmPPndfuHyAtAj0qoN5JxHjqer3QX02p
         4vmg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :dkim-signature;
        bh=L2tfaCowAZSZheVAWPzxO/mjuZuIhVhlYjiBz7vPIWk=;
        b=FjwwZHuMvJc4TxsouoZtZs/zGpIUERw2l+ckJMT89UM5c5QSMdvvybpYeXrF6PNc7L
         oLumRYhuMopvJ+ySuooKY69Rys7oFimxTbxbRM3H1xQkvzl0LnF8fFYrtDVPMoU8NjB7
         z/7hgRZy+7UAoo1AUGejm7DR6md2h6zoRbjoECA3NSr9gEquTu92NLJ69/I0noZNS4tu
         HImL7dbeeFPcci5MTb7U79qprLljtO01cVhJO3xBPFXRUtWXn+qY+fNhz4owklfaUpFQ
         5tVhbv5KSzw4z59wPkwqyfa4poXtKd1VLAMNGvxCTJtNw4zroyLKC8NRGpkrKbscOiE4
         mWkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="DRawg/ur";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net. [194.109.24.31])
        by gmr-mx.google.com with ESMTPS id b12si689761lfb.3.2021.04.13.07.32.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Tue, 13 Apr 2021 07:32:50 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) client-ip=194.109.24.31;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b="DRawg/ur";
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id WK5ulFW4fMxedWK5xlizVW; Tue, 13 Apr 2021 16:32:50 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1618324370; bh=L2tfaCowAZSZheVAWPzxO/mjuZuIhVhlYjiBz7vPIWk=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=DRawg/urPfBhRaLnCUG/Vl0CsJF9ZNCnxGHRVoqI2QDcNa/xT0STsG88DGASQbDRS
	 t0KD6b5Bv6RKJv4Ky72Ate6DZ0sRszfUV9ahYtk0zcERgSdAbvncfTWPzk9TyLOIoN
	 HS87n+bd8yNSCJBuxdQ5WejcQhPlZEe3JO07Xgl+z/Xby0hyGR2x1xnHbYZlX8Bp48
	 mvxlHXncG6LnWPvtVRDengZYgKPfaDWO+WsCk67OEZ80UImIBpoQykdT2naZmCBWWy
	 OraokOOUmtCqCqj2xkBDE1aJEcNQmfyq2XW5oKRsYBcfzV46ZbLyepZEnS4y48lanV
	 EQ9HOFyTCNz2Q==
Subject: Re: [Outreachy kernel][PATCH 1/2] staging: media: omap4iss: Align
 line break to the open parenthesis in file iss.c
To: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>,
 Laurent Pinchart <laurent.pinchart@ideasonboard.com>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: linux-media@vger.kernel.org, linux-staging@lists.linux.dev,
 linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
References: <cover.1617994571.git.alinesantanacordeiro@gmail.com>
 <aed4449f7f054eee329a808527c2a08d79076c78.1617994571.git.alinesantanacordeiro@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <6823f86b-843f-1abf-e8b7-7be1044b7150@xs4all.nl>
Date: Tue, 13 Apr 2021 16:32:46 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <aed4449f7f054eee329a808527c2a08d79076c78.1617994571.git.alinesantanacordeiro@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfHW04A0H53qb+VDCHk3R9cvKV4akvzNem8xF7WFTsYM+qCG6LHLKUpFF6GBpfe22NqLagITMeO/x7/cAuOQKuxSA6nHD3pU6sLIz1poDfov0NIY+PBO/
 E1EI2bPsih0+PFG83QR74fh6cxUeqc8YjM0k2y+/mA+a2T5j2qHBHGA89MipI8Y8r2waQPQ37xyJhql9TE6p2yS+yLcfYWb3GEAMYytaH7TT9AXJbXzyJTJw
 J/bb39lTkZbrmseoMVL/M2HC5sdIofTdOaCxTFPnIbKW+/G51vfPOz41LGxuFuwvRlxLkENw4tXSOu88h1d+1BrnxhKcDENsjbm4sqTm1nwywYDbU11BBGZg
 dc3yC7ozs5raOna3OLPMCCSwUDzhU70x0Q+rElapJDOlwePFttKG4krLKoIS5908ScYVg6LVE4MeNcS9Cgwx02vfjleNk8SoI+XXzJQ8ZbNw34zJNVLXzyXW
 oRmYt500NzjhJVHEa9pt4iHBpd/mHcBJLlAFxw==

On 09/04/2021 21:01, Aline Santana Cordeiro wrote:
> Aligns line break with the remaining function arguments
> to the open parenthesis. Issue found by checkpatch.
> 
> Signed-off-by: Aline Santana Cordeiro <alinesantanacordeiro@gmail.com>

Obsolete, a similar patch from Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
has already been applied in the media subsystem tree.

Regards,

	Hans

> ---
>  drivers/staging/media/omap4iss/iss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index dae9073..c89f268a 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -960,7 +960,7 @@ iss_register_subdev_group(struct iss_device *iss,
>  		}
>  
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info, NULL);
>  		if (!subdev) {
>  			dev_err(iss->dev, "Unable to register subdev %s\n",
>  				board_info->board_info->type);
> 


