X-GM-THRID: 6663345238466101248
X-Received: by 2002:a62:52c7:: with SMTP id g190mr1551393pfb.68.1551431333075;
        Fri, 01 Mar 2019 01:08:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:6c81:: with SMTP id h123ls1475217pgc.5.gmail; Fri, 01
 Mar 2019 01:08:52 -0800 (PST)
X-Google-Smtp-Source: APXvYqwZSaxeobWZvv2Zuta6dDdzqBjjezovPHO8/nKffS1NsP5CTUvb98fzSbQJNksiRISMP3Zk
X-Received: by 2002:a63:df58:: with SMTP id h24mr1285535pgj.43.1551431332286;
        Fri, 01 Mar 2019 01:08:52 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551431332; cv=none;
        d=google.com; s=arc-20160816;
        b=Sa5qx91rwPInpleetHL9xeSYCPZiwU3z86r36440Ue/y8AxhHU34av4oWTupzSLuP4
         SV2GZ5kYHexNIjnNmJf5P+18WHgyk9uh3VpUk3epX0T7g2f0LAYA0RaP8jem636Wx/vj
         9TP8+/5X0qwgo7uzEtbOhwRluLxl4puoCCusjszr4QwcKWcDD3UDu5kNB5RYPph7X7ny
         4ieumKsbLOWtf/4Qor/Im2zSFWf6h+aGvjFjGM3m91rjfutNVRb29rpkIi/rLHq+Zmdp
         dZFrz+dj6fO0H7aRK8+B3A2tEg4hWoEOE670f6uFE3W/FCQEejvYbXZLHzCBfGI914V5
         jHeQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=0E3j72UqSO9nFnoUt7zc4xOfLvMW20nEoLudJo+xtyQ=;
        b=JvJugVILstOWt/wU+8Az7C9hH+KtbRn2wXKa7poTj3q479FwV7bAFaF7eC0BsynxMm
         dDlm5HVD4Fb6TR/r3Ela4JZlOuOM1Cmu9uDD9G3QMOZn3/+jOF6GM5jFsy/FHpxsMbVi
         viREVykc7qUobCdtlookAOl30oLWTISE+7ZwseS8jvq+VtqyyygdTgx+tw//8hjjbLXr
         xtrQF3T6Px/qvzGp46tM6gA34qX57pV23qtQhZ4z5r3mRe2VSJDl029nqkTRXMXVT6JZ
         ce6uVyhE8W3QY9MWjioQgi/Zlw9orUjvZk2ejHad5jWo1WrsHDJusYI6mnJOrDP4kJdr
         Xrlg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r+mN3NMR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r133si292749pgr.4.2019.03.01.01.08.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 01:08:52 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=r+mN3NMR;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 7B9F420851;
	Fri,  1 Mar 2019 09:08:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551431332;
	bh=0E3j72UqSO9nFnoUt7zc4xOfLvMW20nEoLudJo+xtyQ=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=r+mN3NMRQB/ZwhDd76bFbVjwuajr0vYM1plUU3dlUTFA+qVL1Pb3dnHZ3Wc14yyYv
	 bfae4WywgZYA4mp01K7ljac0ITfL1DuyOW/UCbfy5TtXsWImn2HTsWF+mtdZkr3k7Q
	 5HPqbcbF5TeIoswZKeU75fE/A+8uSNNxTTomn+jo=
Date: Fri, 1 Mar 2019 10:08:49 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Wentao Cai <etsai042@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCHv2] Staging: fpgaboot: Delete newline at the end of Kconfig
Message-ID: <20190301090849.GA29599@kroah.com>
References: <20190301090225.9475-1-etsai042@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190301090225.9475-1-etsai042@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 05:02:25PM +0800, Wentao Cai wrote:
> Delete the newline at the end of a Kconfig file, to silence the
> checkpatch warning:
> WARNING: please write a paragraph that describes the config symbol
> fully.

That is not the way to fix this warning :)

You need to actually write a paragraph, not delete an empty line.

thanks,

greg k-h

