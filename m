X-GM-THRID: 6392226705840275456
X-Received: by 10.157.6.233 with SMTP id 96mr119838otx.111.1488314409766;
        Tue, 28 Feb 2017 12:40:09 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.26.78 with SMTP id u14ls2318839otu.27.gmail; Tue, 28 Feb
 2017 12:40:09 -0800 (PST)
X-Received: by 10.129.179.136 with SMTP id r130mr1499586ywh.162.1488314409387;
        Tue, 28 Feb 2017 12:40:09 -0800 (PST)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-io0-x244.google.com (mail-io0-x244.google.com. [2607:f8b0:4001:c06::244])
        by gmr-mx.google.com with ESMTPS id z191si567843itc.0.2017.02.28.12.40.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 28 Feb 2017 12:40:09 -0800 (PST)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) client-ip=2607:f8b0:4001:c06::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2607:f8b0:4001:c06::244 as permitted sender) smtp.mailfrom=daniel.baluta@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-io0-x244.google.com with SMTP id v13so2649549iov.2
        for <outreachy-kernel@googlegroups.com>; Tue, 28 Feb 2017 12:40:09 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=mime-version:in-reply-to:references:from:date:message-id:subject:to
         :cc;
        bh=ioTca2RHyVnTj8DVk207W5qK+iW1w+VBMY5YHdCd+mE=;
        b=gCmL/vW63NCc6HUxhUSKS5XqSfFncUwYpAMRyHo/0BCDdu/gqIxyQLs15N+C5C5jGA
         ZAEU4OK67k96CC0TReGVQH185DQ1MFe5YKA5V91TM4NbNuU/Rg2Pq7+RbxkKqNpiI4g2
         UD6gqlKwzR/KvFVhOVdq4nt1ZhzcvrTNzg+bH+20jRp+zSXkd6WeAxsS8KXJI1Ghq4LU
         7TbNFsx4QmORbxbnncGyvSUrjPcwoTucXHArSLscX+Df201ydX1sQOA6d0FoAkI64XWU
         nvtbUr8hs01O6m1+ft8hAFFxlriE1T/CjzElskh7XVCDIsvHzFPwetUKJLjhyscXJa1Z
         uZ4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:mime-version:in-reply-to:references:from:date
         :message-id:subject:to:cc;
        bh=ioTca2RHyVnTj8DVk207W5qK+iW1w+VBMY5YHdCd+mE=;
        b=bSXOWea3dLcHz31/HzpwOVmrT7EbaBvRGqdb2ZvfAib9RXztK7HHHDZF1oouenmeu+
         4v9o2NjMnC0Cg+76n/NoIX/nTuq4giGKympJkQgUenYonpPAymoMrPrZk5fFB3Y+ln6K
         psDZqSt8fF5Sx7lRH767Bu6SMyrFKpYqtlk4BvyGKgKC7l9VCFh1RIAhjOVuwC9wbsp3
         isf6cSCu7BhW1FElE6lsw0U7lMkGR7SCryxe6fHDHXA9V3Qo9g1G6Kn3cKVbP6JmU3tK
         4poQvRY9ZpWKMeDI8JsObN5B9Ew6raK8Y+kdQxGM9B9H78dpMxs9LvCIAwwXNLxXhmfh
         zYvA==
X-Gm-Message-State: AMke39l1hrib8QRUGMpP8KWh9BmIoPh+cZjSme99cpzff+cA6Q6+5HVR+P1FaLJ921rwIRi4eVAQRA0gqja43A==
X-Received: by 10.107.149.194 with SMTP id x185mr4603936iod.167.1488314409106;
 Tue, 28 Feb 2017 12:40:09 -0800 (PST)
MIME-Version: 1.0
Received: by 10.107.138.230 with HTTP; Tue, 28 Feb 2017 12:40:08 -0800 (PST)
In-Reply-To: <20170228182413.26063-1-diaconita.tamara@gmail.com>
References: <20170228182413.26063-1-diaconita.tamara@gmail.com>
From: Daniel Baluta <daniel.baluta@gmail.com>
Date: Tue, 28 Feb 2017 22:40:08 +0200
Message-ID: <CAEnQRZBvxfeQqg82S0U5L2KZsYZe0Mcz=-=BmuBjWbjnXmGDNw@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 3/5] Removed unnecessary blank lines.
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: mchehab@kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>, 
	outreachy-kernel <outreachy-kernel@googlegroups.com>, 
	Tamara Diaconita <diaconita.tamara@gmail.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Feb 28, 2017 at 8:24 PM, Tamara Diaconita
<diaconitatamara@gmail.com> wrote:
> Signed-off-by: Tamara Diaconita <diaconita.tamara@gmail.com>
> ---
>  drivers/staging/media/cxd2099/cxd2099.c | 5 -----
>  1 file changed, 5 deletions(-)
>
> diff --git a/drivers/staging/media/cxd2099/cxd2099.c b/drivers/staging/media/cxd2099/cxd2099.c
> index 0da9294..bcf1c75 100644
> --- a/drivers/staging/media/cxd2099/cxd2099.c
> +++ b/drivers/staging/media/cxd2099/cxd2099.c
> @@ -131,7 +131,6 @@ static int read_reg(struct cxd *ci, u8 reg, u8 *val)
>         return read_block(ci, reg, val, 1);
>  }
>
> -
>  static int read_pccard(struct cxd *ci, u16 address, u8 *data, u8 n)
>  {
>         int status;
> @@ -292,8 +291,6 @@ static void cam_mode(struct cxd *ci, int mode)
>         ci->cammode = mode;
>  }
>
> -
> -
>  static int init(struct cxd *ci)
>  {
>         int status;
> @@ -572,7 +569,6 @@ static int slot_ts_enable(struct dvb_ca_en50221 *ca, int slot)
>         return 0;
>  }
>
> -
>  static int campoll(struct cxd *ci)
>  {
>         u8 istat;
> @@ -616,7 +612,6 @@ static int campoll(struct cxd *ci)
>         return 0;
>  }
>
> -
>  static int poll_slot_status(struct dvb_ca_en50221 *ca, int slot, int open)
>  {
>         struct cxd *ci = ca->data;

Hi Tamara,

The patch looks good to me. Anyhow, you can improve the commit message
by specifying a tag.

e.g     staging: media: cxd2099:

so the commit subject will look like this:

staging: media: cxd2099: Remove unnecessary blank lines

Also, notice that I used imperative mood (Remove not Removed) and also
there is no full stop (.) at the end of the subject.

You can read more here about how to write a good commit message

https://chris.beams.io/posts/git-commit/


thanks,
Daniel.

