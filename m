X-GM-THRID: 6755114272133480448
X-Received: by 2002:aca:c508:: with SMTP id v8mr9952936oif.31.1572800828542;
        Sun, 03 Nov 2019 09:07:08 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a54:4407:: with SMTP id k7ls2488227oiw.7.gmail; Sun, 03 Nov
 2019 09:07:07 -0800 (PST)
X-Google-Smtp-Source: APXvYqwP5VkDyOFMZpOzkPgdCfDLOZrT1ELuWmgemROcuhntalFCFAnSbzCp5NUTf5O0Pj9B6oH1
X-Received: by 2002:aca:7285:: with SMTP id p127mr3164633oic.120.1572800827518;
        Sun, 03 Nov 2019 09:07:07 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1572800827; cv=none;
        d=google.com; s=arc-20160816;
        b=c1Feki1TDH/cPPVTVjn4M4bRohnz3kA29Lg9lePfuBbzX//S2Y2uckWK59cuWi1GTk
         yvVRXTzrMTcgo3wkIV0hXvFB6ZRjRBhhu++mdRYNEYxwLEqPJS3jFp0iD6YwqRjpy5qh
         kr3YEHL6LQxTKeqnLYvJooxv0agHApEt5JsXStLLehc8I9vp8LMAb15JhlFyYY90NPaZ
         j48UlgbIjEWxTp6/JMheITBy+OF2w0b+lZb1JIyPVVFwcsy1nPG/fRQ6cAPVtl/5Jt6/
         JIGTwWgcZz8nkLGrHBBne5KzgrZF1OK4zHaSNUK8KgxrOkPOTlnaQqF9nXPR7mWGJoxm
         006g==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature;
        bh=hcumXjfHfGMpNUucgzACXfDIZMfe+GByLMyraWXBVE0=;
        b=Se1XDjPXXPP69aN7ZLAScSdgZhAQdX2iIBMNr2Bz4L/jolBfwUiiD1D8vkDObnAhsF
         5IWMlkFuXcYp+oBS2ljJoYPLcXbU9X7pyvEaH0KyKYRCEkeQtdJ3pTyQZWjFN09LgNZg
         nOfCxTsNV4hrTdREsY+OQpl9X7bqqtZ2cOik+AL14vdkMEeQHi4ADSnUZGn2YWWHNzM6
         cSnTZhwwm2Qlf70WC9ZzfwRgz+qykh79gmpvI0lv6442Wt+bCIRIghZ7CxgP6pFZUkUX
         VeZAFZ+Z/2cY+60H3IqsKMVwGSsepJV8s9bPL7d0DWX7cOQL0axQTJQXKFjC1WZCzL3o
         ow1w==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OjbEu+zq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.kernel.org (mail.kernel.org. [198.145.29.99])
        by gmr-mx.google.com with ESMTPS id 144si743247oii.2.2019.11.03.09.07.07
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 03 Nov 2019 09:07:07 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) client-ip=198.145.29.99;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@kernel.org header.s=default header.b=OjbEu+zq;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 198.145.29.99 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl [83.86.89.107])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by mail.kernel.org (Postfix) with ESMTPSA id EF84020848;
	Sun,  3 Nov 2019 17:07:05 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=default; t=1572800826;
	bh=mJFYBVHzHWfpSeOFXpZ2H03hUQSMB+krwGbUtihF7Sk=;
	h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
	b=OjbEu+zqgjFep4L9qpIF9hN1iSzoxgE95afJYyuZFtbykYma4BPeIrg4oJIDZbvjC
	 Begj10ClPB7AYNs46hDFStzKg+fz63ZJw7s4KO7gyM7b/BPT+MH7e7b37hh4DQFal6
	 6jHF42pElibqYtEvGbXrGuMWGqeBm2GoyYlWznQ8=
Date: Sun, 3 Nov 2019 18:07:03 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Evan Chime <chime.evan.dri.devel@gmail.com>
Cc: outreachy-kernel@googlegroups.com, laurent.pinchart@ideasonboard.com,
	mchehab@kernel.org
Subject: Re: [PATCH v2 1/3] Staging: media: omap4iss: Add comment to memory
 barrier
Message-ID: <20191103170703.GA686564@kroah.com>
References: <cover.1572797322.git.chime.evan.dri.devel@gmail.com>
 <88ef5bcc4ed24721253636b8dfec74bfdea23039.1572797322.git.chime.evan.dri.devel@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <88ef5bcc4ed24721253636b8dfec74bfdea23039.1572797322.git.chime.evan.dri.devel@gmail.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Sun, Nov 03, 2019 at 04:14:31PM +0000, Evan Chime wrote:
> Fix "WARNING: memory barrier without comment" from checkpath. Add comment
> to memory barrier smp_wmb() on line 635
> 
> Signed-off-by: Evan Chime <chime.evan.dri.devel@gmail.com>
> ---
>  drivers/staging/media/omap4iss/iss.c | 2 +-
>  1 file changed, 1 insertion(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/media/omap4iss/iss.c b/drivers/staging/media/omap4iss/iss.c
> index 1a966cb2f3a6..5156ad8e4b96 100644
> --- a/drivers/staging/media/omap4iss/iss.c
> +++ b/drivers/staging/media/omap4iss/iss.c
> @@ -632,7 +632,7 @@ int omap4iss_module_sync_idle(struct media_entity *me, wait_queue_head_t *wait,
>  	 * scenario. We'll call it here to avoid race conditions.
>  	 */
>  	atomic_set(stopping, 1);
> -	smp_wmb();
> +	smp_wmb(); /* Prevents stores from being reordered across the barrier */

We all know what smp_wmb() does, what you need to document is what
exactly it is here for.  What is it preventing from happening to what
data that is being touched elsewhere where?

If you don't know the code, solving something like this might be very
difficult, sorry.

greg k-h

