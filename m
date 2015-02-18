X-GM-THRID: 411471708160
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,82a0d380676b09c2
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.183.3.43 with SMTP id bt11mr1435397obd.7.1424294853165;
        Wed, 18 Feb 2015 13:27:33 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.28.204 with SMTP id c195ls179149ioc.37.gmail; Wed, 18 Feb
 2015 13:27:32 -0800 (PST)
X-Received: by 10.50.57.47 with SMTP id f15mr1987337igq.1.1424294852950;
        Wed, 18 Feb 2015 13:27:32 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qa0-x22a.google.com (mail-qa0-x22a.google.com. [2607:f8b0:400d:c00::22a])
        by gmr-mx.google.com with ESMTPS id kt5si4815441qcb.3.2015.02.18.13.27.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 13:27:32 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22a as permitted sender) client-ip=2607:f8b0:400d:c00::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c00::22a as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qa0-f42.google.com with SMTP id w8so2865112qac.1
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Feb 2015 13:27:32 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=HMXCUpIDZpvCmOh4ldIS69XRVq5afg0cwoBspVElhko=;
        b=lWxfR1GQzBKS57cnwL2hn/SUa6k5uMoT8k/coAYvs396KY1PrJe4VOELHIbqAWuQ08
         J3fYlrNur7ztNHzJMK9Pl1daqO7J91j55hIyhiEHCoKTdRUlrX/2buZJHj/pQPBR8Emo
         jIoO9LMmat5k6Hdckl61fKVGoEvKkCtytdqtO2+pmqxMk/dSdCeaUIL1PWjoVMgrIGFo
         3ixlsUX+7G9wD5S4t3YiJIl+YyIkzedfLI9YAu0rEmByWTC0Eq/ieQHBS9pql+N7GOTy
         5xtEZu7+COMTIk9bVCIJM2IQWi1v/72mfEI6pM320QO/roe8xPP0n2Fjgn0olOt7gDot
         HnGg==
X-Received: by 10.140.234.198 with SMTP id f189mr4933582qhc.0.1424294852835;
        Wed, 18 Feb 2015 13:27:32 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-71-190-187-138.nycmny.fios.verizon.net. [71.190.187.138])
        by mx.google.com with ESMTPSA id 7sm8469403qhv.44.2015.02.18.13.27.31
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Feb 2015 13:27:32 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E503C2.2030009@gmail.com>
Date: Wed, 18 Feb 2015 16:27:30 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Julia Lawall <julia.lawall@lip6.fr>, 
 Vaishali Thakkar <vthakkar1994@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8723au: Use put_unaligned_le16
References: <20150218195639.GA3189@vaishali-Ideapad-Z570> <alpine.DEB.2.02.1502182111570.2248@localhost6.localdomain6>
In-Reply-To: <alpine.DEB.2.02.1502182111570.2248@localhost6.localdomain6>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 02/18/15 15:12, Julia Lawall wrote:
>> Here, use of variable tim_bitmap_le and variable itself is removed. To be compatible with
>> changes header file is added too.
> 
> Your commit message is too long here.
> 
> julia
> 

I agree!

In general, as a driver maintainer, I would also prefer a text message
explaining what is fixed in a, rather than automated Coccinelle output.
Adding a comment that the issue was discovered using Coccinelle is great
however.

Cheers,
Jes


