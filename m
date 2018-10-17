X-GM-THRID: 6612972487393148928
X-Received: by 2002:aed:2a1c:: with SMTP id c28-v6mr20878279qtd.61.1539788374972;
        Wed, 17 Oct 2018 07:59:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aed:3722:: with SMTP id i31-v6ls10783503qtb.14.gmail; Wed,
 17 Oct 2018 07:59:34 -0700 (PDT)
X-Received: by 2002:ac8:1a38:: with SMTP id v53-v6mr21781919qtj.33.1539788374414;
        Wed, 17 Oct 2018 07:59:34 -0700 (PDT)
Received: by 2002:a37:c17:0:0:0:0:0 with SMTP id 23-v6msqkm;
        Wed, 17 Oct 2018 07:43:18 -0700 (PDT)
X-Google-Smtp-Source: ACcGV61arN5B7so1lmtK0oS8AQaToO/ZAesqr4oNX6Dlxj9aFLbskio/RkonN7EeFwAAh0vUvkQZ
X-Received: by 2002:a0c:873b:: with SMTP id 56mr22103672qvh.13.1539787398349;
        Wed, 17 Oct 2018 07:43:18 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539787398; cv=none;
        d=google.com; s=arc-20160816;
        b=0kLSaOCRqDhjYsc7rdrZeT7oQZ6pPGQ+i4hq7RrsE40uPt3pUB67J0SVRPGxqXFQrV
         UR0paQdTTa9ORl1WXZEXZ21WfKmSyBpZScdVoBp0qdfu6WZ7nTa7uSzF/QzEJP1kh+98
         pvUOVRIocZuBuVHSAS1rkE7Jt+bSUzaFdve7g1EsMts82lGwWHM3FzSasgdm7SgxHws9
         juQm5cCYHaGOFfO7C8+hwmEFsdFxGefgsK2qCav8im3q3LcoL3LjKw9LSqz/C9eotGWH
         iBisjT7QvzFjuUvy3ul+K8BiKu5rwjNRI7z3qHsHw/u9i6urH7qj4SLrZTjUlr7/g0Ha
         FXOw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=ugnJjiKfZK3agtZoV4CiPR2kBiUowgxXQRYPO1qID6Y=;
        b=QOrLlfIWzMnF+Cag5l66lJX8Wx5x8Ac9xmGElJjtumSA40j4x3dU3QyHQpyjsbX5Vi
         pKNGL/hIErnPwg6nGpmWstoqF8v8Fbdfjk7S+6lT5k+zZaKqNqynPCH9yNf6JMSEFs+s
         koewu8iJfmMhTOkC6CxaLhbIv1Rhrp1IOe2axcs1/xY75sDLgcTSmifhnxuvUocebko9
         KqQthJH+huDoiTsgHYH9CafimZiqlBUZqwEcOPA627qBNqG3TejoTARL6wnaX55xYsod
         KhBalj1JqRvqN2WVvlVHj035mbXnmS2VygQABa8t/oqhPp4lRHKtZcOp5phEG4Xdpirx
         ktag==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U76jYh2F;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <nishadkamdar@gmail.com>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id x41-v6si942153qth.2.2018.10.17.07.43.18
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Oct 2018 07:43:18 -0700 (PDT)
Received-SPF: pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=U76jYh2F;
       spf=pass (google.com: domain of nishadkamdar@gmail.com designates 2607:f8b0:4864:20::644 as permitted sender) smtp.mailfrom=nishadkamdar@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-pl1-x644.google.com with SMTP id u6-v6so10073718plz.4
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Oct 2018 07:43:18 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=ugnJjiKfZK3agtZoV4CiPR2kBiUowgxXQRYPO1qID6Y=;
        b=U76jYh2FDwf4pl5v/8CDnYRDeheD6i5fEbxsw3ksmh2gBtXaByO8Q8B18rwGnQF6SM
         8Hc/QUtyuWTgeh03Q8QwRdO9FLnXQVcKgSHotsAI+Pb+zxL116WKeAe94wKdzFwejBHN
         mVICPOEl2LBMaJMvZizsaqJCtvHsVSpMCp2yndHCcNKpyLwSXaHbNWBDnlEmyLPqBAXp
         8zxuHG/iJLpKj0K9pLgQcxFLI8uBScSN5lgWK7MkHFklRK5C9SosbjoGiOPE4bMM7dQZ
         UAh+aUNbEK48OvMDtlGQnH7sdJHZoKtWWJKQOU76R2BG0VMWbvrSuIVHH39PDEdEkOsG
         DmaQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=ugnJjiKfZK3agtZoV4CiPR2kBiUowgxXQRYPO1qID6Y=;
        b=uCZif7mtowyJOHFzOSXa8/UHAbfE2S0GDFmQOKlurbeh07Y2Iw/maAZtAwn7Z44lAl
         CE5CYWuoL+PnTBNRRTldEo0HGEEMx3fnwFqHvzxk38QgKS85VuRywsGE/yHCxZ5N7B6n
         ebG1cD5cYk5t6U/8qB6q7tIvHJh2wQVj751Po3tlrmgs4ggx0wg1UKI6IzBnt1UZ8e0P
         EKWpqri6ZdRHUmr/tn3FXP0h20zvGWm4t2XYsYWE1tTPoS5NxSsgTHzbZOvxppweXQi/
         Yen69ncmbQjc8P+VXs+38C+wm4xa9cF1R+zfWOF9/rI7ZmgoYgninzNzGrSgcTKYxZFd
         nz2w==
X-Gm-Message-State: ABuFfojR2wgYybsyivBJm27vrG91psKlmSMMmZfIKz634cnrg7gO2kJT
	h/lmFY1pYD/rb1J0y56JtI8=
X-Received: by 2002:a17:902:32a4:: with SMTP id z33-v6mr15481121plb.85.1539787397328;
        Wed, 17 Oct 2018 07:43:17 -0700 (PDT)
Return-Path: <nishadkamdar@gmail.com>
Received: from nishad ([106.51.27.228])
        by smtp.gmail.com with ESMTPSA id k24-v6sm22362336pfi.11.2018.10.17.07.43.12
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Wed, 17 Oct 2018 07:43:16 -0700 (PDT)
Date: Wed, 17 Oct 2018 20:13:09 +0530
From: Nishad Kamdar <nishadkamdar@gmail.com>
To: Lars-Peter Clausen <lars@metafoo.de>
Cc: Michael Hennerich <Michael.Hennerich@analog.com>,
	Jonathan Cameron <jic23@kernel.org>,
	Hartmut Knaack <knaack.h@gmx.de>,
	Peter Meerwald-Stadler <pmeerw@pmeerw.net>,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: iio: ad7816: Switch to the gpio descriptor
 interface
Message-ID: <20181017144307.GA11244@nishad>
References: <20181016144623.GA9890@nishad>
 <929c42b8-34e7-60bb-5bd4-31faf53d62c2@metafoo.de>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <929c42b8-34e7-60bb-5bd4-31faf53d62c2@metafoo.de>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Oct 16, 2018 at 05:10:14PM +0200, Lars-Peter Clausen wrote:
> On 10/16/2018 04:46 PM, Nishad Kamdar wrote:
> > Use the gpiod interface for rdwr_pin, convert_pin and busy_pin
> > instead of the deprecated old non-descriptor interface.
> > 
> > Signed-off-by: Nishad Kamdar <nishadkamdar@gmail.com>
> 
> Hi,
> 
> Thanks for the patch, this looks good.
> 
> One thing about the error messages though.
> 
> > +	chip->rdwr_pin = devm_gpiod_get(&spi_dev->dev, "rdwr", GPIOD_IN);
> > +	if (IS_ERR(chip->rdwr_pin)) {
> > +		ret = PTR_ERR(chip->rdwr_pin);
> >  		dev_err(&spi_dev->dev, "Fail to request rdwr gpio PIN %d.\n",
> > -			chip->rdwr_pin);
> > +			ret);
> 
> This previously showed the pin number which has now been replaced with the
> error code. The message doesn't make that much sense semantically anymore.
> Maybe replace it with something like
> 
> 	"Failed to request rdwr GPIO: %d\n", ret
> 
> >  		return ret;

Hello,

Ok, I'll do that.

Thanks for the review.

regards,
Nishad

