X-GM-THRID: 6951280273110597632
X-Received: by 2002:a17:90b:3118:: with SMTP id gc24mr2400934pjb.212.1618471730730;
        Thu, 15 Apr 2021 00:28:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a17:903:31cc:: with SMTP id v12ls2747361ple.9.gmail; Thu, 15
 Apr 2021 00:28:49 -0700 (PDT)
X-Google-Smtp-Source: ABdhPJzb7aC7DNj3NVKLjyWnianFHIP2m/kn51e3R5zGxrhfH0YA9dupbUoAJuc4yY80WJqrhFU2
X-Received: by 2002:a17:903:2288:b029:eb:6ca4:6493 with SMTP id b8-20020a1709032288b02900eb6ca46493mr2300415plh.85.1618471729629;
        Thu, 15 Apr 2021 00:28:49 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1618471729; cv=none;
        d=google.com; s=arc-20160816;
        b=LsQ2mRKOw6xjcY4rvZu1Xw/84d3zIyPBDSIGvNMewoSbN5bBOMEOxPaTj9eYrE9ltf
         S0qJcWfnDw+nWng5rXG4EA86i8EVsJDe1OjjYAikys+pNXTEoXFNxZZVf/UUpb0nHnPM
         d7l7eiPC4HY4vR2tAzKIwjM7okUDero68IEpkvDPRBtrJj3tF5KvpxCoHDtj/3RCGjNe
         nytuVaZ8Lx3QH7cTe5dzZKYiqeMG90i9EKA4et0S6Mq4fHhVINq02xl8LPXdCT6rL32N
         goy9jwa9PugWwDAD8Rhvq4AaU+XXDJGb/c9D3W+/E6nrcxBxA9uXZCSwRumH76WVvjBl
         wZWA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=in-reply-to:content-disposition:mime-version:references:message-id
         :subject:cc:to:from:date:dkim-signature;
        bh=nQZdXQxPUuyv5e9TYgU6W3auKdxjgPe3omjxvnlKki0=;
        b=vrbALOJfPblZCzk5msvggoxgA4DnP2aOdcekRFoUxl7V6K1VAx+6uRoB/Xy2lxFKmA
         ew4X1AcOPN8iwQZtuZXD9gty1rcBYciybCsSv80fMo0wYYj+tVNfr7TaaV8dCuE5j2Ld
         EgUEhR1YvSO/Tl3Y9VowqTN/IuHtC2D/DlpoUkCAbI3x6D3D3nGb6gf6r97t+5bO/oF/
         VsNhr32Ipp8cLHd8T9XbL+fZkWcU/H7LANMl/z8ykPofLwc/qA1Uybvt86nB+XjWig6S
         vDqQR3fgIplMlUM53O+vejLCzGZ9OEjTwTpfLU1lxjHHb0j3ITK016wXyKLu3dDo3XdS
         AxcA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gm1QWcAW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id mz7si1003496pjb.0.2021.04.15.00.28.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-ECDSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Apr 2021 00:28:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@linuxfoundation.org header.s=korg header.b=gm1QWcAW;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=linuxfoundation.org
Received: by mail.kernel.org (Postfix) with ESMTPSA id A5935611F1;
	Thu, 15 Apr 2021 07:28:48 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=linuxfoundation.org;
	s=korg; t=1618471729;
	bh=8o7VZnjPkPwZMae4GI6SJw7WDLgUFYz+v82i4LP4MXg=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=gm1QWcAW5RPP1QCUSzZV5xqevFjbXGWqUseSn/tH9SGZqy/aWXZudTXoYYrZP6yYM
	 zAHTo2amU1xhcAgxWJSElIS8VyXe2kbI8K1uOXbnLHgiq0s+wHERKS8oojQVfB3vs2
	 PhviDKhPTSgppW1MpzPBYWWkrluk2MFt3AkY+9VI=
Date: Thu, 15 Apr 2021 09:28:46 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: "Fabio M. De Francesco" <fmdefrancesco@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-staging@lists.linux.dev,
	linux-kernel@vger.kernel.org, Matthew Wilcox <willy@infradead.org>,
	Julia Lawall <julia.lawall@inria.fr>,
	Fabio Aiuto <fabioaiuto83@gmail.com>,
	Dan Carpenter <dan.carpenter@oracle.com>
Subject: Re: [Outreachy kernel] [PATCH v4] staging: rtl8723bs: Remove
 led_blink_hdl() and everything related
Message-ID: <YHfrLoot3iJSpAHU@kroah.com>
References: <20210415071731.25725-1-fmdefrancesco@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20210415071731.25725-1-fmdefrancesco@gmail.com>

On Thu, Apr 15, 2021 at 09:17:31AM +0200, Fabio M. De Francesco wrote:
> Removed useless led_blink_hdl() prototype and definition.
> Removed struct LedBlink_param. Removed LedBlink entries in
> rtw_cmd_callback[] and in wlancmds[]. Everything related to LedBlink is
> not anymore needed. Index of slots changed in arrays comments to reflect
> current positions.
> 
> Reported-by: Julia Lawall <julia.lawall@inria.fr>
> Reported-by: Fabio Aiuto <fabioaiuto83@gmail.com>
> Reported-by: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
> Suggested-by: Matthew Wilcox <willy@infradead.org>
> Suggested-by: Dan Carpenter <dan.carpenter@oracle.com>
> Signed-off-by: Fabio M. De Francesco <fmdefrancesco@gmail.com>
> ---
> 
> Changes from v3: Merged the series into one single patch for avoiding
> unnecessary intermediate stages.

Much better, thanks for sticking with this.  Now queued up, and I think
this is going to be the last patch I take for 5.13-rc1.  The rest I'll
store up for the next kernel release after that...

thanks,

greg k-h

