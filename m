X-GM-THRID: 6946995103705595904
X-Received: by 2002:a05:6e02:80a:: with SMTP id u10mr16323714ilm.221.1617530132552;
        Sun, 04 Apr 2021 02:55:32 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a92:ce88:: with SMTP id r8ls905852ilo.6.gmail; Sun, 04 Apr
 2021 02:55:31 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJyLctRfwvZSfT0KSE6JdB7wPJI6r2s/Xovuv7qu/wrC/xd2zyCqKZvduaQZjNEl2BJZtW5L
X-Received: by 2002:a92:8752:: with SMTP id d18mr15681510ilm.283.1617530131857;
        Sun, 04 Apr 2021 02:55:31 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1617530131; cv=none;
        d=google.com; s=arc-20160816;
        b=HtTPwhPQ49+2qQjkLtj4VQJ0m0ZR3oqN1qESgUMLKi2lbCsU48YH9aSep3OnIhfTTP
         sRCL3aoRDA5npHyf+/UqFdTkcvZHx2Pj/Gt30k5SYjF6XxxkbuR5XSQrcR0Y5AvNFIW8
         ZdkRzUOzhwJA8i5E0FGpuSRdo1y4sJj8Arbr4mA6hjDTsTiLmLc0Nkt7X9yHJfT7e+S6
         GhwOnQvdyDfs+/sXheh5VFp2wLkeJcCVr4Xsd8TeityztQ3yT3pXJVfpjKYvog58MFfM
         sKoHDf1F3i43sSC3/ckhkvbNnETvs5tR3KKUXoyux5kGV6xsRV4ODc173l4W/aMQnq4F
         TJjA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=LXu2dHyRT4I2u4EDJ6vyskAgcPBPpTPXNGLNXB+bkqQ=;
        b=eiWBsEjmCeO20vArase3cjk2OpOWVVzy4MfuYJfacBdqTYOaLYhkQv5Cye3+UbHQik
         +L1IsmDR1PIc6ZO6C6SlODOm0OEmdt6Pv0Ztsgfwxb5gmrEXYEZs1setV9bLAK+29tAe
         YfQikHreSLGhNoUuKfXYFF6c+7WSiBqWwCYQap5mYkWw9TeKUFhv/lI3oVFN6LoG1u7q
         rkoLYzxe0w7QLtV2xpXZoiaAIDJUm+4aEUARA3gNP3ucg290a1Mpvudd+k4ptV0WUNXW
         99RXHhFDn9y5H6MIgKWjfSCqv9PoE0D7isTZxd+d4WYEU9X/Z3Py+rLRL1YMrW2Nfl6e
         BI2A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dWIkycwo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id y8si935913iom.1.2021.04.04.02.55.31
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 04 Apr 2021 02:55:31 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=dWIkycwo;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id B34CB61380;
	Sun,  4 Apr 2021 09:55:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1617530131;
	bh=FhEaW2cmEgSgSaC3SbBCxav57AyEtDTZ4e+3qBA+FkE=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dWIkycwoXooVgqIedtlP6WI6HZ7u663QH3KqsMpIVBzKrAQQiC065kvQWoMRntHBJ
	 GSvAQPhs/tedheWCzJJrNctXHnoisBp4Nb3hTzTKyfMUeSpLOBm1lxoi02ag59gviR
	 iJGj3rRJMf53nfmHeAsjK7kIDtgvdxUzSXC0FMUo=
Date: Sun, 4 Apr 2021 11:55:26 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Zhansaya Bagdauletkyzy <zhansayabagdaulet@gmail.com>
Cc: clabbe@baylibre.com, mchehab@kernel.org, linux-media@vger.kernel.org,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/7] staging: media: zoran: Eliminate camelcase
Message-ID: <YGmNDmT/aqU/+ygn@kroah.com>
References: <cover.1617472411.git.zhansayabagdaulet@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1617472411.git.zhansayabagdaulet@gmail.com>

On Sun, Apr 04, 2021 at 12:08:57AM +0600, Zhansaya Bagdauletkyzy wrote:
> This patchset fixes 'avoid camelcase' warning by converting local variables to lowercase and separating words using '_'.
> Renaming of each variable is implemented in separate patches.
> 
> Zhansaya Bagdauletkyzy (7):
>   Rename 'HEnd' to 'h_end'
>   Rename 'VEnd' to 'v_end'
>   Rename 'DispMode' to 'disp_mode'
>   Rename 'VidWinWid' to 'vid_win_wid'
>   Rename 'VidWinHt' to 'vid_win_ht'
>   Rename 'We' to 'we'
>   Rename 'He' to 'he'
> 
>  drivers/staging/media/zoran/zoran_device.c | 48 +++++++++++-----------
>  1 file changed, 24 insertions(+), 24 deletions(-)

You did not read the instructions for the outreachy work, sorry, but I
can not take these.

good luck!

greg k-h

