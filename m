X-GM-THRID: 6332315727900442624
X-Received: by 10.13.207.131 with SMTP id r125mr5487518ywd.157.1474361141365;
        Tue, 20 Sep 2016 01:45:41 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.65.36 with SMTP id x36ls3539880ita.15.canary; Tue, 20 Sep
 2016 01:45:40 -0700 (PDT)
X-Received: by 10.66.145.1 with SMTP id sq1mr5244050pab.72.1474361140871;
        Tue, 20 Sep 2016 01:45:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from mail-pa0-x243.google.com (mail-pa0-x243.google.com. [2607:f8b0:400e:c03::243])
        by gmr-mx.google.com with ESMTPS id 7si6017253pfw.1.2016.09.20.01.45.40
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:45:40 -0700 (PDT)
Received-SPF: pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) client-ip=2607:f8b0:400e:c03::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of aquannie@gmail.com designates 2607:f8b0:400e:c03::243 as permitted sender) smtp.mailfrom=aquannie@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x243.google.com with SMTP id oz2so637092pac.0
        for <outreachy-kernel@googlegroups.com>; Tue, 20 Sep 2016 01:45:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=SrxaAEKBJ8MDWu2PodGpAySDXOge+WBVA3QE5sdiUmU=;
        b=V2JSk+4IewAr8XF+RbZOYCu7BuflrJITRvn1ML1oPk8EbhKWO3sVQn+5WjjrRm7EjM
         yubP0QbOLMk0sBa4E0PD6dMJL+TvKistzYWqaVz9Xh5ZD2nrYb53f/USROzYBmzEF0Zu
         qTkK93BWnCgt+5S31ZIG5AWNVp2l3flk8QRzJ7zU8zRWObKo3Yu+k+VhW9MLlS1tFxpZ
         KL8BlF7oyxYwfndNNtrNjU/v9Y1Ub1BZAyAJSiTaeC03S/6XVclBKLcGaYOWYgmmm/4J
         qCgmA1fN4lpgIQbzZpeNkyl/+do0hRtoSqv4I14mOGd8ByU5MKfVVf3wUU4hSjBX2QUc
         kzCA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=SrxaAEKBJ8MDWu2PodGpAySDXOge+WBVA3QE5sdiUmU=;
        b=g4md/Aln/S9W7/jmbKjv5XpDy5BsmjiAY2yBz/SgYc/0xnyRdpadhh6a/5WngdVVnC
         eY0byh3YxARozlXidO1ntBE07/4DsWQ5Jg8rhlk+/xYAZ/XQJbLs4DdD6PYkF3F5iiDv
         JFrpMSgd6Fe8nNFEUie43O0WW9C+kHLa2cGJ8D9qFn8q2QumSVwmWNXhNfEU1ZnlrQJi
         u//C5fQfMnZ/VeDL9JBznlrZVtzWg/eDnkbKdtW5wJfhsxoYwmUgMQ9POLz1LUDoJnCr
         QsLmGgOLAN0liUZBGLubP76TNZI82W2WVcVs2PzOgqkB+LSHGXa2R4iPaIPSKkPHGbaW
         Tgcw==
X-Gm-Message-State: AE9vXwN0UFta8RXPY9CPyzaBR3/7jGlLEPID+qhN/KLUz0Wjiv50VJse1Db2Uusr10RhRg==
X-Received: by 10.66.73.3 with SMTP id h3mr1257048pav.87.1474361140693;
        Tue, 20 Sep 2016 01:45:40 -0700 (PDT)
Return-Path: <aquannie@gmail.com>
Received: from toblerone ([14.139.82.6])
        by smtp.gmail.com with ESMTPSA id y184sm77114803pfg.94.2016.09.20.01.45.38
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 20 Sep 2016 01:45:39 -0700 (PDT)
Date: Tue, 20 Sep 2016 14:15:31 +0530
From: Rehas Sachdeva <aquannie@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [PATCH v2 0/2] Merge assignment with return'
Message-ID: <20160920084531.GA32494@toblerone>
References: <20160920073857.GA8747@toblerone>
 <44211dba-019f-437a-b29b-2b509a89f85a@googlegroups.com>
 <20160920083322.GB12786@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160920083322.GB12786@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Tue, Sep 20, 2016 at 10:33:22AM +0200, Greg KH wrote:
> On Tue, Sep 20, 2016 at 12:52:41AM -0700, Rehas Sachdeva wrote:
> > Please ignore.
> 
> Why?  What did you do wrong with these?

I didn't send them as a patchset, in reply to the cover letter.

