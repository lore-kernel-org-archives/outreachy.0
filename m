X-GM-THRID: 6396076706969419776
X-Received: by 10.129.92.197 with SMTP id q188mr10841476ywb.148.1489228282201;
        Sat, 11 Mar 2017 02:31:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.41.5 with SMTP id p5ls3137726iop.34.gmail; Sat, 11 Mar
 2017 02:31:21 -0800 (PST)
X-Received: by 10.107.34.212 with SMTP id i203mr6934317ioi.13.1489228281400;
        Sat, 11 Mar 2017 02:31:21 -0800 (PST)
Return-Path: <geert.uytterhoeven@gmail.com>
Received: from mail-io0-x241.google.com (mail-io0-x241.google.com. [2607:f8b0:4001:c06::241])
        by gmr-mx.google.com with ESMTPS id z191si336675itc.0.2017.03.11.02.31.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 02:31:21 -0800 (PST)
Received-SPF: pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c06::241 as permitted sender) client-ip=2607:f8b0:4001:c06::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of geert.uytterhoeven@gmail.com designates 2607:f8b0:4001:c06::241 as permitted sender) smtp.mailfrom=geert.uytterhoeven@gmail.com
Received: by mail-io0-x241.google.com with SMTP id 68so9158812ioh.3
        for <outreachy-kernel@googlegroups.com>; Sat, 11 Mar 2017 02:31:21 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:sender:in-reply-to:references:from:date:message-id
         :subject:to:cc;
        bh=7rtKi5SB4BLGmKdfS4VwpK/7k9HWcL7QBUZdT4ZrJFM=;
        b=sTU5Uema7FTHIapXFkPCWBXS3iCzKORlVmBREX6UtwPuH5rOigSPk+7b5GVcwhsE+i
         8xKxoeTfhGTnZp8cYq0LrdKkFaIREE7kRGGgFDBX4JBmZynaIwuLZ/NskzE4oskdvVLK
         J10eGVKWw+zHdMMzh/LE6aVhHyg2KaR4YN37XkYIrfpCxnveaAU38y6PPS/A5AHqjPIn
         wy+47tPL4Hg0KsEA85YtnMlKFS/zVnwgSWipIOIdxk8gGjizvVKvX77Q8rXnJxzGe893
         +EAlkxH9cHO4pvHScsV0nIMsGTGAXV1PDtIgbZFLTdQiMNK21R0PVO4ax/R4vJRI6ami
         573w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:sender:in-reply-to:references:from
         :date:message-id:subject:to:cc;
        bh=7rtKi5SB4BLGmKdfS4VwpK/7k9HWcL7QBUZdT4ZrJFM=;
        b=PfCIvRNh/TMiK6ekmOZBnmJkHrySBBh4yNT6w8Cm5VcXU19CBEAtsBKsFbX4LvMhxG
         VTK343l44+dxApFZMckDBudzDsANLpzkjFSLGSAXAHd/5Herpok380ZnoB/a6uRR25B0
         uOqhZXuOVyMpjRN1OLiEDhXFUdqbIT/BZQqG1VV/iJVEMf3BZ6oSdhSl6egrqTN3wehf
         2iSFQRBQ2N4RnRm4aKtQeLSeDZIVKi6O5D1CbfOBZwe9bZSY5PIVnL7d3fIpO/MqARD4
         Kh8deRGBjTCTkW8K7aiWCiKp0xXBf4F1oE1i/3PkRnq9uLAAzxSjcWjkQCeRN+w0kN4b
         kapg==
X-Gm-Message-State: AMke39l6C0mlAuget6Ucoiessk3cLH8Q/lyuu8DHoKojPCWDY5YUF5AWhF3oFJXH5TU6v65bCP6Q0DLXVB0wqg==
X-Received: by 10.107.14.69 with SMTP id 66mr22598075ioo.88.1489228281224;
 Sat, 11 Mar 2017 02:31:21 -0800 (PST)
MIME-Version: 1.0
Sender: geert.uytterhoeven@gmail.com
Received: by 10.107.137.65 with HTTP; Sat, 11 Mar 2017 02:31:20 -0800 (PST)
In-Reply-To: <20170311095302.GA4037@arushi-HP-Pavilion-Notebook>
References: <20170311095302.GA4037@arushi-HP-Pavilion-Notebook>
From: Geert Uytterhoeven <geert@linux-m68k.org>
Date: Sat, 11 Mar 2017 11:31:20 +0100
X-Google-Sender-Auth: x8vQRlalk2bh_AeWryB8ImdLrEI
Message-ID: <CAMuHMdXv4YthJn3Nu6PL4wybRFkQ4-VrzYh68yyh5whKMyWWsQ@mail.gmail.com>
Subject: Re: [PATCH v2] staging: sm750fb: function prototype argument should
 have an identifier name
To: Arushi Singhal <arushisinghal19971997@gmail.com>
Cc: Sudip Mukherjee <sudipm.mukherjee@gmail.com>, Teddy Wang <teddy.wang@siliconmotion.com>, 
	outreachy-kernel@googlegroups.com, 
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	Linux Fbdev development list <linux-fbdev@vger.kernel.org>, driverdevel <devel@driverdev.osuosl.org>, 
	"linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Sat, Mar 11, 2017 at 10:53 AM, Arushi Singhal
<arushisinghal19971997@gmail.com> wrote:
> --- a/drivers/staging/sm750fb/sm750.h
> +++ b/drivers/staging/sm750fb/sm750.h
> @@ -184,8 +184,8 @@ static inline unsigned long ps_to_hz(unsigned int psvalue)
>  }
>
>  int hw_sm750_map(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
> -int hw_sm750_inithw(struct sm750_dev*, struct pci_dev *);
> -void hw_sm750_initAccel(struct sm750_dev *);
> +int hw_sm750_inithw(struct sm750_dev *sm750_dev, struct pci_dev *pdev);
> +void hw_sm750_initAccel(struct sm750_dev *hw_sm750_initAccel);

"sm750_dev", like the implementation uses.

Gr{oetje,eeting}s,

                        Geert

--
Geert Uytterhoeven -- There's lots of Linux beyond ia32 -- geert@linux-m68k.org

In personal conversations with technical people, I call myself a hacker. But
when I'm talking to journalists I just say "programmer" or something like that.
                                -- Linus Torvalds

