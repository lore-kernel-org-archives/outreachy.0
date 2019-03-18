X-GM-THRID: 6669418726059671552
X-Received: by 2002:a81:23d5:: with SMTP id j204mr3329167ywj.7.1552891768541;
        Sun, 17 Mar 2019 23:49:28 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a25:c00b:: with SMTP id c11ls3543594ybf.6.gmail; Sun, 17 Mar
 2019 23:49:27 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxcWlPA22+2NsJODk09Nzo6StYND/fYLN3dx88vmqLpdEjfe2Rd3Tea005dMtOu8+jXCeoq
X-Received: by 2002:a25:d904:: with SMTP id q4mr7488584ybg.57.1552891767583;
        Sun, 17 Mar 2019 23:49:27 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1552891767; cv=none;
        d=google.com; s=arc-20160816;
        b=HpGnszqsAYK8HwI4rrXE5vQgL+FeuYMUQJ3XqtOD5dWqdg64SEz7Gikz0qfvr58i/4
         52gTpFXTL2MYWvLuGtb1C6QeQkEeLVJf8qD8vZvws2K4JIEn0VBK+WtMfiD18j/dWZJ2
         wK2wwBD5KavfUPCIczShRZgWBt0tw9b3P7+r2Xfk2YoVHw3DRIZi4bogUdlRN9HF8aQA
         etUXTf3tgJ0zxOcRVxPe4Kwq/rtq/AQLRXmbt2IZoe/Bmh15TTc/p0o3RMaZXf2Xp9WD
         N7HFWweDcivKFFROZUQZn8dkC6jI0XnQ5Dwh6/WcklvaL95DtWAqPtbLcaPSv10gt1gp
         K5mA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0CdoPjI7hfv485X7pJO7n6ze9me7/eUxoJjuLp1qGD8=;
        b=spWOk7q9Z4cp14Lg9Im8GPQAC8lUpQ9z5j87gSy9uzzk6bFk2qwUHx2qnVRXTEw4UA
         LTqq15dzA1k9UWQmjLZ8v1qiMhe8+4ewsuCYTZRUqSERBv3gUmkMl3JH5KToiFZ9STtt
         272fcpDl6vPevEiXNLIzX3iEdm1HQMmD2Ecg/qDG+l1K5lCKbmxEFKJogrfR81wJmPxr
         J9kXJuApnwMpVYsuVqlqj1Y5zlDYWnIwSpQDE+nXO8djjq4lmQOFdymgggvV7CFKnjSC
         5F6bkK/hb+E9H23YfAG2Eim0m267Ox2JGt/0aYypBozDv6F37s7InHbOpNlWhUp/IiUZ
         k1xg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yMocsZjg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 62si609067ybf.2.2019.03.17.23.49.27
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 17 Mar 2019 23:49:27 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=yMocsZjg;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 2940D20643;
	Mon, 18 Mar 2019 06:49:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1552891766;
	bh=8xEIQ2nOgI+zT/5VnQyZ8hg7OtQn11kybH8pjwsdusw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=yMocsZjgxlEWOFYbWs5YNq5HH2funDpGJzVqggR17v4Wwf0gPAYaiQ/NgvWDd10TG
	 XVqC5YJLIAYtVTwutTXcHdaYn36vORnwRAj27Pevk9Jl9rkBSqZxRp0Ctc14KdwnxY
	 M3nKus5M6Nvz/H+oJ82N12GyEqgoCRZTNdwcQRi4=
Date: Mon, 18 Mar 2019 07:49:24 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: iio: cdc: ad7746.c: Fix an alignment issue over
 paranthesis.
Message-ID: <20190318064924.GA3173@kroah.com>
References: <20190317175041.4077-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190317175041.4077-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sun, Mar 17, 2019 at 11:20:41PM +0530, Sanjana Sanikommu wrote:
> Fix the alignent of the line which match the open paranthesis.
> Issue found by checkpatch.pl semantic patch results for ad7746.c
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/iio/cdc/ad7746.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/iio/cdc/ad7746.c b/drivers/staging/iio/cdc/ad7746.c
> index 0eb28fea876e..b82c104779e4 100644
> --- a/drivers/staging/iio/cdc/ad7746.c
> +++ b/drivers/staging/iio/cdc/ad7746.c
> @@ -232,14 +232,16 @@ static int ad7746_select_channel(struct iio_dev *indio_dev,
>  		delay = ad7746_cap_filter_rate_table[idx][1];
>  
>  		if (chip->capdac_set != chan->channel) {
> -			ret = i2c_smbus_write_byte_data(chip->client,
> -				AD7746_REG_CAPDACA,
> -				chip->capdac[chan->channel][0]);
> +			ret = i2c_smbus_write_byte_data
> +				(chip->client,

No, the orifinal first line was ok here, don't move the ( to a new line.

thanks,

greg k-h

