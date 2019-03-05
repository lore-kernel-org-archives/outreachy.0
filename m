X-GM-THRID: 6663618170330284032
X-Received: by 2002:aca:5145:: with SMTP id f66mr14303086oib.46.1551772406592;
        Mon, 04 Mar 2019 23:53:26 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9d:590f:: with SMTP id t15ls81039oth.10.gmail; Mon, 04 Mar
 2019 23:53:25 -0800 (PST)
X-Google-Smtp-Source: APXvYqwfRGNE80j1XvWqUMC5/+/vqGAf+wGzivDMK0Z0gRTFGR6DLT4mYk2RBf4Mg1MJy1QY0bEj
X-Received: by 2002:a9d:7e84:: with SMTP id m4mr117171otp.58.1551772405627;
        Mon, 04 Mar 2019 23:53:25 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551772405; cv=none;
        d=google.com; s=arc-20160816;
        b=KW/d/srr6LOcS9k7oHQv6VSDe8oUm8MvDv47g8uWzDsxXdrDU/sP1LcDokRy4Duijb
         qEinbEvxfaheYpQSXP1ziQ0ikcIvduiqB379m/W7hBwcr5sS100duJDteMd3ghvjQEoj
         dgjdR5wOl2PYcyfAmpP8TOFabrionEaf6hcq+6uke6VtDErJ2vgSBV5vaES35qWJMPNs
         z5SmnrriRCanIIeTtEtKdnZNprJ9cE3UWhMD56CIKlq+RbOAwJYKuW1tktNQyxviQxfz
         ZjroXZDmQPbhLjGr7QRs/2o9X34KoPE3y9tXZlgkR2tFkoybKRjc/++jrZ8bL3mIPlzH
         NYiQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=1gS2l/T+n8hgzEHYI+Bi7XPhdSOHShWR9KH6jzocS6Y=;
        b=YUr7mVTdU3Au1+8kst36Tfaa3u+7uFd2R6+OGfGgP702ootaiIE8e0GsHmGw6DCOKz
         n6dLSNNSVLGjF/tmmBf1DZTzMKnDBnaDnyII9oI4ejj3WPLSydAOw0Mh31Ra9Et7CJrm
         tT4x5x7pabM7MtonlUyOHT9x4dpx/EK4/J8Nq+VRHZA39bpXskAPI8VCWkT51HWOI9ic
         2gfvhyijfVInSXKvW2b9NTKaKr4T4HYhWP4zrJXueiDmOmE4QXD80dMLJM2q+HcYvloD
         RB0eijXAswhUEIDZFN/ih9wlBivbH5X2MeElLWHNFVrNGBJ2ofzgkqdiSprtJlBcP6MT
         gm7Q==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=reK0iRkz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id d128si354282oia.3.2019.03.04.23.53.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 04 Mar 2019 23:53:25 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=reK0iRkz;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 480E020848;
	Tue,  5 Mar 2019 07:53:24 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551772404;
	bh=ngyF3gx/TdBXO13l66h9Y8HP7TRoudvOxCTRs2Tp2rY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=reK0iRkzZEYtHoGI735DZaP8QkIFKRujag//LWMZ0vnKCPzMf7guBOQsgcwGFEyV3
	 E321KW/vEmqmZpavagogO6Tpl47yLWmiCGQzlPZm+euvqUL2GGdm32P5jfPAHQHi19
	 cIw7grqnEo9uUcrAeLWSk1SCw+wMPxzfsMugya7U=
Date: Tue, 5 Mar 2019 08:53:22 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/5] Staging: vt6655: Fix
 checkpatch.pl issues
Message-ID: <20190305075322.GE6956@kroah.com>
References: <cover.1551745071.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551745071.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Mon, Mar 04, 2019 at 06:23:58PM -0600, Madhumitha Prabakaran wrote:
> These patches fix warning line over 80 characters, modify spelling
> error, fix warning about preprocessor conditionals and fix space around
> '-'.
> 
> Madhumitha Prabakaran (5):
>   Staging: vt6655: Fix line over 80 characters
>   Staging: vt6655: Fix line over 80 characters

These two have the same subject line, yet do different things :(

Please fix up and resend the series (after dropping the one patch I
complained about.)

thanks,

greg k-h

