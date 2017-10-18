X-GM-THRID: 6477576827810349056
X-Received: by 10.200.43.47 with SMTP id 44mr1803220qtu.55.1508337973398;
        Wed, 18 Oct 2017 07:46:13 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.55.169.129 with SMTP id s123ls2026877qke.6.gmail; Wed, 18 Oct
 2017 07:46:12 -0700 (PDT)
X-Received: by 10.55.31.166 with SMTP id n38mr13568976qkh.57.1508337972893;
        Wed, 18 Oct 2017 07:46:12 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508337972; cv=none;
        d=google.com; s=arc-20160816;
        b=NjYaKbWa9+G13HkSaFuw07sPwyg6h0puAmhP/DyLUYIavDfWjoIbQuN/GrXShigsBn
         HoHG4AdsPwYXyu1xFVvBht7HeiO8apyKlzbkaTsaeUBlzKgnLy5zFMIkGCjaeds1VFMU
         48BlOgsvDkPMW8GhRu02gz15QPw62uC/e7ljiDBRjggrnnVGTFutqawY6MkxtjunJAO2
         Xhh/qkIpwPM6K2iEOGPMxSif9bIkzD81H8astfEjBH2B/ZBFLCirgk7cfyjvfJnZDBfF
         W1UOrftWKA6cKvATt6fszhIOk9JgJD1W3LhZe8ShDwp9HZrFveIi5HphBTh4lVLgrats
         xCsQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:dkim-signature
         :arc-authentication-results;
        bh=nwI5FgvxUK+5KIkJ5+sGr1U9FljgVRvhMwA7V2Wzg7Q=;
        b=NBRC/tMcusGx1XuiUgUoEKP7uw4tECUSm/8g5MUwDhBrRsL1otCn4cOjz8JJhw7F5G
         G5hevRFYcKl/gI9YgEyLdyzx662zARFJdTT5+RanJrxKapo++ZDXZfx+aR21QIovfitc
         7QGnUSGvE/3VyRLKGz7OV6wM5hODNQvkk0afXStRM5o13Ry/GyFZLED7JftQo+pl30Qf
         9zUq30g1Z4fV+iNEj89lbKb65p8PHMtGnID3DoIvl8XazjF8oS8kYjNC3Cs7MWoVOlec
         AsYPaOmTGjqeS1kCLNbv6yasG+AS7c81NvpEzbLCbwTIYLS1mqPHtQQyhCTrxZuaX0hL
         ty1A==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=jOvMW5ST;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Return-Path: <frank@generalsoftwareinc.com>
Received: from mail-vk0-x244.google.com (mail-vk0-x244.google.com. [2607:f8b0:400c:c05::244])
        by gmr-mx.google.com with ESMTPS id 5si797135qki.1.2017.10.18.07.46.12
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:46:12 -0700 (PDT)
Received-SPF: pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::244 as permitted sender) client-ip=2607:f8b0:400c:c05::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@generalsoftwareinc-com.20150623.gappssmtp.com header.s=20150623 header.b=jOvMW5ST;
       spf=pass (google.com: domain of frank@generalsoftwareinc.com designates 2607:f8b0:400c:c05::244 as permitted sender) smtp.mailfrom=frank@generalsoftwareinc.com
Received: by mail-vk0-x244.google.com with SMTP id q13so3453243vkb.2
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Oct 2017 07:46:12 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=generalsoftwareinc-com.20150623.gappssmtp.com; s=20150623;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=nwI5FgvxUK+5KIkJ5+sGr1U9FljgVRvhMwA7V2Wzg7Q=;
        b=jOvMW5STERsrlQFyRWc05aFnrmcFPz/NQdiV7Odemyev1OBcFBC9dFSs7f/LLMEjx9
         BK73FAzHgZWPizptUYtHSPSvAqyC/YqzEIYxhaYp1EZ1Z1FbbvaxfwmnCLlDWWr18Nm3
         M7TnSlOQPb+c/zrkaymwKL+QfuQnTgk+CwMYZarD8UgUq9eMU82ZoK3xEQt1iPDM7/TY
         7uIWr05MnkTUV81kXk30p+TnFVoiCXcM2aNN4ADEy0AyvujlBXIZcy6suHB3yHwAVhTY
         Qw40Ct0YUsBhLA0OKrZR5wHMMb8oBEha8umkRvLote9zVmmF/t4WysKscN/Cx8TXnkOO
         oXJg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=nwI5FgvxUK+5KIkJ5+sGr1U9FljgVRvhMwA7V2Wzg7Q=;
        b=j4e7w+gVTibVve/cSaWDVT/ASBFwCrlN1P4PXiTVZTwXl7F1vPhkybOWJE6lUZZkDZ
         yo8UNAPOxKybco5Ij+UP9oy3LbiIL/LM7UJ9bNUrZRc/EA0zRdCkRPln9UrWgWnXFBES
         yOqayriUptjWT/NvMBF93DZ6hza/1CAOj9gplucsx0/53WZi+mSwEgG0MzlBhF0obWdx
         jj97+WWIp/KzyF1HschjztbWhmSh7QOOd59qHkkc6YVQ9GouAu6IklUrpCB4BASKbF3D
         qXXelp7tYKgVowaWy5sMpzUus0p0+6nwQoRh75E8uRLxSJEhJvzITVnaRLz3j7mxeFOp
         Rj6Q==
X-Gm-Message-State: AMCzsaV1DZWwmBrYyFrVSY2LtibioFde9o4siivFJId8Wsg/7ELFSph3
	uWQXcHQYp0XmIaL7BVj9pimlEeah
X-Google-Smtp-Source: ABhQp+T2NK2721WySucu44kQjiXHL5ldtyHAQ6GZ9roidbdFDKuUYw31uBOWqor89nAsxzyv5cZQeg==
X-Received: by 10.31.159.213 with SMTP id i204mr5616980vke.18.1508337972173;
        Wed, 18 Oct 2017 07:46:12 -0700 (PDT)
Return-Path: <frank@generalsoftwareinc.com>
Received: from ubuntu-server-1604 ([152.207.209.222])
        by smtp.gmail.com with ESMTPSA id j17sm2894908vke.5.2017.10.18.07.46.11
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 18 Oct 2017 07:46:11 -0700 (PDT)
Date: Wed, 18 Oct 2017 10:46:09 -0400
From: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: Julia.Lawall@lip6.fr, pablo@netfilter.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171018144609.GA1055@ubuntu-server-1604>
References: <20171016182614.GA3341@ubuntu-server-1604>
 <20171017014821.GA3282@ubuntu-server-1604>
 <20171018141704.GB17907@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018141704.GB17907@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 18, 2017 at 04:17:04PM +0200, Greg KH wrote:
> On Mon, Oct 16, 2017 at 09:48:21PM -0400, Frank A. Cancio Bello wrote:
> > Remove unnecessary parentheses to comply with preferred coding style for
> > the linux kernel and avoid the following checkpatch's message:
> > 'CHECK: Unnecessary parentheses around'
> > 
> > Credits to checkpatch.
> > 
> > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > ---
> > Changes in v2:
> > 	* I rewrote the log message to improve the style taking in consideration Julia's suggestions.
> > 	* I merged in this patch similars changes that initially were in theirs own patch. I will reply that other patch email thread, saying to discard it, to avoid confussion.
> > 
> >  drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
> >  drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
> >  drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
> >  drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
> >  drivers/staging/wlan-ng/p80211req.c    |  2 +-
> >  drivers/staging/wlan-ng/prism2fw.c     | 23 +++++++++++------------
> >  drivers/staging/wlan-ng/prism2mgmt.c   | 29 ++++++++++++++---------------
> >  drivers/staging/wlan-ng/prism2sta.c    |  4 ++--
> >  8 files changed, 47 insertions(+), 49 deletions(-)
> > 
> > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > index 178f6f5..03279aa 100644
> > --- a/drivers/staging/wlan-ng/cfg80211.c
> > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > @@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
> >  
> >  	memset(sinfo, 0, sizeof(*sinfo));
> >  
> > -	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
> > +	if (!wlandev || wlandev->msdstate != WLAN_MSD_RUNNING)
> 
> That's not "unnecessary" as now I need to go look up or try to remember
> the order of operations for != and || :(
> 

Thanks for your help Greg!
I agreed with you. I'm a newbie still learning the kernel code style.
When I run:
  perl scripts/checkpatch.pl -f drivers/staging/wlan-ng/cfg80211.c
I get the following warning:

CHECK: Unnecessary parentheses around 'wlandev->msdstate != WLAN_MSD_RUNNING'
#268: FILE: drivers/staging/wlan-ng/cfg80211.c:268:
+       if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))

and that is why I proposed the change.

> Please don't make things such that it is harder to read for a
> programmer.
> 

Is OK to say that in cases of newline after the || parentheses could be 
removed without affect code clarity?

Would you accept a v3 of this patch that just removes parentheses in those
cases? Or you prefer to drop this patch?

cheers
frank

