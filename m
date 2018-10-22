X-GM-THRID: 6615237556487323648
X-Received: by 2002:a25:a026:: with SMTP id x35-v6mr25799583ybh.86.1540231596211;
        Mon, 22 Oct 2018 11:06:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:ba08:: with SMTP id t8-v6ls463125ybg.19.gmail; Mon, 22
 Oct 2018 11:06:35 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60QLbhfdzsL8RLHAec9hLjkyQWQrIuX9sXIj4opo8qEuHu+H4uIYV2aXExdp3zSVgTcnq8W
X-Received: by 2002:a25:3492:: with SMTP id b140-v6mr10413200yba.90.1540231595196;
        Mon, 22 Oct 2018 11:06:35 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540231595; cv=none;
        d=google.com; s=arc-20160816;
        b=jZL/+LoWPliPpq2wpve84s5Lew3UfzdfTvIM51joRYo3eFKMZnuTsP9ZcrYaAzsJml
         6ezx6DuKmbRssNLnmspxLkJNZsm4QWMOl0HR6wp28aIqh8fHrkf5pVAjdSnacBbGHJ8v
         j46tnDRmuH/jNkyf6H3EfXlRAfPA95GipNme9+scrJ3NG4bNoAqD7NrZneXppi7cuzzJ
         +/+meeAzb+Zb2uKKpn3kjvKw05Xnko9FT78urYFwg+FWU0hWchU1ngK1RAfkR5Y8xpOh
         DmI05b4a4W5ZEbMaV/LBiGT51BbL0CVrtoy4TAQO7whCTjolfVLX4ynAOnZHJ+xuGm76
         VASQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version;
        bh=7utx4oY8xKWeX0bkHqVOjxk3ga2gembKpT+9yDNjl1g=;
        b=kiqhgtqcjpH3tVWe/OXwGuVwyAdLMq23+sp0nLA+2js/nGfMFxmgcGfRZuXsrQTyau
         9hjzJgFlv/4IKo+2d2GC52inJuOFkLHkqO/S6DbEfwPP+LBzDI0wGqXRwDoKTJNJIW7E
         xUwA4WBM/G+2S3PNoDFYu38b+33TCvoqbttCe68oaYVxo6j8778pZwkCMpMYijDxVfsp
         eJ1tF4qUmZI8CuoPC+GxcUH0ZLakjX2tD6DktmrgKlERgu6+cM5CyxcUIROnxFk+UVc7
         xpbHU8QhPGAsb/VlSpwyYpeAIWTfbVb6S+IW7tFjMaJoSlsWMm4JC6vqR69lSnuzgQcN
         oPNA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Return-Path: <vthakkar@vaishalithakkar.in>
Received: from p3plsmtpa08-10.prod.phx3.secureserver.net (p3plsmtpa08-10.prod.phx3.secureserver.net. [173.201.193.111])
        by gmr-mx.google.com with ESMTPS id v16-v6si1578210ybe.1.2018.10.22.11.06.34
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 11:06:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) client-ip=173.201.193.111;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar@vaishalithakkar.in designates 173.201.193.111 as permitted sender) smtp.mailfrom=vthakkar@vaishalithakkar.in
Received: from mail-wr1-f47.google.com ([209.85.221.47])
	by :SMTPAUTH: with ESMTPSA
	id Eeb3gg6uqzS5oEeb4gjwj7; Mon, 22 Oct 2018 11:06:34 -0700
Received: by mail-wr1-f47.google.com with SMTP id f17-v6so14221915wrs.12
        for <outreachy-kernel@googlegroups.com>; Mon, 22 Oct 2018 11:06:34 -0700 (PDT)
X-Gm-Message-State: AGRZ1gIvylxw/SBOU8IVVUm8PCndAvDP70TGol0qauyhpK30bT58fI0s
	Ns88jS4SMwIdla4XpbDmv8opV4Df6bmGQGuX1hU=
X-Received: by 2002:adf:ec86:: with SMTP id z6-v6mr15928949wrn.45.1540231593298;
 Mon, 22 Oct 2018 11:06:33 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1540229302.git.kimbrownkd@gmail.com> <4d1bd329f112fb50c5a234cfa12babf868f3b03c.1540229302.git.kimbrownkd@gmail.com>
In-Reply-To: <4d1bd329f112fb50c5a234cfa12babf868f3b03c.1540229302.git.kimbrownkd@gmail.com>
From: Vaishali Thakkar <vthakkar@vaishalithakkar.in>
Date: Mon, 22 Oct 2018 23:36:21 +0530
X-Gmail-Original-Message-ID: <CAK-LDb+xewF-uWWw7-dL2oXQJnd_SCuK+ViQQ-kc_3B0uP9drw@mail.gmail.com>
Message-ID: <CAK-LDb+xewF-uWWw7-dL2oXQJnd_SCuK+ViQQ-kc_3B0uP9drw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging:rtl8192u: Fix misspelling
 in struct member name - Style
To: kimbrownkd@gmail.com
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CMAE-Envelope: MS4wfMRvbQEz+++EfhIZFFY777AXpQq3B5lf/4FrT/mPDbaGtulflJcYfLNuidxLGgZyhdcppQgM6ZqJ+zakgJv5zWy6BvsvDXLk6EHFQXIkqz0UEbE9es4h
 YZwgRFqcZuLM5rGdZOpf2hl+rxu6s7lDXgPZIHZYMQdYb4xML5kDEaIpe0lQz/9kAxSeqs6EA1/W7At4I4miNXwvoPPWNmIk7Yw=

On Mon, Oct 22, 2018 at 11:11 PM Kimberly Brown <kimbrownkd@gmail.com> wrote:
>
> Fix the spelling mistake in the name of struct member
> 'cmdpacket_frag_thresold'. 'thresold' should be 'threshold'. Issue found
> by checkpatch.
>
> This is a coding style change which should have no impact on runtime
> code execution.
>
> Signed-off-by: Kimberly Brown <kimbrownkd@gmail.com>

With Julia's comment [on patch 3] addressed for all 3 patches,
feel free to add this for the whole series.

Reviewed-by: Vaishali Thakkar <vthakkar@vaishalithakkar.in>

> ---
>  drivers/staging/rtl8192u/r8192U.h          | 2 +-
>  drivers/staging/rtl8192u/r819xU_firmware.c | 4 ++--
>  2 files changed, 3 insertions(+), 3 deletions(-)
>
> diff --git a/drivers/staging/rtl8192u/r8192U.h b/drivers/staging/rtl8192u/r8192U.h
> index e65a893fd084..ec4de86933ba 100644
> --- a/drivers/staging/rtl8192u/r8192U.h
> +++ b/drivers/staging/rtl8192u/r8192U.h
> @@ -370,7 +370,7 @@ typedef struct _rt_firmare_seg_container {
>  } fw_seg_container, *pfw_seg_container;
>  typedef struct _rt_firmware {
>         firmware_status_e firmware_status;
> -       u16               cmdpacket_frag_thresold;
> +       u16               cmdpacket_frag_threshold;
>  #define RTL8190_MAX_FIRMWARE_CODE_SIZE  64000
>         u8                firmware_buf[RTL8190_MAX_FIRMWARE_CODE_SIZE];
>         u16               firmware_buf_size;
> diff --git a/drivers/staging/rtl8192u/r819xU_firmware.c b/drivers/staging/rtl8192u/r819xU_firmware.c
> index c3ea906f3af3..153d4ee0ec07 100644
> --- a/drivers/staging/rtl8192u/r819xU_firmware.c
> +++ b/drivers/staging/rtl8192u/r819xU_firmware.c
> @@ -24,7 +24,7 @@ static void firmware_init_param(struct net_device *dev)
>         struct r8192_priv       *priv = ieee80211_priv(dev);
>         rt_firmware             *pfirmware = priv->pFirmware;
>
> -       pfirmware->cmdpacket_frag_thresold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
> +       pfirmware->cmdpacket_frag_threshold = GET_COMMAND_PACKET_FRAG_THRESHOLD(MAX_TRANSMIT_BUFFER_SIZE);
>  }
>
>  /*
> @@ -49,7 +49,7 @@ static bool fw_download_code(struct net_device *dev, u8 *code_virtual_address,
>
>         firmware_init_param(dev);
>         /* Fragmentation might be required */
> -       frag_threshold = pfirmware->cmdpacket_frag_thresold;
> +       frag_threshold = pfirmware->cmdpacket_frag_threshold;
>         do {
>                 if ((buffer_len - frag_offset) > frag_threshold) {
>                         frag_length = frag_threshold;
> --
> 2.17.1
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/4d1bd329f112fb50c5a234cfa12babf868f3b03c.1540229302.git.kimbrownkd%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

