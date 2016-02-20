X-GM-THRID: 6251802816159940608
X-Received: by 10.98.68.194 with SMTP id m63mr15407120pfi.7.1455930371686;
        Fri, 19 Feb 2016 17:06:11 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.7.146 with SMTP id g18ls333196ioi.0.gmail; Fri, 19 Feb
 2016 17:06:11 -0800 (PST)
X-Received: by 10.50.13.101 with SMTP id g5mr39227igc.6.1455930371061;
        Fri, 19 Feb 2016 17:06:11 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x232.google.com (mail-pf0-x232.google.com. [2607:f8b0:400e:c00::232])
        by gmr-mx.google.com with ESMTPS id u66si2120643pfa.2.2016.02.19.17.06.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 19 Feb 2016 17:06:11 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) client-ip=2607:f8b0:400e:c00::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::232 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x232.google.com with SMTP id c10so61597294pfc.2
        for <outreachy-kernel@googlegroups.com>; Fri, 19 Feb 2016 17:06:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=PJPbCUzfA6x/95CBJdBe9MpdET/D6MDrDjFm0u+NGuw=;
        b=CAWX4hxY5SKwQNv+Kv+PF/W94ACf54A6zqMq1jlTdIU20zMi0GJ7dHRP2WCU0vReha
         3gR7P9VOPBwVRWFMbj3ODDSjEbkNhkxdM4XgFsdwzP8mmxU9f1sXxTKiSw6FKbK9O4pn
         pKvusb6pI1x982dtoE7s/rYPRqfbG50fuReEd4KDUOlsauItm+7fJtOM/sjoBFuDLXv8
         i7frEJar/MD2PzJLGvOiVZPngr/1qA7ya8jCJPmyVChIE39hEhBqoDcgmFQnm2J7KHva
         Fe1RTx9A0TbszvMnlroi5XyubJlISCxwnmfjLo9Ftt4bnZp5abVTfcSm4aLF9pcrMgok
         zmtA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=PJPbCUzfA6x/95CBJdBe9MpdET/D6MDrDjFm0u+NGuw=;
        b=hAQDJgnsTsuBi+4Kxm0t7MgDAc+sn8biSe/Ai0gUby4LlmJMT2+52EAhHHlGlNrhtw
         QFTbElQLIZoQ1wWGLYjVhJY2nqQvZCDOHGYM3tEVxb4sL3Ch3YFjScyVKhpQppFzmZf7
         hrsbGPiXnUSMzs0XfrqoZ3M9kBa1LIQI8nt42fg0M3ZiOoE2Y7bp1r2uWAH+LKZ8UW/n
         Y9cdNvjC7nENVyhzIoJM1yf7Efkk5WOUvNQoOOvhU1V3IEa5WAXNVCEwmTrz5GKLsCk0
         muVPApLjws2rbqsDSQgGkmDziml6k1mYglsTSq/4L1/DNtqv9UTfjWihVGTuNVBIqfl/
         SrQw==
X-Gm-Message-State: AG10YOTlBNfWB0uDe7BnfuSinpwYYtGGtPYgqyRAJN69jBPTQhuSIpQ4xCvOzzvo6k7JzQ==
X-Received: by 10.98.67.67 with SMTP id q64mr22408435pfa.44.1455930370858;
        Fri, 19 Feb 2016 17:06:10 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-72-178.dhcp.embarqhsd.net. [67.232.72.178])
        by smtp.gmail.com with ESMTPSA id 87sm20287385pfq.93.2016.02.19.17.06.09
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 19 Feb 2016 17:06:10 -0800 (PST)
Date: Fri, 19 Feb 2016 17:06:08 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: wilc1000: replace semaphore
 get_inactive_time with a completion
Message-ID: <20160220010607.GA2163@d830.WORKGROUP>
References: <4f9af8d5cac2ccb9e81ef5908ef0b3b0cdec6145.1455609607.git.amsfield22@gmail.com>
 <1455911140-9055-1-git-send-email-amsfield22@gmail.com>
 <20160220005444.GA8913@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160220005444.GA8913@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Feb 19, 2016 at 04:54:44PM -0800, Greg KH wrote:
> On Fri, Feb 19, 2016 at 11:45:40AM -0800, Alison Schofield wrote:
> > Semaphore get_inactive_time is used to signal completion of its host
> > interface message. Since the thread locking this semaphore will have
> > to wait, completions are the preferred mechanism and will offer a
> > performance improvement.
> > 
> > Signed-off-by: Alison Schofield <amsfield22@gmail.com>
> > Reviewed-by: Arnd Bergmann <arnd@arndb.de>
> > ---
> >  drivers/staging/wilc1000/host_interface.c | 7 ++++---
> >  drivers/staging/wilc1000/host_interface.h | 2 +-
> >  2 files changed, 5 insertions(+), 4 deletions(-)
> 
> Doesn't apply after applying your other patch :(
> 
I can rebase and resend a v2. 
I wasn't expecting you to take it, until I could get it tested.
Please advise.
Thanks,
alisons
it until I could get it tested.    

