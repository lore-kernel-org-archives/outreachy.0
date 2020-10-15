X-GM-THRID: 6883028084998537216
X-Received: by 2002:a5d:4c85:: with SMTP id z5mr4043601wrs.9.1602762369079;
        Thu, 15 Oct 2020 04:46:09 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:adf:a544:: with SMTP id j4ls1180977wrb.3.gmail; Thu, 15 Oct
 2020 04:46:07 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJx0nh/M1E1eiuiAY85ZW41h62yNASQfdx16bBW9bpqb9zDxq3FRcQsaZTm9NHRvmXJw9AyR
X-Received: by 2002:a5d:6a0a:: with SMTP id m10mr3979835wru.189.1602762367286;
        Thu, 15 Oct 2020 04:46:07 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1602762367; cv=none;
        d=google.com; s=arc-20160816;
        b=EktITwAQeykRDBfee2NBRXE7f4zJhKDl4gVwjrYX2C6BAYFZWenqn8IZ8oXEKEXsLE
         qxy+WsmTsOpitEFYUNfWy6ufJNgyBk4mdJ5Jst99Y/4YpKGUuwMXEFPRnd8dMxBbFX+I
         pQIMvxiZrG3bh6JzSBSj77p9ZPdSSe78SrJzA/AlcRlVcoDV2kINvhqJVNlbPCvoSodj
         +zfEY2duOrqh+hyyFIYQczBRUd6y+t5RejcQRQGuUkn3ya/fDkksOTzwXe2reASpBAbl
         /TSz6P2vV0QomErnYhY3F0wkhpBsuKwCOSrJLiCr/sGmOiZltZuAN0XYexRYC2ycmsqG
         igEw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:to:subject
         :dkim-signature;
        bh=7ejXxJdGVpnbCV6rNQNo8KShQnHNU/ck5UUtqyEmEvg=;
        b=g9Pc7EWRDk4fE2JoRtmlln+a0Ro+fTiHdu2S55xyheJxXjn2RUNHo8gLnfhe/QPzZr
         +Vz10Zn85U5Z/YHxeW6NZZwLqeOin45U6DpsuDDwxZbcWvQKtZDKXVJ5hrHnUZhrroMc
         gN6AORTse8pxGaGWcxnXRpr1UOa8v0TJSp5UbxvH+dicdq9ioTroUgD4ueIj7H5f1fLZ
         yZiIXtix+6CoxfWxALe8PcNT21DX0RkP4be6LGuVgGs7RIRfWILgx9d/gPKkg35YmWrB
         78rezrU8B962pl9hKhSNQzFzgiy2XWBfbTzW25V+OYo6hbVGhR2UHUPHA635R0rjKokL
         y76w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=qvBvylW3;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Return-Path: <hverkuil@xs4all.nl>
Received: from lb2-smtp-cloud7.xs4all.net (lb2-smtp-cloud7.xs4all.net. [194.109.24.28])
        by gmr-mx.google.com with ESMTPS id e5si93567wrj.3.2020.10.15.04.46.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Thu, 15 Oct 2020 04:46:07 -0700 (PDT)
Received-SPF: pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) client-ip=194.109.24.28;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@xs4all.nl header.s=s1 header.b=qvBvylW3;
       spf=pass (google.com: domain of hverkuil@xs4all.nl designates 194.109.24.28 as permitted sender) smtp.mailfrom=hverkuil@xs4all.nl
Received: from cust-b5b5937f ([IPv6:fc0c:c16d:66b8:757f:c639:739b:9d66:799d])
	by smtp-cloud7.xs4all.net with ESMTPA
	id T1hqkBDDrdl9TT1hukFSQH; Thu, 15 Oct 2020 13:46:07 +0200
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=xs4all.nl; s=s1;
	t=1602762367; bh=7ejXxJdGVpnbCV6rNQNo8KShQnHNU/ck5UUtqyEmEvg=;
	h=Subject:To:From:Message-ID:Date:MIME-Version:Content-Type:From:
	 Subject;
	b=qvBvylW3wqnXQPoRSxVrttLCzEEOJysmpTf45ldYRf5JGFa7Imqdg6WZqhC+7smX6
	 IC4CpXoArylGNIfRMjI07+FQz8Ie8NQ6NV0316iB5TdlTWR4HmArY/PiYXpL6exVTR
	 hamXEA1h3xnaT5kPy3FXJmv2ikxTx1J+fuYtEcctjYGsxGTEkUhjdjUNCiu2dtxtN+
	 VBj7NxaOUxtkLtlV1OZXrDR9yVqFxQ5sgNgZWHDWZhmJvkgUjCSD2B324AMA49/Y5n
	 yiG3obvfWgDhba8dMYN0jXQ/pgUHPM0/RmXO0Ck8F8jgzGHoWU6/47gAe9/bFOg4w+
	 E2WiGHUXmSTtQ==
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] staging: media: imx: remove
 commented code
To: Deepak R Varma <mh12gx2825@gmail.com>, outreachy-kernel@googlegroups.com,
 Steve Longerbeam <slongerbeam@gmail.com>,
 Philipp Zabel <p.zabel@pengutronix.de>,
 Mauro Carvalho Chehab <mchehab@kernel.org>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Shawn Guo <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>,
 Pengutronix Kernel Team <kernel@pengutronix.de>,
 Fabio Estevam <festevam@gmail.com>, NXP Linux Team <linux-imx@nxp.com>
References: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>
From: Hans Verkuil <hverkuil@xs4all.nl>
Message-ID: <dab9aea1-0cdc-4cf3-0a60-a45505c937d5@xs4all.nl>
Date: Thu, 15 Oct 2020 13:46:02 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:68.0) Gecko/20100101
 Thunderbird/68.12.0
MIME-Version: 1.0
In-Reply-To: <8dfbe49fbc7dbd9100f69b80b43f67504338ed73.1602606535.git.mh12gx2825@gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Language: en-US
Content-Transfer-Encoding: 7bit
X-CMAE-Envelope: MS4xfBjNnp3zlq1PH3vOggRTCgfEZAbf+dfKuKw41apJZ+qKAD9mccdbck94Cn+IhM/Av3XJ8kQxCdOC5kTS0Y/EycNlltmm81XmXfrMPb5MTcCzfsymW/iy
 zOD8BUFfpNdAnslOEEHb85TnZwNOcvRnGcPeecOgUl6NH7s83GRf+eIKpTjeRcyIwKN/swsUiVvA/6XFHimvcd8n9ZKn8v82TQsoqRZ806KWeDggyKLfg5u+
 qHdefIjNAunS2D6Sl0KBMwNrPUy+rUbo8RXMNzEoiCLlfiqBsWLibwF06n1osUfIM3TdbpAaInNVJqh+YoDv1zFl31hd/qZKa4wttkP4TzG2+YSrnqh1jYAB
 hHY9XmK5UBpZRzkVunB1xrMZm3r3xkhQOlELNv9U4OkBuMyV0a0fxDake1iKGYqzcB3ZZ4t5siaJblJtTmLnrkFbqj9D3zyWndwtaVmJh5l0Fh+rQ2G29AKs
 Ko4QbWbNOxzPKdmTNLZycgJZcIuuZ91YZ4q60B4KNPiUco0PDW8j7ib6qTY=

Hi Deepak,

You're missing the linux-media mailinglist in your 'To' list. The MAINTAINERS file
mentions that, and adding that mailinglist will ensure that the media subsystem
maintainers will see this patch.

Regards,

	Hans


On 13/10/2020 18:32, Deepak R Varma wrote:
> Commented code in the "#if 0" block does not appear to be useful anymore.
> The virtual channel is always treated as 0 once the stream enters CSI's.
> This issue is reported by checkpatch script.
> 
> Signed-off-by: Deepak R Varma <mh12gx2825@gmail.com>
> 
> ---
> Changes since v3:
>    - Rephrase Patch description
>    - Implement feedback from Vaishali & Helen to mention checkpatch in
>      the patch description.
> Changes since v2:
>    - None
> Changes since v1:
>    - Implement feedback from Julia to be exact with the patch description
> 
>  drivers/staging/media/imx/imx-media-csi.c | 7 -------
>  1 file changed, 7 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index 21ebf7769696..9320e3974d86 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1131,13 +1131,6 @@ static int csi_link_validate(struct v4l2_subdev *sd,
>  		 * enters the CSI's however, they are treated internally
>  		 * in the IPU as virtual channel 0.
>  		 */
> -#if 0
> -		mutex_unlock(&priv->lock);
> -		vc_num = imx_media_find_mipi_csi2_channel(&priv->sd.entity);
> -		if (vc_num < 0)
> -			return vc_num;
> -		mutex_lock(&priv->lock);
> -#endif
>  		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
>  					  &priv->format_mbus[CSI_SINK_PAD]);
>  	}
> 


