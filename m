X-GM-THRID: 6946206210186018816
X-Received: by 2002:ac2:5b08:: with SMTP id v8mr364797lfn.247.1617809029059;
        Wed, 07 Apr 2021 08:23:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:b603:: with SMTP id r3ls597411ljn.5.gmail; Wed, 07 Apr
 2021 08:23:45 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzeD0R4Q0dHSei0F3n6YB5mUUg1QpNkJQgUuiBacH76/JKEPYpMlzASRookYTo2hVQU6+N4
X-Received: by 2002:a2e:9858:: with SMTP id e24mr2524778ljj.477.1617809025654;
        Wed, 07 Apr 2021 08:23:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617809025; cv=none;
        d=google.com; s=arc-20160816;
        b=lDnsq/x1qTNhiHU5Lir89O6WnTZtiOb9hz8MOHZav2mw84li1+T9RUyq4iFSXpw31R
         FDp43vuI/fry2ULKCZB7bCnKw7RAFMg5a7Aw9ilKhmx9NiCHDa4sYBclIXP5vRX/EwjJ
         0XimgA1Tc3tBIQ3tTGUER7bOKVfXTorH+T1NDJyDlgIWHuOD+OZxQFY6zBVW8w/Xhaz2
         7tVrk1gbyzSoWpFSM7V+GP4KGdc15n6VOK0/GBIBj7aypnvj69tYAP5azNhLi9q1UBXJ
         FW9tXxHn5fAM6hIuMRFBJoobqU+a1pG331dZCoEWdFKPvYz3XLNqZRhR93rQ9BKX+jM5
         xiLw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=V835Zuis8g0KN1/PbqNJgIcK9rU9HnEL/KvW9G7jRkE=;
        b=KzyQ3Q8lnJrm9BPcZS14k8mkiUY8vXH6h0P4g1oozgsJVkOFoaCyIkvc4b9Qvt7UZ9
         0gOJM+rd7E/Pkb9utZsaPi5A6H6GHIha7GkGm6tQUC6HrWSTiZlZ5X0wQ+4VaAZ65uDV
         MIK4V2NIdC95+jg56t/jtpeltvWukzPPQn6i+zkDgIqct3iRqjQILf6uG4OZhm00Z3fc
         +Rh2TVFkWGmKlMvyveLA+o83GXWCs0ZKmksyudpT/l4MRyJPwGJTHkbJul3scawStn7+
         HPcLNp41zhBVwhyUA2taiWlMUvO+AiU+H345L43RaXd40i7nFMO6n3n+np5oz7G1wxL2
         5IHw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=iGiYshcS;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb3-smtp-cloud7.xs4all.net (lb3-smtp-cloud7.xs4all.net. [194.109.24.31])
        by gmr-mx.google.com with ESMTPS id z2si1891041ljm.0.2021.04.07.08.23.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Wed, 07 Apr 2021 08:23:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) client-ip=194.109.24.31;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s2 header.b=iGiYshcS;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.31 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id UA1slSst3MxedUA1vlJ4En; Wed, 07 Apr 2021 17:23:44 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s2;
	t=1617809024; bh=V835Zuis8g0KN1/PbqNJgIcK9rU9HnEL/KvW9G7jRkE=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=iGiYshcSi8j52JDjPCDMafo1/Dg0F0ji/4LeUOzWHPmtqlW8abjTvhKV61DWK/4i7
	 l6Yb0zFQ0dLJHlkm7jH3nVMS4+/FbW1BxCs9TPZGVrh27QEV54D5zqsQ2352feAp2P
	 yh+zvYgFWI6Y4sYTj9TFaE6Cz8puuRV8jrnHzxy/Zw4HBUTxM2xMWkGrgr7wgSon2x
	 hyfGbBm4hZZX744JKARmTcZZWLim+2OBQWltd1vNi9vDOQmph8CFe8GWhZ1+lu6XT8
	 80aqYHNBkF57gQU6KD02QYyOhgNomfWfUCT+G9NuB5K6vUExIVultJ6i+0muyrNT6Q
	 IpEozZ+lQjXMA==
Subject: Re: [PATCH 2/2] staging: media: omap4iss: align arguments with open
 parenthesis
To: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>,
 laurent.pinchart@ideasonboard.com, mchehab@kernel.org,
 gregkh@linuxfoundation.org, linux-media@vger.kernel.org,
 linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <cover.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
 <475dbbe5774cbfed2d924807d8a3cfeb84b3d845.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <80d633de-180e-6b2c-e75b-7e32116a078e@xs4all.nl>
Date: Wed, 7 Apr 2021 17:23:40 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:78.0) Gecko/20100101
 Firefox/78.0 Thunderbird/78.9.0
MIME-Version: 1.0
In-Reply-To: <475dbbe5774cbfed2d924807d8a3cfeb84b3d845.1617287509.git.martinsdecarvalhobeatriz@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfEwDytVfm5vNpNSS4TjLfMfSvUD9BZf125p9d/GxUwTj1wVtkk7Wog3PHClCRJhD3ywS0A/Lp3VKA9982nK6ZsH9LRf5T9sWWJdS77f47+ulwnFkyqo9
 +9YtjnKVnKLbaXLQrk9mAQCi4RvWxD3nwb1LyWiDI75x3zIZkaH7z02JFBvukLVBr6Ar2Lgv9/A9eSudi2tlHwUULRWo0AV3EZ4TgU2dlLCmtaH3BsIzGCJl
 +N5K8ylxFs3vV8SLmQ4t6pN+iYEuWib5unp6U8d5JYywzXbvJU+Qq/Bz/dlXF/HtdSxO2UWqcNAuPhaXz8+GaQh2jdXx9k8UBoI6QzlfhKmv4sRsnI/7JK5M
 q/JXgMMJxE9KAsQuuqPt3TMQhUcQ7kpk+t1iaorEJRonxOLqZKz/qJStwd/zGG8S7OQGB1C+pFq/lgVDYFbccZrNYhvJQUYBhIzHH9UkSq2CEyMv3i+NB3xM
 U3JulNUigFU0vzdg7KfjcFqauvEylvqDaTq0+Q==

Hi Beatriz,

On 01/04/2021 17:07, Beatriz Martins de Carvalho wrote:
> Cleans up checks of "Alignment should match open parenthesis"
> in iss.c:96.

Looks good. I'll take this patch.

You can use this reference to record your contribution:

https://patchwork.linuxtv.org/project/linux-media/patch/475dbbe5774cbfed2d924807d8a3cfeb84b3d845.1617287509.git.martinsdecarvalhobeatriz@gmail.com/

The state will change to Accepted once it is merged in our media tree
here: https://git.linuxtv.org/media_tree.git/log/

Regards,

	Hans

> 
> Signed-off-by: Beatriz Martins de Carvalho <martinsdecarvalhobeatriz@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index e8f724dbf810..472f1837632e 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -963,7 +963,7 @@ iss_register_subdev_group(struct iss_device *iss,
>  		}
>  
>  		subdev = v4l2_i2c_new_subdev_board(&iss->v4l2_dev, adapter,
> -				board_info->board_info, NULL);
> +						   board_info->board_info, NULL);
>  		if (!subdev) {
>  			dev_err(iss->dev, "Unable to register subdev %s\n",
>  				board_info->board_info->type);
> 


