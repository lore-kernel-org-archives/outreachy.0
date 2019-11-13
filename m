X-GM-THRID: 6758464167600979968
X-Received: by 2002:a17:90a:b308:: with SMTP id d8mr3888216pjr.23.1573641829383;
        Wed, 13 Nov 2019 02:43:49 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:7888:: with SMTP id q8ls542648pll.6.gmail; Wed, 13
 Nov 2019 02:43:48 -0800 (PST)
X-Google-Smtp-Source: APXvYqx/RYHxcANr64zAXEZ8WD0vYzZjTjKMHcodHFQI/tVlKnPqANitvfkc0SSd0R3dxMREOt8c
X-Received: by 2002:a17:90a:8818:: with SMTP id s24mr3985852pjn.31.1573641828340;
        Wed, 13 Nov 2019 02:43:48 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1573641828; cv=none;
        d=google.com; s=arc-20160816;
        b=E1plJLa+YaQFJDJk5Vf/b/RCEcSncxRiCVGkpQ0izMrtsXrTYOxhfA7Ma/AEKizxFC
         lNMydDQnAQ858kQchcXvv37eCabI3VfTgOlY13i/9M5x5WWaLptin0UiFJBnAgRW+gVn
         4xmJjlU5jEOgF3MCZvgCLtvLpl77KoVdwFfebsw3D3y4TB9Y5SjS+wE2u3Fppwm0dp1o
         hX8ZYI1nZ0q3NJj3x1XkDko5SjnPJ/N40IsSBJeSeXhbhBME6cQzYUDC2dEHMf3NOBqy
         Hn3E/ggRYGpaDCdc4n5+/J3yooSDUm8Yq1jin29VHS0dTybYGgJtTWkNypygOQ+N5f0X
         pv9A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:to:from:date:dkim-signature;
        bh=MvS0YJc2NcLZnl7ux2NooCbUzDBcliTDOr3GIDj014I=;
        b=ayS6tGiLmxpzWwM3SHv1PdjtRt0QBgkF7HvrBWOjYl1VmziW0/aOzZbE0aiDQpzodG
         aHzoPE2d1LgdLd6sgt6cfSxDdSeFN14UQ2N6EKoGnMHFp6YJ8KpTSpqszKd/53Bd0s/w
         37eKlVWMuvrrrIt32K2SPXy7410+yJgcs8gWiknOmzItrnp+XNb6Cw3kZ8njlOvDqMvS
         tBCcB9gQx3KMqCitEo5B0/uzaxHuqpYiREjvSLcEV6YhkYI2NvJZF8m+UgNgol+iyCPM
         w7v1EmAlHagKviOKOs7PdHWdN1IgntJVg0rwReJq7vLPiZTSFUatvuqHjBpfVeGIjSGC
         Q8ng==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hee3uwVH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id r20si87048pfc.3.2019.11.13.02.43.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 13 Nov 2019 02:43:48 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=Hee3uwVH;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [61.58.47.46])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 863CD21783;
	Wed, 13 Nov 2019 10:43:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1573641828;
	bh=MvS0YJc2NcLZnl7ux2NooCbUzDBcliTDOr3GIDj014I=;
	h=Date:From:To:Subject:References:In-Reply-To:From;
	b=Hee3uwVHhqmxTaDIYPqheVUNonJBm64OB4bjpcfMMXLYSu9sbVl1rLZEYLeJj2k/1
	 dXT6dTIX7qmLdPfooohmMZHvkXo7HPRm5JCDt34s5EslGimSJgiQPFNdyea1+SbxVf
	 R/AXqgDdIzQR1AvBI9mv5aUy5yZ5eMKIpmZ1emMY=
Date: Wed, 13 Nov 2019 11:43:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v2 2/4] staging: rtl8723bs: Fix
 unbalanced braces
Message-ID: <20191113104344.GA2068945@kroah.com>
References: <61ec6328ccb22696ccc769ce9fbbe26fd00cd04a.1573605920.git.jarias.linux@gmail.com>
 <ff5bb9f30fd27f68a9b8977094d56c844ba307df.1573605920.git.jarias.linux@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <ff5bb9f30fd27f68a9b8977094d56c844ba307df.1573605920.git.jarias.linux@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Tue, Nov 12, 2019 at 08:36:12PM -0500, Javier F. Arias wrote:
> This patch fixes unbalanced braces around else statements. It also
> removes an empty else block.

No, it only did one thing here, not 2 :(


