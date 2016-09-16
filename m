X-GM-THRID: 6330669960642166784
X-Received: by 10.237.33.226 with SMTP id m31mr10004214qtc.19.1474019524138;
        Fri, 16 Sep 2016 02:52:04 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.54.199 with SMTP id l190ls1041582itl.2.gmail; Fri, 16 Sep
 2016 02:52:01 -0700 (PDT)
X-Received: by 10.107.12.216 with SMTP id 85mr10442055iom.24.1474019521744;
        Fri, 16 Sep 2016 02:52:01 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x243.google.com (mail-pf0-x243.google.com. [2607:f8b0:400e:c00::243])
        by gmr-mx.google.com with ESMTPS id 7si2357819pfw.1.2016.09.16.02.52.01
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 02:52:01 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) client-ip=2607:f8b0:400e:c00::243;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::243 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x243.google.com with SMTP id 21so2001705pfy.1
        for <outreachy-kernel@googlegroups.com>; Fri, 16 Sep 2016 02:52:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:content-transfer-encoding:in-reply-to
         :user-agent;
        bh=LuzzagUbqfSbYUXTmU7VmTbv64loHCfTxP2UvseTsxQ=;
        b=as+Pv8qFjZtweQ11j9YwJbEYTiQ2YCoXvH7ME766LSEhFSIuUe2v9p7G1LBFgbGNrk
         LTXB19J4HhjVgc0yYYaQoM+E2N6OU1Kk0V/4znyXsZxRhwB5QB6u6k++Yaucp7oxxTWS
         wyuDz6glYkSw+iaj9O+921vIJjwBLrxk+xW/x7DMrRIbIikUrqNU1w7tOL2/CGxjRnB8
         zMN8NcnZXEkrVymAUfF+OCRR/zYIzXWoICMpSekx8gNbog08G4FGSFcw4lSYtODYXFxa
         ob4jXdFPd3KKPdclHP6iMlbzJ4lSOg8IVOAM1xkh/Lx21f1/j4YFuylH1G3Nhhw3DqFW
         hjDg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:content-transfer-encoding
         :in-reply-to:user-agent;
        bh=LuzzagUbqfSbYUXTmU7VmTbv64loHCfTxP2UvseTsxQ=;
        b=HidNpFSSahXhPXJof+bhbElCObxibHjQUpEkNLaR92N5+HysbyXYeJP3Fpz0h6/Gy6
         jsOe6MuzjEyMOj9AHW1WcjiWrD0TSQGwWBXmaKOwWJhrZAd4PKcsq9bf7PI/cKLPl7U5
         xwSPExxCpf3gbHLz7+Rr6rncNiWqIN4jX7vT6ylRZfUPczk4b/kEzdT6Xh5DMmX62qur
         0/urYaXplcUZ3nOilrXm/dhOTRAqkAOy/jqmEzVYT8MYgUSyJX1mBS+xpnzs1iwhcZCo
         EMEI0CKdcRh5x+I60xNu51qQATKVTZbEfAS1EyeytR+NszgI8h4SecBOTXmsIL3z5y1s
         rVig==
X-Gm-Message-State: AE9vXwNzbV9mcslJtHvULzT2NeI/lA/z/ZkJeGMPuVORbAizW7kSqyXK8mRXmshEwf4R0A==
X-Received: by 10.98.80.136 with SMTP id g8mr7962416pfj.185.1474019521572;
        Fri, 16 Sep 2016 02:52:01 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id p7sm3080625paa.3.2016.09.16.02.51.59
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 16 Sep 2016 02:52:01 -0700 (PDT)
Date: Fri, 16 Sep 2016 15:21:57 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: xgifb: Replace explicit NULL comparison
Message-ID: <20160916095155.GD5503@namrata-HP-Pavilion-g6-Notebook-PC>
References: <CAFrQyDFEhVcu48ROi4Nq1DNMMzLVu80ON3O2eZ5Bk4F7qrr_HA@mail.gmail.com>
 <20160916082641.GA20262@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <20160916082641.GA20262@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

Yes,will keep that in mind and use some other mail-agent.Will resend all
my patches.Thanks for being patient and sorry for the inconvenience
caused.

-Namrata

On Fri, Sep 16, 2016 at 10:26:41AM +0200, Greg Kroah-Hartman wrote:
> On Fri, Sep 16, 2016 at 02:42:18AM +0530, Namrata A Shettar wrote:
> > Replace explicit NULL comparison� with equivalent expression to resolve
> > checkpatch issue.
> > - x != NULL => x
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> > �drivers/staging/xgifb/XGI_main_26.c | 2 +-
> > �1 file changed, 1 insertion(+), 1 deletion(-)
> 
> You sent this as an html email, and that will not work for patches,
> sorry.
> 
> thanks,
> 
> greg k-h

