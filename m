X-GM-THRID: 6613557552943726592
X-Received: by 2002:a62:59dc:: with SMTP id k89-v6mr13977203pfj.66.1539839324990;
        Wed, 17 Oct 2018 22:08:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:87c6:: with SMTP id i189-v6ls5302447pge.9.gmail; Wed, 17
 Oct 2018 22:08:44 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61i+EjjZovF95LEjZPLpgFFqj4rJ3OgIc7bWBBBPyBybrQVpQ3jIv/w1OFGSEUFhYYS/Bj7
X-Received: by 2002:a62:c29a:: with SMTP id w26-v6mr13873149pfk.13.1539839324219;
        Wed, 17 Oct 2018 22:08:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539839324; cv=none;
        d=google.com; s=arc-20160816;
        b=DcLDxZIxX0UUW/CTb00tpuuuF/VRvpugBhWlHQfO6WHeVaE95bzaqANDSHVj5oU/WH
         lvd6Yf+BwCRxjPieXyMw5QiCqKf+Cczv753Q0railWsaUtYci6O+lzhXAEPdzR65jOvu
         T1VPZOK3ybol3S74hZoKBeuOrYT0f57JF40Q6fadnOIyWiSJJAR8jJ9bSAP4mZlQCIun
         9YJ7YYiUJIv5BkgQh78RMCUkYQP60RCqX+uyiDzW66BNmbbxFg4eUqDaygxhDheTFiqH
         wMdnNrJCnA7G7q0dgQXdUQx7sfw6Tvom1/gmqz4WcNyKLvRYUcxxpckkHFUsHl+3Sfum
         KpLg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=6OB6qX4jNQuKrn5sOW3vqhrtt2r2SFETUmIye3byCMU=;
        b=vauLvZMgx+6DlESFWj3UlnZFyErMxrfUi0HDZszFWWb9eQ5FJPiCaWg1nMEUIBHWFd
         aSq656zbY9r/ylWQJWkD+LDdISqI4q2uxtic4EtY6vxTrL87QSy+Xl0i5c7aSRWyWyWL
         LS4IJkqcnWCleK+bkYo6Zrl+WlGBrw5eJioY8rNjWniavevjfopWv8ixAEh6YlTmvXzj
         EKdFynRmdn79hXiE5QSd+xCXjbNgQWNic1N1GpLyO/S22s1rF2zGgeeQgmd1kSCSZZJm
         BVoCO4P0NZItbfA8abWw7pObO7lopHp0i3POoqmaAg2TT4zbOqcPkzGqUpHMBFSzgSjO
         Vy4g==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.233 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa07-04.prod.phx3.secureserver.net (p3plsmtpa07-04.prod.phx3.secureserver.net. [173.201.192.233])
        by gmr-mx.google.com with ESMTPS id 193-v6si749625pgc.3.2018.10.17.22.08.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 22:08:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.233 as permitted sender) client-ip=173.201.192.233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.192.233 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wm1-f41.google.com ([209.85.128.41])
	by :SMTPAUTH: with ESMTPSA
	id D0Y6gzq1nlqO6D0Y6g1ZWv; Wed, 17 Oct 2018 22:08:42 -0700
Received: by mail-wm1-f41.google.com with SMTP id r63-v6so4036465wma.4
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 22:08:42 -0700 (PDT)
X-Gm-Message-State: ABuFfojRnBd6yCFs19UI1tjGItAtpEqlkpKXdheZtYG49bkWdIkGfqjA
	D/pl6NTp9IsEj/Qg66tNUVKCoT+nszKeQQNPnCw=
X-Received: by 2002:a1c:88c8:: with SMTP id k191-v6mr5508587wmd.84.1539839321666;
 Wed, 17 Oct 2018 22:08:41 -0700 (PDT)
MIME-Version: 1.0
References: <20181018011427.GA3096@v>
In-Reply-To: <20181018011427.GA3096@v>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Thu, 18 Oct 2018 10:38:30 +0530
X-Gmail-Original-Message-ID: <CAK-LDbKUuAJHuvQp0cF5mt5NEf3iNmDySrwQdYVcf3UiF6CwVg@mail.gmail.com>
Message-ID: <CAK-LDbKUuAJHuvQp0cF5mt5NEf3iNmDySrwQdYVcf3UiF6CwVg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: media: davinci_vpfe: Fix
 spelling mistake in enum
To: kimbrownkd@gmail.com
Cc: outreachy-kernel@googlegroups.com, mchehab@kernel.org, 
	Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfJh0S0T9IpY+9JQL42Zvdxo5O/eDfMYWOq4+XFKQZ0+Hp99D23mA7RtmbTzhhHWcdiWR+9Lf3OrKgH3h6YZSuROv+8lrVqdqtRN/e62xtPSm+yPjfZ/4
 qZJB1k4X+gZ76aBsgL8oDs5ORzT4jc93pGx25DHWoclu10wCoEjikDlC8KTN//UiEG+ik20mkpPxdUY9vO8hjVTJJ+/CdBooWis=

On Thu, Oct 18, 2018 at 10:31 AM Kimberly Brown <kimbrownkd@gmail.com> wrote:
>
> Fix the spelling mistake in enumerator identifier
> RESIZER_MODE_CONTINIOUS. 'CONTINIOUS' should be 'CONTINUOUS'. Issue
> found by checkpatch.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>

Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>

> ---
>  drivers/staging/media/davinci_vpfe/dm365_resizer.c | 2 +-
>  drivers/staging/media/davinci_vpfe/dm365_resizer.h | 2 +-
>  2 files changed, 2 insertions(+), 2 deletions(-)
>
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.c b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> index 2b797474a344..6c5fcd6c691a 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.c
> @@ -499,7 +499,7 @@ resizer_configure_in_continuous_mode(struct vpfe_resizer_device *resizer)
>         configure_resizer_out_params(resizer, RSZ_A,
>                                      &cont_config->output1, 1, 0);
>         param->rsz_en[RSZ_B] = DISABLE;
> -       param->oper_mode = RESIZER_MODE_CONTINIOUS;
> +       param->oper_mode = RESIZER_MODE_CONTINUOUS;
>
>         if (resizer->resizer_b.output == RESIZER_OUTPUT_MEMORY) {
>                 struct v4l2_mbus_framefmt *outformat2;
> diff --git a/drivers/staging/media/davinci_vpfe/dm365_resizer.h b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> index 00e64b0d0295..cf560a33d862 100644
> --- a/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> +++ b/drivers/staging/media/davinci_vpfe/dm365_resizer.h
> @@ -23,7 +23,7 @@
>  #define _DAVINCI_VPFE_DM365_RESIZER_H
>
>  enum resizer_oper_mode {
> -       RESIZER_MODE_CONTINIOUS = 0,
> +       RESIZER_MODE_CONTINUOUS = 0,
>         RESIZER_MODE_ONE_SHOT = 1,
>  };
>
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181018011427.GA3096%40v.
> For more options, visit https://groups.google.com/d/optout.

