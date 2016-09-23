X-GM-THRID: 6332502470301843456
X-Received: by 10.200.40.231 with SMTP id j36mr1870400qtj.47.1474649626185;
        Fri, 23 Sep 2016 09:53:46 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.41.71 with SMTP id d65ls9373774otb.16.gmail; Fri, 23 Sep
 2016 09:53:45 -0700 (PDT)
X-Received: by 10.129.75.15 with SMTP id y15mr2057672ywa.93.1474649625804;
        Fri, 23 Sep 2016 09:53:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x241.google.com (mail-pf0-x241.google.com. [2607:f8b0:400e:c00::241])
        by gmr-mx.google.com with ESMTPS id 7si2340645par.0.2016.09.23.09.53.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 23 Sep 2016 09:53:45 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) client-ip=2607:f8b0:400e:c00::241;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::241 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x241.google.com with SMTP id 6so5511611pfl.2
        for <outreachy-kernel@googlegroups.com>; Fri, 23 Sep 2016 09:53:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=sZNrqetl264OApXldx7J9falw9eAZSXpVJ6cMDECwB0=;
        b=PHSSsh/LZB8G/apKXIvGkt9Y7sRZ8odoUqLMJ6zfNUBU7CPvTmFH5iDv/oizYtbsjz
         FU9tQvzNiWBFK/c58iMlPDGHRYRrcK/cFf4NSvPJBUp1fXTbujB/Yd719UXqU+B5UnT9
         x4uON72xOv06dY6bu+XF4iTlpJsihrOU9PAwY9UGYpbrsSq33KwZVmMPv3oSdQvqZ9KS
         /uMVnIkkyRZjaQ7BnJ4wRKwKkUykw+l1LWKDrw59/ma9aoW0pgMBt1crkmYmS/eqY6rM
         1jCuAP0kYEl8hqZzRQQDnzLE/K4ep5EF4FtWeF9rWkTUF83eUMBbZq1BTesHS+pGhHnl
         xgdA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=sZNrqetl264OApXldx7J9falw9eAZSXpVJ6cMDECwB0=;
        b=SBXs+kP8alj5jDFS3f5/WVISM9ockfSm4J+37WpNzHXTsugYjuRCfDZ5JJDZrorQlb
         WqiBAcJi3ETcKOPrQOzCmY800fAoM7s/obKwrMMNaKdIXHTGdcgvx7O3Js5iOzycIyBk
         Q/eQYXlRJsUA2wG9cwOAtXyuf8xac4cNlihoMR+8Wu1jU0nbsyS5K6UV1o/3JjsiADaa
         DLnUxvq8JDhiodoBV3cxIg2wiYM/JUh1K4BIh18986oodsNtU4ykozaInlKv1lmShLGt
         wc5JSIDAeuqSM76yi+l3uKJYLyA/f/IaHyIZR7bLlqN5r82JVf0Pib2wCIBc/YO60jXl
         ugvg==
X-Gm-Message-State: AE9vXwPdJmZaE+W2erTebi+YzA4Nfq60ft1RkfzL+KBVtBs7Sqaus1sgx9MdVJi3VmqB8g==
X-Received: by 10.98.202.135 with SMTP id y7mr14084752pfk.10.1474649625590;
        Fri, 23 Sep 2016 09:53:45 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id si1sm274064pab.0.2016.09.23.09.53.44
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 23 Sep 2016 09:53:45 -0700 (PDT)
Date: Fri, 23 Sep 2016 09:53:44 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Cc: daniel.baluta@gmail.com, lars@metafoo.de
Subject: Re: [Outreachy kernel] IIO Coding Task Added
Message-ID: <20160923165343.GB6861@d830.WORKGROUP>
References: <20160920194343.GA5194@d830.WORKGROUP>
 <CAEnQRZCkdXRBhjMfEQZYDenWxn4KdCwL+tmFwaMabEJZLerWDg@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAEnQRZCkdXRBhjMfEQZYDenWxn4KdCwL+tmFwaMabEJZLerWDg@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Wed, Sep 21, 2016 at 11:01:57AM +0300, Daniel Baluta wrote:
> On Tue, Sep 20, 2016 at 10:43 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > An IIO Coding Task has been added to the IIO Task Page.
> > https://kernelnewbies.org/IIO_tasks
> >
> > So now you have 2 types of IIO Tasks:
> >
> > 1) Experimenting with the IIO Subsystem
> >    Do these independently and submit to Daniel & Alison.
> >
> > 2) Coding Tasks
> >    It's a single task but it applies to multiple drivers. You will
> >    find your driver and claim it on the tasks page before working on
> >    your patch.  See the description for the details.
> 
> I added one more IIO coding task suggested by Lars-Peter.
> 
> It's about using sparse to detect endianness issues.
> Please read the documentation carefully and don't
> hesitate to ask questions :).
> 
> Daniel.

I updated IIO Coding Task 2 just now with a bit of help to find
those IIO Endianess sparse warnings.

You can subscribe to the IIO Task page of kernelnewbies to be
notified of updates to the page automatically.  Click 'subscribe'
link on page.

alisons

