X-GM-THRID: 6473105457256857600
X-Received: by 10.46.9.197 with SMTP id 188mr196271ljj.36.1508329872257;
        Wed, 18 Oct 2017 05:31:12 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.163.13 with SMTP id m13ls70304lfe.4.gmail; Wed, 18 Oct 2017
 05:31:10 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+RwLPDaXrRe9XXHil4z0641tZsoq+UblBn4IvScZS4zKWWsudyL7BspwcyJK2Xok/YCURfZ
X-Received: by 10.25.32.198 with SMTP id g189mr455043lfg.43.1508329870879;
        Wed, 18 Oct 2017 05:31:10 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508329870; cv=none;
        d=google.com; s=arc-20160816;
        b=JJpfiqirxCfsn6a8IzchUNSyn3jTO7qJjJsWucHl2T257OkYbIhW/8TdywHiF1wEh3
         hoOm2aTb7NvV7m4D8l0He1/AWA1dpalW6ISrA6UMYE/IcDxPg8oXpbKCGmupPzIPzbmq
         ScazoMSY5njNdChYX6y4Wd1SPe+E/LdAY5dDYJ20alRMbkepRQZ7O61Gyk9IFuU58JXb
         aIaUd1r6GuLcmA9DbTkDyJ3My51Cd8fFiEAAujwKQy1DzgODBGuCpApU28zVmN6Qmd9C
         1AroX921XjQsqLEctgKFJkiHxRxJl5eOn5vDg/oGmP/aE8W+yisXA0c3dBy7o1zwbDn+
         4UyQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=QwZUD63tnskCCOlLiLkmeL+J8DJEV2hHgl4TFAShCOg=;
        b=oVn86FLVZwDACKI3Gx1+N6ZvRfscpO23ww9gv/y9V8iRLQ/CLJxYZr0HWasyMnqlty
         l8jn9+39wwx8lQvP8CY7mBC9E+/WAApB84oRc7G+IEAZKTJaDHhrI4jBQc62ejLLSz5C
         0iFtbkKY3oXrZLjj5k0XSudh+S70zNXshNbu3CIEgeeOyK2zuiSMbTPTdHp67IsSsDT0
         4QDoLeo9mojXpKT7NOR4CC45nM2PBZ4uo7XFYZLeP2fCAqIdEc+cdgRew28JFGghnk6k
         77zuvuEav4Ze8b8BkWL58Ri1G/WZTJNsr4mzWkDiCajU9TNFdbh1z0RTIjfXsk20BXZy
         UtnA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id c185si489617lfd.5.2017.10.18.05.31.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 05:31:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id D5FB1B78;
	Wed, 18 Oct 2017 12:31:08 +0000 (UTC)
Date: Wed, 18 Oct 2017 14:31:17 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Srishti Sharma <srishtishar@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v2] Staging: rtl8188eu: core: rtw_ap: Use
 list_for_each_entry_safe
Message-ID: <20171018123117.GA11890@kroah.com>
References: <1507196802-4143-1-git-send-email-srishtishar@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1507196802-4143-1-git-send-email-srishtishar@gmail.com>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Thu, Oct 05, 2017 at 03:16:42PM +0530, Srishti Sharma wrote:
> This is a cleanup patch and doesn't change runtime behavior. It 
> changes an open coded list traversal to use list_for_each_entry_safe.
> Done using the following semantic patch by coccinelle.

You have sent me two different patches, with this same subject.

And you have sent me lots of different patches for this same driver, I
don't have any idea which order to apply them in.  Please resend them
all, in an ordered patch series, properly numbered, so I know what to do
here.

thanks,

greg k-h

