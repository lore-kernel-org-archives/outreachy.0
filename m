X-GM-THRID: 6674230099683835904
X-Received: by 2002:a65:47c4:: with SMTP id f4mr860999pgs.111.1553974778959;
        Sat, 30 Mar 2019 12:39:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:b70c:: with SMTP id d12ls1931546pls.0.gmail; Sat, 30
 Mar 2019 12:39:38 -0700 (PDT)
X-Google-Smtp-Source: APXvYqzSMsCvVAHfDG8AieKk6NPfzvbL/N8o90mgL9O3jAtvb7HAE9iiXE+1S5BMIc6Nl/q4sWmr
X-Received: by 2002:a17:902:59dd:: with SMTP id d29mr978867plj.145.1553974778298;
        Sat, 30 Mar 2019 12:39:38 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974778; cv=none;
        d=google.com; s=arc-20160816;
        b=yh19Rfnsg8XX22g4itIoLXxMVgZXP3Xq2PF+p922SgUyGibzFHHaUtWgP5XsbX5yPf
         rM+nu3XcSjXd2/CYvylSz84IkU5FsGQWiWflyTIWAvXt2HqCR76iWDWwBrQ/PmdEyeAd
         VjsJPsepJWdJkdC0rkOTzCAsfqv45DM4hRMv9eleO1bTRkYmuBtlzEU4kMc0O+Bz/D7f
         ypc8yLwNK8UOSkGi1TinPnEuMMTDmUW1hCrZ2B4R8wKo3SpEa6ov3RcRpCzdO4XfsnhW
         GkPTIYfDH3307z+zYrUpP98ido9pyobErsXHkKlztIYEznPeg/+CiWL20FfedPTaDLAq
         Sz4g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=BByEERUFClyX8bNsEmmNpeELV4/W8bpas9VqLVZGL7Y=;
        b=rF+Bg7Uyhn/dF8OLaVrwsnGFE47ln6WVbR0qKMPVBH7erD6G96c9RwG14RvJrUAci+
         UW4dvXgVdvoBrHTjtNAjMwkQ2vdxBvmBfOOI+5/ub6Ap9m1RaRQaMk6/2FGxV1LPApz+
         OX6ZuDmIZB9P7JR6+NmZG40F7LXoz3PcI2vKVhuPtPfi+RMFhd22vzBnsURHYsqzE26y
         aswDyZ4MMmpmh/iHWP0ZjOC0V7Um5KmjE3jRRQor6ss0h4s/Xf92C/yCBad7rTWdy27k
         E2i8Vn/AWDVbGBtaOPnqrkgMLwhoWZAbKTNZbj9UAuK7K1R7ipXok8GvmwG00G/oMhi3
         MCyA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wk4Zzyxu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id n19si242233pff.3.2019.03.30.12.39.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:39:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=wk4Zzyxu;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 434C52075E;
	Sat, 30 Mar 2019 19:39:37 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553974778;
	bh=5RQForjuTsXBlPs8YUDruDQdm6w96R+96xu3xNzvFfg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=wk4Zzyxuw3mmhXcGUlfj7H1l4cdECf+V+jtR/Dpa3Ooz4sypm0bH6HmJqM5yquDVC
	 jq0bD0VBtMhU6ZUECFTVZAmqjOLYmsK1QUDJ3nQ90Pk33W3+keoPkzrGfT2L2JpzfW
	 +AkNhjPrYBmLTSXoE1N09Lu+xaFOQ8Ioqj2flhOo=
Date: Sat, 30 Mar 2019 20:37:08 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v4 1/2] staging: wilc1000: wilc_spi.c:
 Modify return statement.
Message-ID: <20190330193708.GA24084@kroah.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
 <20190330173605.5335-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190330173605.5335-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 30, 2019 at 11:06:05PM +0530, Sanjana Sanikommu wrote:
> Challenge suggested by coccinelle.
> Remove return variable and directly return the value
> Issue found using ret.cocci
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>

Patch does not apply to my tree at all.  Please rebase and resend.

thanks,

greg k-h

