X-GM-THRID: 6463333308428189696
X-Received: by 10.25.193.142 with SMTP id r136mr184790lff.6.1504862907390;
        Fri, 08 Sep 2017 02:28:27 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.142.89 with SMTP id q86ls110132lfd.27.gmail; Fri, 08 Sep
 2017 02:28:25 -0700 (PDT)
X-Google-Smtp-Source: AOwi7QBlnyFppqEqqspwX+/566OgFNi/g/9Oey29xj5OqOztxSSkxqYwtfjOJkf/irBounmY4Nz2
X-Received: by 10.46.66.28 with SMTP id p28mr173052lja.20.1504862905925;
        Fri, 08 Sep 2017 02:28:25 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504862905; cv=none;
        d=google.com; s=arc-20160816;
        b=Cf3l/PHPLZARrrLsTc3gwYt3iobUK8U73aj8U+qlFkGey4pc7319NROtVCFwVKRUSp
         /IPbvgZGb7c63ZMnkQLCP1cNFYjDS9/QfLAI9U0YKVj7pTmXgQPrQ8VR31l449B0GzIR
         IHsz+Myd0K+1xICpqAwlw/RilnWiO9SNPEAF8NrkFhW5YUZiz5y7Xf1o9GECLRN+PTuN
         a1L0BYUX8/BS/4ftFA3jps7Ur3I1zOLJdOHgfvvztH47+1w9lZy0ny82B9QzUp7D53sX
         5YvuUgGy8Amxkm+fc4IBSdbhIXb8OQyqkuI8Geq3+Ld+SDtGgIZmmsNGyxSZ9O6R0dZM
         JQ+A==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=BrDV404y23J1YkwR1oD/2e4dryZ1u/O7wZBejwct+6U=;
        b=EFO7pJM1JsxuacD/7NSBGhkLraZwV2uSSQcjbpk7d5W+YLedJ105vU23f76ZM039Eb
         TlBRCZHVjZVgXuroPYww+cWNEE621AA4Ru26AjcAXgCfurJ4HF2BBOybI1loc8SiCVIf
         upEV7WHW7gNswIApjZ8VC7nFGpzHoOW65nqMzmahPJf0Tn65r15K2rkiDA8QcshCB3JE
         KYnwKhESDDOeaLR05wbGrbN91QeJDMBPfy5cjPTVx34uEo5nhtSxtPWsx1lRpZDqqv9S
         vET0N5tHJbtOHPCsqHsZ0ojcrK84Z752zvRBntjVf1LwPpjSmse6eTRXhwQAoxMBgjrX
         c3kw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id v23si68807wmv.0.2017.09.08.02.28.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 02:28:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 0819C892;
	Fri,  8 Sep 2017 09:28:23 +0000 (UTC)
Date: Fri, 8 Sep 2017 11:28:21 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: harsha <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v3] staging: pi433: Fixes minor typo errors
Message-ID: <20170908092821.GA3770@kroah.com>
References: <1504861934-15419-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504861934-15419-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 08, 2017 at 02:42:14PM +0530, harsha wrote:
> Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
>  drivers/staging/pi433/pi433_if.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)

{sigh}

Ok, last time for me, I have said all of these before, yet you have not
changed anything:
	- your From: name does not match the signed-off-by: line
	- you did not describe what changed in the different versions of
	  patches, that goes below the --- line, like the documentation
	  tells you how to do.

greg k-h

