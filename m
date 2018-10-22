X-GM-THRID: 6614497774807285760
X-Received: by 2002:a37:d48d:: with SMTP id s13-v6mr35711771qks.46.1540236516777;
        Mon, 22 Oct 2018 12:28:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:b892:: with SMTP id y18ls743980qvf.6.gmail; Mon, 22 Oct
 2018 12:28:35 -0700 (PDT)
X-Received: by 2002:a0c:b91f:: with SMTP id u31mr11457479qvf.9.1540236515147;
        Mon, 22 Oct 2018 12:28:35 -0700 (PDT)
Received: by 2002:a37:4890:0:0:0:0:0 with SMTP id v138-v6msqka;
        Mon, 22 Oct 2018 12:17:25 -0700 (PDT)
X-Google-Smtp-Source: ACcGV60MBlmAmWZvwWItrsHeuvvhbOZdsRh3JzMH1VmftEuBT7XNc/3OpFDfUvlSWL0Em/F8Nqqa
X-Received: by 2002:a17:906:4591:: with SMTP id t17-v6mr1306006ejq.6.1540235844723;
        Mon, 22 Oct 2018 12:17:24 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540235844; cv=none;
        d=google.com; s=arc-20160816;
        b=OabXv5tHA4C6sRjVO1//X6IPTjEg2cgidjSuYKqyZ3r+IuIahSYG0dYYMNDuiKbaY1
         kMOMUZcQvJGfbTKYW7kjQgcW4iwuBUpnQWwR3WkQPyCKlXEueEzFzCD1mD+JvbB+qDJ2
         FRPHngo7wOy0b1TZTBbj2fG+jYe1Sub9A+WNHLZ8tXTbShszGloZviVeAGw0Nsl+aH8o
         sVYoItdtNaFQUaeGQu7QqJGkkx632N0HxAT/RxNyDc02pKXBeKkyEG/fZBTUabvrs6W8
         72zIVyWh+3NjqA58KR75MbUtKqSyLXjT2J/HtiiniIRN2ISRf0RUn38/DKjISRFW137D
         ng3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date;
        bh=MvdpAlRtu7OSd3AuBLeoBizeZPdJHaTfRCTs1QXGwFM=;
        b=Kj9VZ7v48y95vZ+jncHue+doP8E6sIQzjyiLqpBeg6ui+/ZTX4xtx1AltLzg+kmTBr
         LoVmkIT98GCclj55MRv6uLFlkk8huZyz81RBynPVBzzzuEih5KF9zjCDdfyUuUIS8iIq
         EdwkTtX6Jnxf4DHxruSeMhkzdo92UlOkvbKGVY1Rp0p/p62oAwzHqG8V78NY88w2UJ3c
         R3iMR96IXQ0TG8JW/EkaD4YN94GGtrX4igHFmU4zUOrso1zYAGThyPkfbLLoPkjjtitq
         B2PXCLkk00tleyBay9DoFZ05vH6jG0jrU0Fmdw6UDy2QFt20D4hBy2OTBL6FGeB5Bh/Y
         ZXTg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Return-Path: <sam@ravnborg.org>
Received: from asavdk4.altibox.net (asavdk4.altibox.net. [109.247.116.15])
        by gmr-mx.google.com with ESMTPS id g31-v6si167546edc.1.2018.10.22.12.17.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 22 Oct 2018 12:17:24 -0700 (PDT)
Received-SPF: neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) client-ip=109.247.116.15;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 109.247.116.15 is neither permitted nor denied by best guess record for domain of sam@ravnborg.org) smtp.mailfrom=sam@ravnborg.org
Received: from ravnborg.org (unknown [158.248.194.18])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by asavdk4.altibox.net (Postfix) with ESMTPS id 4F942803C2;
	Mon, 22 Oct 2018 21:17:21 +0200 (CEST)
Date: Mon, 22 Oct 2018 21:17:19 +0200
From: Sam Ravnborg <sam@ravnborg.org>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, airlied@linux.ie,
	daniel.vetter@ffwll.ch, sean@poorly.run,
	dri-devel@lists.freedesktop.org
Subject: Re: [PATCH DRM] drm: msm: Use DRM_DEV_* instead of dev_*
Message-ID: <20181022191719.GA28324@ravnborg.org>
References: <20181020174926.GA32333@armorer>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181020174926.GA32333@armorer>
User-Agent: Mutt/1.5.21 (2010-09-15)
X-CMAE-Score: 0
X-CMAE-Analysis: v=2.3 cv=UpRNyd4B c=1 sm=1 tr=0
	a=UWs3HLbX/2nnQ3s7vZ42gw==:117 a=UWs3HLbX/2nnQ3s7vZ42gw==:17
	a=kj9zAlcOel0A:10 a=WvlMthZRorEj1INjwd4A:9 a=CjuIK1q_8ugA:10

Hi Mamta.

On Sat, Oct 20, 2018 at 11:19:26PM +0530, Mamta Shukla wrote:
> Use DRM_DEV_INFO/ERROR/WARN instead of dev_info/err/debug to generate
> drm-formatted specific log messages so that it will be easy to
> differentiate in case of multiple instances of driver.

While touching all these lines we could at the same time get
rid of the trailing "\n", which today is not needed.

But I dunno if this is a change that is welcomed.
Do not jump to do this until someone that knows
the DRM subsystems says OK.

Note: IMO we should only do this because we touch the lines
anyway. Removing '\n' without any other change is not worth
the code crunch.

	Sam

