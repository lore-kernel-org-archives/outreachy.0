X-GM-THRID: 6333851090177490944
X-Received: by 10.129.136.198 with SMTP id y189mr2822982ywf.132.1474716357901;
        Sat, 24 Sep 2016 04:25:57 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.211.5 with SMTP id n5ls1173139itg.8.gmail; Sat, 24 Sep 2016
 04:25:56 -0700 (PDT)
X-Received: by 10.66.41.114 with SMTP id e18mr2927635pal.37.1474716356281;
        Sat, 24 Sep 2016 04:25:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from mail-pf0-x242.google.com (mail-pf0-x242.google.com. [2607:f8b0:400e:c00::242])
        by gmr-mx.google.com with ESMTPS id si10si3215037pab.1.2016.09.24.04.25.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 04:25:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) client-ip=2607:f8b0:400e:c00::242;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of namrataashettar@gmail.com designates 2607:f8b0:400e:c00::242 as permitted sender) smtp.mailfrom=namrataashettar@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pf0-x242.google.com with SMTP id 6so6473514pfl.2
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 04:25:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=n9flQFNtQeowgJATcGDSbq1CDRLfINm3e1JK5m2nzkk=;
        b=jrKF32zcP6QLF3Fy4cg8YkinHnp9oJWDwGauBn8y1/LXuRVhSyteM3AN+TnDiWxoVL
         jFrrS98sYRIvy9/NSV7KfPav3im8k4WBCHVmljPIHN0UVb6w2Eu00tGitnomUmC51vRb
         fEON0b+9yVlBBIlflZZmvOjeuTzrCqcMILp6D2qwlguLO/Yz+9W2MiZb67qShoKonzO4
         BRQN1fa1Ag0AbzmG/bc+ovxeFFd9iDD4r8Av8U3UWiiQJlXecKaq2TkIV3yZUs1lxJgO
         Qh689ScZaRiGqg/iRgcIQOAVPsvH87RqIq1aQ8rxD8gqyE1GZSyN1BaD4Bd2pzI9COMl
         0JPw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=n9flQFNtQeowgJATcGDSbq1CDRLfINm3e1JK5m2nzkk=;
        b=W32lxVowlWR3xs+fCmsvZv8EH78lqjnx+oCv6tv/jNPbMgVPVx9vOBQW9n2lFXaM1q
         zbZUo/XCizgH52tyQ+LlBz5KRdTZqKPVhT41m/HiMg4QuFwak2+umhbBDPf71r/+N1Kn
         TzNJ+/PQY29xwP1PAjOjFPrT3LuS+WyBO1/ZA7R+PnkYrS98eMAFyOEop3f2Tprv2HFP
         p6IjeoXxOvE4EgoKn1h48SJFltZ4juEv4p1vikJ9G+VKzohvkVgxP62GUAVFCz0+R80m
         pqmVS/sGMG217y+8c7InjSF17ncfXpZibcD5oDI2cfCvAlhX1ZiCIGmxHP9MZLVAHPyj
         0vdw==
X-Gm-Message-State: AA6/9RnnyBf0DoCLZLZG3eT/2QSuz/XDngNHM4ku/Qw3GtmbwweOupG7+EPLdNXMkwSoRw==
X-Received: by 10.98.96.193 with SMTP id u184mr14033568pfb.109.1474716356114;
        Sat, 24 Sep 2016 04:25:56 -0700 (PDT)
Return-Path: <namrataashettar@gmail.com>
Received: from namrata-HP-Pavilion-g6-Notebook-PC ([103.225.101.21])
        by smtp.gmail.com with ESMTPSA id ra13sm17989340pac.29.2016.09.24.04.25.54
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 04:25:55 -0700 (PDT)
Date: Sat, 24 Sep 2016 16:55:51 +0530
From: Namrata A Shettar <namrataashettar@gmail.com>
To: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
	outreachy-kernel <outreachy-kernel@googlegroups.com>
Subject: Re: [PATCH] staging: wilc1000: Remove 'else' after 'break'
Message-ID: <20160924112549.GA8101@namrata-HP-Pavilion-g6-Notebook-PC>
References: <20160924105656.GA8001@namrata-HP-Pavilion-g6-Notebook-PC>
 <20160924111349.GA3973@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20160924111349.GA3973@kroah.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Sat, Sep 24, 2016 at 01:13:49PM +0200, Greg Kroah-Hartman wrote:
> On Sat, Sep 24, 2016 at 04:27:00PM +0530, Namrata A Shettar wrote:
> > Remove 'else' after 'break' to resolve checkpatch issue.
> > The statements after the 'if' condition body are executed only if
> > condition not true due to the 'break'.
> > 
> > Signed-off-by: Namrata A Shettar <namrataashettar@gmail.com>
> > ---
> >  drivers/staging/wilc1000/wilc_wfi_cfgoperations.c | 3 +--
> >  1 file changed, 1 insertion(+), 2 deletions(-)
> > 
> > diff --git a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > index 2c2e8ac..1212f75 100644
> > --- a/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > +++ b/drivers/staging/wilc1000/wilc_wfi_cfgoperations.c
> > @@ -695,8 +695,7 @@ static int connect(struct wiphy *wiphy, struct net_device *dev,
> >  			   sme->ssid_len) == 0) {
> >  			if (!sme->bssid)
> >  				break;
> > -			else
> > -				if (memcmp(last_scanned_shadow[i].bssid,
> > +		    if (memcmp(last_scanned_shadow[i].bssid,
> >  					   sme->bssid,
> >  					   ETH_ALEN) == 0)
> >  					break;
> 
> The rest of the indentation doesn't look correct anymore :(
> 
My bad, should have corrected the indentation properly. Will correct and
resend.

Thanks,

namrata

