X-GM-THRID: 6463819726342586368
X-Received: by 10.46.23.137 with SMTP id 9mr395242ljx.39.1504975861217;
        Sat, 09 Sep 2017 09:51:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.9.137 with SMTP id 131ls463553wmj.18.gmail; Sat, 09 Sep
 2017 09:51:00 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QCiOK7hNXYHHsZjQC/5zlNe8iT1tbDH0Rujki83vaQr0s0c9sd24MjNvW03fAyOmbv2omeY
X-Received: by 10.28.215.195 with SMTP id o186mr465443wmg.9.1504975860202;
        Sat, 09 Sep 2017 09:51:00 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504975860; cv=none;
        d=google.com; s=arc-20160816;
        b=fIfEGHdk7QHOa98W+1cqKS/qQS8dLWEY1kbIWPm3ALOXCAn4l4UgMLsGBwh6LLKCa5
         vg2/DqaFyjDKrenY06P48ShBmtJfbQfREnwMpE3niZjb+5Lr0rEVijgsoAsV0w82tySt
         R5pzdAVtHz4Uosk78v0o8e41VqIFIVx2h4T/9qzZp22GYRMc1OUHXP5M7oQuMhFexbeM
         fzNP8tsEyMrY/dyVUvHf+aNahGgoVF1LFFDvDPrAVyu2NebhbEDvmzuO7oO2b48/WjfQ
         lrlVbJf5Vk9jduTUDzdk/i31LI9ibvagWkxKXUgMxWCHc8fE+CyoYZTwgNBfZvCseO9M
         kv4w==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=pcf+FghzdI5J4LeuKz3FRv6ek5VXNmaDN/vFHtxFn6Y=;
        b=ruatEPiOWWGNDCIP30IQYYHHbbZgNJrmQaq7eZkO5BIVzt69ZN0rnyb8QXewkrVibV
         rhtMocRgkt4zW/j05fczFYhnJ/sN+PnS4DVdVk9LGPfVzxqUTmzP9lWtqF/PmSmGWebl
         pMEZ6/7iPjY/3pEHoGO1gLhHHzwvbUbh9JgGveN1RUE/MfIP13PQTNvgzyAtKsXjYkvN
         5w6KFtmNjJ689zQMfAbPo1ScIXgdUWJ7dxktkv5iE+2EFCzkthnviUQIwNOZ0d7YS9vf
         ipalJPxZ1eMINKGPzlquuAgQAog1lxGfF2iydGXn9yYVFOCPpfcdOzgTVfyBTRe4CMv/
         a3qg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id d82si238348wmd.1.2017.09.09.09.51.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 09 Sep 2017 09:51:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 78F23486;
	Sat,  9 Sep 2017 16:50:58 +0000 (UTC)
Date: Sat, 9 Sep 2017 18:50:56 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH] staging: rtl8723bs: Change foo* bar to foo *bar
Message-ID: <20170909165056.GA6145@kroah.com>
References: <1504975177-11843-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504975177-11843-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Sat, Sep 09, 2017 at 10:09:37PM +0530, Harsha Sharma wrote:
> This coding style (foo *bar) is more common for the kernel code.

You also did something else in this patch that you did not mention here,
which is not ok :(

Remember, only one type of thing per patch.

thanks,

greg k-h

