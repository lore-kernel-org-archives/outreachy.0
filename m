X-GM-THRID: 6611156296380973056
X-Received: by 2002:ab0:2398:: with SMTP id b24-v6mr2596034uan.26.1539282179079;
        Thu, 11 Oct 2018 11:22:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a9f:3e98:: with SMTP id x24-v6ls1826240uai.0.gmail; Thu, 11
 Oct 2018 11:22:58 -0700 (PDT)
X-Google-Smtp-Source: ACcGV63Chrr82RIVvhEzwaPuv43PJFOUH36i1Vx189w6+JmphDazAcZW+QkSgnlxSVjDeWL9Zv0x
X-Received: by 2002:ab0:339a:: with SMTP id y26mr2598080uap.22.1539282178503;
        Thu, 11 Oct 2018 11:22:58 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1539282178; cv=none;
        d=google.com; s=arc-20160816;
        b=wSLi7032hcDH+AuLjiwqXemAtIB3XRdTwCaBxHEgIWTBOOUFNQzB42mndOf6lyh2pB
         wNTO9h0o8UlfuwZrLE+6G3/Cp2juYPrIVOS+WqBZScPvdTQiueZAENaOv4g8h8P6N3BI
         MS+SxTTri+jML56loPNzeKVHLs03sBrRnrrKrWwTrOYtxZZzhf68Yq4WLb4ghpZgvacD
         kKPnYsAFW/KVWBse5expve7KxK3zdNsrP9W+Lzci/Ty1DV7D7xXwJmfwngaDtkkMj8IQ
         f73hpz3H2hlp4TH7OzhZmpqfKanYbpI1yXCaAA7SLUhBtAHjlJ35s6K7j+lyH5r8ywv2
         Koiw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=uZq4WM7bMz/hGRLAPdi9HK/YTjxdg9P+ZkoKspCqB7Y=;
        b=bemUBIrAYta/K7TOr5WBXC5F+fefj+wUQrspKatWu3FHu3ZteQIqfTEt3lAH9r/On4
         RLqEaJuPJoRitrAPWRfIURfAyaZUtBorxvWei8QuEyljlxjAwQPVMp3iKUfPJ6p0zcI4
         h6E695+2L2RMRRrmA+g/+GLUA1G8Zqs7C7kRzUWos/CCFPiwKJz4WQt2RNWi6mIu5ank
         GPXYscyIIxSnTDoPpEqhUA3Xq0Oue7cygVuq7EamdR4NxPIVpqQuWy/V1pcKgX5hY25O
         xQci5EyNA+vQPeyVXwk7h6qdcueH7v/9/6QzTQc4rWimMzXyE7O74Vq61ZPrZ9rB2Aif
         jq/w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0F+F7EI3;
       spf=pass (google.com: domain of srs0=4o5/=mx=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4O5/=MX=linuxfoundation.org=gregkh@kernel.org"
Return-Path: <SRS0=4O5/=MX=linuxfoundation.org=gregkh@kernel.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 131si596752vkx.3.2018.10.11.11.22.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 11 Oct 2018 11:22:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of srs0=4o5/=mx=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=0F+F7EI3;
       spf=pass (google.com: domain of srs0=4o5/=mx=linuxfoundation.org=gregkh@kernel.org designates 198.145.29.99 as permitted sender) smtp.mailfrom="SRS0=4O5/=MX=linuxfoundation.org=gregkh@kernel.org"
Received: from localhost (ip-213-127-77-176.ip.prioritytelecom.net [213.127.77.176])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id CDCCC2054F;
	Thu, 11 Oct 2018 18:22:56 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1539282177;
	bh=vNSzt9fpWOiOVq62ErxxtnsqqXROAQ1KuLWsCpOFqqM=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=0F+F7EI36OzJIkoWS/Xwp8/a2UJCDcADTtopEe8OT+GL6826Mf3RiYqdvsbhoOTCV
	 2AqjPPqnFjbA2xsNxfplirKIV+2A/MLpufsY1WYm4sG0eoloFof5dExNsWZojuuQfc
	 S5GUaEqEBlYohWpaiaiDIZqJ65UQxnWbsBdOlB+U=
Date: Thu, 11 Oct 2018 20:22:54 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Mamta Shukla <mamtashukla555@gmail.com>
Cc: outreachy-kernel@googlegroups.com, Larry.Finger@lwfinger.net,
	hadess@hadess.net, hdegoede@redhat.com
Subject: Re: [Outreachy kernel] [PATCH 3/3] staging: rtl8723bs: os_dep: Shift
 * to be adjacent to pointer name
Message-ID: <20181011182254.GA27696@kroah.com>
References: <cover.1539278377.git.mamtashukla555@gmail.com>
 <deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <deb7888572fb02d8cbd80fcaf9d9cef69c550d88.1539278377.git.mamtashukla555@gmail.com>
User-Agent: Mutt/1.10.1 (2018-07-13)

On Thu, Oct 11, 2018 at 11:18:33PM +0530, Mamta Shukla wrote:
> Shift * to be adjacent to pointer name to follow Linux coding style.
> Issue found with checkpatch.pl
> ERROR: "foo * bar" should be "foo *bar"
> 
> Signed-off-by: Mamta Shukla <mamtashukla555@gmail.com>
> ACKed-by: Larry Finger <Larry.Finger@lwfinger.net>
> ---
>  drivers/staging/rtl8723bs/os_dep/ioctl_linux.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

This patch is somehow corrupted.  Can you fix it up and resend it,
keeping Larry's ack?

thanks,

greg k-h

