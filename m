X-GM-THRID: 6802585330019991552
X-Received: by 2002:a65:678f:: with SMTP id e15mr11270027pgr.21.1583868281356;
        Tue, 10 Mar 2020 12:24:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 2002:aa7:9708:: with SMTP id a8ls1304671pfg.9.gmail; Tue, 10 Mar
 2020 12:24:39 -0700 (PDT)
X-Google-Smtp-Source: ADFU+vu+9WRYSv1YTKDQyjjiIJ1L+e5UQmWFbDEwhUcOsOlpEl1wbIKOXMB3IOCOco13bHq/ylv9
X-Received: by 2002:a63:714:: with SMTP id 20mr23682929pgh.271.1583868279874;
        Tue, 10 Mar 2020 12:24:39 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1583868279; cv=none;
        d=google.com; s=arc-20160816;
        b=R7Rm3lz4lgR2nOvj3/qZeoIFjihD9g8F0r+r/f3IuKu2M2ofdddd86nF/y1pBTNCMA
         nzHBmPz7dcEB/mbmWiasseIpGcQZZmkx+VNutPDU/JTpQeG+10KP5+rMw4tfjko+uNQa
         o/3tnbCn7n67HWwxg7XVUGLlB9iuEEjm6Qk8wjJmK8vkGXH/44Y6+Eu1qzH4L+LayD4k
         8xm8H5TeIN0B8J5lJRQqt2nEvsTpKynTBQfbQu9/Co9HesKl74DsFu6ZasyQ8JvDog0P
         WuOw7FumoBI6w7OJ4fEfeUV3tk7OF4sM00KnmtrgN3u7cqCgLcc6yod5SZo30tSXVn7s
         yvXQ==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:date:from:dkim-signature;
        bh=SwL4IeT5pLuisI9B4uBjTo9BgXqVn4vSgX9iH27oXCg=;
        b=ltM7HRNjcpeayAToJmocWNdryhGgPv0e4uGQ0dENN0I/tJ0Ku/DJsUpQhVHkp8CrRu
         MItDh2CyNpmlhBTbDvkxpjvWtwSm2fuJ1UHfTn43G5GvvGyNDg7M3EfAMUZOES6hIhie
         qm3jQsJjdGXFbo+svLRt1X+olZYxSBR733M5cvh0ensFtXeoHsdRs4rdnDo8tQ2O1lKu
         qy+oSwhqbjy3MvttOyZRIy0wYw61p232ohSvDNCLKGYn6vld5srnhnUJDncEdwYigru5
         tIGuaTVb8B5fZJd1UZ1pmbd6HSbiYcdnow4BL8q9ob7v+dKG+AUakrHdJJY/Z/BMvUdW
         WbOA==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=FvqHIPbP;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Return-Path: <kgupta@es.iitr.ac.in>
Received: from mail-pl1-x644.google.com (mail-pl1-x644.google.com. [2607:f8b0:4864:20::644])
        by gmr-mx.google.com with ESMTPS id q19si954557pgt.0.2020.03.10.12.24.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_3 cipher=TLS_AES_128_GCM_SHA256 bits=128/128);
        Tue, 10 Mar 2020 12:24:38 -0700 (PDT)
Received-SPF: neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) client-ip=2607:f8b0:4864:20::644;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@es-iitr-ac-in.20150623.gappssmtp.com header.s=20150623 header.b=FvqHIPbP;
       spf=neutral (google.com: 2607:f8b0:4864:20::644 is neither permitted nor denied by best guess record for domain of kgupta@es.iitr.ac.in) smtp.mailfrom=kgupta@es.iitr.ac.in;
       dmarc=fail (p=NONE sp=NONE dis=NONE) header.from=iitr.ac.in
Received: by mail-pl1-x644.google.com with SMTP id w12so5819157pll.13
        for <outreachy-kernel@googlegroups.com>; Tue, 10 Mar 2020 12:24:38 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=es-iitr-ac-in.20150623.gappssmtp.com; s=20150623;
        h=from:date:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SwL4IeT5pLuisI9B4uBjTo9BgXqVn4vSgX9iH27oXCg=;
        b=FvqHIPbPA5dllrddi9f0Vn7QPT6FMn08T/L7xxzOqCN/WFWQD794itq1zQVz2B5vJ9
         lOYvyfazaCdTgvckHW8ekvOggxyqxZ69sa4IHLH+5USi2hzzWO+6oRhjU8GCjuzyxNTf
         PCbFhq/YaRftcy26EOF/I/v/VMekjR7SnFAJq9QKphBvRScSHrh8Zj6EsB86nIQrzEnp
         PnHBTQSyO64SnvjyCeixPxOZHlcY9cu4LQcR/+gX11om/AJBOdab0uAlHkeY6cnyvKsK
         aLJjQQC6lqHGpT7iW5uNOrOZ/bGxwCxOsqE94Ey4w0SNQs5I5kYhtz/9ruFx7DbXGtiD
         UZ2Q==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:from:date:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SwL4IeT5pLuisI9B4uBjTo9BgXqVn4vSgX9iH27oXCg=;
        b=maHkqFepNPPOEH7ph8OSlA0ZR40fRxqOgNYM8S4QFIpJFAiHdNjrdZVTMKllYtIkZH
         d6R38E58J+4DlbxV0vO4p3BZ8hqIgV2fQTnJDRE9basUZkiwbSA58VyiRx55V7a+9T4b
         joHJo44102+enG/cIKn/fu9D13XqQyeQHScV1CACZykPyCoRCWIj/m47WsQwsY7aGrnn
         L36F7bCKB4QY9WnIFs28dar6+RhU9vKBVHuKdk9PRfmziNNuxpEdVI5WtsF0OGT9Te1A
         L/HP0ktffYm+XTCNODcJLa+FQx/rQTt5Di5vxrk2BW4pAJJnu2u4/RxOkNim/caS3PvW
         Pqog==
X-Gm-Message-State: ANhLgQ0mWf5dK3bLKOvU9KyWBKvkaEgthOEwa9lm2PULzANje8CnRSE4
	jJ/+oWByIcCdAPivMGnglWbJug==
X-Received: by 2002:a17:902:be12:: with SMTP id r18mr22111328pls.173.1583868278462;
        Tue, 10 Mar 2020 12:24:38 -0700 (PDT)
Return-Path: <kgupta@es.iitr.ac.in>
Received: from kaaira-HP-Pavilion-Notebook ([103.37.201.177])
        by smtp.gmail.com with ESMTPSA id x72sm10161446pfc.156.2020.03.10.12.24.35
        (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
        Tue, 10 Mar 2020 12:24:37 -0700 (PDT)
From: Kaaira Gupta <kgupta@es.iitr.ac.in>
X-Google-Original-From: Kaaira Gupta <Kaairakgupta@es.iitr.ac.in>
Date: Wed, 11 Mar 2020 00:54:31 +0530
To: Stefano Brivio <sbrivio@redhat.com>
Cc: Kaaira Gupta <kgupta@es.iitr.ac.in>, jerome.pouiller@silabs.com,
	Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 0/6] Clean-ups in wfx driver
Message-ID: <20200310192431.GA1336@kaaira-HP-Pavilion-Notebook>
References: <20200310142509.25632-1-kgupta@es.iitr.ac.in>
 <20200310184033.007d0230@elisabeth>
 <20200310180748.GA29809@kaaira-HP-Pavilion-Notebook>
 <20200310181302.GA29934@kaaira-HP-Pavilion-Notebook>
 <20200310194521.485e04a4@elisabeth>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20200310194521.485e04a4@elisabeth>
User-Agent: Mutt/1.9.4 (2018-02-28)

On Tue, Mar 10, 2020 at 07:45:21PM +0100, Stefano Brivio wrote:
> On Tue, 10 Mar 2020 23:43:02 +0530
> Kaaira Gupta <kgupta@es.iitr.ac.in> wrote:
> 
> > On Tue, Mar 10, 2020 at 11:37:49PM +0530, Kaaira Gupta wrote:
> > > On Tue, Mar 10, 2020 at 06:40:33PM +0100, Stefano Brivio wrote:  
> > >
> > > > And as you're posting this series for the second time, you should
> > > > indicate this with v2 (check out the "--subject-prefix" option of git
> > > > format-patch), and indicate the change history for these patches -- see
> > > > other recent discussions on this list for examples of how it's done.  
> > > 
> > > Hey! No, I am not posting this series for the second time. As was
> > > pointed out in my earlier patchset( which included 5/6 and 2/6 of this
> > > patch set) that I have to create a patch set of related changes or
> > > changes in the same driver, hence I sent this different patch set.  
> > 
> > THe previous patch set stands discarded, as it was not a proper set. I
> > didn't even write a proper cover letter in that one :/
> 
> Oh, right, I got confused by the fact that patch 2/6 here was 3/7 in
> the non-series, and 5/6 was 4/7.
> 
> Now, at a second look, I see the series is very different, but see: if
> you included a description of the differences for those two patches it
> would have helped :)

Yes, sorry I should have take care of this. I'll remember from now.

> 
> I'll review this later. Thanks for the clarification.

Should I correct the spellings and submit a v2? Or should I just take
care from the next time?

Thanks!

> 
> -- 
> Stefano
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20200310194521.485e04a4%40elisabeth.

