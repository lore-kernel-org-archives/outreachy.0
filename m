X-GM-THRID: 6663618170330284032
X-Received: by 2002:a63:7444:: with SMTP id e4mr3426232pgn.89.1551512879174;
        Fri, 01 Mar 2019 23:47:59 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a63:2052:: with SMTP id r18ls4237319pgm.10.gmail; Fri, 01
 Mar 2019 23:47:58 -0800 (PST)
X-Google-Smtp-Source: AHgI3IZGskhStujChSPcclI9dHa+nL5o7oAIs96D1Wn/hNSjdLg6lMfCLPMo7iWV+yRExKx5nchp
X-Received: by 2002:a62:2e05:: with SMTP id u5mr3545392pfu.137.1551512878468;
        Fri, 01 Mar 2019 23:47:58 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1551512878; cv=none;
        d=google.com; s=arc-20160816;
        b=pZLQSoRzeeOP7JybLIIRlRmelaRIbkdzHobAsHhG2L0GK2HV2T7apF0Cc8i3NcssoU
         LmpJMvxldDrMM8WGfCE6t/+q7oo8rtFeGcQuCKTUbFgQFMW9brWpTmFiK2BfGMWDVQue
         jNBLyq5rJIoX9k3O0X+ZsQUrU2/LmSEEAMooiQOXym6ZEOKK6Fz4hKoXlBKVSZItiH7J
         rYV8LrksZtWENjsqheXwnEAFR58XMMtyx5GZAO8rQZac7/3VU7TUpXUHYrJV/GWmOm0i
         4uCt5vYB6RXnzwv3VdJwG9k9kporBLfq5SQ1k+KTCbGSuarRHJS4oa/8krdUmvDJgLDF
         kDrw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=d+SezQ9Mu/SWT3Kzz8259Uy2yPRO+tCQpHCriFnnQ1c=;
        b=Re17nljoRNDtQzZpJj2mURp1AftnGYX5NWmxMrKLo7RUAa5IOrKswPNxURHCKNK1cT
         /UHs84wR/d/vgvqpT3ZofhMhxgTozkYWMqWDgzb/ehOHtcJ1Rvyjb7E85nM6bOyl/CQz
         /KrpSG2L0ZR6Jdk1upAUaZovCINtV3GGIhNQz3LGSq1xRRxvLy1x8xjr7z5ty+be0lTd
         BwnRs+i9+I131nV3Mw+fP7Q0vMIjovLrXBBfsFnC7naj85zMSVPXibOBlPHNuLRpcW94
         hnYJEzbsC8hAagnUoyEgImSO4z+IB4J8FIwAVofYYPX2SABzR0H0yFpp66S+ZysyFjXC
         9jww==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YjRambV0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id t24si5060plo.2.2019.03.01.23.47.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 01 Mar 2019 23:47:58 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=YjRambV0;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (5356596B.cm-6-7b.dynamic.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id AD6DB2083D;
	Sat,  2 Mar 2019 07:47:57 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1551512878;
	bh=aP8TMEDk801EambfZ3vxeL5l8OZvuLFYKmD4klRKHK8=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=YjRambV0s5/xVcnCAe2MPDtV+dHXGoMBxGyf9xMVmGjmcIBcBT428zb/YTTmj8o3/
	 NWiSzV3buofZ+t6eXhRuv9RGNu429fAJk4BQQAeuyhfzPAoWzRu/3F5fwalE5wf+Yr
	 AzCvs0pBVCsPATKlHvj4xF6o0lRtYO5Ipi9TTkFg=
Date: Sat, 2 Mar 2019 08:47:55 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Madhumitha Prabakaran <madhumithabiw@gmail.com>
Cc: forest@alittletooquiet.net, outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 0/8] Staging: vt6655: Fix checkpatch.pl issues
Message-ID: <20190302074755.GA16604@kroah.com>
References: <cover.1551494031.git.madhumithabiw@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <cover.1551494031.git.madhumithabiw@gmail.com>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Fri, Mar 01, 2019 at 08:41:34PM -0600, Madhumitha Prabakaran wrote:
> These patches fix warnings of line over 80 characters, comment style
> issues of SPDX License Identifier and remove unnecessary blank line. 
> 
>   Staging: vt6655: card.h: Fix line over 80 characters
>   Staging: vt6655: card.h: Fix line over 80 characters
>   Staging: vt6655: device.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: device_cfg.h: Fix comment style of SPDX License Identifer
>   Staging: vt6655: dpc.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: key.h: Fix comment style of SPDX License Identifier
>   Staging: vt6655: mac.c: Remove unnecessary blank line
>   Staging: vt6655: mac.h: Fix comment style of SPDX License Identifier

These lines do not match up with the subject lines of your patches you
sent out.

Please fix up and resend.

thansk,

greg k-h

