X-GM-THRID: 6753034664415330304
X-Received: by 2002:a63:4c5:: with SMTP id 188mr33133697pge.359.1572428453366;
        Wed, 30 Oct 2019 02:40:53 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:9684:: with SMTP id n4ls7512203plp.11.gmail; Wed, 30
 Oct 2019 02:40:52 -0700 (PDT)
X-Google-Smtp-Source: APXvYqwGMzPeTe/U7fRCZYfeygvClJdIpIcQXyrtDMng2RhBWjAQJ5OtcPgF755Fpd9Vgws0l3fV
X-Received: by 2002:a17:90a:9204:: with SMTP id m4mr13045663pjo.104.1572428452421;
        Wed, 30 Oct 2019 02:40:52 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1572428452; cv=none;
        d=google.com; s=arc-20160816;
        b=gyW2ApAFb9aX/sT/s8bRPj/69xxejivwge2fpKyRUlVy2zguQQ24cpuwxrVBP3ynQC
         f21vYixldHDoDbcJvHsSeETUGP4u0i0jv9NmCvnSySkaqd8qenLyv8rpGBG8M14yxwoh
         PsC38WqIWe06aJEr77dHpYgBfArgmT+efTI6ZVHc3E/DwLFuEUQYC/abku3TvcnoANIB
         /TjB4JDBfh2mpHGllnW6FqX43R3EDgCISLytVxk4KTgULZFStxqS+aEQCgt6a1Dq8i1X
         h3ZuAo5txJ2wUtsUkX/P22WOnfkwQlBs4FSijPWC+VG7HzHflHod315eXIiWXqW7ZB+1
         ppDA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=o43fBIeh9rJNJ5FNiI5usjjHNXfeQMH4tjtDqRsEIvs=;
        b=HkmqalC6xkbyw/3ri+Cti2KVgt22BOE+DIi0nuqkyZRwdSrg2AXMPY8eFfgUjJinYE
         lYk57HpDsL5nQlPwngolQmWt7dxgcldjt1bhROuVXDh4MQARfIcj4VC2KN/BZYDZx7HP
         K3JPWO+y67pyvmPq+o33/PyKQuOYEBKh+vqmLvudvLqZYYR+/f8lSGLRwX1yqA2XQBXM
         SnUW/n4zhRHa+91cxqgWi8xD0lmSU6nSHYj9FzXy0aMN7XKadp83DEFhYb+b9CYOodsI
         cke2zUd4MfHDREHQRICP3sFizhALs1RQ3gCtn+WutkvKxMTuG2OpBiDm5MM77SugmUE/
         w+eA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=teLC9UHi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id h1si292471pju.1.2019.10.30.02.40.52
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 30 Oct 2019 02:40:52 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=teLC9UHi;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [91.217.168.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 915FF20874;
	Wed, 30 Oct 2019 09:40:51 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572428452;
	bh=v2VPGzmwzTx7M7vLZa8QbUcX7fBOpSfiiK/n0DFbQ1c=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=teLC9UHiGJUAq5pRLSA/gRsvVZXir0xuU7lSsK8x1XPPalvs/Q+VDYbUtdzcLY7wM
	 ygwqzA3nSYRdk/+yY80K6hhGnEWiR6mQB7J/73ZoQiC0HFt0MbOWJY59vlJ7opU4wh
	 6LVGhoNpCaPRt3OosGChWLOgfMObma9ICXp7ANhY=
Date: Wed, 30 Oct 2019 10:40:49 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>
Cc: outreachy-kernel@googlegroups.com, kim.jamie.bradley@gmail.com,
	nishkadg.linux@gmail.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, lkcamp@lists.libreplanetbr.org
Subject: Re: [PATCH v2 1/3] staging: rts5208: Eliminate the use of Camel Case
 in files ms
Message-ID: <20191030094049.GA676265@kroah.com>
References: <20191029145517.630-1-gabrielabittencourt00@gmail.com>
 <20191029145517.630-2-gabrielabittencourt00@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191029145517.630-2-gabrielabittencourt00@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Oct 29, 2019 at 11:55:15AM -0300, Gabriela Bittencourt wrote:
> Cleans up checks of "Avoid CamelCase" in file ms.h and ms.c
> 
> Signed-off-by: Gabriela Bittencourt <gabrielabittencourt00@gmail.com>

The subject line seems odd, what does "in files ms" mean?

Same for other patches in this series, please clean that up to make it
more informative.

thanks,

greg k-h

