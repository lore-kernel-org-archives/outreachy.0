X-GM-THRID: 6396639849722413056
X-Received: by 10.157.54.55 with SMTP id w52mr12705944otb.135.1489335561465;
        Sun, 12 Mar 2017 09:19:21 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls11523862otd.46.gmail; Sun, 12 Mar
 2017 09:19:21 -0700 (PDT)
X-Received: by 10.157.12.97 with SMTP id 88mr11942285otr.122.1489335561225;
        Sun, 12 Mar 2017 09:19:21 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x234.google.com (mail-pf0-x234.google.com. [2607:f8b0:400e:c00::234])
        by gmr-mx.google.com with ESMTPS id c123si2691107pfa.4.2017.03.12.09.19.21
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 09:19:21 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) client-ip=2607:f8b0:400e:c00::234;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::234 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x234.google.com with SMTP id v190so59994978pfb.1
        for <outreachy-kernel@googlegroups.com>; Sun, 12 Mar 2017 09:19:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=qal1H3TAydjW3XAaNzB2D4SCnQAp88s1wHkpGcQ0Sow=;
        b=CdcB9smseNiXb3asKD4XemBSDu76E7mK8fQZX0PmMkwSOgSv3d4dIFPJlW1URjy153
         1X6Mq8fEQSy3yW7fEGES97DzinibHbWfN0N3aKok+QAfNkuCOhyi+2KUNEgzSLkYe5pt
         hHupZBr3MkD6Hv9cTvnAiawhKRi2gTeTMXHWDO8HahgSG/Kcd00whYtZrIJhAdTsoWzf
         KrDIamss9mNc+CAmmIDnPdaQDi4Jg62DJUaSILUHPnUrY9sG4Ws2//8uNhTxTYJHLe8z
         YRxatUf23L6QknHtTCVe8u4Lm1doi5ufI0RklwtEdzBYEVc42W2JGVJUwVTkgmidadXj
         /X5w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=qal1H3TAydjW3XAaNzB2D4SCnQAp88s1wHkpGcQ0Sow=;
        b=tiD1kkFEyJ3HG4PwbUyPrLpe3YL16SgUClpAJYu3YPlP+FhGJl4YgkyAMC5R8TnnVB
         X1MpNM1/MsQ0MBiv4JzznJkIdf4Urimn7AF6mQEDo+iLZWJHsNEo7lBRovNxKA6xKO6Q
         vTRsOWHi/X3AU3RRRPBKMORvQ+23yiIrD+aR64Iu7kFHVyplR0zMf5qXfANn9trofGKH
         Y+W7jeRETvVIy6sPWDagFmnd2j3+DA0dwPyJugywadlMn/WJelzr9z8alKyggR4LjCDL
         KB+SgCI3D7xqBwU6AEx1DUmRMBetUkJKFrnU6e4vVJotrtQM4onZh4uogKO5Z8wAdeLM
         CEYw==
X-Gm-Message-State: AMke39nWaCcU8pz4K22oZSth3l7S0DRAJmSU3sOMHvLyKltDxVLtArbiRs8/9Tks9LQFXw==
X-Received: by 10.99.123.27 with SMTP id w27mr32057731pgc.155.1489335560742;
        Sun, 12 Mar 2017 09:19:20 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id h14sm29339119pgn.41.2017.03.12.09.19.19
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sun, 12 Mar 2017 09:19:20 -0700 (PDT)
Date: Sun, 12 Mar 2017 09:19:19 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: outreachy-kernel@googlegroups.com
Subject: Re: New IIO Coding Task Posted
Message-ID: <20170312161918.GA2717@d830.WORKGROUP>
References: <20170312154929.GA2417@d830.WORKGROUP>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170312154929.GA2417@d830.WORKGROUP>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sun, Mar 12, 2017 at 08:49:30AM -0700, Alison Schofield wrote:
> Hi Applicants,
> 
> A new coding task has been added to the IIO tasks page. 
> 
> Coding Task 2: Replace driver usages of mlock with a private lock
> Enjoy!
> 
> alisons

Found this bug in my process - 

updated sign up sheet with a list of drivers 
long lag while sleeping
updated IIO task sheet to describe the work to be done

I should have held mutex while sleeping ;)

Slow down, 
alisons

