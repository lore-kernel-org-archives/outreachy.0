X-GM-THRID: 6202672545102036992
X-Received: by 10.112.181.10 with SMTP id ds10mr1135359lbc.3.1444849249610;
        Wed, 14 Oct 2015 12:00:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.180.81.169 with SMTP id b9ls203378wiy.35.gmail; Wed, 14 Oct
 2015 12:00:49 -0700 (PDT)
X-Received: by 10.180.106.197 with SMTP id gw5mr1249612wib.7.1444849249190;
        Wed, 14 Oct 2015 12:00:49 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wi0-x244.google.com (mail-wi0-x244.google.com. [2a00:1450:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id c7si960363wiy.3.2015.10.14.12.00.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 12:00:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) client-ip=2a00:1450:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c05::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x244.google.com with SMTP id uv6so11538145wic.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 12:00:49 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=qDINbYA0ymZb0Wy9Mz0z88n9YR58WIYw7KS8bMmOCPI=;
        b=Pib16Bcpk/e5k9yUYXxTulKXELsY3B7T93IAXp3PYf6Gn78KL6I9/i8vZevhZVSoB9
         a2jp9vSTT+cLJfH3Pd8oK0AGfKzxkjXDQc5ufCmAyQi+ApV838m/sIOMg9ima6yVPTwj
         OlkbsAXKRpjDH0r95RWnJv/q2DZoPIqowl7hdUoq1sNUFkw00HloudPDfgS3i0dBIHvM
         85asdKYHHNSIEAuap5Bzdb7dOTXp60HbXt1C0AT+dzQb6q5RplKtu+QAfgWCPckLwbxo
         O3YPQgVKEgMPBKyK8OzUVCJ0Mm7h/B2RLeiwW0pt0CtFDwlCjTjRt1g8a5EsQCd/1VfX
         83ZA==
MIME-Version: 1.0
X-Received: by 10.180.90.166 with SMTP id bx6mr28176123wib.93.1444849249093;
 Wed, 14 Oct 2015 12:00:49 -0700 (PDT)
Received: by 10.194.165.102 with HTTP; Wed, 14 Oct 2015 12:00:49 -0700 (PDT)
In-Reply-To: <e1f448b6f32e6e7fd0329a4932f7163e8a6963a6.1444845354.git.ciorneiioana@gmail.com>
References: <cover.1444845354.git.ciorneiioana@gmail.com>
	<e1f448b6f32e6e7fd0329a4932f7163e8a6963a6.1444845354.git.ciorneiioana@gmail.com>
Date: Wed, 14 Oct 2015 22:00:49 +0300
Message-ID: <CAEnQRZD0xcjJdJppRFevS-2zHwMmDx+KNjTB-=FHEZVuHkP5fg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v4 5/9] staging: iio: adc: add spaces
 around binary operators
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Ioana Ciornei <ciorneiioana@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Wed, Oct 14, 2015 at 9:14 PM, Ioana Ciornei <ciorneiioana@gmail.com> wrote:
> Add spaces around binary operators like -, +, * etc
> in order to improve readability
>
> Signed-off-by: Ioana Ciornei <ciorneiioana@gmail.com>

Reviewed-by: Daniel Baluta <daniel.baluta@intel.com>

> ---
> Changes in v2:
>     - nothing
> Changes in v3:
>     - nothing
> Changes in v4:
>     - invert some changes in order to not break user space
>
>
>  drivers/staging/iio/adc/ad7816.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/iio/adc/ad7816.c b/drivers/staging/iio/adc/ad7816.c
> index 4e954d2..6636087 100644
> --- a/drivers/staging/iio/adc/ad7816.c
> +++ b/drivers/staging/iio/adc/ad7816.c
> @@ -48,7 +48,7 @@ struct ad7816_chip_info {
>         u16 rdwr_pin;
>         u16 convert_pin;
>         u16 busy_pin;
> -       u8  oti_data[AD7816_CS_MAX+1];
> +       u8  oti_data[AD7816_CS_MAX + 1];
>         u8  channel_id; /* 0 always be temperature */
>         u8  mode;
>  };
> --
> 2.1.4
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/e1f448b6f32e6e7fd0329a4932f7163e8a6963a6.1444845354.git.ciorneiioana%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

