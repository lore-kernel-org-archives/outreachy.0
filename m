X-GM-THRID: 6463164323927687168
X-Received: by 10.28.150.212 with SMTP id y203mr90748wmd.4.1504847750123;
        Thu, 07 Sep 2017 22:15:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.46.75.1 with SMTP id y1ls149822lja.28.gmail; Thu, 07 Sep 2017
 22:15:48 -0700 (PDT)
X-Google-Smtp-Source: ADKCNb6exoBP087gP+rNYWMciEvSChLTtHnPlKMsbUrKL2ur9fJCir815EzVw0hHGlovacVkkPLw
X-Received: by 10.46.25.149 with SMTP id 21mr104694ljz.35.1504847748546;
        Thu, 07 Sep 2017 22:15:48 -0700 (PDT)
ARC-Seal: i=1; a=rsa-sha256; t=1504847748; cv=none;
        d=google.com; s=arc-20160816;
        b=XvrRt6HdlTV0sZEQoH+PKrmpy+3atBr7o1s4RWlDwgVnD9IGqGzxsgUo7B4isQP2uy
         hKlI3sOocVLgN3Ekas8V7p09qcPR3RevEB9E6X1TNs4NGnCZYoWoior/S6dU0nhS3Gnf
         2zyqRbZ6qt0VVI10d/8X0IasbJqN0rC4kE+8auqbCtbbBCjh4PP6hRtCsx93gkdi3gol
         M/WHWaBwFs1agjwdx1X/D2RNbGwsh0MQwLlMCyFaFdnySLC62Fnnzt/zT5cWKUpcoijd
         en3wFwtPI6OVAF0NLK7IFSbj0/qEt/cCmow0AdVN4lFOSQn4NhW85Krpo/K/Y/K8nJqu
         g4pA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=user-agent:in-reply-to:content-disposition:mime-version:references
         :message-id:subject:cc:to:from:date:arc-authentication-results;
        bh=rmnBh381Jct+weSPvyXF9Lrgl80dXNWQiDIn696w1hc=;
        b=mSet4XlBa8wSCTxLPT7y/0XVrxDYKTxkkm8TXffjb5L4h1fJse5oan9bAy57Pt87Vt
         PeWUEqZbqEJ2VhGCG6OWvs4fD91oefbEXTHw/VpqiaDcWLBWGymZjv3ZG6wPsTxRuBrv
         3dhT7pLm9X7USTFt52yIg7414E1lrSekcGuCG4L6YUif5tubWclx31e00Y//quJdQJiZ
         Veur94kU5E9wAQ15sLA0Fbsg7pJrBGV9mLhehbRNDIli8HIxkCyFTf99/rPykeNzDhnW
         mERS5Cg4GZ1vTjg9Yk+nYauRBL2PP5p3kc+Frx6LbqqAgkxSMIcsFMnoDrUv3A1/aGHn
         ksMQ==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id t142si127247wmt.2.2017.09.07.22.15.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 07 Sep 2017 22:15:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (LFbn-1-12253-150.w90-92.abo.wanadoo.fr [90.92.67.150])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id C2DA08D9;
	Fri,  8 Sep 2017 05:15:46 +0000 (UTC)
Date: Fri, 8 Sep 2017 07:11:33 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Neetu Yadav <yadavneet7@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [Outreachy kernel] Not able to send mail to the mailing list
Message-ID: <20170908051133.GA22581@kroah.com>
References: <405d02a3-830c-4edf-94f8-26a22db5d71b@googlegroups.com>
 <CAOCi2DEA4wbfkpouWZsZ=3BGX_sju9um2mAd0XADn9t_mFZjJA@mail.gmail.com>
 <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <978eb67d-8c0f-4089-83d0-eb93a5a9bcdd@googlegroups.com>
User-Agent: Mutt/1.9.0 (2017-09-02)

On Thu, Sep 07, 2017 at 10:02:15PM -0700, Neetu Yadav wrote:
> Hi Gargi,
> 
> Yes, I am using university network, thank you or pointing that out.
> so, is there any other way that I coultl send my patches ( i.e without using
> mutt or git send-email)?
> Or using another network is the only solution?

What is the exact error you are getting?

Are you sure you are not sending html email?  Your emails to the list
are in html format, and the kernel mailing lists will block that type of
email, for obvious reasons.

And what is wrong with using mutt?  It works just fine with gmail, along
with git send-email, so the same server you are using to send this email
should work just fine with those two tools.

thanks,

greg k-h

