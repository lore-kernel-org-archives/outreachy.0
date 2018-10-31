X-GM-THRID: 6615609378154217472
X-Received: by 2002:a0c:baa5:: with SMTP id x37-v6mr2367746qvf.41.1541000018154;
        Wed, 31 Oct 2018 08:33:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ac8:ca:: with SMTP id d10-v6ls283531qtg.5.gmail; Wed, 31 Oct
 2018 08:33:37 -0700 (PDT)
X-Received: by 2002:ac8:520b:: with SMTP id r11-v6mr2497148qtn.4.1541000017750;
        Wed, 31 Oct 2018 08:33:37 -0700 (PDT)
Received: by 2002:a37:3411:0:0:0:0:0 with SMTP id b17msqka;
        Wed, 31 Oct 2018 08:32:11 -0700 (PDT)
X-Google-Smtp-Source: AJdET5fzqsxK6gscajpcPoxkeMEzwIP344beNxbpa/fIxB2k1zB+WzGsNcgClNbR3ZIa0JTpyosb
X-Received: by 2002:aa7:da54:: with SMTP id w20-v6mr604970eds.7.1540999930550;
        Wed, 31 Oct 2018 08:32:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540999930; cv=none;
        d=google.com; s=arc-20160816;
        b=YoqKsWQ1hSraQ2wL4K+wszH7TXnMeXC07FHbO4S4toacPCajjDWn3loVywgUBidp7L
         qHqC7f2TaE5WagXKtIWr4N6fbrtsGuWkl8wkdD03v3iioLDfWOrs56g1yl7XPWkMSkDM
         ufsVELJpThuiVWw2K0SfB7H9/4gx3d2djIYdjuFo804Fwap+90FY1eZnyP13IwybEKBc
         hxb+H/LzUhBEg+6C60g06iPX6esm4WJyaVuCynEOn52V5lxG7rqrzihl6NlOIhSN/VYs
         6qdIgcxOcE6gXZKjrsyGYWRtgBXxVc65xcJ/hCZK6lIaCIMfZ8X8n3SWz5F00bYRdDdL
         IjPA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=dFuuzzVervNWZbqFaBXGxKSUYAoP4Ka5Yu9PHg0JzAo=;
        b=g/bD+IAeQ7uBcsLWYqtXV7xUPW0FnwftW3FNsH4YyG7fCanz2HZ/hgmfRmski2l1HF
         BVfXyYFWoU8jGrIP0BKEByztpjqLyhRf5pjNRyqFQlftKv+pOecCAxSz00g6NOh2Cf6i
         9YOAdfIKy43YUlxkOk1TURlA/yZd9fHTVftqcASCtU2MFo75/zub4JqkgIuNo8wCi7rO
         quk1GIYfRSJ9Vnk9EWn1gY1UrcokY6psRhYpGkl2E2aCzU/+sqT20pTiIbU1crO7/5J4
         SIpU5k9z5XOes5EW4aF7QbD+EEbbn9/MhC4+sntZq7+RiTTSLq/Av3z6Xl1IGnQbd3NK
         u9Ag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.221.66 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <hdegoede@redhat.com>
Received: from mail-wr1-f66.google.com (mail-wr1-f66.google.com. [209.85.221.66])
        by gmr-mx.google.com with ESMTPS id x43-v6si826463edd.4.2018.10.31.08.32.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 08:32:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 209.85.221.66 as permitted sender) client-ip=209.85.221.66;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.221.66 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: by mail-wr1-f66.google.com with SMTP id r10-v6so16988354wrv.6
        for <outreachy-kernel@googlegroups.com>; Wed, 31 Oct 2018 08:32:10 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=dFuuzzVervNWZbqFaBXGxKSUYAoP4Ka5Yu9PHg0JzAo=;
        b=G6WQv3YfMZa4EMZZCtW2OHi0utoZ6tHbl3t/bc60OLwGxjIMz70+fnfLDITsfeNcvw
         ZiQHh8Kb/W0aj+Z754sqUxHy+Oeekae5mQUq5E4XaHQjdjYv1XGEpZHaSTLP62kM70RA
         PLvLkKaJT62nmHSXwiEcqA9iBuKoeBkk8S3iT9SepLMVpIf3l13JefGLeXlW3tAFIk2C
         XF1rmIQTdmpsmkVmU/CwQ/Dldxc3UliCGVT/VqIQGnXAe1PEvz0m6nHz6nSwD+pLoPiI
         lQ//qCtgO42MbHq7XiQXLs9a/CU3JqyPROOu9DF04T5rhTlX3Hp39sxS17CmVZz5gtFi
         yHiQ==
X-Gm-Message-State: AGRZ1gIcIXJ2TZVzSnev4zyWRcGXTrVNwcSl89xFhCNdo7TOnkO52dyi
	9NnyZmrmWLjZr2CqYOHXjrC8NL5qbco=
X-Received: by 2002:adf:c389:: with SMTP id p9-v6mr3397285wrf.68.1540999929555;
        Wed, 31 Oct 2018 08:32:09 -0700 (PDT)
Return-Path: <hdegoede@redhat.com>
Received: from shalem.localdomain (546A5441.cm-12-3b.dynamic.ziggo.nl. [84.106.84.65])
        by smtp.gmail.com with ESMTPSA id y138-v6sm13535252wmd.2.2018.10.31.08.32.08
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 31 Oct 2018 08:32:08 -0700 (PDT)
Subject: Re: [PATCH v3] staging: vboxvideo: Remove unnecessary parentheses
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20181031150326.yikoivqgwfurtrg4@smtp.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <989f41f2-8b65-421a-7af3-69c35e7d2594@redhat.com>
Date: Wed, 31 Oct 2018 16:32:08 +0100
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20181031150326.yikoivqgwfurtrg4@smtp.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 31-10-18 16:03, Shayenne da Luz Moura wrote:
> Remove unneeded parentheses around the arguments of ||. This reduces
> clutter and code behave in the same way.
> Change suggested by checkpatch.pl.
> 
> vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> crtc->x'
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>

Thank you.

Still looks good to me:

Acked-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans



> ---
> Changes in v2:
>    - Make the commit message more clearer.
> 
> Changes in v3:
>    - Update to apply patch to the latest kernel tree
> 
>   drivers/staging/vboxvideo/vbox_main.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vboxvideo/vbox_main.c b/drivers/staging/vboxvideo/vbox_main.c
> index 7466c1103ff6..ad0e0b62bd1e 100644
> --- a/drivers/staging/vboxvideo/vbox_main.c
> +++ b/drivers/staging/vboxvideo/vbox_main.c
> @@ -122,10 +122,10 @@ void vbox_framebuffer_dirty_rectangles(struct drm_framebuffer *fb,
>   			struct vbva_cmd_hdr cmd_hdr;
>   			unsigned int crtc_id = to_vbox_crtc(crtc)->crtc_id;
>   
> -			if ((rects[i].x1 > crtc_x + mode->hdisplay) ||
> -			    (rects[i].y1 > crtc_y + mode->vdisplay) ||
> -			    (rects[i].x2 < crtc_x) ||
> -			    (rects[i].y2 < crtc_y))
> +			if (rects[i].x1 > crtc_x + mode->hdisplay ||
> +			    rects[i].y1 > crtc_y + mode->vdisplay ||
> +			    rects[i].x2 < crtc_x ||
> +			    rects[i].y2 < crtc_y)
>   				continue;
>   
>   			cmd_hdr.x = (s16)rects[i].x1;
> 

