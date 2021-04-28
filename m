X-GM-THRID: 6954852340804354048
X-Received: by 2002:a17:90a:6582:: with SMTP id k2mr5853257pjj.11.1619643544021;
        Wed, 28 Apr 2021 13:59:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:88d0:: with SMTP id k16ls397375pff.10.gmail; Wed, 28 Apr
 2021 13:59:02 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxAb5OwupJ8jYABjsqkop/8ADh6GCr8VkGYZVQJEtdXKLTTTE76xOgbOdd/0PDOA1MoLKfH
X-Received: by 2002:aa7:9f8f:0:b029:274:21e:fe0c with SMTP id z15-20020aa79f8f0000b0290274021efe0cmr21270828pfr.8.1619643542771;
        Wed, 28 Apr 2021 13:59:02 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1619643542; cv=none;
        d=google.com; s=arc-20160816;
        b=sAd/OXNuunYO8eLPvnlWo0yNzu9PtoHWtPq7ayEW4QGJJAuBzSvQLpb8oUZ6KYCb4P
         ZJwwKnKu5WAqCUA0upmk+KZCHmrqv6Kg7uRWNqreH8TqjQj50Ld+AAQCpyI5KQRMdRNZ
         cXeYmTbcE3zhbveHotnQFDF6TJFO0CsYBX9BYk5pPOBeou8oSPuV9lNyqg80Wc95FPeF
         QVy1EH35f4KL/aYkcdvKnf9jXrynrpjZNgaAWPyNdr7hq4eF0WXWfNy+VtG1QQ27vj+y
         2ZTAsTLqvkl3tZllyLzZHVxY6IE4csFRZxedDps+KEzD8S5kBgoNctA5PyQtenVEDYIK
         Dc4A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=G2OBzAUD24UfNgtHAYfTaV3vaIuaS43o5GiN5Oy1s58=;
        b=0mI8A2giP1G0HDA6B5Hgu3ce3X1SjhDM+nhfAJK7qrB/YaXUYs4AL5Ja7hZex77+BM
         7W5yZA4mH9KaQN4FURq7F0NenxU6alOLygzKmlTRtlCatew6H7Q5Z6iDp9NQgdxggNmd
         g/AVhz/JGRRWIYc532l9vTPKARO++jBlmatz9HXa8gnKUX+pBRxZ4HAmE80F9EaeR8dx
         M7f5ReHCuLzIIhlhobJXUNTAiFFTvejuN1G34HnW20uyD2mMp5gN0YGhLJmKRKePpauy
         bFci421dYxk8yBfzscRxrSZml8yhkmjvxGGwsZivvg6m0ZMqLlmhhwfD7rx98gi2hn6O
         xkaQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UK1m/XrN";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <alexdeucher@gmail.com>
Received: from mail-oo1-xc34.google.com (mail-oo1-xc34.google.com. [2607:f8b0:4864:20::c34])
        by gmr-mx.google.com with ESMTPS id e20si95585pjp.0.2021.04.28.13.59.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Wed, 28 Apr 2021 13:59:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c34 as permitted sender) client-ip=2607:f8b0:4864:20::c34;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="UK1m/XrN";
       spf=pass (google.com: domain of alexdeucher@gmail.com designates 2607:f8b0:4864:20::c34 as permitted sender) smtp.mailfrom=alexdeucher@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-oo1-xc34.google.com with SMTP id p12-20020a4a2f0c0000b02901ecdbb16887so7275265oop.5
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Apr 2021 13:59:02 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=G2OBzAUD24UfNgtHAYfTaV3vaIuaS43o5GiN5Oy1s58=;
        b=UK1m/XrNQZo+3/3qtTnm4bEdWY1wrjgQbNrEdxxm78JbP7qjX6F8Mo+Jh2utBLJs+V
         xZm+3y54er/qgAaO3CV/7rv0fLMB2zm0XHwbq8+T2sDaOu5y3DQghr34MenzS4tgMGGm
         KEelbBBxAUu640F9lRkhVtbUfakZ1lyioq3aZMm7q3rw2jxDH9+EAyT8reNcXngNX2NI
         0/7wbQRmPDYcS2uWbAImkXvkarazfm6qJejS8kQh17xz3j2ZbjBH+3z+H1+SfU8oeKG5
         Om3lyx7SXWqjES3J1Lnu5qTUM4dvurXmkAM8KIIPK4BeFqezE9OyIYlUOI1U369D8XXi
         LGoA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=G2OBzAUD24UfNgtHAYfTaV3vaIuaS43o5GiN5Oy1s58=;
        b=eJ5znXMnk0a8n9CKDjDqaE0BJGbGyvs18yP3o9Ej9s8gWyQsXMfo0F2rvINYNQDaCi
         OjttDWFHlJs0wMWsa3hOtpjhQeVSjjoq7/LRV5cEPGoUrHSQ0M0/s90cqfwZA4eGCLaT
         ie7d5QBCtvjG3hmFjYnWQrvcXEOlxkwMQhR4baCXLj3zXt2XITjsju0gmVY8MMW5k3wK
         vEQPFDAwLNy9K2TBK1GtyQoirUryNr1XWQGKqc5mK4cTmDNOqO5JegwtUGNhvRFczJ0A
         9IDrjxmmtYz6V7cqyG1j9O/DMLTos0j0R3kYKxVWaIgxLKH5ABI1tiviVJoarbFgd4aG
         NztQ==
X-Gm-Message-State: AOAM531CF92FFA2L+lOZIM78qZRu9TUxzmVxorr9r3YuiM2mtrr8RlIC
	JF7fzwbUAtKUgvS/HYzrF88/n7mNywfKcl7Aol4=
X-Received: by 2002:a4a:800d:: with SMTP id x13mr24537879oof.61.1619643542189;
 Wed, 28 Apr 2021 13:59:02 -0700 (PDT)
MIME-Version: 1.0
References: <20210424221900.9725-1-fmdefrancesco@gmail.com>
In-Reply-To: <20210424221900.9725-1-fmdefrancesco@gmail.com>
From: Alex Deucher <alexdeucher@gmail.com>
Date: Wed, 28 Apr 2021 16:58:51 -0400
Message-ID: <CADnq5_PqyyyY6rpX_Q+=H+ukhvgttgC9cOzXgzFt-Rv7jPamUA@mail.gmail.com>
Subject: Re: [PATCH v2] drm/amd/pm/powerplay/hwmgr: Fix kernel-doc syntax in documentation
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, 
	Maling list - DRI developers <dri-devel@lists.freedesktop.org>, Evan Quan <evan.quan@amd.com>, 
	Alex Deucher <alexander.deucher@amd.com>, =?UTF-8?Q?Christian_K=C3=B6nig?= <christian.koenig@amd.com>, 
	David Airlie <airlied@linux.ie>, Daniel Vetter <daniel@ffwll.ch>
Content-Type: text/plain; charset="UTF-8"

On Sat, Apr 24, 2021 at 6:19 PM Fabio M. De Francesco
<fmdefrancesco@gmail.com> wrote:
>
> Fixed kernel-doc syntax errors in documentation of functions.
>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>

Applied.  Thanks!

Alex

> ---
>
> Changes from v1: Reword both the subject and the log message
>
>  drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c | 8 ++++----
>  1 file changed, 4 insertions(+), 4 deletions(-)
>
> diff --git a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c
> index b1038d30c8dc..f503e61faa60 100644
> --- a/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c
> +++ b/drivers/gpu/drm/amd/pm/powerplay/hwmgr/ppatomctrl.c
> @@ -275,7 +275,7 @@ static const ATOM_VOLTAGE_OBJECT_V3 *atomctrl_lookup_voltage_type_v3(
>  }
>
>  /**
> - * atomctrl_get_memory_pll_dividers_si().
> + * atomctrl_get_memory_pll_dividers_si
>   *
>   * @hwmgr:           input parameter: pointer to HwMgr
>   * @clock_value:     input parameter: memory clock
> @@ -328,7 +328,7 @@ int atomctrl_get_memory_pll_dividers_si(
>  }
>
>  /**
> - * atomctrl_get_memory_pll_dividers_vi().
> + * atomctrl_get_memory_pll_dividers_vi
>   *
>   * @hwmgr:                 input parameter: pointer to HwMgr
>   * @clock_value:           input parameter: memory clock
> @@ -1104,7 +1104,7 @@ int atomctrl_calculate_voltage_evv_on_sclk(
>  }
>
>  /**
> - * atomctrl_get_voltage_evv_on_sclk gets voltage via call to ATOM COMMAND table.
> + * atomctrl_get_voltage_evv_on_sclk: gets voltage via call to ATOM COMMAND table.
>   * @hwmgr:              input: pointer to hwManager
>   * @voltage_type:       input: type of EVV voltage VDDC or VDDGFX
>   * @sclk:               input: in 10Khz unit. DPM state SCLK frequency
> @@ -1144,7 +1144,7 @@ int atomctrl_get_voltage_evv_on_sclk(
>  }
>
>  /**
> - * atomctrl_get_voltage_evv gets voltage via call to ATOM COMMAND table.
> + * atomctrl_get_voltage_evv: gets voltage via call to ATOM COMMAND table.
>   * @hwmgr:              input: pointer to hwManager
>   * @virtual_voltage_id: input: voltage id which match per voltage DPM state: 0xff01, 0xff02.. 0xff08
>   * @voltage:          output: real voltage level in unit of mv
> --
> 2.31.1
>
> _______________________________________________
> dri-devel mailing list
> dri-devel@lists.freedesktop.org
> https://lists.freedesktop.org/mailman/listinfo/dri-devel

