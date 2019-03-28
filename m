X-GM-THRID: 6673458738250121216
X-Received: by 2002:a24:6893:: with SMTP id v141mr195491itb.39.1553789298032;
        Thu, 28 Mar 2019 09:08:18 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a24:a01:: with SMTP id 1ls1249484itw.3.gmail; Thu, 28 Mar
 2019 09:08:17 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxtpGyVqys905c8MHuyJJh+JfFo3wnV7FLRwmj3lGknKL3pawK/0+iA7KYUadb5WM551Kfp
X-Received: by 2002:a24:3d8e:: with SMTP id n136mr234662itn.3.1553789297047;
        Thu, 28 Mar 2019 09:08:17 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553789297; cv=none;
        d=google.com; s=arc-20160816;
        b=y0JoO45u9HNDPlq5pvUpyOeJURtJxJcGm4ZmwiOhWJJ+93eRnIQWdtvnpH3syE8E1C
         dzOKjUzh4cpV/Ry64priwSGUukgBZzca7pHyeOqyH1ovJsavIhL37CL0d71xLIPlI8S2
         LGVYGs4nayauYH3SQTf6Wkp09VW6JlbP6ECIMMiRUPQQSZyvenUJfQPMV4PtGVn0ZaDh
         dQhD/JHs5yCW8z/lcCeNtw8ITNazKCUjJkw+XxpZIX0JrviEIS+6yNBss1f46hB+uOnF
         Ojsou82Ipj7HekzjLqGHj2g9n+RpFHyOFZubzXZV2lwH+3BBn7G+FXzcPHu5OyOJETGR
         d6Lw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=PqwiQAH+OHyq6CV7J1/Pmk6mDW4FA5NT4nwDci9Q0qU=;
        b=ZkoKbYHuY1Sdm6NsvueP5pTT45MGwk8YkqKtTNIoULK1oPT1Bu1Hm2v1xEaq0SPXYW
         p2eolTGCs0hMQT/nz6IBxH61bXlU9W1fKGqSnbV/ddiO45qlCn63NWE7FeYCeWPVhCNq
         q7IXnyUl6jE+/pPP/5BLH9kE43iXk6wRFC+ooOiaKU9stDEEX2vqm8yortVwfMzIRCq1
         Eo6QPJoC10D+YxWQBoIOQljd8/WLX9FB+mfoWuoVf6/REsYzmSrqyYJtJOawuUY4GGUN
         cWOcTo+53owApN0jULtpPIOrcGkR1NVOus043Xyw9rk/tu6UHFjea8JeUGJpsoabp1aK
         3BXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LBYAhbEI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id f13si1375077iok.3.2019.03.28.09.08.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Mar 2019 09:08:17 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=LBYAhbEI;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id C920021773;
	Thu, 28 Mar 2019 16:08:15 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553789296;
	bh=rDQDmA6OWhq7r6cOM2j8p3UQMAlhADuXC6xVoHgfblM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=LBYAhbEI9oaptUp43LZhSXcL5JqedTj3/acDKIXD7iO2Xo51RerhOGq854cAvSdCv
	 ATVcGuh6PjZJd/gpiHvcJLQtNJ0QZ40M81QwM7gnjDadQDv9z1PLAfxtAT7sqYnfxc
	 E0Dxxw1pfyqpUyAEH/Js7kVwyG0QauP9dlqCWIuc=
Date: Thu, 28 Mar 2019 17:08:14 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 2/2] staging: rtlwifi: Remove unused variable.
Message-ID: <20190328160814.GA30629@kroah.com>
References: <20190328150759.10539-1-sanjana99reddy99@gmail.com>
 <20190328151007.10650-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190328151007.10650-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 28, 2019 at 08:40:07PM +0530, Sanjana Sanikommu wrote:
> Remove unused variable. This variable is
> created unnecessarily for return type whose
> use is removed using ret.cocci.
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
> ---
>  drivers/staging/rtlwifi/rtl8822be/phy.c | 1 -
>  1 file changed, 1 deletion(-)
> 
> diff --git a/drivers/staging/rtlwifi/rtl8822be/phy.c b/drivers/staging/rtlwifi/rtl8822be/phy.c
> index aed315143cbb..ececfed7b35a 100644
> --- a/drivers/staging/rtlwifi/rtl8822be/phy.c
> +++ b/drivers/staging/rtlwifi/rtl8822be/phy.c
> @@ -1840,7 +1840,6 @@ static long _rtl8822be_phy_txpwr_idx_to_dbm(struct ieee80211_hw *hw,
>  					    u8 txpwridx)
>  {
>  	long offset;
> -	long pwrout_dbm;

Did you just cause this warning to happen with patch 1/2?  That's not
ok, please put this together with that patch, you can not have any
commit break the build, or add new build warnings.

thanks,

greg k-h

