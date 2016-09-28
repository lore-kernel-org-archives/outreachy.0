X-GM-THRID: 6334708873542238208
X-Received: by 10.31.69.69 with SMTP id s66mr6835217vka.21.1475083684235;
        Wed, 28 Sep 2016 10:28:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.6.168 with SMTP id 37ls726260otx.41.gmail; Wed, 28 Sep
 2016 10:28:03 -0700 (PDT)
X-Received: by 10.176.69.129 with SMTP id u1mr3042094uau.43.1475083683858;
        Wed, 28 Sep 2016 10:28:03 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id 7si2530519pfw.1.2016.09.28.10.28.03
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:28:03 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id 21so2411206pfy.1
        for <outreachy-kernel@googlegroups.com>; Wed, 28 Sep 2016 10:28:03 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7tTVuMq2GBI6a7XMNwj2CZ1fd06KJe3kqVZvd43hYzU=;
        b=Ein3CYMk2cyFArEHAOgizyHZq3BVEfJODKOSQ9xa059lCJBgO+9JCsX8BsVDcLjdiX
         3LGYBEYrpIhG39zaBpAB4VQuqyPlNJ4K2HissXJDB0pUdCG+T8UU92HXIYY9P9cz5feP
         sNWzfj37LNa6SuH8JpIz8k/p5sNg2PsRJ+4Nwpnesyl6bSeQC2NXNngK9HF6MIHXAR5a
         yFwGJ59iBQlBZEBOgjJ+7+bMWMxza+kFhVLc6Xv90dUNLZ/ZMIXCoToL8fp2ugD0Q2Cf
         2HzRTfVjZtMm5OKOAmT6Teo+u/WvOhv5W3+sqP00BjWo6OI7a1nFbRagDwTLh8jdpllf
         tVKg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7tTVuMq2GBI6a7XMNwj2CZ1fd06KJe3kqVZvd43hYzU=;
        b=kJu9Yz7rehDhzyK7/9qkbRHABzvQvI9J4HKTCjhGizRE6WJTxsx/g9jurlvj3zuOcH
         PP8sMBjCI03tDcbvbkBpNBNdW7GjZRDusm74fiXHfCTZEVlrVh9bD41cFja2yQu4xtV7
         QOYxZj+0gN1sm71w045NT5NdHXzbcJpl1CghV4ECBpOk6dwjh/rLyMJKNSOI/wwPlYj2
         HhScXZmR8+iaGNj+5FlHGvKqcNLF7GG0wnLzR2DPRoseYnhNrli7pZwM8m7/mKAYTtLn
         pMhkrFB1zslO25yWB/Jhq/LIQ7VRAqO48aOOz1WzxXhAX3ADmhLM087cVImsiHa7It8i
         rT4Q==
X-Gm-Message-State: AE9vXwMJthRNmBzLg19YQllDLIZcsfhB3uvTfbemoNn17An1TsVzLV6rhBa9yvHTJiR3og==
X-Received: by 10.98.134.201 with SMTP id x192mr59195508pfd.21.1475083683664;
        Wed, 28 Sep 2016 10:28:03 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id q14sm14011040pfg.63.2016.09.28.10.28.01
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 28 Sep 2016 10:28:03 -0700 (PDT)
Date: Wed, 28 Sep 2016 22:57:58 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	Forest Bond <forest@alittletooquiet.net>,
	Rithvik Patibandla <rithvikp98@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH v2] staging: vt6656: Remove unnecessary return values
Message-ID: <20160928172756.GA4337@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160927181842.GA6493@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160928093606.GA5129@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160928093606.GA5129@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Sep 28, 2016 at 11:36:06AM +0200, Greg Kroah-Hartman wrote:
> On Tue, Sep 27, 2016 at 11:48:47PM +0530, Namrata A Shettar wrote:
> > Remove unnecessary return values. Change return type of corresponding
> > functions to 'void' and comments.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  Changes in v2:
> >  - combine both patches of prior patchset
> > 
> >  drivers/staging/vt6656/card.c | 22 ++++++----------------
> >  drivers/staging/vt6656/card.h |  6 +++---
> >  2 files changed, 9 insertions(+), 19 deletions(-)
> 
> Doesn't apply to my tree at all :(

Is there a work-around for this? or anything I could have possibly gone
wrong with?

thanks,

namrata

