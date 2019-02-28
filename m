X-GM-THRID: 6663027370941743104
X-Received: by 2002:a02:c486:: with SMTP id t6mr5073649jam.14.1551362442519;
        Thu, 28 Feb 2019 06:00:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a5d:8c8b:: with SMTP id g11ls2373100ion.4.gmail; Thu, 28 Feb
 2019 06:00:41 -0800 (PST)
X-Google-Smtp-Source: APXvYqwEIZyeZwFGV2+yDp2qwuONlxHkRA0BOpJpDjCaTG7xFgZrl1G/2I82I80VUDfpJhRZaVmU
X-Received: by 2002:a5d:83c4:: with SMTP id u4mr6061235ior.34.1551362441693;
        Thu, 28 Feb 2019 06:00:41 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551362441; cv=none;
        d=google.com; s=arc-20160816;
        b=nb62Bl8kG+2V0qEl/jbuMZW1dZsZZ/SpfpYpsQ+pkzDSUojESG1uosIhjkrIiMEJhU
         Kkr7f6TnA+HY8t7A4z+6ivA2FY3tqDxoNUXT3p5Lc9tBQZDCa1fhs2467shPXFkm0tdI
         lzTYMQxUzXvLf88bKMrolqgeBrVZ6Q/bMPI58no6icvfsLKiA1/MKds1vrKvc4Rs0YY1
         K8YVAyERN4sLTQQhRZvt7ix8A1/RXxG0ZycgCFmS9MxG8k46wg2ihjhtL4OkUmGlG9de
         0GKduBr1njRAjkHCsJ9FoRZQ3Wz1ODL+O7fxlEmbjILg3i8WqO0dx30MUacE0HMOPGII
         Weqw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=eOpAwhY34+pQNFC47kNR/dB/nE9vk75F3f6XFD0Laks=;
        b=BW2lm4zRPKBujaPRGMJP+6CxzIipsc9SuSp7TX/xvMhjJjVtcgxaxWXBNJYewBef1/
         9qI16YdUIvm+brrmvJOQtb54vVou17j8VuKg5BvjPjuvl77ny9fJy8ySROwTv0N1I6tw
         miHZCpdi1Fa0AU4mNCsK4xqu8AU4gVLshzfcmthv6nr+nkJi7fvcgeZx7U50cMji5FCi
         TuDMBzwmoH00dL9w+LItw4vP/yalaxf+zJzFaN0WNU+vl5xOrTHpemWKxxYjCC9OZaj5
         0blN0xS9CTUqVp1RCwQtElOawdt/BH3B/8/WqkbyenZIXAO9aCuyTrE6jcysEUtrtrhb
         1arA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B9Bx3jOR;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y7si986818iof.5.2019.02.28.06.00.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 28 Feb 2019 06:00:41 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=B9Bx3jOR;
       spf=pass (google.com: domain of srs0=kx9h=rd=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=kX9h=RD=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 6769B20C01;
	Thu, 28 Feb 2019 14:00:40 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551362440;
	bh=9Curk6/9Xm5XLGh3xyL6j2324Bnm+9HecIgyu6vyHv8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=B9Bx3jOR4DO08k2IlRUyJokyTruqoxJ/OvURZmYPluB30gUqORx+ajmjyaCVw1SH3
	 4hW+3bwfuVjkLTvU9b4rn6lGxNRMaAXde30FrRbar5fV84JsHW434YXZQxVVd/JA92
	 5ZnEn1iqM1PXKx5iKXPiFoVkxLGeYfNW148nYFcY=
Date: Thu, 28 Feb 2019 15:00:38 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhagyashri Dighole <digholebhagyashri@gmail.com>
Cc: Michael Kelley <mikelley@microsoft.com>,
	Outreachy <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2 1/1] staging: speakup: fix line over 80 characters.
Message-ID: <20190228140038.GA16345@kroah.com>
References: <20190228122904.GA16782@bhagyashri-Lenovo-G570>
 <CAOMPgjhjgt2bv3pL4weJjx6VgfV8Bfrmdfu31esFB8CPKusGgQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOMPgjhjgt2bv3pL4weJjx6VgfV8Bfrmdfu31esFB8CPKusGgQ@mail.gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Thu, Feb 28, 2019 at 06:17:23PM +0530, Bhagyashri Dighole wrote:
> This looks good! If greg replies to make changes! Ask him  what kind of
> changes you required.

Did you just email yourself?

confused,

greg k-h

