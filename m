X-GM-THRID: 6674230099683835904
X-Received: by 2002:a17:902:ab81:: with SMTP id f1mr347990plr.27.1553974784705;
        Sat, 30 Mar 2019 12:39:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a65:5081:: with SMTP id r1ls2171613pgp.9.gmail; Sat, 30 Mar
 2019 12:39:44 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyuipPKAyOuZgjHn8OkK7Rrt0rz4l5deChtROvguQPTPRIcQ+Kj90lhyvyywRupP3QnGgX+
X-Received: by 2002:a63:d401:: with SMTP id a1mr539380pgh.4.1553974784195;
        Sat, 30 Mar 2019 12:39:44 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553974784; cv=none;
        d=google.com; s=arc-20160816;
        b=w+KcXiMkTZ6EL5HiIQbUAEHl7kxqv0lzRp1OkJxttHYyEdOGHFpZ/IZ14ODDgEO7iT
         i1nqHo5XIIeKww9Job9hXl45+LvG7z0UqaKTndWuc3qalZz1/IwlXS+1ZqAg9Jwx0w82
         Hov//oGbl8A/6glJuPdPBJQdfekKPCUq1IciZP27VpfXnEWDflpyolPlzdkIF97eDHIF
         nxGSNwU4R3XN0PVcNzxDx1L/Un65O/MPQ8GeZ9xfK2D4I/LiQh2g73zsmG8H3/OEBKwr
         a282cECKN/6FXmCgUGXY3htNAui3WpYPHN3mLLAY09QDgr2P1d1Lz/A09fD7wGumeuS9
         Nb0A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=zQhBEdosjAQMTwVzkGtKF/adBXuT3oXMGXI7BDzNnIg=;
        b=whKpkf5ekM5NsMPGvBLQXkoXPxHD29fHzHL9faxYbBjSBxDinuOqrxG1Hsk8FZidpV
         GU9Xaaecm3McTcMBCtWVHthtCWI8nu/x0+aiKJNtuSjPTgfAkRITa3FYVCQP/gBEWSvx
         4v1MiKIYeFd20jzJ5PfkRImGieFHLKkhN4xu0APssObg3i8AtuBDlX9E1g2CbRnSJp5B
         0AyjUSwQiMK8+4q3XLzIE48PY5g20Z1Z397USzoAZBtaYB9HleSg4Ge/3TJt+rVQT5du
         dRCoTieMHigR3Xgz5bZDd1rg1jhlRq1xxn4E0+u/944QZ8zZ7j4hek+snMo1sHtI158i
         mA3Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kul81PSl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k70si254391pfc.0.2019.03.30.12.39.44
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 12:39:44 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=kul81PSl;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id BF5692075E;
	Sat, 30 Mar 2019 19:39:41 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553974784;
	bh=8nbtP7ZZEQ2Q/DALBsM8RyT1AsBVKZUe3WYC+jQAxHU=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=kul81PSleJGYYgAhzKBlLqTGiqrXn5xVC8QjJZmfFO0mPHirnFiV/XX3f+MwlHCgv
	 8gDvTf1KUYa+bLcA/BdxTLt0Ok/yqdZF28hz6GTGunYnPyNcN4aIAJzJKB8vr7l3E2
	 yeuyNUej197RaZN2D+s3lumYZFmXNn7JmMSkPaT4=
Date: Sat, 30 Mar 2019 20:37:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Sanjana Sanikommu <sanjana99reddy99@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v4 2/2] staging: wilc1000: host_interface.c: Modify
 return statement.
Message-ID: <20190330193727.GA2651@kroah.com>
References: <20190330170116.4761-1-sanjana99reddy99@gmail.com>
 <20190330173836.5404-1-sanjana99reddy99@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190330173836.5404-1-sanjana99reddy99@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 30, 2019 at 11:08:36PM +0530, Sanjana Sanikommu wrote:
> Challenge suggested by coccinelle.
> Remove return variable and directly return the value
> Issue found using ret.cocci
> 
> Signed-off-by: Sanjana Sanikommu <sanjana99reddy99@gmail.com>

Are you sure this isn't already in the tree?  It does not apply.

thanks,

greg k-h

