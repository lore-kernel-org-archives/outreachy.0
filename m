X-GM-THRID: 6670934867500335104
X-Received: by 2002:a63:9752:: with SMTP id d18mr9380344pgo.0.1553264105163;
        Fri, 22 Mar 2019 07:15:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:93:: with SMTP id 141ls3532883pga.1.gmail; Fri, 22 Mar
 2019 07:15:04 -0700 (PDT)
X-Google-Smtp-Source: APXvYqyZjFRB/DMwskfhqGsV/NVVDb0559/NApItO1hk53wHFp7WHoHMOaV5XHOJB4uUSenmEY3j
X-Received: by 2002:a62:6d81:: with SMTP id i123mr9377036pfc.235.1553264104327;
        Fri, 22 Mar 2019 07:15:04 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553264104; cv=none;
        d=google.com; s=arc-20160816;
        b=db36ktqf82eqnWR//DP8UEfUD+vTkUiAxfHctkAGgT7WBZsaUxVMyYbiz7yWahyv1B
         bGVCoSBpmA71jalRRJBZR9LK+837NMfLn6wcETV4FZcw12HUu8F/hqJzlXZVEwD8dvDo
         ChKPtPXx2+7701LV3Cb09nFfNhk8N/aruqhhocgOCQdF+vTkt8XDUhsU4f9quuca8L6Z
         oTWBVPNDJa3kKadg18O+Jy3E3oSKJamaWSniX+IuVwt2CP34Wkb9baK5ci/j9pkgIlYZ
         R14WW5lcht2sKn2ODbF3/A6g56/YccGWWLWMT1ELGZC1zgfGMFFSRaA9B2CFT0iZy8zW
         Xptw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=gGqTqoFXAYXWRyQrs1a/UI5mvw34xpEZYDxfbz4HJuE=;
        b=GdtjvIzhc6XKc4rcpUi/Womvvq5sJjdIvcf2FmaV9lRLdy2Cx3FYwmiK/LlhC1F/le
         CCObyG3Le+4T6B9WZZZTaM8cOnkGLhPUFvJuik1X2GVjy6xaG4dKLahVmIsL3UynRgNl
         /N7N0q2rTvQjy76FB8m4jtPkNwi8pXYKIqNWUerPpvp4aYtPxQrA3D3cFf1vEJQq06TJ
         ecU9bmFP6VVgjhVIHWh0xN52rMCzHKo9ptbTMHKTAcErAC7p9RgTcnzTsts7yFan0Wuj
         mxiG1MjeRNOe2fozLk8uy4IKsUdXGGNVSTrZ8rC2jq0QiNtOeHiBvw7Clf530fYHeGq4
         4/ZQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PN3GL91H;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id p15si440881plr.4.2019.03.22.07.15.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 22 Mar 2019 07:15:04 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=PN3GL91H;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 927B4218E2;
	Fri, 22 Mar 2019 14:15:03 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553264104;
	bh=96fX0S0ZHnIol4PmbgWL/4/f35W9GGqKcr8BCO2HVJk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=PN3GL91HwCPRDXwYgez3jDr1sxAv9o1V4Gt4e6RtRcQL+66GcDF7AImW/gNzM8oT5
	 OnwsoGyU7NjhJLZK92M0ujIC3imtC1eCQR7nz8ERCF9V663tXHjfEdlfcMfdG3mL/F
	 flh7Mk37iJQmhTqezhd+N+XBeWP/ZhGRtjiTG+hk=
Date: Fri, 22 Mar 2019 15:15:01 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Jules Irenge <jbi.octave@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/2] staging: pi433: line over 80 warnings cleanups
Message-ID: <20190322141501.GB25959@kroah.com>
References: <20190321195408.30440-1-jbi.octave@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190321195408.30440-1-jbi.octave@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Thu, Mar 21, 2019 at 07:54:06PM +0000, Jules Irenge wrote:
> This v2 series improves on the naming of the patches 
> 
> Jules Irenge (2):
>   staging: pi433: break line after comparison operator to fix checkpatch
>     warning
>   staging: pi433: remove empty space to fix line over 80 characters
>     warning
> 
>  drivers/staging/pi433/pi433_if.c | 17 ++++++++++-------
>  1 file changed, 10 insertions(+), 7 deletions(-)

Please make your patches "threaded" so they are all linked together.
'git send-email' will do this automatically for you, I recommend using
that.

thanks,

greg k-h

