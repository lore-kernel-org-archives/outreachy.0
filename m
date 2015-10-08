X-GM-THRID: 6203187246248493056
X-Received: by 10.13.212.203 with SMTP id w194mr4983500ywd.44.1444292802748;
        Thu, 08 Oct 2015 01:26:42 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.30.201 with SMTP id d67ls930155qgd.55.gmail; Thu, 08 Oct
 2015 01:26:41 -0700 (PDT)
X-Received: by 10.129.78.205 with SMTP id c196mr4764490ywb.21.1444292801654;
        Thu, 08 Oct 2015 01:26:41 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x232.google.com (mail-pa0-x232.google.com. [2607:f8b0:400e:c03::232])
        by gmr-mx.google.com with ESMTPS id wl2si5281787pab.1.2015.10.08.01.26.41
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 08 Oct 2015 01:26:41 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) client-ip=2607:f8b0:400e:c03::232;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::232 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x232.google.com with SMTP id ve7so7439953pab.2
        for <outreachy-kernel@googlegroups.com>; Thu, 08 Oct 2015 01:26:41 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=ENvHl9wcmXERrg18REMr2iOiB4+hiUYgM6uRTMfkYMc=;
        b=TeSG9KWU+PvCVtWCGV2CxPt2UtFP4ffYVWGDlH0VjFc6oQv2YVTTY2z+nG0nVahQhz
         BQjBkpgXQ7U+DmICnta2Cc1Hcqs4Tm+7LFNYaOim/Z5sO6cV4+y68bPJ7x/zBy7ALU+f
         Kj/89D1ezVXBfhDl5MCV2x2pEIs3uEDU96YftOWCfT0M35arIw3JE/NBV0/YGFcWIBqB
         a/dgqQbBoQhWmusly5kTmLs8kbrtVfKnq7wO0VQAOMxqblEXrszyaJombrrQLFVUSvqU
         FnkNCabrcTG3viU3zgvat3+iFEpcuoHautIoHteAaWONDIBOUJ9QqMvMqBYIbY5Ej6fU
         dmqA==
X-Received: by 10.69.25.1 with SMTP id im1mr6660012pbd.102.1444292801470;
        Thu, 08 Oct 2015 01:26:41 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([49.206.251.3])
        by smtp.gmail.com with ESMTPSA id sm9sm5089710pbc.56.2015.10.08.01.26.39
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 08 Oct 2015 01:26:41 -0700 (PDT)
Date: Thu, 8 Oct 2015 13:56:32 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Alison Schofield <amsfield22@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Where is IBMEBUS in makeconfig?
Message-ID: <20151008082632.GA12448@sudip-pc>
References: <20151008081436.GA31765@Ubuntu-D830>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20151008081436.GA31765@Ubuntu-D830>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Thu, Oct 08, 2015 at 01:14:36AM -0700, Alison Schofield wrote:
> Need to load this module but cannot find IBMEBUS dependency in
> makeconfig.  Appreciate the help!
> 
> 	config INFINIBAND_EHCA
> 		tristate "eHCA support"
> 		depends on IBMEBUS

Looks like IBMEBUS is not there in staging tree, I checked linux-next
also and its not there even. That means this module cannot be built.

Maybe Greg knows what to do now... remove ehca folder as it has out of
tree dependency?

regards
sudip

