X-GM-THRID: 6477576827810349056
X-Received: by 10.25.145.71 with SMTP id y7mr456702lfj.38.1508336218489;
        Wed, 18 Oct 2017 07:16:58 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.21.76 with SMTP id 12ls643992ljv.2.gmail; Wed, 18 Oct 2017
 07:16:57 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+TgITWbfFn+oJjyfSJMyl/f4I/vT+RpIn/stDveyjZUfMRfaNHyj8Qx+Gy7LW35eK/Hn6vz
X-Received: by 10.25.59.213 with SMTP id d82mr484746lfl.15.1508336217875;
        Wed, 18 Oct 2017 07:16:57 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508336217; cv=none;
        d=google.com; s=arc-20160816;
        b=GeQaaYqz4mtTDq6oDt32jmYQAkARwUT9Zr0gEJYurlv+NO1heppm7x7Yk87d0EiUTr
         oZvuaJdQVOzGXQaJm4Or+7izGJxFz1eY1G4nYFGW06H0dDqSlJSrqBGfBwCJW8fa17YR
         0BZo7/gubJxcyoa2QZP6qtsKHCSiQWoCTXyWzESEf3k/iIjIka/Ev/jreKmAS6cGCxz2
         28et4UosSMkVxV0xhh6EbHwIoF5qxwqAhK/SGPShhSUJraF9O9ReC5h3miA4m2Ash9nG
         dJNH4rf0bQYcRj2fRz3ArZDCiZVcRsykx4f929zCkCAHmkOaGvrTR0sTfPa11L2RFkJ0
         6FQw==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=fDX9x3Llgj25KAQW+LVAo6Mpd0K7z4E8B+pocAmSVNY=;
        b=HP5QqcFGF34AjnVKg4Sy/ZBHRbg0XMzhrZVkgPDfDGNr6ouxi8BwOgRbYXd1zYBlkg
         Pu68qaw6GhhbyObvMRe3b6fiw9sOScIL6D8P0AovN7CrtvpzFSAEcYAnBs5iTipbj1Hc
         SB7YsBtO0gXQaf9Aet8vp5ZC0QxmPN9g8/hq5Fx4KSiz+kCVW54Co9gQ0VzaWj3JlK5t
         5PziZ+MCWaCcF9NDAMI7Ha1hY/4kwCKBe6UpsfrDWZSYO74712ZFmUIEZCYI0aU3JJ4x
         pnX3orU0ve+IIgXBjZJtCY6sDPp1j9ei2fNlR5aDwsJkBsXvECeszFrEOsbuuQQXVUpg
         cOzw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w14si614189lfk.2.2017.10.18.07.16.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:16:57 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id E63C5BC5;
	Wed, 18 Oct 2017 14:16:55 +0000 (UTC)
Date: Wed, 18 Oct 2017 16:17:04 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: Julia.Lawall@lip6.fr, pablo@netfilter.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171018141704.GB17907@kroah.com>
References: <20171016182614.GA3341@ubuntu-server-1604>
 <20171017014821.GA3282@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171017014821.GA3282@ubuntu-server-1604>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Mon, Oct 16, 2017 at 09:48:21PM -0400, Frank A. Cancio Bello wrote:
> Remove unnecessary parentheses to comply with preferred coding style for
> the linux kernel and avoid the following checkpatch's message:
> 'CHECK: Unnecessary parentheses around'
> 
> Credits to checkpatch.
> 
> Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> ---
> Changes in v2:
> 	* I rewrote the log message to improve the style taking in consideration Julia's suggestions.
> 	* I merged in this patch similars changes that initially were in theirs own patch. I will reply that other patch email thread, saying to discard it, to avoid confussion.
> 
>  drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
>  drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
>  drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
>  drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
>  drivers/staging/wlan-ng/p80211req.c    |  2 +-
>  drivers/staging/wlan-ng/prism2fw.c     | 23 +++++++++++------------
>  drivers/staging/wlan-ng/prism2mgmt.c   | 29 ++++++++++++++---------------
>  drivers/staging/wlan-ng/prism2sta.c    |  4 ++--
>  8 files changed, 47 insertions(+), 49 deletions(-)
> 
> diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> index 178f6f5..03279aa 100644
> --- a/drivers/staging/wlan-ng/cfg80211.c
> +++ b/drivers/staging/wlan-ng/cfg80211.c
> @@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
>  
>  	memset(sinfo, 0, sizeof(*sinfo));
>  
> -	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
> +	if (!wlandev || wlandev->msdstate != WLAN_MSD_RUNNING)

That's not "unnecessary" as now I need to go look up or try to remember
the order of operations for != and || :(

Please don't make things such that it is harder to read for a
programmer.

thanks,

greg k-h

