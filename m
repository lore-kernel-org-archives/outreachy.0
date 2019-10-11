X-GM-THRID: 6746031998697996288
X-Received: by 2002:a2e:9848:: with SMTP id e8mr10267744ljj.128.1570815166347;
        Fri, 11 Oct 2019 10:32:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:a2e:651a:: with SMTP id z26ls1080773ljb.2.gmail; Fri, 11 Oct
 2019 10:32:45 -0700 (PDT)
X-Google-Smtp-Source: APXvYqxrCgaSx5UmlAitrAu8a9MVeGMbkdZySCuEHNeEOAV81pkS2GUrLbq7xtLdVByAxU5RD2v+
X-Received: by 2002:a2e:b4d5:: with SMTP id r21mr9767165ljm.149.1570815165374;
        Fri, 11 Oct 2019 10:32:45 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1570815165; cv=none;
        d=google.com; s=arc-20160816;
        b=vPtjzEIbPxTmmfZbuNupfTNwpD9IpIAJoXdlOd9O/LvEanzmUpg6uR7/IIscapnpIu
         9raaKFoNdtXeb3hcNwMVe+0RMzF1BZvDeqMzz3egnPhT1V89ZLKBSwnWceZv5olmoUOL
         jRxiBDXRfBGiHtpgETvKsylGd9Zq3XD4MrXB/fitXr8wnmJpz2NE6h6iwPSICwchnCv6
         34YNCKTiPf47vjhjxFjDW6S1ZZDWaKwimib9EKLOhUtAOHvXm2ccCB7P2UjodNWlDoN0
         myk4F550XRmeRZ760WY7wJYwManuzAgR2twDjkUQ6lQRZMEDs0vyYqpUuM1wmTuuiYfQ
         xIGg==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :reply-to:message-id:subject:cc:to:from:date:dkim-signature;
        bh=0/9IsMNxXFpzgpaplMTTJNjUfGAJXf9fbcKoKx8v53Q=;
        b=q88Z8NRgwhfa1rN+i2+RI5eb49Dm3UpUFwv+y7Xp1tNrIozSI9+nmz5jkbeIMwM7Q+
         oEMrd7bRnXG8G+xRzGOFGSfDzvcuyY2sua07dr8c2WMrSQlQHe9qWRQt2Ib94+rYeLSM
         JIbNKhkV1Io6ABordjAXjOwzAeLmH3WBVI2sd9gU9cZjnaEF8HxnqDQkZd6LnpXOxLkI
         irCSywY6fkOUoK7psIYJxo8j5NlYGeB+260FCuMGzVc0dW9i7iXGKD9ZBAaP225VWIec
         uZnqMwkbEdo09WuAfDrYQvplXoOWbZm3jLufgEzPMdDsQA8/jeazlmIfNlKTSXCQnUEf
         ZGkQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WL7s+/2G";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Return-Path: <wambui.karugax@gmail.com>
Received: from mail-wr1-x442.google.com (mail-wr1-x442.google.com. [2a00:1450:4864:20::442])
        by gmr-mx.google.com with ESMTPS id z4si342896lfe.4.2019.10.11.10.32.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Fri, 11 Oct 2019 10:32:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) client-ip=2a00:1450:4864:20::442;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com header.s=20161025 header.b="WL7s+/2G";
       spf=pass (google.com: domain of wambui.karugax@gmail.com designates 2a00:1450:4864:20::442 as permitted sender) smtp.mailfrom=wambui.karugax@gmail.com;
       dmarc=pass (p=NONE sp=QUARANTINE dis=NONE) header.from=gmail.com
Received: by mail-wr1-x442.google.com with SMTP id v8so12821105wrt.2
        for <outreachy-kernel@googlegroups.com>; Fri, 11 Oct 2019 10:32:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:reply-to:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=0/9IsMNxXFpzgpaplMTTJNjUfGAJXf9fbcKoKx8v53Q=;
        b=WL7s+/2G59mCB7nzctnOqljGY5l3+vfIxsjDB1xjUGn9W7OrilZecpTx+TJoktRsJd
         f7JyMOJFERcwQZsHG/a5dVTUde/b0hszrKiiZZ8GKnRqPXCEoJb/KNUo14/cWQ/BdLm1
         jdaTdwmL0ywJKU4uWiovnSf4uQfvJu29PyH7yg1oKVjL8Z3arn3tOYdDonL/nBI2bRJl
         NoHsvddfeptwaTpVENqHKY+V+ZxhIgTrzdchtMart28BJJ3+7x1tu8Ty8Mithkz41iFJ
         4jOhLw2A5+zjTcS/ltGBgaJViHohT6TqDcBjdf2P/Yvgy1y5knUFK8QYB8w3LRjV3k4x
         Dc2g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:reply-to
         :references:mime-version:content-disposition:in-reply-to:user-agent;
        bh=0/9IsMNxXFpzgpaplMTTJNjUfGAJXf9fbcKoKx8v53Q=;
        b=GG3ZTGby1DBgLYewrA7E7m5p/UjQBCAeqwcE11jH87qKY5sUVNRRy03m7RDVV/IJUf
         v2waj5qbHUMILC6iYd8AodxQH82mjBsnRD4Yj+zD1o5rdWM8Qm83Vmi2/jlWkQExuD0h
         K/JhlKjlk1S5vY5lTQB5ctsnIIldE76QXBpsfoWVjNeh+zXJ60x+3+flbzxXZBiEv02s
         Dp3wxpwhUNnXOMAZAwLRpOcwoC0ItsTMMbLqacY5qr0JyHnyhYCxCa1o4x2gDQG2S9ta
         3SRUDrMrtNeepYiM5CohL0HpMVwFE+B+N/cSF0Zixkbtmu0nhDxnNmNnOt0AJXZCqRf3
         hl0Q==
X-Gm-Message-State: APjAAAUf0/Qm09MEGGC/A/9yOCgXY4UBcfDny4TXTdH+H5V01OKNi5vv
	CMLnUsZwy/ToMAiLtEbBhB4h0en3HaXkSQ==
X-Received: by 2002:a5d:6b0a:: with SMTP id v10mr13374449wrw.32.1570815164747;
        Fri, 11 Oct 2019 10:32:44 -0700 (PDT)
Return-Path: <wambui.karugax@gmail.com>
Received: from wambui ([197.237.61.225])
        by smtp.gmail.com with ESMTPSA id r140sm13122626wme.47.2019.10.11.10.32.41
        (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
        Fri, 11 Oct 2019 10:32:43 -0700 (PDT)
Date: Fri, 11 Oct 2019 20:32:38 +0300
From: Wambui Karuga <wambui.karugax@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, dan.carpenter@oracle.com
Subject: Re: [Outreachy kernel] Re: [PATCH v3 1/4] staging: rtl8723bs: Remove
 comparisons to NULL in conditionals
Message-ID: <20191011173238.GA22411@wambui>
Reply-To: 20191011120847.GB1143018@kroah.com
References: <cover.1570712632.git.wambui.karugax@gmail.com>
 <f4752d3a49e02193ed7b47a353e18e56d94b5a68.1570712632.git.wambui.karugax@gmail.com>
 <20191011105404.GA4774@kadam>
 <20191011120717.GA1143018@kroah.com>
 <20191011120847.GB1143018@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20191011120847.GB1143018@kroah.com>
User-Agent: Mutt/1.12.2 (2019-09-21)

On Fri, Oct 11, 2019 at 02:08:47PM +0200, Greg KH wrote:
> On Fri, Oct 11, 2019 at 02:07:17PM +0200, Greg KH wrote:
> > On Fri, Oct 11, 2019 at 01:54:04PM +0300, Dan Carpenter wrote:
> > > On Thu, Oct 10, 2019 at 04:15:29PM +0300, Wambui Karuga wrote:
> > > >  	psetauthparm = rtw_zmalloc(sizeof(struct setauth_parm));
> > > > -	if (psetauthparm == NULL) {
> > > > -		kfree(pcmd);
> > > > +	if (!psetauthparm) {
> > > > +		kfree((unsigned char *)pcmd);
> > > 
> > > This new cast is unnecessary and weird.
> > 
> > Ah, I missed that, good catch.  I'll go drop this patch now.
> 
> And that caused the second patch to get dropped as well.  I'll just drop
> them all, can you redo the whole series please?
> 
> thanks,
> 
> greg k-h
> 
The cast seems to have been removed earlier by Nachammai Karuppiah and
added to staging-testing, but I added it back when I cherry-picked my changes to the new
file. 

Sorry. :(
I can remove the cast and send a new series.
Thanks.

wambui karuga

