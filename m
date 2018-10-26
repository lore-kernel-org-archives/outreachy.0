X-GM-THRID: 6615609378154217472
X-Received: by 2002:a37:1183:: with SMTP id 3-v6mr2445501qkr.40.1540552988810;
        Fri, 26 Oct 2018 04:23:08 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9ad9:: with SMTP id k25ls628252qvf.0.gmail; Fri, 26 Oct
 2018 04:23:08 -0700 (PDT)
X-Received: by 2002:a0c:e809:: with SMTP id y9mr2420416qvn.62.1540552988265;
        Fri, 26 Oct 2018 04:23:08 -0700 (PDT)
Received: by 2002:a37:9ad5:0:0:0:0:0 with SMTP id c204-v6msqke;
        Fri, 26 Oct 2018 04:11:14 -0700 (PDT)
X-Google-Smtp-Source: AJdET5f6U1YBWxUhKwaqo0n04/Oc2JCh5ayZtYLyMLdEWelsa0mxVvwobdEahyJ9EBNy+FBvc80b
X-Received: by 2002:a50:c982:: with SMTP id w2-v6mr492553edh.12.1540552273795;
        Fri, 26 Oct 2018 04:11:13 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540552273; cv=none;
        d=google.com; s=arc-20160816;
        b=Oyqf20uzNPeND4qCYU6VuNGvo7RbF9OUDXOsOgMPRfc0KZkdD4ykubSndzQFFixyXS
         9kAFBEcOShP/8YmDJwH44ZjGH28AXy8vtHoLpPijIYzZz4fNGOzUcn33OqMnaI/2v3ul
         dC9//empNkaIcnaAFtkw+eFE4hddSlCslhvoQs73POd7lnCc5eStEzU73hHPBNkJjFpd
         7koBDxAXfNNVLYkn4/sdMF93Xk6lJIw0ctILR9UVw3zRNM9VqNGfrWU5U7cAPazAHlry
         YOM9eNG0ywgDCkBrJm1wv2ZA+hEKEjBKEVq8Lz1nLgiuuodKKkLjwFQOmxFRJvN1G9Xz
         G8Nw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject;
        bh=Sk3aqzbcH+P51a7Z1ePWGGB2+48CcYPa0UIpdakUXBM=;
        b=OLnWiP6kQzWhtQjCqepIX7WigSsRu/FGekzaO8r6FWNTtpbt2D7+FaD/vD4VqusBJD
         EPdcTfV4KLcvseCifW8A5wusLzrMz8bwR7kpL+0DXxmCGFu3LUgqy4nsO5Tgxr0VKYWl
         b70pCA9TlhSv0oZ0wuQ0s1kzrZlLx4iEusieUr1Mk/mY6m8MCqucAVjeK6uFi54mvm8g
         5MGaritiOaAeT76YY2Fsc4asEmr23s9R95UpJllRNISy781wokoamZajeiEXOwjzK79O
         Vigch11K4+QKSxUA/pZeABLTfLOcFVs/lbJ8sl0pc4q5uVHbWDtVPQHTYxRoFDOetltY
         WZlw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Return-Path: <hdegoede@redhat.com>
Received: from mail-ed1-f68.google.com (mail-ed1-f68.google.com. [209.85.208.68])
        by gmr-mx.google.com with ESMTPS id n20-v6si207329edt.3.2018.10.26.04.11.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 04:11:13 -0700 (PDT)
Received-SPF: pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.68 as permitted sender) client-ip=209.85.208.68;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of hdegoede@redhat.com designates 209.85.208.68 as permitted sender) smtp.mailfrom=hdegoede@redhat.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=redhat.com
Received: by mail-ed1-f68.google.com with SMTP id y20-v6so921817eds.10
        for <outreachy-kernel@googlegroups.com>; Fri, 26 Oct 2018 04:11:13 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:subject:to:cc:references:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-language
         :content-transfer-encoding;
        bh=Sk3aqzbcH+P51a7Z1ePWGGB2+48CcYPa0UIpdakUXBM=;
        b=quPOybOAprYVAh8aCUWMHsmT1y32nGI4kgRc2AulGU6CGbWVQp0xj5HAAiKwC/gq/P
         MaqYuZOvHJob4SQapCZf6ZSPkenT8hMdZGm1fnGaGAmdLp7a5eHwiCfOxmzSO3EcSpZh
         cpH3o1LWbQROx1plRSHF83AbC+5nsblADKaa7aYKFxusMEs0sip3bJYf+CwJc9kPfa5W
         g0X2gw1RvpA2+6abnSBNkKpVMnK+Sc6m/V5zFrZz0opCNnJFWrZiTF4R3y5ftuXIIZif
         1ZsTQ9N1Q4+hbSbZDstZwfIQZDwWM/+hxx9gL53pPuQQ+k2TweMeeNTafqs4dlKrQ++Y
         GQ0g==
X-Gm-Message-State: AGRZ1gJ1df2VxTopLWRG8c7vXFL0Hs+bfRvDft9v1fppbPe4AdRXQaXa
	yDBwkQth+6EuTXl5GnBXxqeZZ27IjnI=
X-Received: by 2002:a17:906:1141:: with SMTP id i1-v6mr2119089eja.110.1540552273228;
        Fri, 26 Oct 2018 04:11:13 -0700 (PDT)
Return-Path: <hdegoede@redhat.com>
Received: from shalem.localdomain (546A5441.cm-12-3b.dynamic.ziggo.nl. [84.106.84.65])
        by smtp.gmail.com with ESMTPSA id g6-v6sm1356856edc.38.2018.10.26.04.11.12
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 26 Oct 2018 04:11:12 -0700 (PDT)
Subject: Re: [PATCH v2] staging: vboxvideo: Remove unnecessary parentheses
To: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Michael Thayer <michael.thayer@oracle.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
 outreachy-kernel@googlegroups.com
References: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
From: Hans de Goede <hdegoede@redhat.com>
Message-ID: <70a66c27-eced-89ae-79fc-af3d0aa06311@redhat.com>
Date: Fri, 26 Oct 2018 13:11:11 +0200
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.8.0
MIME-Version: 1.0
In-Reply-To: <20181023174304.iq4ra7vafwujr3ex@smtp.gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-US
Content-Transfer-Encoding: 7bit

Hi,

On 23-10-18 19:43, Shayenne da Luz Moura wrote:
> Remove unneeded parentheses around the arguments of ||. This reduces
> clutter and code behave in the same way.
> Change suggested by checkpatch.pl.
> 
> vbox_main.c:119: CHECK: Unnecessary parentheses around 'rects[i].x2 <
> crtc->x'
> 
> Signed-off-by: Shayenne da Luz Moura <shayenneluzmoura@gmail.com>

Patch looks good to me:

Reviewed-by: Hans de Goede <hdegoede@redhat.com>

Regards,

Hans


> ---
> Changes in v2:
>    - Make the commit message more clearer.
>   
>   drivers/staging/vboxvideo/vbox_main.c | 8 ++++----
>   1 file changed, 4 insertions(+), 4 deletions(-)
> 
> diff --git a/drivers/staging/vboxvideo/vbox_main.c b/drivers/staging/vboxvideo/vbox_main.c
> index 429f6a453619..10a862674789 100644
> --- a/drivers/staging/vboxvideo/vbox_main.c
> +++ b/drivers/staging/vboxvideo/vbox_main.c
> @@ -116,10 +116,10 @@ void vbox_framebuffer_dirty_rectangles(struct drm_framebuffer *fb,
>   			struct vbva_cmd_hdr cmd_hdr;
>   			unsigned int crtc_id = to_vbox_crtc(crtc)->crtc_id;
>   
> -			if ((rects[i].x1 > crtc->x + crtc->hwmode.hdisplay) ||
> -			    (rects[i].y1 > crtc->y + crtc->hwmode.vdisplay) ||
> -			    (rects[i].x2 < crtc->x) ||
> -			    (rects[i].y2 < crtc->y))
> +			if (rects[i].x1 > crtc->x + crtc->hwmode.hdisplay ||
> +			    rects[i].y1 > crtc->y + crtc->hwmode.vdisplay ||
> +			    rects[i].x2 < crtc->x ||
> +			    rects[i].y2 < crtc->y)
>   				continue;
>   
>   			cmd_hdr.x = (s16)rects[i].x1;
> 

