X-GM-THRID: 6395915397521997824
X-Received: by 10.107.128.169 with SMTP id k41mr6251354ioi.72.1489169603655;
        Fri, 10 Mar 2017 10:13:23 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.31.6 with SMTP id x6ls8595884otd.46.gmail; Fri, 10 Mar
 2017 10:13:23 -0800 (PST)
X-Received: by 10.157.22.184 with SMTP id c53mr8625365ote.87.1489169603211;
        Fri, 10 Mar 2017 10:13:23 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x229.google.com (mail-pg0-x229.google.com. [2607:f8b0:400e:c05::229])
        by gmr-mx.google.com with ESMTPS id y203si1506096pfb.0.2017.03.10.10.13.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 10 Mar 2017 10:13:23 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) client-ip=2607:f8b0:400e:c05::229;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::229 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x229.google.com with SMTP id g2so24172229pge.3
        for <outreachy-kernel@googlegroups.com>; Fri, 10 Mar 2017 10:13:23 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=xuuCCRSBIIq4jTlHH2Y9I2WByJNt+Nft0Bn5YNUhvvg=;
        b=pKLk9f97BrtorbDTzrTQR3w3H+s8NvBUhfzmykatu3MktkeENU3Oy4+fyLGLZRBrBz
         CXx+AwmR2g++inbyjddpqcZAVY3amR0uXJ7tvm8PvYeLHVhSHeZK/lld1nhWfNufJovP
         xbO9R3v2VZo2iyjkIKrMqkiiIfRucWcp0gZLqiSEqj8Ona+rK628597oBkgKM5tk3SW7
         4LSBEb3je0pM9pSdhXCH6PnLh9S8HMooj6J9QtSbPakX9gjfE3grvj4q6yE67c1IoqCf
         zG2x5UiS7juFYY6Y9l1CFebWKytgJ+SjHe6tJEyw+QUEAOcJBq76Shm8bfHsiVMtObx7
         FanA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=xuuCCRSBIIq4jTlHH2Y9I2WByJNt+Nft0Bn5YNUhvvg=;
        b=IpAWp3XhO78UsGkFqw0hZRtxyvOaNp3Ex4mSC/+Y2LMM9+AIJl1xsY3p7+Hb+9XdV+
         0tV2wiN8djfB6nxOR5dO1MUUCpNBlQUEsjmSw8loSz1JL8h7eqDpF4wpVFyb+TPpY2pO
         1tlFNKEzJBDEqTjNiYncosrCCn4Owxslrh1WT0TLsjMIfioFV+AgDN2iQ15Y8tOhisnO
         fqmhiB+xjpXXmwqBV2mEWRaKXnzVy6mFKQgQMzuJD3ZkEy7Ne8JkxGPsbXwITtWQ6568
         JhiFTR0yeUg8W4+ma4s8IAtXxf6zO3W3c/4Ske3EZOa08dIvj9YqH6Et6tTW6AFYiuXS
         +Rrw==
X-Gm-Message-State: AMke39n/Tq4T+9FO6kX+7INIA2p5xi2OdOsTrXTshmn3JzbE7CxC2H3EeqMciRoLYgOabg==
X-Received: by 10.98.192.217 with SMTP id g86mr22241720pfk.170.1489169602961;
        Fri, 10 Mar 2017 10:13:22 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id b70sm19907088pfc.100.2017.03.10.10.13.22
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Fri, 10 Mar 2017 10:13:22 -0800 (PST)
Date: Fri, 10 Mar 2017 10:13:21 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Tamara Diaconita <diaconitatamara@gmail.com>
Cc: aditya.shankar@microchip.com, ganesh.krishna@microchip.com,
	gregkh@linuxfoundation.org, outreachy-kernel@googlegroups.com,
	Tamara Diaconita <diaconita.tamara@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH 0/4] Improve code readability in
 wilc1000 driver
Message-ID: <20170310181321.GB19658@d830.WORKGROUP>
References: <20170310165813.3983-1-diaconita.tamara@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170310165813.3983-1-diaconita.tamara@gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Fri, Mar 10, 2017 at 06:58:13PM +0200, Tamara Diaconita wrote:
> Fix multiple issues found with checkpath.pl to improve code readability.

Hi Tamara, Cover letter Subject needs to say staging & driver-name

ie. Subject: [PATCH 0/4] staging: wilc1000: Improve code readability

Loading the patches next.
alisons

> 
> Tamara Diaconita (4):
>   staging: wilc1000: wilc_wlan_cfg: Rearrange lines
>   staging: wilc1000: linux_mon: Rearrange the code
>   staging: wilc1000: Align the code
>   staging: wilc1000: wilc_wlan_cfg: Delete blank line
> 
>  drivers/staging/wilc1000/linux_mon.c     | 27 ++++++++++++++++++---------
>  drivers/staging/wilc1000/linux_wlan.c    |  8 ++++----
>  drivers/staging/wilc1000/wilc_wlan_cfg.c | 24 ++++++++++++++++--------
>  3 files changed, 38 insertions(+), 21 deletions(-)
> 
> -- 
> Organize the patches that clean up the same driver in a set.
> 
> 2.9.3
> 
> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170310165813.3983-1-diaconita.tamara%40gmail.com.
> For more options, visit https://groups.google.com/d/optout.

