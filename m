X-GM-THRID: 6249397284630429696
X-Received: by 10.107.163.208 with SMTP id m199mr38631865ioe.30.1455092292123;
        Wed, 10 Feb 2016 00:18:12 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.106.225 with SMTP id gx1ls153825obb.18.gmail; Wed, 10 Feb
 2016 00:18:11 -0800 (PST)
X-Received: by 10.182.79.134 with SMTP id j6mr36583544obx.4.1455092291559;
        Wed, 10 Feb 2016 00:18:11 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pf0-x22a.google.com (mail-pf0-x22a.google.com. [2607:f8b0:400e:c00::22a])
        by gmr-mx.google.com with ESMTPS id 79si279608pft.0.2016.02.10.00.18.11
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 10 Feb 2016 00:18:11 -0800 (PST)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) client-ip=2607:f8b0:400e:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c00::22a as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x22a.google.com with SMTP id x65so8397662pfb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 10 Feb 2016 00:18:11 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=A/cRJhAsweiKb8RCiPoP3tMu8Wogv55gXBFVS2EsWHQ=;
        b=ENJtednx4uBLT55F7d8NA1/X9ga1lOMzHKN3RmI76jcrdUCLIImf3MLocls0wAHg3v
         ExkMcNqcdgpJ5lRFFpzicnY/6ioCoKFG+cLQ8YuPmqsj4rpSD2FSqib7B7qbLw1noZKi
         juXPsLgberQc/sj/bj+0Mc2zSCACBrefQ8xoeCeq1ErLCYojIpyfQ8F6TSeKnlcrJGTg
         DNdSSPbBhKfA5eTvi+dXwahiJCLTKGjxRwwINB3CB9E2doEuB7iqARzyLrFVdpSdMPtd
         H0f4mJz8YgflanKVz+H9deh0NblGZMCb3CTwp3jlBqe8hnNqFWi/AGjQo14/d8JUQdL+
         h2Dw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-type:content-disposition:in-reply-to
         :user-agent;
        bh=A/cRJhAsweiKb8RCiPoP3tMu8Wogv55gXBFVS2EsWHQ=;
        b=iTmHm5s5h+PVlsIGLG+YfdsBb7wCpab+ixPDsuqKIQVpC8qcOlxAVYpuVCRTYhmrbT
         5a8A+DP+SH8Hu0xXWA7LfekXFGtbzBRO8hV6MNNgrgT7qYt52tDweLARgRSZtntMgQqU
         lSHnC/fAbF/SDO5+DlrydXKwvpfCsL9Ojz5B75Qy+MCw38tv1WA9Mmins1eUBF+uQU/F
         +J2yf/4sIFPSMt1ycWnnLhlEOvM3p5++tPD3zZSpnic0Q39QRYARgSaYTs0GkPVowUO1
         MYD8NxjTaktFidFsHphG+6ADdQaUIBOYaiQtnAnVEbDottspaZiKizCXVrcFpI8u/sEc
         cH2A==
X-Gm-Message-State: AG10YOTGmCCqTkljBnGUYbySlyjKjt0fGc4sqnLu5PMkDkyTHECKKfD6XcN42sLL2AUquw==
X-Received: by 10.98.19.22 with SMTP id b22mr53808487pfj.17.1455092291413;
        Wed, 10 Feb 2016 00:18:11 -0800 (PST)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([183.82.227.168])
        by smtp.gmail.com with ESMTPSA id r68sm3033830pfb.51.2016.02.10.00.18.09
        (version=TLS1_2 cipher=AES128-SHA bits=128/128);
        Wed, 10 Feb 2016 00:18:10 -0800 (PST)
Date: Wed, 10 Feb 2016 13:48:06 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Janani Ravichandran <janani.rvchndrn@gmail.com>
Cc: Julia Lawall <julia.lawall@lip6.fr>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: xgifb: Rename local
 variable
Message-ID: <20160210081806.GD24358@sudip-pc>
References: <20160210033729.GA2677@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100828060.2050@localhost6.localdomain6>
 <20160210074242.GB24358@sudip-pc>
 <CANnt6XmEPTr4W9fSq+Wnx+qcBP3PsPFKEoXL9NW4GCtFdE-9iw@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CANnt6XmEPTr4W9fSq+Wnx+qcBP3PsPFKEoXL9NW4GCtFdE-9iw@mail.gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Wed, Feb 10, 2016 at 03:05:05AM -0500, Janani Ravichandran wrote:
> > >
> > > So this variable is only initialized, but never used?  If that is the
> > > case, then a better solution would be to drop it.
> > >
> >
> I was in fact debating between dropping it and renaming it but decided
> on renaming it as I thought it might be used in the future, looking at the
> if() check and the comment above it. Not sure if this was a good idea.
> 
> > > Or maybe it was not intended to introduce the local variable.  You might
> > > want to see what you can find with git blame on the line that makes the
> > > local declaration.
> >
> Sure, I will do that.
> 
> >
> > If you remember in the last round of Outreachy also we had a similar
> > discussion, I will see if I can find out that thread.
> 
> I'd love to see it, Sudip.

https://groups.google.com/forum/#!searchin/outreachy-kernel/Staging$3A$20xgifb$3A$20XGI_main_26$3A$20Remove$20unused$20code/outreachy-kernel/fsXHgjdyx40/Omgja2r3CgAJ

regards
sudip

