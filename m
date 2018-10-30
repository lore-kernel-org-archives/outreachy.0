X-GM-THRID: 6616181023343378432
X-Received: by 2002:a25:840a:: with SMTP id u10-v6mr9584676ybk.14.1540891984663;
        Tue, 30 Oct 2018 02:33:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a81:1d05:: with SMTP id d5-v6ls5857713ywd.5.gmail; Tue, 30
 Oct 2018 02:33:03 -0700 (PDT)
X-Google-Smtp-Source: AJdET5c9N/hwGpCBUT0Xt96ZdNTAyTRnLBCb+H1ZHWamolbnbkgTk3rp3HWOTiOvldTYLpAEUJsz
X-Received: by 2002:a81:8706:: with SMTP id x6-v6mr965086ywf.17.1540891983572;
        Tue, 30 Oct 2018 02:33:03 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1540891983; cv=none;
        d=google.com; s=arc-20160816;
        b=ugCxH+Y4ZO32GJx+LVyQb7v5aK42s6hB2WclYFZW98hpZm0mDq+6obJf+CusWLgUi4
         rVt802Lrmi+QwN3c9GPXMcpw14b8XcY7GEagkslk6eP5Yf8HqnXFbX+GAEXu9OC3tJNK
         9y1zDGfQXWlm3Nxpv2ZuSZkM8UlXwiZi9tpSHXC2XLhgUwT/GDNSZeR4A/N+JFPRG15r
         A8w+/XZ9KAPd2fWr7a2St6jd0dOJgqWOco/DM8bMyMCM3cpJUdoA/faKP4KcEFdxebKP
         V+QGqk4HWiPIEm8cSIvWOoBHYi0E90GmTIQxEG9lTOAuQmHIN8cBOADeHHh6tXaHhrgN
         aOIA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=q9azaVgA9RKy4rS7J3OX3DIrTGWxWaLH91UNt9HdstE=;
        b=xhu7dBvZOILDzfFo68FKXP8adLvm0jcDg5g/5PLPGxE/IunCOMHmcWRTa8+gs70BlH
         ZSeXVriAip3SU5HXUTNoJL4PE7K+ynXNDZ+epiKFiXXPBViW/8v+5bUdqKnvq6Au9+FL
         W2J3k34an81AnTMwBQsUMajadGEokcQjt44Bh3tI0K6w0Z77mwT1w4bh2q7QAUWJFMrP
         Vdwv2a14DdkAXSOWQyv9KzG759kj+Q6ZRM7Tpr2R71VtOJXfnTgozHUbAc93OxZ6g7Uv
         FpAdDqJa5K73idqwgWFRt9ySbmMUwG9LaiT2/GYYBTP4NNsjPGSx+pH/PNa1grUpRMPi
         tJMg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ASPYK7EV;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t186-v6si896833ywc.2.2018.10.30.02.33.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 30 Oct 2018 02:33:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=ASPYK7EV;
       spf=pass (google.com: domain of srs0=30/j=nk=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=30/j=NK=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 0CFBC20827;
	Tue, 30 Oct 2018 09:33:01 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1540891982;
	bh=2ql4d0iP7Tg3Dl4fXhIQQdW2LBZ8sAlLAqk3+40RJkw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=ASPYK7EVYg10QxrWgfa9b9j1q1wXduUoakyXosh/TdsxBCqpa7vvNlcqfKTmDlo6m
	 SMzi6nGbbTwBfyTxMmsB6wV/0NqB/3oX7wvbDSeuKCjQhNaSYtsHFxwQZU3nJI60mj
	 VfxdLdizfaP60j5+jSSqtdszv46QGqXZKNKejWXA=
Date: Tue, 30 Oct 2018 10:33:28 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Kim Bradley <kim.jamie.bradley@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] Staging: rts5208: Fix checkpatch camel-case warnings
Message-ID: <20181030093328.GA12625@kroah.com>
References: <20181025064117.GA1945@xubuntu-vm>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20181025064117.GA1945@xubuntu-vm>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Oct 25, 2018 at 07:41:20AM +0100, Kim Bradley wrote:
> Replace camel-case preprocessor value names in header and corresponding
> source to fix checkpatch style warnings.
> 
> Signed-off-by: Kim Bradley <kim.jamie.bradley@gmail.com>
> ---
>  drivers/staging/rts5208/ms.c | 76 ++++++++++++++++++------------------
>  drivers/staging/rts5208/ms.h | 70 ++++++++++++++++-----------------
>  2 files changed, 73 insertions(+), 73 deletions(-)

You sent 5 patches for this same driver, yet no hint as to what order to
apply them in :(

Please resend all of these as a patch series so I know how to get it right.

thanks,

greg k-h

