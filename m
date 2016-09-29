X-GM-THRID: 6334708873542238208
X-Received: by 10.98.102.147 with SMTP id s19mr721977pfj.26.1475169450607;
        Thu, 29 Sep 2016 10:17:30 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.29.70 with SMTP id d67ls1389271iod.10.gmail; Thu, 29 Sep
 2016 10:17:29 -0700 (PDT)
X-Received: by 10.66.159.165 with SMTP id xd5mr703777pab.87.1475169449443;
        Thu, 29 Sep 2016 10:17:29 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pa0-x242.google.com (mail-pa0-x242.google.com. [2607:f8b0:400e:c03::242])
        by gmr-mx.google.com with ESMTPS id f12si3512564pfk.0.2016.09.29.10.17.29
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 10:17:29 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) client-ip=2607:f8b0:400e:c03::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c03::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x242.google.com with SMTP id cd13so1849678pac.3
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 10:17:29 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=V6SxKJoHb6GZA6WO8Jv157AJiUJ5kHfC0jf7NNnGX7I=;
        b=U6VdNQMMUcrRTqaJSVbe6KIs+1uNkenPY4WT+KzgTnyvPQJyKD+rYyWPQIT6t4NKv1
         Xt7ADoWXMqou9O+kEagC/N/MrxIP+qIoJi/R8IuVMoTkhKyR92MDsaK+FeBimqubnNUV
         7SNRMpcD5ChHvAZx8Tnt5tDG2zWqJJKjetmBDdpKNxw+4U2muOGTvojb1R5t9rKr1rwT
         9/ZktlMtWwFETN+1g/NDCLGftOvweMlcJa7MfpBMHHRfZmUtmjWJZgj497BJKjiv4qKv
         1MDdQZDYaQFkOta4k6yCYGKcHkms1RTNJeEz1BldRNdH1C6rzbZLglbRNo/YF3F2u7/j
         cXwg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=V6SxKJoHb6GZA6WO8Jv157AJiUJ5kHfC0jf7NNnGX7I=;
        b=UdL+bOO8HK82kQKKiczHlthCs6JbEXCXOc0f4iKlMHyz0RYTObe/nJjfG+phbu+1nu
         ETkGwVPj1NXLTyn/ij3ElDKlSaT2kXrdshr2ylQq4LlHxcyVnVpDcvE4JkU2Kv0RzHTE
         oCcST5PbW9KWaSM8e8FAP3rv43EuwPzOZOpR5ukTlhNrQrSHdGPiyucjE8CAKm2Qs8ZS
         sEH1pBIs1/2vJRx7pGcC7wFIx8AFKBailcXE2FwPKcoNye5P0Iy+surGwzWsUuhDmtqS
         RM14r0uIrvLOD1QDatDlpgDTVY3Zd2jli+EpHpXSiZasR8CyYNOx/h4nsHXRlectLtDh
         51hg==
X-Gm-Message-State: AA6/9Rmn+zEAXJQkPCvO6XKByTpGJxxwqWrDf6EM5sV+PifNg80znWoEevCfQYP12sjocw==
X-Received: by 10.66.134.16 with SMTP id pg16mr4169521pab.166.1475169449287;
        Thu, 29 Sep 2016 10:17:29 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id wd7sm21736557pab.2.2016.09.29.10.17.26
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 10:17:28 -0700 (PDT)
Date: Thu, 29 Sep 2016 22:47:23 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: vt6656: Remove unnecessary return values
Message-ID: <20160929171721.GA4195@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160927181842.GA6493@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160928093606.GA5129@kroah.com>
 <20160928172756.GA4337@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160929062109.GB28764@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160929062109.GB28764@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 29, 2016 at 08:21:09AM +0200, Greg Kroah-Hartman wrote:
> On Wed, Sep 28, 2016 at 10:57:58PM +0530, Namrata A Shettar wrote:
> > On Wed, Sep 28, 2016 at 11:36:06AM +0200, Greg Kroah-Hartman wrote:
> > > On Tue, Sep 27, 2016 at 11:48:47PM +0530, Namrata A Shettar wrote:
> > > > Remove unnecessary return values. Change return type of corresponding
> > > > functions to 'void' and comments.
> > > > 
> > > > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > > > ---
> > > >  Changes in v2:
> > > >  - combine both patches of prior patchset
> > > > 
> > > >  drivers/staging/vt6656/card.c | 22 ++++++----------------
> > > >  drivers/staging/vt6656/card.h |  6 +++---
> > > >  2 files changed, 9 insertions(+), 19 deletions(-)
> > > 
> > > Doesn't apply to my tree at all :(
> > 
> > Is there a work-around for this? or anything I could have possibly gone
> > wrong with?
> 
> I don't remember, try rebasing to see what the conflicts are, or perhaps
> someone else already sent in this same type of change?  We are averaging
> about 20-30 patches added to the staging tree each day right now,
> sometimes people end up doing the same work at the same time, sorry.
> 
> greg k-h

Alright! Thanks for breaking it down for me.


namrata

