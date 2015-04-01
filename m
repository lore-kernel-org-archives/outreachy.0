X-GM-THRID: 10320556851200
X-Received: by 10.112.151.232 with SMTP id ut8mr1931078lbb.9.1427888784567;
        Wed, 01 Apr 2015 04:46:24 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.36.199 with SMTP id s7ls49824laj.57.gmail; Wed, 01 Apr
 2015 04:46:23 -0700 (PDT)
X-Received: by 10.112.235.70 with SMTP id uk6mr6652131lbc.24.1427888783989;
        Wed, 01 Apr 2015 04:46:23 -0700 (PDT)
Return-Path: <daniel.baluta@gmail.com>
Received: from mail-wg0-x231.google.com (mail-wg0-x231.google.com. [2a00:1450:400c:c00::231])
        by gmr-mx.google.com with ESMTPS id i8si107951wif.1.2015.04.01.04.46.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 01 Apr 2015 04:46:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) client-ip=2a00:1450:400c:c00::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of daniel.baluta@gmail.com designates 2a00:1450:400c:c00::231 as permitted sender) smtp.mail=daniel.baluta@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wg0-x231.google.com with SMTP id e14so50005988wgo.0
        for <outreachy-kernel@googlegroups.com>; Wed, 01 Apr 2015 04:46:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=BOnCfzHUR3WE6jr3vpu97kTuYz6EMcGimo2Utr+V8fM=;
        b=c40EY5ZqsrqZKlO5lPTZw8nPepunkCvQWyjInoVef9eacLwVcWG9ETSOhkh/ZHiYzL
         XnkHi2JqqwvwSY1nKVjdtQxye3IBTNFiSXJsMXu+N/J4uiEn0Wipla6weWXBxiZ7vNEv
         ezRzrs7fy2MGBIqAh0pDutEEASEO7+G1x1TwU8rABxjVnWjniVOmNE8tMpG42KK/ti+m
         X5l74IikUy0C2Dwh5iPeZdN+MGRF1kIsbyDRDP30Q4BjEFiXVsgrmHXMfzkYkt/eux/J
         I/XIJL3vFy1KX8rPYT+FQXKP4GJ49yjH36cLSJjSkJYoinCGzHYQ+2tNTf4I6Gzxlkzi
         1z4A==
MIME-Version: 1.0
X-Received: by 10.180.223.100 with SMTP id qt4mr7029229wic.1.1427888783900;
 Wed, 01 Apr 2015 04:46:23 -0700 (PDT)
Received: by 10.28.139.211 with HTTP; Wed, 1 Apr 2015 04:46:23 -0700 (PDT)
In-Reply-To: <1abedb2004323a23e8dd120abf761f3488c8e9f6.1427797741.git.cristina.opriceana@gmail.com>
References: <cover.1427797741.git.cristina.opriceana@gmail.com>
	<1abedb2004323a23e8dd120abf761f3488c8e9f6.1427797741.git.cristina.opriceana@gmail.com>
Date: Wed, 1 Apr 2015 14:46:23 +0300
Message-ID: <CAEnQRZAVb_70+Fyj+PiXLQ3ShZTomafE3ZEnCFUEkhQnb8ERYg@mail.gmail.com>
Subject: Re: [PATCH 2/2] iio: light: ltr501: Powerdown device on error
From: Daniel Baluta <daniel.baluta@gmail.com>
To: Cristina Opriceana <cristina.opriceana@gmail.com>, Jonathan Cameron <jic23@kernel.org>
Cc: outreachy-kernel@googlegroups.com, 
	"linux-iio@vger.kernel.org" <linux-iio@vger.kernel.org>
Content-Type: text/plain; charset=UTF-8

On Wed, Apr 1, 2015 at 2:01 PM, Cristina Opriceana
<cristina.opriceana@gmail.com> wrote:
> Power down device when an error occurs  in order to avoid wasting
> power. Also move powerdown function up to be seen by the new call.
>
> Signed-off-by: Cristina Opriceana <cristina.opriceana@gmail.com>
> ---
>  drivers/iio/light/ltr501.c | 18 ++++++++++--------
>  1 file changed, 10 insertions(+), 8 deletions(-)
>
> diff --git a/drivers/iio/light/ltr501.c b/drivers/iio/light/ltr501.c
> index 62b7072..29ca4b8 100644
> --- a/drivers/iio/light/ltr501.c
> +++ b/drivers/iio/light/ltr501.c
> @@ -333,6 +333,13 @@ static int ltr501_init(struct ltr501_data *data)
>                 data->ps_contr);
>  }
>
> +static int ltr501_powerdown(struct ltr501_data *data)
> +{
> +       return ltr501_write_contr(data->client,
> +               data->als_contr & ~LTR501_CONTR_ACTIVE,
> +               data->ps_contr & ~LTR501_CONTR_ACTIVE);
> +}
> +

While at it please also fix the alignment for ltr501_write_contr
parameters. Don't forget
to mention this in the commit message. When running checkpatch.pl
please use --strict parameter.

thanks,
Daniel.

