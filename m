X-GM-THRID: 6465168256299696128
X-Received: by 10.129.55.69 with SMTP id e66mr11066971ywa.59.1505292484240;
        Wed, 13 Sep 2017 01:48:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.10.97 with SMTP id u94ls2647026ioi.28.gmail; Wed, 13 Sep
 2017 01:48:03 -0700 (PDT)
X-Received: by 10.176.26.150 with SMTP id j22mr12024441uai.24.1505292483648;
        Wed, 13 Sep 2017 01:48:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505292483; cv=none;
        d=google.com; s=arc-20160816;
        b=IH0BaTehleJ9gL+tJ4dm+H9hKP8e+aaUQT5ugtf5KG3iJwlN6KuAPPXhB2D0gr7Mhg
         3M+rLc0b0+gxl/lMnggM8zomEdg9n31mUzk0P7LW6rQ+i5Qc/3SWbjtWk3bLPfvh4iKc
         vEUryrN+FN2YRWOygJx2g2xnGm5yS6NFDrZUAEJ5VYR/edB1BLqgdSALVAuYsXNIxLkV
         SAzJ4EO9cYL9CKXzqW3On824asIcYpdwU1npP0rTPtcwdP/tnvF3kH90Do4NrWXirLQX
         HKBazchnaswxxkdcL+vSn09OflW2mHBEQ7dMWqYZvxzqBY8d3kq5Bio+VZhiMQq4RKSq
         oFsA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=fcv3bbG5n0FGdCEQud72pWFcOcuMAYeHXzf7EB24+Ts=;
        b=qK2NVgLNIKPNbFtqJ31+pyN0Yx55inrk103i3oL1eSWMxMhNNBS8E2c3PqtVudAitS
         NkJxsfZaFTqseHdYwYqmE36c0YPXyIByU+7MukkrYyGR/3oA0PnZ0wh8bngEFsTY7GXS
         ekGVrQ5XJfDK7jfqTsf3htublu0xvQJFoPBmzM6+02/vSU2zMIjak7/vJJuV/+FUsKcV
         GRn9R5mfYgNd4H15XgbJjXYs4VfbCYNSdBS04qjCT0V0wiq/h8B0124IIRO6bOjqyXbS
         5hF+4vPxMLPaXI1jVXFZp2RFVbMGK3BcYYMnyLEFpcbdOOxbueXU7CvPNZEFvD6egsu+
         /+zw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bb7lMCwK;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Return-Path: <himshijain.hj@gmail.com>
Received: from mail-it0-x242.google.com (mail-it0-x242.google.com. [2607:f8b0:4001:c0b::242])
        by gmr-mx.google.com with ESMTPS id v85si513186ywc.0.2017.09.13.01.48.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Sep 2017 01:48:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) client-ip=2607:f8b0:4001:c0b::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b=Bb7lMCwK;
       spf=pass (google.com: domain of himshijain.hj@gmail.com designates 2607:f8b0:4001:c0b::242 as permitted sender) smtp.mailfrom=himshijain.hj@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-it0-x242.google.com with SMTP id e134so49167ite.3
        for <outreachy-kernel@googlegroups.com>; Wed, 13 Sep 2017 01:48:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=fcv3bbG5n0FGdCEQud72pWFcOcuMAYeHXzf7EB24+Ts=;
        b=Bb7lMCwKCl5jAgfS/uPG5erxqKCnuZfaNBqDlRjiPm1G09pDInbk1z71gOq7XXQZuS
         Q/V7QY8/Ig7U19nqtNyOEz/7iSccJQakXxYV4ZN/VDMZxXzR3PCDzboO57Dmch0PATuk
         0T+R3dpnkdrZIsxYic8yWPtWzwBdkvv94vtcHzc9J+bTM33v4u01Wm2DEjL9yGdu68Ux
         eHYWc8Nt9kBm13qS1yLGtplAgcmyfolhMzakR4TYFWS2ElksPq+B3MielQk/zLrG6fyg
         ZhXopwN6l24zUSmvnbHnPBYZ5yAPcbzC2+NPa5O85ysrfUKm3jcbcTU3Gf23ZFE1QQdd
         BEVQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=fcv3bbG5n0FGdCEQud72pWFcOcuMAYeHXzf7EB24+Ts=;
        b=TMqEd8ZxeFS6DJx19QsqedHF6J31RJFqWzzah5OWh8xCB0VKEK+BgrtCW3s2bfMbic
         3LsbXTJ10VvUS/hjKyTo3v6s5XM5UpgAoWvXAxdadzSNjMrTtnmOH3zoKpYUVmcAJ4aj
         NdA6/t61gFnryQocM3vcP2GAaGuCWXp6iqkJ6p3S+Dmlxa0JBKBxoU1RMrcXzB8Vdpdf
         ypvFbMGQdu/FUOQbXUGsRS74qtlcujJzL/N+2d2d0PJyb9p7Ej6vhKe+OwqH8wn7Lawz
         Ms6dau87sxxyEEgZGeCJ70WvWyPpspfc58IlaEZxFQt7gK0Ui9StPe4bp2z4F5OecVtG
         jtbQ==
X-Gm-Message-State: AHPjjUjs5uEZlakk/kEMuf6Gen/RB4vxOBYVaaNaGHJE9+5/W9gd2RKb
	fStK6okLMX5Uxg==
X-Google-Smtp-Source: AOwi7QDFNhEGx9apWBTqmmWkOVxnS2fPkvWweEsSh/U8HIoqnT0ZZvzC6SkSMx201wplzTn6gu2STw==
X-Received: by 10.36.196.84 with SMTP id v81mr3267743itf.142.1505292483114;
        Wed, 13 Sep 2017 01:48:03 -0700 (PDT)
Return-Path: <himshijain.hj@gmail.com>
Received: from localhost ([223.179.135.67])
        by smtp.gmail.com with ESMTPSA id h13sm491691ith.36.2017.09.13.01.48.01
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 13 Sep 2017 01:48:02 -0700 (PDT)
Date: Wed, 13 Sep 2017 14:17:59 +0530
From: himanshi <himshijain.hj@gmail.com>
To: Dan Carpenter <dan.carpenter@oracle.com>
Cc: outreachy-kernel@googlegroups.com, lars@metafoo.de,
	Michael.Hennerich@analog.com, jic23@kernel.org, knaack.h@gmx.de,
	pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, nick.desaulniers@gmail.com,
	daniel.baluta@gmail.com
Subject: Re: [PATCH 2/2] iio: Use __ATTR_NAMED to allow passing name as
 string to IIO_DEVICE_ATTR_NAMED and change usage to pass string
Message-ID: <20170913084759.GA5388@himanshi-Inspiron-5558>
References: <cover.1505288677.git.himshijain.hj@gmail.com>
 <2bc7a124ab925dd2c50aa8c778745d179777d50d.1505288677.git.himshijain.hj@gmail.com>
 <490606d70335e84a09ef418cb3cc0dbee6f79c84.1505288677.git.himshijain.hj@gmail.com>
 <20170913081221.udzpojijvm44ht45@mwanda>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170913081221.udzpojijvm44ht45@mwanda>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Sep 13, 2017 at 11:12:21AM +0300, Dan Carpenter wrote:
> On Wed, Sep 13, 2017 at 01:26:27PM +0530, Himanshi Jain wrote:
> > Add IIO_ATTR_NAMED macro to use __ATTR_NAMED to allow passing name as
> > string to IIO_DEVICE_ATTR_NAMED. Change current usage of
> > IIO_DEVICE_ATTR_NAMED to pass name as string.
> > 
> > Signed-off-by: Himanshi Jain <himshijain.hj@gmail.com>
> 
> This version looks nice.  The subject is just *way* too long, though.
> Also you have put a v2 in the subject and a little changelog after the
> --- cut off.  Just call it something like:
> [PATCH 2/2 v2] iio: Change to __ATTR_NAMED()
> 
> regards,
> dan carpenter

Thank you for the review Dan! Does it look fine now in v2?

