X-GM-THRID: 6673959669244887040
X-Received: by 2002:a67:ecc5:: with SMTP id i5mr3874685vsp.6.1553934350515;
        Sat, 30 Mar 2019 01:25:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:ab0:49f3:: with SMTP id f48ls777102uad.4.gmail; Sat, 30 Mar
 2019 01:25:49 -0700 (PDT)
X-Google-Smtp-Source: APXvYqx7iZS5uSoeGbvkXJ0fNg9nq0FNKcPaNvbGDQP98nCRxUfOmtaW6OqlzD7ktEb+czW9nBsm
X-Received: by 2002:ab0:7718:: with SMTP id z24mr4156205uaq.20.1553934349894;
        Sat, 30 Mar 2019 01:25:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1553934349; cv=none;
        d=google.com; s=arc-20160816;
        b=zXF5jT4VT6cvmwzH3R4+LUk6hKD15rbT2Y7ZI95/hSfQsHohoYwIsTOTAmpRRPOg2t
         gFFoQLImb8yCivv6n+KPTqiDMjUwrK3cZT4sMsZ/Ny5B5UmnR0UaSIImTuPuGRrIKESN
         +C8gwXd9hXwLMoWZ0vFuLyUoxsd+yyZSVka1aM3QlahNrlf+qkukeeYnH/NqelZ90B43
         Pwlma/alR34VuwJWU4sKX/F0yd7VYrPlXG6Q2cHkFW3k9nq7MG1rpXS/W0a3E9cT2D4W
         cmysKeg775luS0B/fqgI+G4Y+GmfV7Ff7HJSrtIgBlHMRYR76B7hswXSzc+kLUVKTYlp
         GonQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=jvWAOKIg1J8ifTrchk9GN1/0adRoAPtRQnH0NIzABL0=;
        b=AEc4UWpkPxG7MxxE85bl3t9yO9X0VTmQ1cE9HtacBBQjsWlW2BY9JVG6dpH4RO1xWk
         9m3Q2Hbbmw4l/cp92bJAwIvES/KH9ELH87XfVmZCUO0hmL/6ks417AylGGmVdX99e1TU
         NREUNfrRdiXY0g9fCy3KlY3BVFBf6wxvPhQpsY4uq9vvTiC6wyTjkuVxsA6bTaLx8n7h
         qn2U/iH9flNWgipu3++CQj1P00esVZcAJFRrbLwAgvor29AlSEJXH+He+4FOiHVNTTEs
         EEE40VvPNInKiG2IcEAZVLu+TN4OC42yX9jrbp2NS/vn2Jslf8sgdqIfYBm8R6fnaPKy
         DMcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dTf3bvvZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id k68si290396vkg.5.2019.03.30.01.25.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 30 Mar 2019 01:25:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=dTf3bvvZ;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [62.119.166.9])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id E69352173C;
	Sat, 30 Mar 2019 08:25:47 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1553934348;
	bh=sf1vaVa/zfteD1MLPPKxXE3LQL4Z3U9Hd5xnVU4jT10=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=dTf3bvvZ3nNeL7nUD8g3xGT10LDn7Y0E8OLQgfb1knvV+Wu80nIY6j+wN5B5uYXxY
	 ylJM3R9pxQDo9dCi7fTZUJ8a5lffR9U3nPqJrkIqwJBMbKdhySiFG6UbHDwNoYVpph
	 C1MpOxQMhxI/pj1Jd6P2wiKmRQdE/we7tlfZAL40=
Date: Sat, 30 Mar 2019 09:25:44 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatsala Narang <vatsalanarang@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v6 1/3] staging: vt6655: line over 80 characters.
Message-ID: <20190330082544.GA24052@kroah.com>
References: <20190329233147.27039-1-vatsalanarang@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190329233147.27039-1-vatsalanarang@gmail.com>
User-Agent: Mutt/1.11.4 (2019-03-13)

On Sat, Mar 30, 2019 at 05:01:47AM +0530, Vatsala Narang wrote:
> Move function arguments that go over 80 characters a line to get rid of
> checkpatch warning.
> 
> Signed-off-by: Vatsala Narang <vatsalanarang@gmail.com>
> --- 
> Changes in v6: 
>  -fixed patch 1 and resent it
>  drivers/staging/vt6655/rf.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)

Where are the other 3 patches in this series?

If you have to resend just one patch, just send one, but do not imply
that it is a longer series.  Remember, maintainers have almost no
context as they deal with hundreds of patches.  I have the short term
memory of a squirrel :)

greg k-h

