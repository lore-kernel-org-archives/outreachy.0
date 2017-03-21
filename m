X-GM-THRID: 6400014269629333504
X-Received: by 10.200.50.174 with SMTP id z43mr4892668qta.32.1490122243834;
        Tue, 21 Mar 2017 11:50:43 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.107.18 with SMTP id v18ls3125744itc.7.canary-gmail; Tue, 21
 Mar 2017 11:50:42 -0700 (PDT)
X-Received: by 10.99.65.71 with SMTP id o68mr19615615pga.16.1490122242903;
        Tue, 21 Mar 2017 11:50:42 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pf0-x244.google.com (mail-pf0-x244.google.com. [2607:f8b0:400e:c00::244])
        by gmr-mx.google.com with ESMTPS id y203si3678647pfb.0.2017.03.21.11.50.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 21 Mar 2017 11:50:42 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) client-ip=2607:f8b0:400e:c00::244;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c00::244 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x244.google.com with SMTP id o126so23361281pfb.1
        for <outreachy-kernel@googlegroups.com>; Tue, 21 Mar 2017 11:50:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=aNc6AlzJ5g39YFmgI7AHRfLiuZ+mNbe6yyvp2QRjsSg=;
        b=at9GFwXSgoHwmtnERgTVXRAgNgQbAWW2yDZxl8WUMn05sdtAHlLhAtF6aW5eMyhxWQ
         Eb1Q2zfcylFMQhDfv90kl8RcyqyTgbLLPVixmpXdHSermPlYadJmPsVEuK7Lmme6iS1B
         FtNW3Up52wWLuPaZrYuhNHLULOclU478I1FAISRvr3Btqd/03H6ihjc0Vi7V5X2tuCgC
         IzjaA3KNKAxwRfagfTaELGzDiOECQor7gLecEKqbSdrHiaI7GBHiutSy5e31jrIg0sSh
         LbvlKkuLlP7dI625epD90kbIATj9KBL2KwLYelo73sUUrJ8PL/bA2OlOuHXdPHQwPvuJ
         PI7A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=aNc6AlzJ5g39YFmgI7AHRfLiuZ+mNbe6yyvp2QRjsSg=;
        b=lkS/02VlCbyzQ7TLrdk4HfXNYmahpp0A2di99EWeUJUx1u5oe4pdjPk2G1UVE0LImQ
         W2qAOnhoQH97W/aIzNP9eZm78WLNZR9NWMTebhIkzdwV2mH8dfr9QMdQE2lJjaJDf0a9
         h/IVPgk1jDYqAG3LSWoaehtAVwXztz6tZxb56mlsA4vdeUQsEzmqxd2AzbV4UAy7WA6q
         6rJhz7ACCuePpLZK2joOJ0RxKGeAoAwvkVw175Dh0bDeNU128txRzkUpyDLtJ8OdrsTt
         KzXA+9GmO5DUqWui2yqb1ArM2QzGyp9zxem8uPdV71NPxIUPHYOp+4T/EXUzEGuG1ZVA
         Ya3w==
X-Gm-Message-State: AFeK/H1a/SYDAH1ep9cTS8GX2xE+vgrSw5/EUsgDrZnf76JffcuBiTtHOo5quf2GCD0Shg==
X-Received: by 10.84.132.97 with SMTP id 88mr10578259ple.61.1490122242684;
        Tue, 21 Mar 2017 11:50:42 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id a8sm41077884pfa.30.2017.03.21.11.50.42
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Tue, 21 Mar 2017 11:50:42 -0700 (PDT)
Date: Tue, 21 Mar 2017 11:50:41 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: simran singhal <singhalsimran0@gmail.com>
Cc: lars@metafoo.de, Michael.Hennerich@analog.com, jic23@kernel.org,
	knaack.h@gmx.de, pmeerw@pmeerw.net, gregkh@linuxfoundation.org,
	linux-iio@vger.kernel.org, devel@driverdev.osuosl.org,
	linux-kernel@vger.kernel.org, outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH v3 0/2] Replace mlock with private
 lock and delete whitespaces
Message-ID: <20170321185040.GA11324@d830.WORKGROUP>
References: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1490119436-20042-1-git-send-email-singhalsimran0@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 21, 2017 at 11:33:54PM +0530, simran singhal wrote:
> The patch series replaces mlock with a private lock for driver ad9834 and
> Fix coding style issues related to white spaces.

Hi Simran,  

I'm getting lost.  Patchset Subject Line needs subsystem and driver.
The comment above says ad9834 but the patches below say ade7753.

Can we drive adis16060 through ACK and then come back to this one?
(ie. applyling lessons learned)

thanks,
alisons
> 
> v3:
>   -Using new private "lock" instead of using "buf_lock"
>    as it can cause deadlock.
>   -Sending it as a series of two patches.
> 
> v2:
>   -Using the existing buf_lock instead of lock.
>    
> 
> simran singhal (2):
>   staging: iio: ade7753: Remove trailing whitespaces
>   staging: iio: ade7753: Replace mlock with driver private lock
> 
>  drivers/staging/iio/meter/ade7753.c | 14 ++++++++------
>  1 file changed, 8 insertions(+), 6 deletions(-)
> 
> -- 
> 2.7.4
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/1490119436-20042-1-git-send-email-singhalsimran0%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

