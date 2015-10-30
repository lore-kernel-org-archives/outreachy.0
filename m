X-GM-THRID: 6211239444830224384
X-Received: by 10.182.52.226 with SMTP id w2mr4653788obo.40.1446179580937;
        Thu, 29 Oct 2015 21:33:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.84.243 with SMTP id l106ls985089qgd.33.gmail; Thu, 29 Oct
 2015 21:33:00 -0700 (PDT)
X-Received: by 10.140.221.70 with SMTP id r67mr4616169qhb.14.1446179580204;
        Thu, 29 Oct 2015 21:33:00 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id iz5si465522pbc.2.2015.10.29.21.33.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 29 Oct 2015 21:33:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sudipm.mukherjee@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=sudipm.mukherjee@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id z6so61479144pas.2
        for <outreachy-kernel@googlegroups.com>; Thu, 29 Oct 2015 21:33:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-type:content-disposition:in-reply-to:user-agent;
        bh=eV0drcb5P6YXtcYwG5rv6dkE/hSBgmePvOkmZ315B8M=;
        b=WL9tHZKgWeolaS42ZytlGW7P6ni/C0Afbpe81GpcbGd20qWmmIV3lHCeY31oNlGNUQ
         bskkYklGc8vxxmX29AwLJRCvCofkSNed8r4D++/EUW2dV6Ki/Av8pSZjjwF3VSJVzHyC
         49AtjiDF4r4P5eHHinWcqqcE61v8jcuigYiRsyrVrMPzUnk/gZVHUBHQk5yvHey+8NRp
         IyicTgiqzFfvSRj9CZP924a1U++o4qKVOsTFBadNduBpFX1XK8gUpcT0arDHGw81fty+
         lWFYurTpw/7Kpa/0gC/0VqPZ7b9FgWJ+zIRKk4F9F/iLnm3hcwcb8Wc2/FfbuAWNrPy8
         Q3pA==
X-Received: by 10.66.254.73 with SMTP id ag9mr6229442pad.116.1446179580016;
        Thu, 29 Oct 2015 21:33:00 -0700 (PDT)
Return-Path: <sudipm.mukherjee@gmail.com>
Received: from sudip-pc ([122.169.170.95])
        by smtp.gmail.com with ESMTPSA id ey2sm5211055pbd.77.2015.10.29.21.32.58
        (version=TLSv1.2 cipher=RC4-SHA bits=128/128);
        Thu, 29 Oct 2015 21:32:59 -0700 (PDT)
Date: Fri, 30 Oct 2015 10:02:54 +0530
From: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
To: Burcin Akalin <brcnakalin@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] staging: octeon: Add space around
 '+'
Message-ID: <20151030043254.GB3407@sudip-pc>
References: <1446166862-1859-1-git-send-email-brcnakalin@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <1446166862-1859-1-git-send-email-brcnakalin@gmail.com>
User-Agent: Mutt/1.5.21 (2010-09-15)

On Fri, Oct 30, 2015 at 04:01:01AM +0300, Burcin Akalin wrote:
> Add space around operator '+'. Problem found using
> checkpatch.pl
> CHECK: spaces preferred around that '+' (ctx:VxV)
> 
> Signed-off-by: Burcin Akalin <brcnakalin@gmail.com>
> ---

I think you are not working against the current staging tree. This patch
will also not apply because of some other changes in that file.

regards
sudip

