X-GM-THRID: 6803689046764683264
X-Received: by 2002:a92:5fc1:: with SMTP id i62mr2389729ill.15.1584407156652;
        Mon, 16 Mar 2020 18:05:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a02:3084:: with SMTP id q126ls2400494jaq.6.gmail; Mon, 16
 Mar 2020 18:05:55 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vvdD0qvw6eFGZB7gAn1AF11A+bDeHlYGoVRIryl96kMavyw+gbBuPFbKUmfu+XU0CeKrH7n
X-Received: by 2002:a02:856a:: with SMTP id g97mr2574236jai.97.1584407155323;
        Mon, 16 Mar 2020 18:05:55 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1584407155; cv=none;
        d=google.com; s=arc-20160816;
        b=xctW95qzFNCAEq4KoYpsgwcp705Oh1Tw4gSevQsQAhLY9kWeGtpgwc09li/myub34k
         GUy8jKDQZN9fhZVV5VQkR+WZ82WSuTLYla6b7d9eEULyun7xOQkiUoyF2Kppq3rXm3Fb
         NikBI+X1Ar5NSPm0WWbLUPxPrXKWwNOE35+zch+LOppoibH3TWzVjT8QvB61LKH3GdcW
         itSbs+SEItl4FvX2dkpOKt2cj46NxwC/hlbITJIwVPTKqGg/YVy2tl+r/W6cXmgTTzyz
         jX94dmgdSBP8cUqQlLuxLtPe5fvCc5Y2EBRXBBmlEMxaf6CvFO/x+uyx2aopxDQFXZfL
         2FCw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:mime-version:organization:references
         :in-reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=2xBC9BIhVpGHL2x4i2Jzb6AKCqMo7ef2u/OAkj0OGrk=;
        b=C4Rz0cR0vvgPJ1vyeXD4MQKndhRLVooquX8G7/5Gz7nbPbpNUYhM56oyWdRIxEznkR
         bwUsSoeQNH8mQfUQpCYSIRYRjkB9yfj+tNIdkQifa92WkgFDImLyczTHQRJHw4dxi5/r
         LlsdB15Vrwscar/TlFoshqqHX8YnLo6X+OMbJH5sM1V4yWPedIrsBN7xMYdf20MuIkWj
         +cI4sdCZpiFFUp5Z/CVpfVDNRK+uq1VRki3TCB7mkBI6CpoWz4NMLWzs0oZv7yBkK0wV
         Bw14XobP/WpeNuKao9EkzK0hazYEo9PPA1xwS5f3W1lMh49sEMcWN1Hm8cikBjBtYn+i
         +JNg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CIqCWIF6;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <sbrivio@redhat.com>
Received: from us-smtp-delivery-74.mimecast.com (us-smtp-delivery-74.mimecast.com. [63.128.21.74])
        by gmr-mx.google.com with ESMTPS id q6si127353ild.2.2020.03.16.18.05.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 16 Mar 2020 18:05:55 -0700 (PDT)
Received-SPF: pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) client-ip=63.128.21.74;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@redhat.com header.s=mimecast20190719 header.b=CIqCWIF6;
       spf=pass (google.com: domain of sbrivio@redhat.com designates 63.128.21.74 as permitted sender) smtp.mailfrom=sbrivio@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=redhat.com;
	s=mimecast20190719; t=1584407154;
	h=from:from:reply-to:subject:subject:date:date:message-id:message-id:
	 to:to:cc:cc:mime-version:mime-version:content-type:content-type:
	 content-transfer-encoding:content-transfer-encoding:
	 in-reply-to:in-reply-to:references:references;
	bh=2xBC9BIhVpGHL2x4i2Jzb6AKCqMo7ef2u/OAkj0OGrk=;
	b=CIqCWIF6hly1JqawZNmP+3w9vFhv5d5zbhpGgeAWz85xxfkn3QRaWuDv+CWe/N8LBEzm/O
	B9nXGSrIHCYnZy2gjFHIb0fjZwXOMzy/Ks29kEiWlWnIubcdKniw5ktGqZimXJktZsadzb
	Y5SZJohXDANCUIo2CeP2EIw/npEMO68=
Received: from mimecast-mx01.redhat.com (mimecast-mx01.redhat.com
 [209.132.183.4]) (Using TLS) by relay.mimecast.com with ESMTP id
 us-mta-414-393xmCbfNBuc1C-vwHUfBA-1; Mon, 16 Mar 2020 21:05:52 -0400
X-MC-Unique: 393xmCbfNBuc1C-vwHUfBA-1
Received: from smtp.corp.redhat.com (int-mx07.intmail.prod.int.phx2.redhat.com [10.5.11.22])
	(using TLSv1.2 with cipher AECDH-AES256-SHA (256/256 bits))
	(No client certificate requested)
	by mimecast-mx01.redhat.com (Postfix) with ESMTPS id 0EA97100550E;
	Tue, 17 Mar 2020 01:05:51 +0000 (UTC)
Received: from elisabeth (unknown [10.40.208.5])
	by smtp.corp.redhat.com (Postfix) with ESMTPS id 48DFA1001B28;
	Tue, 17 Mar 2020 01:05:46 +0000 (UTC)
Date: Tue, 17 Mar 2020 02:05:37 +0100
From: Stefano Brivio <sbrivio@redhat.com>
To: Enrique Vargas <jevargas@seas.upenn.edu>
Cc: Steve Longerbeam <slongerbeam@gmail.com>, Philipp Zabel
 <p.zabel@pengutronix.de>, Mauro Carvalho Chehab <mchehab@kernel.org>, Greg
 Kroah-Hartman <gregkh@linuxfoundation.org>, Shawn Guo
 <shawnguo@kernel.org>, Sascha Hauer <s.hauer@pengutronix.de>, Pengutronix
 Kernel Team <kernel@pengutronix.de>, Fabio Estevam <festevam@gmail.com>,
 NXP Linux Team <linux-imx@nxp.com>, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3] Staging: media: imx: eliminate
 unused code
Message-ID: <20200317020537.1eff25a3@elisabeth>
In-Reply-To: <20200313172019.GA22581@evX1>
References: <20200313172019.GA22581@evX1>
Organization: Red Hat
MIME-Version: 1.0
X-Scanned-By: MIMEDefang 2.84 on 10.5.11.22
X-Mimecast-Spam-Score: 0
X-Mimecast-Originator: redhat.com
Content-Type: text/plain; charset=US-ASCII
Content-Transfer-Encoding: 7bit

On Fri, 13 Mar 2020 11:21:49 -0600
Enrique Vargas <jevargas@seas.upenn.edu> wrote:

> Eliminate code that is never used inside #ifdef 0 / #endif.  This eliminates WARNING found using checkpatch.

This should be wrapped to at most 76 characters, so that it can be
displayed by git (e.g. git log) without exceeding 80 columns. Some
personally prefer 72 columns or even less, I usually stick to 70.

> Signed-off-by: Enrique Vargas <jevargas@seas.upenn.edu>
> ---
> v2 Fix description typo with broken line
> v3 Include change control, as suggested by Greg.
> 
>  drivers/staging/media/imx/imx-media-csi.c | 8 +-------
>  1 file changed, 1 insertion(+), 7 deletions(-)
> 
> diff --git a/drivers/staging/media/imx/imx-media-csi.c b/drivers/staging/media/imx/imx-media-csi.c
> index b60ed4f22f6d..2001f7851e90 100644
> --- a/drivers/staging/media/imx/imx-media-csi.c
> +++ b/drivers/staging/media/imx/imx-media-csi.c
> @@ -1131,13 +1131,7 @@ static int csi_link_validate(struct v4l2_subdev *sd,
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
> +
>  		ipu_csi_set_mipi_datatype(priv->csi, vc_num,
>  					  &priv->format_mbus[CSI_SINK_PAD]);

By the way, now that you remove that, it's not clear from the comment
why vc_num is even a variable. You could directly call
ipu_csi_set_mipi_datatype() with 0 as channel (in this patch, or in
another one, I don't have a strong preference -- I would personally
do that in the same patch).

-- 
Stefano


