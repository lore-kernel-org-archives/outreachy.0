X-GM-THRID: 6807924039035650048
X-Received: by 2002:a17:902:988e:: with SMTP id s14mr10509738plp.179.1585582700515;
        Mon, 30 Mar 2020 08:38:20 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:902:a701:: with SMTP id w1ls12670929plq.7.gmail; Mon, 30
 Mar 2020 08:38:19 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vtB31V3JSCidbEJ0NW0//l0pjr8r5chAi1239SdwA9lhL5BQEXk49Li/L9HQAGwfiXDVBtj
X-Received: by 2002:a17:90a:9408:: with SMTP id r8mr16830779pjo.1.1585582699130;
        Mon, 30 Mar 2020 08:38:19 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1585582699; cv=none;
        d=google.com; s=arc-20160816;
        b=SShZ67Kj44G4eJ4s7ko2Enj1RDtkZL486A9dh8y9wMKVUlKfBxkH4sqCwov1NF3Kp2
         LbZ7BK13IL2vt+EDnlblQawxaAEAMvy4vp8OrfmybSQWS/Mz33a4gIzoctGQ8wqwx86X
         gVj5s4v9B5zUOh5QC1NNHBDc585jDJR17DqdR/96g6VBue9tk769XhtYGIrjzq6SVE7y
         G/sOpr6xdRDZsC23cgqB5G6l8uZBl5Ch4Pa9PgdAXBTRkDNykQUEXsPJuC9CZSDh5iwd
         U4a4GAbWUT8ZgoUyzqox9zN68G3d+wxc8kSCb1uaGC0TDVBNS0TaNjn1aEy0AjmZv5Ov
         XT8Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=WRr9Czo4Erfhvf+xKk+kT7CICVMsegHcQRyfH6gxguI=;
        b=O9pVGCbz5DaRJW3tbmglodNYEPKom5czjUOCJU716+AfUb2Y6WCQGx6nzTilav1U9s
         G3AULH7d6rtxMemN/Rj7eZS5STHkvoaW/bJ7v9WDruL5glVY3qfp9+qnuMB7Z4zuiBHe
         KlmOxuS17YOKrZGoWEnSv+qAYefqTFmx3soRoVG3E/5QATUhFvT4koA4a/XFLWEGQFEt
         zLSvoffToib9R4fwt3Cjd3xwm9LrwIGkTwi3/m8ZTkSP6oTDkDGFHSSlvQBTORfWI4zr
         S5asryfP03EGbw/8a7lrZDxGsCVvI96uX6IWCVx+GPFBe6h9nosurGp5AbpLbAwXWx7Q
         a9rQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jvpKHB6o;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id x12si898971plv.3.2020.03.30.08.38.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 30 Mar 2020 08:38:19 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=jvpKHB6o;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 56BB92072E;
	Mon, 30 Mar 2020 15:38:18 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1585582698;
	bh=iYDBbGnA/TGndbLXSmPH5HHZ76WGuMSvgDjkFcgwGjw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=jvpKHB6ov4f4wZPqTfPkAMyPsFta5X0FHGCeL7k3h6kXrZvz3r4YTZEXvNJMOSggi
	 niKCqB8Fuy1MlFHOyYl3eRLIdlTCg1x/8+IMopR2RnLR8goa+OadPDgh2P4qIfCzI+
	 IHdXpmD09MO7M7qe1v44XODngVADcW7LrvTdRqwo=
Date: Mon, 30 Mar 2020 17:38:16 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Gokce Kuler <gokcekuler@gmail.com>
Cc: outreachy-kernel@googlegroups.com, forest@alittletooquiet.net
Subject: Re: [PATCH] staging: vt6655: line over 80 characters
Message-ID: <20200330153816.GA772452@kroah.com>
References: <20200327234513.GA11857@siyah2>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200327234513.GA11857@siyah2>

On Sat, Mar 28, 2020 at 02:45:13AM +0300, Gokce Kuler wrote:
> Move to bottom lines from comma for 80 characers limit.

I'm sorry, but I can't really understand what you are trying to say
here.  Perhaps word it differently?

thanks,

greg k-h

