X-GM-THRID: 6210088605629546496
X-Received: by 10.13.209.70 with SMTP id t67mr32285274ywd.46.1445899311640;
        Mon, 26 Oct 2015 15:41:51 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.252.196 with SMTP id zu4ls1796877obc.59.gmail; Mon, 26 Oct
 2015 15:41:51 -0700 (PDT)
X-Received: by 10.182.126.47 with SMTP id mv15mr34416756obb.44.1445899311291;
        Mon, 26 Oct 2015 15:41:51 -0700 (PDT)
Return-Path: <ksenija.stanojevic@gmail.com>
Received: from mail-io0-x236.google.com (mail-io0-x236.google.com. [2607:f8b0:4001:c06::236])
        by gmr-mx.google.com with ESMTPS id mh4si897832igb.0.2015.10.26.15.41.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 26 Oct 2015 15:41:51 -0700 (PDT)
Received-SPF: pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) client-ip=2607:f8b0:4001:c06::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of ksenija.stanojevic@gmail.com designates 2607:f8b0:4001:c06::236 as permitted sender) smtp.mailfrom=ksenija.stanojevic@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-io0-x236.google.com with SMTP id z202so202298483iof.2
        for <outreachy-kernel@googlegroups.com>; Mon, 26 Oct 2015 15:41:51 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=0/3ICoU16MMDDx17PyHr3SgG9R4ldO4AANOguKOx3QA=;
        b=v5BRwGnOe6S4MfxjAqP3G5M5Uh/zvqNf0UYZlmBiwNIT+t2QG9ysX6UUzy9v98Ywjf
         YrdF96+QiX6LupzgUEenAFo5YvxjH4HqcYyp7L0z7Bts66lMzKYA0y4zdMM853bgjW4c
         kEQgEoIDZEZ9kkRcgYoplUZVHlaMWSHGiz7VEmG5dgUFXVGdELSrb1d4pDDkoJh0l/vL
         XFkgHrcE4SQu+RHNd2ofmjld+bPesw1yRm5cpHOsL+iahXpR/bO3dL7oAaafYWKL41xG
         UDmmi/JzZYbmm8ocv/KSBvHIQIkEReyFCh5BCNIvIXugi7CvDd4k4MO2MymXxZEomA4e
         9w2Q==
MIME-Version: 1.0
X-Received: by 10.107.4.83 with SMTP id 80mr3440479ioe.150.1445899311186; Mon,
 26 Oct 2015 15:41:51 -0700 (PDT)
Received: by 10.107.149.205 with HTTP; Mon, 26 Oct 2015 15:41:51 -0700 (PDT)
In-Reply-To: <5b741301ef667e414f76794607dcdc4355aa1595.1445898781.git.theonly.ultimate@gmail.com>
References: <cover.1445898781.git.theonly.ultimate@gmail.com>
	<5b741301ef667e414f76794607dcdc4355aa1595.1445898781.git.theonly.ultimate@gmail.com>
Date: Mon, 26 Oct 2015 15:41:51 -0700
Message-ID: <CAL7P5jKksi7VXpupfG5RzfE7zvSPPmTBv+2SdkUzngh-j83zfQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/8] Staging: rdma ipath: Removing
 multiple blank lines
From: =?UTF-8?Q?Ksenija_Stanojevi=C4=87?= <ksenija.stanojevic@gmail.com>
To: Swetha <theonly.ultimate@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, linux-usb@vger.kernel.org
Content-Type: text/plain; charset=UTF-8

Hi Swetha,

On Mon, Oct 26, 2015 at 3:36 PM, Swetha <theonly.ultimate@gmail.com> wrote:
> This patch fixes the checkpatch issue
>
> CHECK: Please don't use multiple blank lines
>
> Signed-off-by: Swetha <theonly.ultimate@gmail.com>
                         ^^^^^^^
Here you need to write your full name, look at other patches on the list.

Ksenija

> ---
>  drivers/staging/rdma/ipath/ipath_common.h | 4 ----
>  1 file changed, 4 deletions(-)
>
> diff --git a/drivers/staging/rdma/ipath/ipath_common.h b/drivers/staging/rdma/ipath/ipath_common.h
> index 28cfe97..812fb9b 100644
> --- a/drivers/staging/rdma/ipath/ipath_common.h
> +++ b/drivers/staging/rdma/ipath/ipath_common.h
> @@ -39,7 +39,6 @@
>   * to communicate between kernel and user code.
>   */
>
> -
>  /* This is the IEEE-assigned OUI for QLogic Inc. InfiniPath */
>  #define IPATH_SRC_OUI_1 0x00
>  #define IPATH_SRC_OUI_2 0x11
> @@ -344,7 +343,6 @@ struct ipath_base_info {
>
>  } __attribute__ ((aligned(8)));
>
> -
>  /*
>   * This version number is given to the driver by the user code during
>   * initialization in the spu_userversion field of ipath_user_info, so
> @@ -767,7 +765,6 @@ struct ether_header {
>         __u8 unused[2];         /* currently unused */
>  };
>
> -
>  /* IB - LRH header consts */
>  #define IPATH_LRH_GRH 0x0003   /* 1. word of IB LRH - next header: GRH */
>  #define IPATH_LRH_BTH 0x0002   /* 1. word of IB LRH - next header: BTH */
> @@ -793,7 +790,6 @@ struct ether_header {
>  #define RCVHQ_RCV_TYPE_NON_KD    2
>  #define RCVHQ_RCV_TYPE_ERROR     3
>
> -
>  /* sub OpCodes - ith4x  */
>  #define IPATH_ITH4X_OPCODE_ENCAP 0x81
>  #define IPATH_ITH4X_OPCODE_LID_ARP 0x82
> --
> 1.9.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/5b741301ef667e414f76794607dcdc4355aa1595.1445898781.git.theonly.ultimate%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

