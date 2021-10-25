X-GM-THRID: 7022901752311578624
X-Received: by 2002:a05:6214:d47:: with SMTP id 7mr13858764qvr.2.1635147201555;
        Mon, 25 Oct 2021 00:33:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a05:620a:318d:: with SMTP id bi13ls7898598qkb.9.gmail; Mon,
 25 Oct 2021 00:33:20 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJxJOaLoY81Q6e7tyO4uSz0arZHrj04hBw6FmnxjF1i6gtodrtLIoZvfNiukBY8mR15/v5i1
X-Received: by 2002:a05:620a:4449:: with SMTP id w9mr12083790qkp.273.1635147200677;
        Mon, 25 Oct 2021 00:33:20 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1635147200; cv=none;
        d=google.com; s=arc-20160816;
        b=y7sY7ue3zDAvZ5rcIR9TmhIizjnxq2+IYAC2UTsQQrFHiyIs77mYjtu0DYt+g0SNg6
         AH8XPUIxk2+ZiWgzJy00wjvt91lK4z0AJXocsv0XsRlzfxw4JF7FANgGSFPyspvWil4q
         1x1STsb94Zt3UQlJfnmgQKuzIZJ5pgPa/ZemmcE82FMrI8agde7W2jQQjJvRCfLv6IIf
         760BIpePOFgT8CGcQ3nF0CamiPtIPx4neGoXTvziWHOCvLqX+KQpurkJm96mmzrFl/DE
         Zf93F++gSfEOqdnhAqYLf03GT0z3S+5BVNRsOlsKIZGp+KW66g0Ho9lipzVg5y/D8H2y
         PfhA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=u7Nh1GCi0ffqJ0uNEc6NEKbRFvg+o/sYVH/8l/j7ezg=;
        b=wBK2D4HLRr5eACMgaXuwFv4h7THT18SzFweDflw7hj52GpERvGj1+X9RKji2hqgazq
         +VwzJeGdotMIYbMPH4Cvpp6GPekJ8lgFj62Y3lKndLaalzP/GfLpYFJ4f7ZKENQcEgFz
         rAh9DJAu2tK5s2kaDBBN2LSsMhxr/vq60RsWN0TZ+KWrvImbIUqEYXkxvac4TuBLCiLx
         SQXYQmimQm4wjtTi5LuMbxdsJN6JHlMghnfyvy0Z6bEFJyiwaePdpYRofwfQ0xJ6Xp7x
         jMxu5KRmVxTS1y9l8PcTBbg/8+tuHTe5VEibcGG19KiurWZ74fmMfK/Oh2s5V7w5jCGn
         0BzQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=uSBRbavO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id b125si1457941qkf.0.2021.10.25.00.33.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 25 Oct 2021 00:33:20 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=uSBRbavO;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id 3455760FD7;
	Mon, 25 Oct 2021 07:33:19 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1635147199;
	bh=39U7zNLEwA87RE5PJQOdIUZwBwhHR+JBeEhHxTPhiSw=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=uSBRbavOezeV7w6FoDRU62rgJc2KqLOlljzPjhnAhs/F9WcfpE+DUfnsIicJUMLsi
	 +DkWPDypg9/LKAgM3xYO4qiEpauO9xykHVs5yZuBdJtgvoJpRT8od76cJq3a4lM1GV
	 q8y0CxursNFEaqI5S2V2CzDON3RlTdNZRe3PgBZk=
Date: Mon, 25 Oct 2021 09:33:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Kushal Kothari <kushalkothari285@gmail.com>
Cc: fabioaiuto83@gmail.com, ross.schm.dev@gmail.com, hdegoede@redhat.com,
	marcocesati@gmail.com, fmdefrancesco@gmail.com,
	linux-staging@lists.linux.dev, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com, mike.rapoport@gmail.com,
	kushalkothari2850@gmail.com
Subject: Re: [PATCH] staging: rtl8723bs: core: Refactor nested if-else
Message-ID: <YXZdvdj6EQsrfhqt@kroah.com>
References: <20211025072528.152028-1-kushalkothari285@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20211025072528.152028-1-kushalkothari285@gmail.com>

On Mon, Oct 25, 2021 at 12:55:28PM +0530, Kushal Kothari wrote:
> Refactor nested if else by combining nested if into a single if condition and removing unnecessary else conditionals which leads to removing unnecessary tabs .There is no change in logic of new code.

Very long line, please break it up at 72 columns.

And your space around the '.' is odd :(

> checkpatch warning : Too many leading tabs - consider code refactoring

What does this mean?

> 
> Signed-off-by: Kushal Kothari <kushalkothari285@gmail.com>
> ---
>  drivers/staging/rtl8723bs/core/rtw_mlme_ext.c | 65 ++++++++-----------
>  1 file changed, 26 insertions(+), 39 deletions(-)
> 

thanks,

greg k-h

