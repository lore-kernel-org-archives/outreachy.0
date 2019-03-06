X-GM-THRID: 6664942000953884672
X-Received: by 2002:aca:f156:: with SMTP id p83mr16668704oih.18.1551863516275;
        Wed, 06 Mar 2019 01:11:56 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aca:be04:: with SMTP id o4ls196751oif.1.gmail; Wed, 06 Mar
 2019 01:11:55 -0800 (PST)
X-Google-Smtp-Source: AHgI3IaK7Docm2iZiFjaHwdpKdaJIXCdBvmGtdNMsR2DPuyGsTu81qS+IXim34/x5fV0vky6b3HD
X-Received: by 2002:aca:ac55:: with SMTP id v82mr16708000oie.36.1551863515373;
        Wed, 06 Mar 2019 01:11:55 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551863515; cv=none;
        d=google.com; s=arc-20160816;
        b=yqxIiODDC6pWAN+OfVwlcGwOYdoO+p1RAPNi8vkfzSwDo4/tr5NXpqMcltKZkdwtXo
         BKZl5cdPSW4i2NHu9Xczoh7yQcr495QQJCkqVP5e4U45eQI6xf0IFUjcdoHI7IJ+eovz
         uaiw1ke9MGSPaLGcdwUTnNCpZFJfC21zZt+WbPUvlHYAbEyp8XnQ0eNLPYv0OkbWTwZx
         sGNVA4UViq45RzDF5j8bLl1rTmx550BEXb2LPRUFqNQC7n+1PdTxV7BcvtzcKKy7Cz4z
         phoJJrgrzFE3nIa/ck/JJbGViHVvsWXZltXFi1BRSOn6AND+/tZ+tydH6/ccbFQxqRK2
         KbSg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=VvFAbgWecQ185LeCOkAAE7Azina7Uk1szzTVITK0zaY=;
        b=yiZ/Z/H1l6tExBQWY6A0egq5NnB9uiUAgw8JyTbeXCl/sDndIE0Ny4Au6wsplXgXXu
         TDyBFBlTTZ1YqLR3EtckSjyUi/CMn6H/nH/Qeac++owwAwkq/tP7mjPvwWeiyS/rvquf
         vRxTrYVEA6TeV/1BP0AaqITvNqW/pPKne5ZSOr3B1XuWuv5W7RbwhyLFrqY5TyKv7vKu
         7u4hNGawa4YT4sDc0b8tb4Sucm63a/a+rHcBhmi3mKBpcC5hpNYTp5ItAjrh+OzMjIq2
         tmpGU+zKcOGd5Cl2di7EJ0mLkRU1qT5R0dxpfBNXTXubySIeSMj8/qrx2OBZmyMkNfub
         hEKA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=frqdTobx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 135si71517oia.1.2019.03.06.01.11.55
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 06 Mar 2019 01:11:55 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=frqdTobx;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0556B20661;
	Wed,  6 Mar 2019 09:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551863514;
	bh=VvFAbgWecQ185LeCOkAAE7Azina7Uk1szzTVITK0zaY=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=frqdTobxb2W37HqLGV7YtBY1g0bl0zaUL/0n7lWdqNLIbm1iK+peQv47p8nsNtgAQ
	 /Pjw22E2rM15+22j5XpgKH336v1mlYVNX1R4lS/tumTMbwLBGBBq5vbxyroD0yCssO
	 J95TKNDb1m3KNdUQrWdCXTJQlg5mVTzu8igkmL6o=
Date: Wed, 6 Mar 2019 10:11:52 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v3 1/2] staging: fbtft: Remove unused #defines.
Message-ID: <20190306091152.GA7927@kroah.com>
References: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190306052313.GA3924@bhagyashri-Lenovo-G570>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Mar 06, 2019 at 10:53:13AM +0530, Bhagyashri Dighole wrote:
> Remove unused #defines detected by checkpatch.pl.

As Julie said, checkpatch.pl did not detect these :(

Also when you send multiple patches, please properly "thread" them by
sending them using 'git send-email' all at once which will do this for
you automatically.

thanks,

greg k-h

