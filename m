X-GM-THRID: 6465665383361675264
X-Received: by 10.25.77.17 with SMTP id a17mr762430lfb.21.1505728516208;
        Mon, 18 Sep 2017 02:55:16 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.87.20 with SMTP id l20ls771101ljb.20.gmail; Mon, 18 Sep
 2017 02:55:15 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QA2awozI6jsbtGhQAZd22keMeSwzoxvuqWUjiepzE9nj5ZBfFXRKV5Z72cQuNJXMrdR9196
X-Received: by 10.25.78.196 with SMTP id u65mr789878lfk.4.1505728515386;
        Mon, 18 Sep 2017 02:55:15 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505728515; cv=none;
        d=google.com; s=arc-20160816;
        b=R1pq491orAb6jnrdSmPQP4sLc7dDIIqKyMOP8ctk7NOsK7P0RGwz/aQyBg55FgBaLX
         7Qc7+G0BlKyWnORzEAEwKnY7eGZaclx/7oM2xHSvEqD3R2wkdSa7/HYEx25sNRm3+F08
         l+A0I2B1OLRPbakN3XHsJMAoR+H2TythASFaMI/kSQR4EiMkA/aZAIQ6qwovEjkRADm4
         YXhHsgfg/ttFCGLppWAPBKACZiPN6uhTAHhwW/WPcbiFu+aJlSPy+W5TWDrSp+hgAfb9
         BVyIgv4JgZ2A5iC8N69HpUjkR473mAZX5x5/HlqJ0XJERsfhmRyc+8x4urQkBl2MXJmg
         YmYA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=sRkOOAq6UdOjy+7UcvuWpNPYoauwfQ1phNMFNillpJM=;
        b=BhlJ/CYTmJ2DgPopXhGZhUUgLRrC9ypG/quL7hD6/AYcc32LpEJDAIk0Ho0tn9JxO9
         wAc8b+87GbMAOqmqQdv8EE0swSixTRx8Wx4FGtYxEoBJ/8CiInMcbkNZ3eoNR3VpngjA
         9GEYXGP2E6BkQ5Ez2JVGl3Vt4MG8DkMj0uKCYdg1yRk+7SQ10XHjA0i/lHJ0fHu026io
         Sq4yU+NnvZWGAoihyT9UQtL8iME1VP7DPJcHIs5KfT+htlunlkMXkq7DekCxCREpABkA
         f1CJYW1s1K6JGtRI+JEJ4VZ1TAze3E3moWIgw0+vGY1+NbNg2Ow2fhG3cP/CZYWbiCeZ
         wzzg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b62si383330wmd.3.2017.09.18.02.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 18 Sep 2017 02:55:15 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AD7FFAEF;
	Mon, 18 Sep 2017 09:55:13 +0000 (UTC)
Date: Mon, 18 Sep 2017 11:55:25 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: rtl8723bs: Remove unused
 variable ret
Message-ID: <20170918095525.GA14946@kroah.com>
References: <1505404910-11548-1-git-send-email-harshasharmaiitr@gmail.com>
 <alpine.DEB.2.20.1709141807561.3185@hadrien>
 <CANMOCy2qhAaEdwLGM3L7sJmFNkNTqeRnwoy4am5yFt6ie5QhOQ@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANMOCy2qhAaEdwLGM3L7sJmFNkNTqeRnwoy4am5yFt6ie5QhOQ@mail.gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 14, 2017 at 10:21:29PM +0530, Harsha Sharma wrote:
> Hi,
> Yes, you are right but the function returns 0 in the end and the changes
> compiles well .

Then the function is incorrect, it should be reporting back that error.

thanks,

greg k-h

