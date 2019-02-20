X-GM-THRID: 6659981177442533376
X-Received: by 2002:a0c:8712:: with SMTP id 18mr11180945qvh.53.1550658202759;
        Wed, 20 Feb 2019 02:23:22 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a0c:9dcf:: with SMTP id p15ls9514150qvf.2.gmail; Wed, 20 Feb
 2019 02:23:22 -0800 (PST)
X-Google-Smtp-Source: AHgI3Ib72zI0itzou42yfByLJlFY0JOzJ5txQWbAMmdVGHIMAFMd6HaONZP2ODqeP3PTqh53/+m0
X-Received: by 2002:a0c:ae7d:: with SMTP id z58mr5839233qvc.11.1550658202045;
        Wed, 20 Feb 2019 02:23:22 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1550658202; cv=none;
        d=google.com; s=arc-20160816;
        b=fU+sIIeHR8OKeQt5d6qvuKG9JIBIDL+NEZRcf67/Pzl6JocbZE7OykZABtXS0vNA6V
         rAB7CL9YelGugpj7vJCSJdewwZomw0+qeOWIIWn6n6Hd0AHXSTfPiFot5jHxwOQMdRwY
         FNzxwh2v+atUQ5HZHu0JTeAg9xFfoo57g9lscLRz32BFEILENrArH4iXbAoewP1ipytA
         2lcsXWV7J18Ol0p/PndE/PDmdJ6FeuNwsXKv4FMFf2sDJRZcTNuPC/EHxOLFrmrBsVtt
         vuYhGE9cZoZK7k6qqrKD5wljOe0mmMXK7KMNiel1XHvbfhiIxvIK+aZXR+UUlitlpEnk
         ttjg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=3FwHVoKJ4a/7ZVuh9M5FHgij2P4vTPoSMtaeUS89s7M=;
        b=H8kr1i5tcU9qcm5dXQmu9T/i+epCOrN21otNJqdn/RM8vNpG7FW2ob3ARc5vlOa0RB
         OlHqxoSwFWNNUl+G+ALkTbh9OT9BJZ0TRUYPw+/CMY6xXGgEJ+9X1gE2Ei1vPI8l7eSN
         Qt8BkNp4MQFO7t1qZYhIMGgxhB7E5z3x7B4DX9nGe0w66keCA6oXQW1T2MZfRgym4QGJ
         35nw5ReOBu0Y2nPhh9dU+lnqdjEu5049J0xKf2vDgZ2sLlt04s00g4hpXZSjw0AzQoCb
         XHE22SvkfLSkRCD0IYoJQgnQqFXbRlogXhYYr5W51LpfxEw65XpdQgJ3tJ6IA/Hx9Pgf
         gA0w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GTC9dlfM;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id o22si1318259qtm.1.2019.02.20.02.23.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 20 Feb 2019 02:23:22 -0800 (PST)
Received-SPF: pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=GTC9dlfM;
       spf=pass (google.com: domain of srs0=vgux=q3=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=vgUX=Q3=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (unknown [195.134.171.12])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id 83CD02146E;
	Wed, 20 Feb 2019 10:23:20 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1550658201;
	bh=JR6PECDWax5xkN1LWYOyICsAfkTv7ggUjKCiRSfhMN0=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=GTC9dlfMsUWE1Dqe6N5+At4s6Axebyz4wZ7QbgJitFSIe+hoEMmixe+07zgLXsxqC
	 R989z4iunYl+i8km3adXXxGVmi3ggZupLEbQlyKdRiiL+d1BEV61nrilnKns6hO6P9
	 3vxCYlnSbyuhasrXsLdMGATeT8fJO+dOsnAUmGOc=
Date: Wed, 20 Feb 2019 11:23:16 +0100
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Bhanusree Pola <bhanusreemahesh@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH 1/2] Staging: rtl8192e: Replace license text with SPDX
 identifier
Message-ID: <20190220102316.GA5535@kroah.com>
References: <20190220072820.GA21168@bhanusree-MacBookAir>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20190220072820.GA21168@bhanusree-MacBookAir>
User-Agent: Mutt/1.11.3 (2019-02-01)

On Wed, Feb 20, 2019 at 12:58:20PM +0530, Bhanusree Pola wrote:
> - adds the SPDX GPL-2.0 license identifier which solves the checkpatch.pl warning
> - Removed license boilerplate text
> - Issue found with checkpatch.pl warning:
>   "WARNING: Missing or malformed SPDX-License-Identifier tag in line 1"
> 
> Signed-off-by: Bhanusree Pola <bhanusreemahesh@gmail.com>
> ---
>  drivers/staging/rtl8192e/dot11d.h | 17 +++--------------
>  1 file changed, 3 insertions(+), 14 deletions(-)
> 
> diff --git a/drivers/staging/rtl8192e/dot11d.h b/drivers/staging/rtl8192e/dot11d.h
> index 0637de1cca47..44f11f629922 100644
> --- a/drivers/staging/rtl8192e/dot11d.h
> +++ b/drivers/staging/rtl8192e/dot11d.h
> @@ -1,17 +1,6 @@
> -/******************************************************************************
> - * Copyright(c) 2008 - 2010 Realtek Corporation. All rights reserved.
> - *
> - * This program is distributed in the hope that it will be useful, but WITHOUT
> - * ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
> - * FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License for
> - * more details.
> - *
> - * The full GNU General Public License is included in this distribution in the
> - * file called LICENSE.
> - *
> - * Contact Information:
> - * wlanfae <wlanfae@realtek.com>

You dropped these two lines for no good reason :(

Please keep them in your next revision, it is good to have this in the
file as you know who to contact.

thanks,

greg k-h

