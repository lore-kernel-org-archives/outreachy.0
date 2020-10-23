X-GM-THRID: 6883926801253400576
X-Received: by 2002:a05:6214:a94:: with SMTP id ev20mr31097qvb.4.1603763465410;
        Mon, 26 Oct 2020 18:51:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:6214:249:: with SMTP id k9ls7691qvt.6.gmail; Mon, 26 Oct
 2020 18:51:04 -0700 (PDT)
X-Received: by 2002:a05:6214:12c4:: with SMTP id s4mr437447qvv.33.1603763463960;
        Mon, 26 Oct 2020 18:51:03 -0700 (PDT)
Received: by 2002:a05:620a:10a5:b029:167:2e1e:e8b0 with SMTP id h5-20020a05620a10a5b02901672e1ee8b0msqkk;
        Fri, 23 Oct 2020 06:03:30 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJwXJYnF6J2zVJrhR1WFSPn1IjE+EmmlQhCCIAcFPFKwA1kyWfk8xQwoYzlg8w6jAA92o8r2
X-Received: by 2002:a67:ec89:: with SMTP id h9mr1152038vsp.55.1603458209876;
        Fri, 23 Oct 2020 06:03:29 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1603458209; cv=none;
        d=google.com; s=arc-20160816;
        b=TKbWJIiwtO5aBMsGn5neeEIPcLC/U9ghgTR74wRCshNTE2ZaCCVx5J+k22/elbnEhY
         RKvJw5Pf7FmZEoXWM4aYrCct4qJDKQbpV619kuHY9qHJj8nlfEvEcqzKRH7Q7th4trO/
         BGFBsaI2vis8P7nbSrhnLCWY4wpQkIdBu+0w3k6L0u4F4Whl9SXk9cCNu6qposSfNwcQ
         K+l5nTWg+otOgBF2HbbG5EVNKm0n8kuzu4rDeimy38ftKBpGQVRcSNiFinEa3h0CMAD3
         DvWP0A9EP+2nofSTVNnbN2V+H179AmN1/tl+mb7JL3L58xc/6PwS22mP2OJoUlYte8ng
         kzpg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=cc:to:subject:message-id:date:from:in-reply-to:references
         :mime-version:dkim-signature;
        bh=jU2eksGuz3/SCk4PkrymPRWQ2xLgZj5tdDdnO/BMuxs=;
        b=h+C3BcghLo+bhCzv73r0G9xoQdee0RZpXrozk2gRJA7uN/jFUeCA3lK4mWgWxhQiKR
         ByHaLfw0Vyz/J8nDXprO+H8n/oDvyLAZI2yYrU7+Bm5M4EtPmCVfTjvC3j9FQsu0riz/
         smvwUUUbmUPxtSp43AevOGZIjTCQgxdqxSwuPrANyyipIrDcyLufRqVW379X8c5yWWK+
         E7oydNXkBfrbss+fzXObNw7AHsEai03uaS6Gl0MAI7DM7/Qi20gBQJ0BgK2D2cI3UaXt
         s1kienSihlBcR06z3wrljyRyGwN3nZwJHvQeoupYF4rpD97gKsijaps8rpvfb8DYXGHo
         sGSw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7frdVCH;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <thesven73@gmail.com>
Received: from mail-ua1-x944.google.com (mail-ua1-x944.google.com. [2607:f8b0:4864:20::944])
        by gmr-mx.google.com with ESMTPS id a14si139473vsp.0.2020.10.23.06.03.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 23 Oct 2020 06:03:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) client-ip=2607:f8b0:4864:20::944;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=A7frdVCH;
       spf=pass (google.com: domain of thesven73@gmail.com designates 2607:f8b0:4864:20::944 as permitted sender) smtp.mailfrom=thesven73@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-ua1-x944.google.com with SMTP id x26so387815uau.0
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Oct 2020 06:03:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:references:in-reply-to:from:date:message-id:subject:to
         :cc;
        bh=jU2eksGuz3/SCk4PkrymPRWQ2xLgZj5tdDdnO/BMuxs=;
        b=A7frdVCHf13jWvSfY2H7U0wktFWA8XKnAHwDIeCPB21Dlv3F5fGE3rXAbzfLwIr+zh
         qJ5szS1zNx2pXcYEGlRRQja4JmYRHsMU4kP6lcT5Ix9mp4M6oNx919CijTkNVedMLaYQ
         cRGNHdQj51YIGTzPxypsg7OXcxL02Cfhs9u/LifbVNTfj6QENrzClS2sDI9RbiHQD3Kt
         DRjbaSXx3g2899tbRYNfwNtUB8mhuzyh4nWB+d99UOpO4ch0R8MXwQr9JjNRDP5x3sQ5
         Z5ZqotvfB8lBC55l/HV7NKLVJ+AUotRovUKSbusQxxmmEQijZi6mWcWdbM+NJBA+K6RY
         chZw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:references:in-reply-to:from:date
         :message-id:subject:to:cc;
        bh=jU2eksGuz3/SCk4PkrymPRWQ2xLgZj5tdDdnO/BMuxs=;
        b=B34A3aaIAfIf0M8ov31oghTq5BWMufc+UY4rIPBMp3/p7uENXoJR+4vXOySbRwl6Cs
         JAuu2nPwKjK9tFsgj3/e24NtNGUZDtSnBKf31jhidBE19ZaUV1mdI8br0plr59cCfTJY
         MZoadAiYF0rvqsjomT6UQxqX9j8ASyphJA1MqPgSnWMngihVA668yqQC2SK9TCc+OYk1
         9xWZb6lg7vDhyZNdbpCccNeDTJAO7S5UkyEMZ60kI+jax0Xo2nxWr3qDOJxPO5SCg2+h
         FPVGRo7GXVeaYeoPx6nrr9Ru0vg1dn/dolZJ7vDyZwjWHJg19TpM9+zxjawE1rQ0/ULe
         2H1w==
X-Gm-Message-State: AOAM5328kZ+/Jbf2h3TN3YiJ6el6fbYoLR9NajeKU7mnyj0TwCsee7tq
	eoxlWcGcrP4dyWRrfHVmVxdJ3j+Jx5iWqJApYyKSvO+P
X-Received: by 2002:ab0:5e85:: with SMTP id y5mr1110058uag.101.1603458209321;
 Fri, 23 Oct 2020 06:03:29 -0700 (PDT)
MIME-Version: 1.0
References: <cover.1602767114.git.sylphrenadin@gmail.com> <d2f6183c5e3c333fc1667ea1d0223e8315a8d8ec.1602767114.git.sylphrenadin@gmail.com>
In-Reply-To: <d2f6183c5e3c333fc1667ea1d0223e8315a8d8ec.1602767114.git.sylphrenadin@gmail.com>
From: Sven Van Asbroeck <thesven73@gmail.com>
Date: Fri, 23 Oct 2020 09:03:18 -0400
Message-ID: <CAGngYiWbBqbwPLtTj_k88G4aV+YGd4Jiy0Z1h9pAsCS5H+yXxw@mail.gmail.com>
Subject: Re: [Outreachy][PATCH 2/3] staging: fieldbus: Replace snprintf() with scnprintf()
To: Sumera Priyadarsini <sylphrenadin@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"

Hello Sumera, thank you for the patch !

Unfortunately, I think Deepak R Varma sent a patch on 18 October which
appears to solve this issue in a "better" way, by using sysfs_emit().

I would link to their patch, but I can't seem to find a server hosting the
outreachy mailing list.

On Thu, Oct 15, 2020 at 3:16 PM Sumera Priyadarsini
<sylphrenadin@gmail.com> wrote:
>
> The card_name_show() method should return the number of bytes printed into
> the buffer which is the return value of scnprintf(). snprintf() returns the
> potential number of bytes that could be written which may be greater
> than the actual length to be written.
>
> Replace snprintf() with the safer scnprintf() in dev_core.c.
>
> Issue found with Coccinelle.
>
> Signed-off-by: Sumera Priyadarsini <sylphrenadin@gmail.com>
> ---
>  drivers/staging/fieldbus/dev_core.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
>
> diff --git a/drivers/staging/fieldbus/dev_core.c b/drivers/staging/fieldbus/dev_core.c
> index 1ba0234cc60d..a0fcd87a1747 100644
> --- a/drivers/staging/fieldbus/dev_core.c
> +++ b/drivers/staging/fieldbus/dev_core.c
> @@ -70,7 +70,7 @@ static ssize_t card_name_show(struct device *dev, struct device_attribute *attr,
>          * card_name was provided by child driver, could potentially be long.
>          * protect against buffer overrun.
>          */
> -       return snprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
> +       return scnprintf(buf, PAGE_SIZE, "%s\n", fb->card_name);
>  }
>  static DEVICE_ATTR_RO(card_name);
>
> --
> 2.25.1
>

