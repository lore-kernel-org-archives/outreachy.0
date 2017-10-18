X-GM-THRID: 6477576827810349056
X-Received: by 10.46.27.221 with SMTP id c90mr220078ljf.9.1508338517273;
        Wed, 18 Oct 2017 07:55:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.18.153 with SMTP id 25ls655288ljs.6.gmail; Wed, 18 Oct 2017
 07:55:16 -0700 (PDT)
X-Google-Smtp-Source: ABhQp+SBFfUvrQPZU76Av+FkEFcI7FqflQvs0kUByeX0kgtJGHZP5GteQWvc2Srbb+/rer5wUZzz
X-Received: by 10.46.95.133 with SMTP id x5mr209776lje.19.1508338516079;
        Wed, 18 Oct 2017 07:55:16 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1508338516; cv=none;
        d=google.com; s=arc-20160816;
        b=Ya2dkC6JuNW9hwzGwTBlJsXWCmOADBqYRY5l3TVHglNs61EEfHMUs/Rt4mBf3rWLuE
         FViN6z625DwBiKanU9j08i56XrqWdknPVHnQyT/53mY9ZSd6dha8aHRDilFkyqgRqJKZ
         nMgRsb3sDPG9IGZo9t22RJdh/ZmULF7dEmUSRHdmbNwjoxqjboc0ZjsBWvUA7y3xitmp
         W0/hNZCApVRAoEkclzEr9gOWwhw8z1fY1OJm5mBl93NwMbE+LLxYT3ZNa0912jVS+AWC
         85BShLQBtXsR0Pno3Tf25DKTpmdrpnh4cYur436RcxV8CoDrqyCTTiXnfsWi/jUHhj5a
         GvmA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=g/aDVt6bqwB16unXqi2MI2HPJiodd+FHmC50EpFB7XI=;
        b=mEgZBB6XuLJrKz0uqtc2nthBX7ZSKY0MOfLucLMSwsZh7N88vSFZGwu+/EJ6fDUU+F
         dqPD1joBcPRx6IxjT4MJzje7v9P+M3btXYa50Ph2u5yv7WkknXI9J4hJesCFkNWNZJBu
         y4ZW3+Hgvf6crGCBHtxjwZ5wMzBr7X8nADYNfHcaUTNnjM9Q1oYJuUJd3BWdJzFSVEjH
         p0ifNiSGT7fUGUuiKjVujWonhvQ4HrJKfeje7E5MUK4E8WafVr+qEyVOLU9pd6r6wLVn
         7/6XCZh43WGOh5WLXTK6FQTRTA3HbmSjAcxCLwgq1nwSiRDg84veTe2wIn5eu73dup/R
         BkIQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id w14si618439lfk.2.2017.10.18.07.55.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Oct 2017 07:55:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2B19ABD4;
	Wed, 18 Oct 2017 14:55:14 +0000 (UTC)
Date: Wed, 18 Oct 2017 16:55:22 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: "Frank A. Cancio Bello" <frank@generalsoftwareinc.com>
Cc: Julia.Lawall@lip6.fr, pablo@netfilter.org, devel@driverdev.osuosl.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2] staging: wlan-ng: Remove unnecessary parentheses
Message-ID: <20171018145522.GA27138@kroah.com>
References: <20171016182614.GA3341@ubuntu-server-1604>
 <20171017014821.GA3282@ubuntu-server-1604>
 <20171018141704.GB17907@kroah.com>
 <20171018144609.GA1055@ubuntu-server-1604>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20171018144609.GA1055@ubuntu-server-1604>
User-Agent: Mutt/1.9.1 (2017-09-22)

On Wed, Oct 18, 2017 at 10:46:09AM -0400, Frank A. Cancio Bello wrote:
> On Wed, Oct 18, 2017 at 04:17:04PM +0200, Greg KH wrote:
> > On Mon, Oct 16, 2017 at 09:48:21PM -0400, Frank A. Cancio Bello wrote:
> > > Remove unnecessary parentheses to comply with preferred coding style for
> > > the linux kernel and avoid the following checkpatch's message:
> > > 'CHECK: Unnecessary parentheses around'
> > > 
> > > Credits to checkpatch.
> > > 
> > > Signed-off-by: Frank A. Cancio Bello <frank@generalsoftwareinc.com>
> > > ---
> > > Changes in v2:
> > > 	* I rewrote the log message to improve the style taking in consideration Julia's suggestions.
> > > 	* I merged in this patch similars changes that initially were in theirs own patch. I will reply that other patch email thread, saying to discard it, to avoid confussion.
> > > 
> > >  drivers/staging/wlan-ng/cfg80211.c     | 10 +++++-----
> > >  drivers/staging/wlan-ng/hfa384x_usb.c  | 18 +++++++++---------
> > >  drivers/staging/wlan-ng/p80211conv.c   |  6 +++---
> > >  drivers/staging/wlan-ng/p80211netdev.c |  4 ++--
> > >  drivers/staging/wlan-ng/p80211req.c    |  2 +-
> > >  drivers/staging/wlan-ng/prism2fw.c     | 23 +++++++++++------------
> > >  drivers/staging/wlan-ng/prism2mgmt.c   | 29 ++++++++++++++---------------
> > >  drivers/staging/wlan-ng/prism2sta.c    |  4 ++--
> > >  8 files changed, 47 insertions(+), 49 deletions(-)
> > > 
> > > diff --git a/drivers/staging/wlan-ng/cfg80211.c b/drivers/staging/wlan-ng/cfg80211.c
> > > index 178f6f5..03279aa 100644
> > > --- a/drivers/staging/wlan-ng/cfg80211.c
> > > +++ b/drivers/staging/wlan-ng/cfg80211.c
> > > @@ -265,7 +265,7 @@ static int prism2_get_station(struct wiphy *wiphy, struct net_device *dev,
> > >  
> > >  	memset(sinfo, 0, sizeof(*sinfo));
> > >  
> > > -	if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
> > > +	if (!wlandev || wlandev->msdstate != WLAN_MSD_RUNNING)
> > 
> > That's not "unnecessary" as now I need to go look up or try to remember
> > the order of operations for != and || :(
> > 
> 
> Thanks for your help Greg!
> I agreed with you. I'm a newbie still learning the kernel code style.
> When I run:
>   perl scripts/checkpatch.pl -f drivers/staging/wlan-ng/cfg80211.c
> I get the following warning:
> 
> CHECK: Unnecessary parentheses around 'wlandev->msdstate != WLAN_MSD_RUNNING'
> #268: FILE: drivers/staging/wlan-ng/cfg80211.c:268:
> +       if (!wlandev || (wlandev->msdstate != WLAN_MSD_RUNNING))
> 
> and that is why I proposed the change.

checkpatch is a hint, it's not always correct :)

> > Please don't make things such that it is harder to read for a
> > programmer.
> > 
> 
> Is OK to say that in cases of newline after the || parentheses could be 
> removed without affect code clarity?
> 
> Would you accept a v3 of this patch that just removes parentheses in those
> cases? Or you prefer to drop this patch?

I've already dropped this, if you have other changes in this patch that
do not make things harder to understand, please fix up and resend.

thanks,

greg k-h

