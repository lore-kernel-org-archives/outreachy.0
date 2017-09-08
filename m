X-GM-THRID: 6463333308428189696
X-Received: by 10.28.215.195 with SMTP id o186mr196089wmg.9.1504874218703;
        Fri, 08 Sep 2017 05:36:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.170.138 with SMTP id t132ls5931lfe.8.gmail; Fri, 08 Sep
 2017 05:36:57 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb5+lgfcIqm7TRl60hgrJXr/XbUENl+wBBeBU+IXf/mKFdzPdQAdGAFABR49Yq3JBWUEoa+m
X-Received: by 10.46.33.202 with SMTP id h71mr215729lji.3.1504874217183;
        Fri, 08 Sep 2017 05:36:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504874217; cv=none;
        d=google.com; s=arc-20160816;
        b=VNxhaXCFMOkC0J8vhDF9yP8zmQ4qLP6RQWldcsi8MWA1C2Ccgn1h3VnkTLsKz/r8tB
         GHsQBQS6WDGog4EdlPneFXVATz1gdS7d9vTgzakUopMNOxRrOheuUwYXbI0ZyCH1SZGG
         9DkEAu2uOrvY8vRWcyw9i9QEKCaBjDvBVIjGDzckt4Tb2bkUl5ygAsO2clOwu0NUwcTn
         VY3XfFpAbdTyTsCBVzmvJzSIhs4M4l+YnM0drm1397YQ1YltWEmHKWoSkO+Zbzla1u/s
         kUPgBLsQm3EVLG0iRY47c8bzoPLJ//VRoN3HCBEHnFipsY6r6xrdRyTUPVF2EIPImf0s
         nd3Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=awSacTty9cuPsLIYGhhyDDw9xIed+FEyoBEUmvxhw50=;
        b=hvPPgZIiq8pC+eHMx256jHf0ukHh7hTDuBWrZwmgSwD5bpYouwugM6P8WOxFdCvvy7
         o6PrdcsBo9cICq0wX7xAnQ0SAE2yHGngPLuwNAHDC1My+Mjk8Ub+WRygY0WODs0lNs2e
         e/MRuvnsEE7AajC72GW4x5auOXhMSAs6303HQ3NpQYcNnFwP2zxMjTZQITIttLwPTJKq
         8rGN0ersjcrrdZUybfLc1U2JLId51wtqmsRxLItMdTZhKu71XwOROqpi9OXZvwCRm/P4
         dW4qFtyzvbR6ySOSjayY6/chshr/4CBYu6hJB1MVMFc+jzIyeDUzLHBHBeZRdk9T2jPo
         m1dA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id i90si118933wmh.5.2017.09.08.05.36.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 08 Sep 2017 05:36:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 70EE9ABB;
	Fri,  8 Sep 2017 12:36:55 +0000 (UTC)
Date: Fri, 8 Sep 2017 14:36:53 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Harsha Sharma <harshasharmaiitr@gmail.com>
Cc: devel@driverdev.osuosl.org, outreachy-kernel@googlegroups.com,
	linux-kernel@vger.kernel.org
Subject: Re: [PATCH v5] staging: pi433: Fixes minor typo errors
Message-ID: <20170908123653.GC10723@kroah.com>
References: <1504864917-17198-1-git-send-email-harshasharmaiitr@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1504864917-17198-1-git-send-email-harshasharmaiitr@gmail.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Fri, Sep 08, 2017 at 03:31:57PM +0530, Harsha Sharma wrote:
> Fixes checkpatch warning -- "occured" and "succesfully" are misspelled
> 
> Signed-off-by: Harsha Sharma <harshasharmaiitr@gmail.com>
> ---
> Changes in v5:
>  -Correct the format of the subject.
>  -Signed-off properly with correct author name in .gitconfig

Where is the list of changes from previous versions?

thanks,

greg k-h

