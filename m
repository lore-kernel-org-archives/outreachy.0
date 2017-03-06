X-GM-THRID: 6393343309495926784
X-Received: by 10.237.37.80 with SMTP id w16mr6606496qtc.4.1488869514189;
        Mon, 06 Mar 2017 22:51:54 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.134.99 with SMTP id i96ls1797896iod.45.gmail; Mon, 06 Mar
 2017 22:51:53 -0800 (PST)
X-Received: by 10.107.28.14 with SMTP id c14mr2925413ioc.95.1488869512992;
        Mon, 06 Mar 2017 22:51:52 -0800 (PST)
Received: by 10.202.168.12 with SMTP id r12msoie;
        Mon, 6 Mar 2017 11:34:09 -0800 (PST)
X-Received: by 10.157.34.114 with SMTP id o105mr6551656ota.48.1488828849653;
        Mon, 06 Mar 2017 11:34:09 -0800 (PST)
Return-Path: <geert.uytterhoeven@gmail.com>
Received: from mail-it0-x241.google.com (mail-it0-x241.google.com. [2607:f8b0:4001:c0b::241])
        by gmr-mx.google.com with ESMTPS id 13si2557364iti.0.2017.03.06.11.34.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 06 Mar 2017 11:34:09 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) client-ip=2607:f8b0:4001:c0b::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c0b::241 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: by mail-it0-x241.google.com with SMTP id 203so10709183ith.2
        for <outreachy-kernel@googlegroups.com>; Mon, 06 Mar 2017 11:34:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=qRphuHuBfKrXmUso/F5nZSKMfUwLCFnk5nk3WrY8xw0=;
        b=HFoHBwlYVJYo5If8ALbSHZ344XNB+RzNNiycdR/SJ0dFiKEizPMCjsSXOvfo8O5kji
         3T8BrGU2w3ZtRK1+vll4JqYmarvVq4X41VYfZ6wDAQzM+oDDf740ozBTiPWua7nnREUa
         yN8ODRP8DZax/DPyB4223SUzPEpPAzQNMjpufYyll2WEHFDuIR88NFaosLRPlIg7CsBo
         D/JUe8lYZPuVDyVGsvQXAe3wu/YG8oHE9oGD2DqRwM8i32YvDpxuxeqxxXFNLyl5BE/U
         FoK3Sh81BDpsCRGEk1GqyfvR71+S+EaUiGOvScwAAmEKhI0IrTrtWl+CYMwqQtHX3lQO
         o2Ew==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=qRphuHuBfKrXmUso/F5nZSKMfUwLCFnk5nk3WrY8xw0=;
        b=lnAo6yGpfU49gkukxgd5tVatSyw5b70AKyi0gp/dCkeaZ9fai8V0xJPrSCy016vVew
         yhOju5I7uqmENizQ0JGN/WKSHfRP+T+VO2ev982ueEup1cWW8ssZ3zzNKgEVprvHOIH8
         dn9UY68bfHj7duGCB7Bz+er+l32wpZg2anXh2aMiQUhORsyhvC+YC3SRHvtZo+21dMmG
         p6ouLzOtfR1FwB7gtGcKIPFBkEdnUO+hX9maY1h84nFgaKvz4HB4JQTY8F3PK5GquF1H
         /ol23/e/zaPLI3mXAeXh8QIc0akq3uk9SIewQhH+jfWonZxornNQbUW3zra7evIO+bcn
         xoqA==
X-Gm-Message-State: AMke39mX4sFnjTZ8jnzZ/DBtv4/EwhVQ5yW48Umw+HfGZvzkI/qqY2kc39SNN5iglAN8hIsC63Liu1sRdfq4XA==
X-Received: by 10.36.206.2 with SMTP id v2mr17488146itg.74.1488828848878; Mon,
 06 Mar 2017 11:34:08 -0800 (PST)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
Received: by 10.107.137.65 with HTTP; Mon, 6 Mar 2017 11:34:07 -0800 (PST)
In-Reply-To: <20170305112450.9066-2-arushisinghal19971997@gmail.com>
References: <20170305112450.9066-1-arushisinghal19971997@gmail.com> <20170305112450.9066-2-arushisinghal19971997@gmail.com>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Mon, 6 Mar 2017 20:34:07 +0100
X-Google-Sender-Auth: vsyIR0I3uPsjYPQY69y0xfhwy2o
Message-ID: <CAMuHMdW3o0AjK1LVaiCrFWMUuUrB6dEuQ98w60Sch+cUePQuqg@mail.gmail.com>
Subject: Re: [PATCH 1/3] staging: sm750fb: fixes add blank line after
 function/struct/union/enum declarations
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	outreachy-kernel@googlegroups.com, Greg KH <gregkh@linuxfoundation.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>, Andy Whitcroft <apw@canonical.com>, 
	Joe Perches <joe@perches.com>
Content-Type: text/plain; charset=UTF-8

Hi Arushi,

On Sun, Mar 5, 2017 at 12:24 PM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
> This patch fixes the warnings reported by checkpatch.pl
> for please use a blank line after function/struct/union/enum
> declarations.
>
> Signed-off-by: Arushi Singhal <arushisinghal19971997@gmail.com>
> ---
>  drivers/staging/sm750fb/ddk750_display.h | 1 +
>  drivers/staging/sm750fb/ddk750_mode.h    | 2 ++
>  drivers/staging/sm750fb/ddk750_power.h   | 1 +
>  drivers/staging/sm750fb/sm750_cursor.c   | 3 +++
>  4 files changed, 7 insertions(+)
>
> diff --git a/drivers/staging/sm750fb/ddk750_display.h b/drivers/staging/sm750fb/ddk750_display.h
> index e2a3f84ca4c5..8bf22e4f0d8b 100644
> --- a/drivers/staging/sm750fb/ddk750_display.h
> +++ b/drivers/staging/sm750fb/ddk750_display.h
> @@ -100,6 +100,7 @@ typedef enum _disp_output_t {
>         do_CRT_PRI = CRT_2_PRI | PRI_TP_ON | DPMS_ON | DAC_ON,
>         do_CRT_SEC = CRT_2_SEC | SEC_TP_ON | DPMS_ON | DAC_ON,
>  }
> +
>  disp_output_t;

That's a false positive. Actually "disp_output_t" should be on the
previous line,
after the closing curly brace, as variable types and names must not be split.

> --- a/drivers/staging/sm750fb/ddk750_mode.h
> +++ b/drivers/staging/sm750fb/ddk750_mode.h
> @@ -7,6 +7,7 @@ typedef enum _spolarity_t {
>         POS = 0, /* positive */
>         NEG, /* negative */
>  }
> +
>  spolarity_t;
>
>  typedef struct _mode_parameter_t {
> @@ -32,6 +33,7 @@ typedef struct _mode_parameter_t {
>         /* Clock Phase. This clock phase only applies to Panel. */
>         spolarity_t clock_phase_polarity;
>  }
> +
>  mode_parameter_t;

Likewise.

> --- a/drivers/staging/sm750fb/ddk750_power.h
> +++ b/drivers/staging/sm750fb/ddk750_power.h
> @@ -7,6 +7,7 @@ typedef enum _DPMS_t {
>         crtDPMS_SUSPEND = 0x2,
>         crtDPMS_OFF = 0x3,
>  }
> +
>  DPMS_t;

Likewise.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

