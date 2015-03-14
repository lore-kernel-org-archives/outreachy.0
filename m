X-GM-THRID: 8122735263744
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,53aa5d5d19924edc
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.180.80.35 with SMTP id o3mr1120511wix.0.1426340663741;
        Sat, 14 Mar 2015 06:44:23 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.116.116 with SMTP id jv20ls489335lab.34.gmail; Sat, 14 Mar
 2015 06:44:23 -0700 (PDT)
X-Received: by 10.112.142.1 with SMTP id rs1mr6002609lbb.19.1426340663186;
        Sat, 14 Mar 2015 06:44:23 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from mail-wi0-x22c.google.com (mail-wi0-x22c.google.com. [2a00:1450:400c:c05::22c])
        by gmr-mx.google.com with ESMTPS id c8si89693wiw.1.2015.03.14.06.44.23
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 14 Mar 2015 06:44:23 -0700 (PDT)
Received-SPF: pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) client-ip=2a00:1450:400c:c05::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of cristina.opriceana@gmail.com designates 2a00:1450:400c:c05::22c as permitted sender) smtp.mail=cristina.opriceana@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x22c.google.com with SMTP id dy8so7030636wib.0
        for <outreachy-kernel@googlegroups.com>; Sat, 14 Mar 2015 06:44:23 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=message-id:subject:from:to:cc:date:in-reply-to:references
         :content-type:mime-version:content-transfer-encoding;
        bh=h0wYW2uHlmb1w74LlUQgJIlbLZsWlNsjaY1omZ4u4qo=;
        b=05AoLqxdx+HzxPtz9vI2JU07/3BDd0uoTcCtdNgj2fAJcN81Psuo92AcSitBrN/868
         thM8JLbkLK497LDFe0YZH88sQvvN2P57GNEwer1koADfqFpBzcCLJTnlD1cA6l72IPyZ
         amjvj1eoEAijVWXOzgqroC1gDR0oqPMB+up78OZD8Tkj2ISE3i9B26dxvbGpdlapvO2F
         tySUpBAsEoiZBpp5nD+VWhfEsJNGoSR2M9SqGPbftvIiO2T/9XoK/Y/m7UKyWEPkOw+r
         O30vC6gCF/c7vArtZ0f0s/slkzrPGgbR4ysaGWOFvQxDdCO7AMJ8OTLLyJW1hxrWpauu
         TofQ==
X-Received: by 10.194.205.138 with SMTP id lg10mr102070135wjc.130.1426340663087;
        Sat, 14 Mar 2015 06:44:23 -0700 (PDT)
Return-Path: <cristina.opriceana@gmail.com>
Received: from [192.168.0.101] ([46.214.223.212])
        by mx.google.com with ESMTPSA id fs8sm7062650wib.8.2015.03.14.06.44.21
        (version=SSLv3 cipher=RC4-SHA bits=128/128);
        Sat, 14 Mar 2015 06:44:22 -0700 (PDT)
Message-ID: <1426340621.6721.11.camel@Inspiron>
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: rtl8188eu: Bool tests
 don't need comparisons
From: Cristina Opriceana <cristina.opriceana@gmail.com>
To: Julia Lawall <julia.lawall@lip6.fr>
Cc: outreachy-kernel@googlegroups.com
Date: Sat, 14 Mar 2015 15:43:41 +0200
In-Reply-To: <alpine.DEB.2.02.1503141053470.2075@localhost6.localdomain6>
References: <cover.1426273386.git.cristina.opriceana@gmail.com>
	 <89c63fedf7d2979ad94f85a601bc6d8ef80fe142.1426273386.git.cristina.opriceana@gmail.com>
	 <alpine.DEB.2.02.1503141053470.2075@localhost6.localdomain6>
Content-Type: text/plain; charset="UTF-8"
X-Mailer: Evolution 3.10.4-0ubuntu2 
Mime-Version: 1.0
Content-Transfer-Encoding: 7bit



> > diff --git a/drivers/staging/rtl8188eu/hal/rf_cfg.c b/drivers/staging/rtl8188eu/hal/rf_cfg.c
> > index 455ecdc..954cade 100644
> > --- a/drivers/staging/rtl8188eu/hal/rf_cfg.c
> > +++ b/drivers/staging/rtl8188eu/hal/rf_cfg.c
> > @@ -295,7 +295,7 @@ static bool rf6052_conf_para(struct adapter *adapt)
> >  			break;
> >  		}
> >  
> > -		if (rtstatus != true)
> > +		if (!rtstatus)
> >  			return false;
> 
> Looking at this code a bit, I can't see how rtstatus could be anything 
> other than true.  So perhaps the test, and even the variable, is not 
> needed?
> 
> julia
> 

I had a look at it. rtstatus is only modified in
  rtstatus = rtl88e_phy_config_rf_with_headerfile(adapt);

And indeed, this function returns only true.
I will make another patch removing unnecessary code.

 Thanks,
 Cristina


