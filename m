X-GM-THRID: 6463333308428189696
X-Received: by 10.25.228.134 with SMTP id x6mr484373lfi.33.1505056902133;
        Sun, 10 Sep 2017 08:21:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.174.68 with SMTP id x65ls733728wme.10.canary-gmail; Sun, 10
 Sep 2017 08:21:41 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QAgcjYsuV3XagE07hOwJRmNBY93Oe0mQCvAW2z58GkxaloDA0F3I5wVdgFcEfoCPIex9/fj
X-Received: by 10.28.128.131 with SMTP id b125mr554718wmd.18.1505056901030;
        Sun, 10 Sep 2017 08:21:41 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1505056900; cv=none;
        d=google.com; s=arc-20160816;
        b=Rdpo1CTsKgFOS91xB+8d1BtrxYk3hCOIT3wMzDD7M3Y6HQqJUsS39UN4cYg4Uh9EvM
         5bNfXXHZTUt5+QSnVXuv4GkTK8B6q/45VRDqhtHWJjRGhVSzTKm2Pu8F9mWDjEumumKx
         Z1GVZf4awyENkh6v9CuSl7XY1ZzJoGfd6YWAOSliBSMT/24TA2cPNgRkwogNo89lk6Y3
         LnaPu38PaJBMqyCA8F6tcCcrclGc4m0keJrAc6BOwTSG49ujOtxfWyNkbkWDUqgR2Vkl
         hrokj/RV3LQY4p6DxYdEI7h2bprIFCWp2zw1r0Ak12VL0Zw+IxWouVyPqiw672XW+l0f
         156A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=l6RG3XxkQS99m6lkt3uYtxQiHMrWioCxYQIZfBWxgic=;
        b=YvqV/0AUnXuQtZ/2Y24J5SJ2pO06ltQ43aEPW80E6YW2UBuE9LeGUUjgWwceGGKH5/
         pRMlLDxQwbpbH9+nGlY0XTzLe3fKCXL1ahE14Ibu93ucKNFxxs3c23h59B6oC3q/yQxx
         PKzX8y3zJ3JcB3CGNWV8r+Gk+wp9tDObMK2WSKsioA+Ny2O04djuroV4mpSiLnevQ6Fi
         eAesB3WFF5NGn+xoISRYcsWxj13r0OF/Ko9zLJSeQ+QCFfI98d2csMu83+V3Bosbxnsb
         m/n4YIw8KwWmXV65ubJ18mHfFh3NPb2tFzCAvbjGC1KnaOOkNA9+eMY9uX38yy9zVPaG
         KhXQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id b62si270243wmd.3.2017.09.10.08.21.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 10 Sep 2017 08:21:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [104.153.224.169])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id AFCCA9B9;
	Sun, 10 Sep 2017 15:21:38 +0000 (UTC)
Date: Sun, 10 Sep 2017 15:53:52 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v6] staging: pi433: Fixes minor typo errors
Message-ID: <20170910135351.GA10121@kroah.com>
References: <1504880668-25927-1-git-send-email-harshasharmaiitr@gmail.com>
 <CANMOCy0GiGcAEpVcQx8MWx=2vWBaVCP+aemGyUZ64ciHbiDQ5A@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANMOCy0GiGcAEpVcQx8MWx=2vWBaVCP+aemGyUZ64ciHbiDQ5A@mail.gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 08, 2017 at 11:18:08PM +0530, Harsha Sharma wrote:
> Hello,
> I have tried to follow above given instructions but please correct me if I am
> wrong somewhere.

What "above given instructions"?

And please fix your email client to not send html email, it is getting
rejected by the mailing lists.

greg k-h

