X-GM-THRID: 6612859760937009152
X-Received: by 2002:a9d:282f:: with SMTP id m44mr17395223otb.44.1539677184091;
        Tue, 16 Oct 2018 01:06:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:3c16:: with SMTP id q22ls11920446otc.1.gmail; Tue, 16
 Oct 2018 01:06:23 -0700 (PDT)
X-Google-Smtp-Source: ACcGV637X161xD9SD1+O9+ajrHHRZs/ehSgz0BHaAd9yNFtiq5dEcue7AuaQibm6cHDrbpHrLJc/
X-Received: by 2002:a9d:2b45:: with SMTP id f5mr17812457otd.53.1539677183360;
        Tue, 16 Oct 2018 01:06:23 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539677183; cv=none;
        d=google.com; s=arc-20160816;
        b=im5hoaUYQx/UVT8262niLuJTOyl6TbYQqcQXuQCHR4XlHcLTNfAOhrhlD4A8ut+GRa
         VW25EjWDf/sYbvNkNZpDMzZrwQFHHOYl/rikohvu51lygfx3x79kIXaQYMOqJLwqKHqJ
         F3lXZNeUijoSUsRBvh2HPVrSbZVNFOauHci9eBdbUmuS3sm96EaYFKK498m9SX/ozxeN
         4LayDF+RqlHE2Ip04LbKZhrhnNdVKxS8hXQ3DKj7Vw4/t2rMW2F8wA1RUME61utsbF1F
         tcc6TMVt+PMUn37f+5NuIK1kJb75H+RD1v66vy7xCAUVw/4diUdzA1+p0LHBEf5ShmkZ
         tdjQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=HsMOP1tmRapfQsjaMf+zE3ebxMa8cGn4ZFL3noRSFTA=;
        b=xpXe2NLxnqsaFDsApgzJrN4pxkors1S8KWktyXKcnDozrP6YDCiz8T9//gIZzDaKwx
         TpLFWoApbqcVwbGvKPA9P95lG0y8GWu7w8fyoOAFLuiAV2Qn9JfECDb3T4RQTkprYPkM
         RSRtfJ67dnqLXm8mrT27JkmYW8EDzsVa3iYQhKnZDG3nx5ivr9l0nhJSEbrO2f4Vamuo
         K5PjB3w22fzsFl3978NuaJzvdGctOSKHjaTFGw6DU6FPz/6RzIcvu5kUI5J/yAriUY15
         IfwOy2QPRFWiEJ3Az6Wse1zk7TFuVRyAhMlH2nh9kwt5It7NP2Wu8HL7bf+79IVje1q8
         GUkw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.110 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa11-09.prod.phx3.secureserver.net (p3plsmtpa11-09.prod.phx3.secureserver.net. [68.178.252.110])
        by gmr-mx.google.com with ESMTPS id 3si237935ott.3.2018.10.16.01.06.22
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 16 Oct 2018 01:06:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.110 as permitted sender) client-ip=68.178.252.110;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 68.178.252.110 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f52.google.com ([209.85.221.52])
	by :SMTPAUTH: with ESMTPSA
	id CKMvg99GcSp5rCKMwgMrll; Tue, 16 Oct 2018 01:06:22 -0700
Received: by mail-wr1-f52.google.com with SMTP id a13-v6so24311451wrt.5
        for <outreachy-kernel@googlegroups.com>; Tue, 16 Oct 2018 01:06:22 -0700 (PDT)
X-Gm-Message-State: ABuFfog6gdriLqEAxfrjIgZR2vUubsE7DE3LbFMQNRbxg7ymaCyqWQQi
	iUsh43ZLJ+XQc4GuGy7Tvqc73Q1DrwyfPBXGEfk=
X-Received: by 2002:a5d:4101:: with SMTP id l1-v6mr18909082wrp.45.1539677181287;
 Tue, 16 Oct 2018 01:06:21 -0700 (PDT)
MIME-Version: 1.0
References: <20181016075309.GA10445@k-vBox>
In-Reply-To: <20181016075309.GA10445@k-vBox>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Tue, 16 Oct 2018 13:36:09 +0530
X-Gmail-Original-Message-ID: <CAK-LDbLS71GEUi7Tm0wo2iuJFXtyRFwCO8HgBMWx__+7FhyMWw@mail.gmail.com>
Message-ID: <CAK-LDbLS71GEUi7Tm0wo2iuJFXtyRFwCO8HgBMWx__+7FhyMWw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: ks7010: Remove extra blank line
To: m.maya.nakamura@gmail.com
Cc: Greg KH <gregkh@linuxfoundation.org>, outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfCfdTALDOLNZycJt+x6cUVprUUcrit0n+3FWAHn/VacnaJ0RY+52D0/fV1bqpJA5UaRiPuZj6V82B+g+0OZkArbFgyWXv/nbxk5N2IukvV9/HUYsDoRZ
 reXkznIOYwhTMH+8kWmaB9UF1D19Skv72knm4qYPWNgI4He3R0xESTm1s9zbBZc9+GzmUWvwSKHOEqF4FpEIjkg+6irCgFGEgVY=

On Tue, Oct 16, 2018 at 1:23 PM Maya Nakamura <m.maya.nakamura@gmail.com> wrote:
>
> Remove extra blank line. Issue found by checkpatch.pl.
>
> Signed-off-by: Maya Nakamura <m.maya.nakamura@gmail.com>

Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>

> ---
>  drivers/staging/ks7010/ks_hostif.c | 1 -
>  1 file changed, 1 deletion(-)
>
> diff --git a/drivers/staging/ks7010/ks_hostif.c b/drivers/staging/ks7010/ks_hostif.c
> index ca030d3f609f..065bce193fac 100644
> --- a/drivers/staging/ks7010/ks_hostif.c
> +++ b/drivers/staging/ks7010/ks_hostif.c
> @@ -191,7 +191,6 @@ static u8 read_ie(unsigned char *bp, u8 max, u8 *body)
>         return size;
>  }
>
> -
>  static
>  int get_ap_information(struct ks_wlan_private *priv, struct ap_info *ap_info,
>                        struct local_ap *ap)
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20181016075309.GA10445%40k-vBox.
> For more options, visit https://groups.google.com/d/optout.

