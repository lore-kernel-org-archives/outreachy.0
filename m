X-GM-THRID: 6396655727339896832
X-Received: by 10.129.166.84 with SMTP id d81mr12269522ywh.29.1489339799651;
        Sun, 12 Mar 2017 10:29:59 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.129.81 with SMTP id c78ls3731392iod.28.gmail; Sun, 12 Mar
 2017 10:29:58 -0700 (PDT)
X-Received: by 10.99.178.87 with SMTP id t23mr14761766pgo.45.1489339798768;
        Sun, 12 Mar 2017 10:29:58 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id r66si2717055pfb.7.2017.03.12.10.29.58
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 10:29:58 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 67so16539884pfg.2
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 10:29:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=7AjRDG2H5vHFG6UXO1fXpHV/QBeygHbqm9e1EUdr0hY=;
        b=TTMlADAZde7z9msq/B1hONYW14WPo+dRrPuSAqWHuRpnesqN8IA3EcdSxK+55C9vEg
         OcOVLvXj2MZNPN/3CicgZPBVsLXnvpNuet0PGH88+uun/vrxwB7wPyUZVrw34DQ4rpn2
         cVdkluKZKtkSK6ubAlRrav3bH7Bzs/8XW5ITk+srJamGhyxi1pqW+78erb/pXOs7/da9
         nWHts+NcOgsUTYvo8GMGaX6wCzOu/pqUaWzgonYrp2Yr92QfRRBPjfmxzvy6zzh2VA7i
         PB5he+Phjk/gfB4l8Vao+DC3Kke0KTdSC4ZOsAGZf7F1qUSMTFcu8qKURcC9IR+q/sUK
         ub9w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=7AjRDG2H5vHFG6UXO1fXpHV/QBeygHbqm9e1EUdr0hY=;
        b=o6e7HNj0eeOWZroTAp1/NrfCTKe2gzc7xNBLVZarnP77xAmteWA00j+ksfug9+eErT
         ikncYUcjtOuuF+Xnr+3rEBuC5+C8H01KPjAoviwmD4hcB0NFjcledY0cFcz6Z6X/Uevz
         3pTi+oQNFGMf6JZK2ueFjvNR7nBrXZxqqhDaLpUpOPrU2kZXyWFuyChUMHmwowP8NuKG
         MSaFgoJQNd78ZirWBLP0f9Yg7/WOvjbbt04qRvD2JUInOrfV7/jLfancZcd8/e+COKoV
         6DSfF1gXkBcoEE4nw72/dtB+2OU7VKEi5s9cQTi5meKz4MxbDXN0rfeUIRWSTAk7xdI7
         ix0g==
X-Gm-Message-State: AMke39lcVrdLcLxQZCieKRF84y9Vt8aDQhcAHb9ZF2yC48MDMOkUbdW/pGIDqNKcc/Z7mA==
X-Received: by 10.99.40.198 with SMTP id o189mr32476001pgo.21.1489339798567;
        Sun, 12 Mar 2017 10:29:58 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id x2sm29243678pfb.49.2017.03.12.10.29.57
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 10:29:58 -0700 (PDT)
Date: Sun, 12 Mar 2017 10:29:57 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: Gargi Sharma <gs051095@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [KERNEL NEWBIES ACCESS] Gargi Sharma
Message-ID: <20170312172956.GB3711@d830.WORKGROUP>
References: <CAOCi2DHxiahL=K9y6PzytK9wok7nDbOCW6ir4hy9g3ii9oyWxg@mail.gmail.com>
 <20170312171954.GA3711@d830.WORKGROUP>
 <CAOCi2DF5e4sDAs7q5TVDvC8KdVDBOTSNYimEXZ+MmMfVK_5iZw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAOCi2DF5e4sDAs7q5TVDvC8KdVDBOTSNYimEXZ+MmMfVK_5iZw@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 10:53:29PM +0530, Gargi Sharma wrote:
> On Sun, Mar 12, 2017 at 10:49 PM, Alison Schofield <amsfield22@gmail.com> wrote:
> > On Sun, Mar 12, 2017 at 10:20:39PM +0530, Gargi Sharma wrote:
> >> Hi,
> >>
> >> Please grant edit priveleges.
> >>
> >> Thanks!
> >> Gargi
> >
> > Is that "Gargi Sharma" or "GargiSharma" ?
> 
> Gargi Sharma, I'm assuming the user name is the same as login name.
> 
> Thanks!
> Gargi

Try it now.


> >
> >>
> >> --

