X-GM-THRID: 6335831546958708736
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.13.213.213 with SMTP id x204mr877995ywd.52.1475176810554;
        Thu, 29 Sep 2016 12:20:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.16.68 with SMTP id y65ls1695513ioi.28.gmail; Thu, 29 Sep
 2016 12:20:10 -0700 (PDT)
X-Received: by 10.107.152.206 with SMTP id a197mr584212ioe.77.1475176809988;
        Thu, 29 Sep 2016 12:20:09 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si3546240par.0.2016.09.29.12.20.09
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:20:09 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so3945535pfy.1
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Sep 2016 12:20:09 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=dcQoEzzCLkf/R9X8aX5Wy0kmbnBF0dQdpsL+Rb3MvK0=;
        b=pNtMw7sKWkOk0UT02jGtR7uUtquP3VZp8vcfp1CffJB/DtZtqnFuPkPqAw9mvJb3vH
         NqSCCwIJt5NckC5yvD/6WJuj/WnJkrSi2aodUnZJZ0ISuRxZ8qxGdSQs2ppyFCMiQchF
         n9/JJurVeMS50M8OyNpgsedUqNC9RZ4leFBaubr4LDGkNHQO4fof3c2jCEoZ15C1t/8I
         uj56LEc5hj3/BiLIankswZXFexyKqxIz2u43gIkEtA3GjNXj2h2o8CEeUx6B9rndklZK
         rtFJYGQn9pVaaSNzEHlhLkn607cTW6PUpltmx9bDnxFfAMoGywjd5pr54kMKBx42TJd8
         6GwA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=dcQoEzzCLkf/R9X8aX5Wy0kmbnBF0dQdpsL+Rb3MvK0=;
        b=BstKsGhpNaNzQ2XP/S9K77pGUFQ3OMBOB/VSiUZo5t2vqbv4dWj0/qwZ4aemUS20ZG
         CLJySd+42qBnv1Nv2+/lbkLcvxUw8YVGV6liXUsfFxwmwoC14uS5t6Zog5lP87AsF8cu
         oogez6jQKeqqT2TfKOiFrJgyMJvWbS/1qIdqWTgAbneJ2YVXmO/GuFnmsFZTMA9llSzc
         T6DobrgAaPmjcqf/8ezSEmY5bC8JwbHEHVb86iI0I7zFcJgJEdl4Q1/C66BVzIEycbIj
         hUsKKMYp8hiLujiK88/HyHqYC08WJQTXFPjj3VIHGSk0jHhXmxFuxEHoU01A7LnRBxEM
         k2Zg==
X-Gm-Message-State: AA6/9RmE+3b2bk+N9oPuNDOdhbzFQAhwz7pYOlhK1TAW7d6OiXuiiTOJ00fPak1xN9Gyvw==
X-Received: by 10.98.86.11 with SMTP id k11mr4930267pfb.182.1475176809811;
        Thu, 29 Sep 2016 12:20:09 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id b67sm14312780pfd.82.2016.09.29.12.20.07
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Sep 2016 12:20:09 -0700 (PDT)
Date: Fri, 30 Sep 2016 00:50:04 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>,
	Alison Schofield <amsfield22@gmail.com>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Namrata A Shettar
Message-ID: <20160929192002.GA5135@namrata-HP-Pavilion-g6-Notebook-PC>
References: <d3e3a8a4-9ecc-47d5-ab28-27ed0bd9b848@googlegroups.com>
 <20160929190938.GA4070@d830.WORKGROUP>
 <alpine.DEB.2.10.1609292110360.3160@hadrien>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <alpine.DEB.2.10.1609292110360.3160@hadrien>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Sep 29, 2016 at 09:10:46PM +0200, Julia Lawall wrote:
> 
> 
> On Thu, 29 Sep 2016, Alison Schofield wrote:
> 
> > On Thu, Sep 29, 2016 at 12:02:17PM -0700, Namrata A Shettar wrote:
> > > Please grant edit priveleges.
> > >
> > > Thanks!
> > >
> > > namrata
> >
> > Done, but I'm not use to seeing spaces in the name, so might be wrong.
> > Let me know if it's a problem.
> 
> It seems that it is OK.
> 
> julia
> 
>

Thank you :) 

