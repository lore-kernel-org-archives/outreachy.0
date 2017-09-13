X-GM-THRID: 6465296878768488448
X-Received: by 10.107.3.25 with SMTP id 25mr11370689iod.45.1505339428605;
        Wed, 13 Sep 2017 14:50:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.222.13 with SMTP id v13ls3752957iog.40.gmail; Wed, 13 Sep
 2017 14:50:28 -0700 (PDT)
X-Received: by 10.99.121.141 with SMTP id u135mr11850253pgc.156.1505339427959;
        Wed, 13 Sep 2017 14:50:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505339427; cv=none;
        d=google.com; s=arc-20160816;
        b=A7rVzchWv9I4KKe2OHR3KuA2U/GWoJ4sIhyr83gZk2S0PdQN0fKa2I6oKQkSCDa6fu
         3LQ5s9S6bA2H7AHN8LortV/kU3OxOZgzrwiUmrwys5dvjubq8XXUeVbiaBsyCp6T/aXp
         VjldIJJv1HqSvDvhAnfhUUgksawJw+eiNJba69PprOW10p456NMYDMp8A0dhvNhOOXJY
         xAINP03V0Ixdu8TRUUBo9dJEmVYotiyM6IgmV9D/CP5Ps3oPhy7easBkeiXDvayvOU3r
         Z8WtCnF6V5Jm0GZBQoAlEE2M/Fkt4cd4PxkFxdup8XFzyo+msaIwePVJ3EjH7tent4wB
         NtTw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:references:in-reply-to
         :mime-version:dkim-signature:arc-authentication-results;
        bh=1mKMTQgoUVo/cBSrlSiO5myQFoZmDTGotMBhA6/z1UM=;
        b=K5PnECXcY9N2W6x8QC0fYXQFkXkXGoZmnU+NWvT/5akG4+xufZpoY5emEifkB15JNU
         HPMkcd12k043tgEHHICc3rVrocvz4p+2j7AYGWtaq5LIZ6K0XLzbJne60/g4kskUkOzO
         kOoXhwBRiIZc5QqJ34JoReFOiwJ2x1nvhoi2aiT44+JEgVN34+Zg12vYvU1hWRgDd0Xz
         QOtfMOuqFgmFFOnGLLWHZdT29mIU3WAHG9mwJ6Pa5GLAWH80WszYkWua4uVvo3s0+PhD
         hnkqzeU+V9GUpsubc2DwwPtxQYb5ijXqNanPZmmUryUt6jnLgWFAqPOBYgJX1rubshzu
         Uszg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D2mdPB5u;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Return-Path: <seanpaul@chromium.org>
Received: from mail-yw0-x22e.google.com (mail-yw0-x22e.google.com. [2607:f8b0:4002:c05::22e])
        by gmr-mx.google.com with ESMTPS id o190si1075335ywo.11.2017.09.13.14.50.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:50:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22e as permitted sender) client-ip=2607:f8b0:4002:c05::22e;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@chromium.org header.s=google header.b=D2mdPB5u;
       spf=pass (google.com: domain of seanpaul@chromium.org designates 2607:f8b0:4002:c05::22e as permitted sender) smtp.mailfrom=seanpaul@chromium.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=chromium.org
Received: by mail-yw0-x22e.google.com with SMTP id v72so3483224ywa.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 14:50:27 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=chromium.org; s=google;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=1mKMTQgoUVo/cBSrlSiO5myQFoZmDTGotMBhA6/z1UM=;
        b=D2mdPB5uQ+TWrMPzpI5nwj7UEvwgcKjPzOR2B67vVFnJuWvTfCHbQYX8iC5WckR9LK
         JOSwsi/RWS4F42v7f9vT7iLDFEMCfBAa1a6dgK/w5nTjOiZ4C1WXFyzHiS7ITu3050rh
         ZplwR9WILDzjfDQjiAPPLGNFZFavZK1Q+Cir4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=1mKMTQgoUVo/cBSrlSiO5myQFoZmDTGotMBhA6/z1UM=;
        b=gevLL5DbVyBniu5UweDtYDnqhJ8JeEMSGL9I5OAj070IwYxfSLHLDBuU7xtZ/8IKSD
         ipR3b172hKky7nX5iPt9jvxs5V4YH6/l33YHj4GkDrBCKDHuDMq5pbgwPWYkNYmyz6jm
         DHjGY3ATPWYQaSltX6lKZGDNAe/mXiQK2Kdw0FaBDirnbF4WMOeXwf0BMVxJda/1yS1M
         gMRDy+XeQ4FZynsLLX5fljxVNrcf1KoOGXNqN77wWJOUmJM2cHj8ZPHGhxs+JIaGlWIQ
         M0h4IFVGQcQ+ygxCcIVkmSfG06fPonwiyhW78szjNMpqQ5T50A3XQ/oFbVwLb4VWYNgH
         wHGg==
X-Gm-Message-State: AHPjjUit8Ho4tPGB1GMtXNKKFy3gnDXLhRU4qPFKkHLpJyFGcHdkyN+c
	PlYHXkHpklKVlqagiWcsfA==
X-Received: by 10.129.49.75 with SMTP id x72mr16399878ywx.298.1505339427521;
        Wed, 13 Sep 2017 14:50:27 -0700 (PDT)
Return-Path: <seanpaul@chromium.org>
Received: from mail-it0-f44.google.com (mail-it0-f44.google.com. [209.85.214.44])
        by smtp.gmail.com with ESMTPSA id e4sm4944224ywd.63.2017.09.13.14.50.26
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 14:50:27 -0700 (PDT)
Received: by mail-it0-f44.google.com with SMTP id 6so563813itl.1
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 14:50:26 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBBJSOREro6FxIa87p5keQ2Kb0v46FSPIK5p6pLeMX3uHYWP/UFVCkqXIvrGzGbyoTlCG/kkmznk587Ez+xxjA=
X-Received: by 10.36.93.82 with SMTP id w79mr230290ita.119.1505339426303; Wed,
 13 Sep 2017 14:50:26 -0700 (PDT)
MIME-Version: 1.0
Received: by 10.107.156.195 with HTTP; Wed, 13 Sep 2017 14:50:05 -0700 (PDT)
In-Reply-To: <alpine.DEB.2.20.1709132214330.2920@hadrien>
References: <20170913161340.GA3204@meghana-HP-Pavilion-Notebook> <alpine.DEB.2.20.1709132214330.2920@hadrien>
From: Sean Paul <seanpaul@chromium.org>
Date: Wed, 13 Sep 2017 17:50:05 -0400
X-Gmail-Original-Message-ID: <CAOw6vbJTpMdDSQPjE4X9R-ZStSSh+4qL4mq5nbSrGT=p-HZs5Q@mail.gmail.com>
Message-ID: <CAOw6vbJTpMdDSQPjE4X9R-ZStSSh+4qL4mq5nbSrGT=p-HZs5Q@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2 1/3] drm: Move EXPORT_SYMBOL so that
 it immediately follows its function
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: Meghana Madhyastha <meghana.madhyastha@gmail.com>, outreachy-kernel@googlegroups.com, 
	Jani Nikula <jani.nikula@linux.intel.com>, dri-devel <dri-devel@lists.freedesktop.org>
Content-Type: text/plain; charset="UTF-8"

On Wed, Sep 13, 2017 at 4:16 PM, Julia Lawall <julia.lawall@lip6.fr> wrote:
>
>
> On Wed, 13 Sep 2017, Meghana Madhyastha wrote:
>
>> EXPORT_SYMBOL(foo) should immediately follow its function/variable.
>> This coding style is preferred.
>> Found by checkpath.pl.
>>
>> Signed-off-by: Meghana Madhyastha <meghana.madhyastha@gmail.com>

With Julia's suggestion resolved:

Reviewed-by: Sean Paul <seanpaul@chromium.org>

>> ---
>>  drivers/gpu/drm/drm_agpsupport.c | 4 ----
>>  1 file changed, 4 deletions(-)
>>
>> diff --git a/drivers/gpu/drm/drm_agpsupport.c b/drivers/gpu/drm/drm_agpsupport.c
>> index c899534..928248e 100644
>> --- a/drivers/gpu/drm/drm_agpsupport.c
>> +++ b/drivers/gpu/drm/drm_agpsupport.c
>> @@ -70,7 +70,6 @@ int drm_agp_info(struct drm_device *dev, struct drm_agp_info *info)
>>
>>       return 0;
>>  }
>> -
>>  EXPORT_SYMBOL(drm_agp_info);
>>
>>  int drm_agp_info_ioctl(struct drm_device *dev, void *data,
>> @@ -106,7 +105,6 @@ int drm_agp_acquire(struct drm_device * dev)
>>       dev->agp->acquired = 1;
>>       return 0;
>>  }
>> -
>>  EXPORT_SYMBOL(drm_agp_acquire);
>>
>>  /**
>> @@ -171,7 +169,6 @@ int drm_agp_enable(struct drm_device * dev, struct drm_agp_mode mode)
>>       dev->agp->enabled = 1;
>>       return 0;
>>  }
>> -
>>  EXPORT_SYMBOL(drm_agp_enable);
>>
>>  int drm_agp_enable_ioctl(struct drm_device *dev, void *data,
>> @@ -373,7 +370,6 @@ int drm_agp_free(struct drm_device *dev, struct drm_agp_buffer *request)
>>  EXPORT_SYMBOL(drm_agp_free);
>>
>>
>> -
>
> I still don't think this change belongs in this patch.  I ran checkpatch
> on this file, and I only get warnings about the first three
> EXPORT_SYMBOLs.  There is no warning related to EXPORT_SYMBOL after line
> 175.
>
> julia
>
>>  int drm_agp_free_ioctl(struct drm_device *dev, void *data,
>>                      struct drm_file *file_priv)
>>  {
>> --
>> 2.7.4
>>
>> --
>> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
>> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
>> To post to this group, send email to outreachy-kernel@googlegroups.com.
>> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170913161340.GA3204%40meghana-HP-Pavilion-Notebook.
>> For more options, visit https://groups.google.com/d/optout.
>>
>
> --
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/alpine.DEB.2.20.1709132214330.2920%40hadrien.
> For more options, visit https://groups.google.com/d/optout.

