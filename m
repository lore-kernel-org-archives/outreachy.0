X-GM-THRID: 6395570827688935424
X-Received: by 10.157.56.39 with SMTP id i36mr5379962otc.71.1489085905032;
        Thu, 09 Mar 2017 10:58:25 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.128.74 with SMTP id b71ls1990504iod.32.gmail; Thu, 09 Mar
 2017 10:58:24 -0800 (PST)
X-Received: by 10.99.105.67 with SMTP id e64mr6579581pgc.169.1489085904119;
        Thu, 09 Mar 2017 10:58:24 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pg0-x230.google.com (mail-pg0-x230.google.com. [2607:f8b0:400e:c05::230])
        by gmr-mx.google.com with ESMTPS id y90si1353687pfa.6.2017.03.09.10.58.24
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 09 Mar 2017 10:58:24 -0800 (PST)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::230 as permitted sender) client-ip=2607:f8b0:400e:c05::230;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c05::230 as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE sp=NONE dis=NONE) header.from=gmail.com
Received: by mail-pg0-x230.google.com with SMTP id 77so29413865pgc.1
        for <outreachy-kernel@googlegroups.com>; Thu, 09 Mar 2017 10:58:24 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20161025;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=EHmUuo+J+W5dl97giV+31f8P50EfPpFnMYKZBE0GlNo=;
        b=lDy6vKlfGlUWxAP9JOCfgnq2JpbHCQTR2BTBwajK/h1Jfd4bigu2EVVE9pnwdk8Alx
         jOUj6YDwE5iXSTcJRl7Dzw7ncuM1UrketDeyQHMGg76VgCNz05Fovjwth9EeiyS1YrLX
         8SzNzbWpoNTxQLuMmIW3yzp+bQwC1zicpPCTdecexyICgx+7lWNGbksfpOl5ywAX4cT1
         UMIqpbAszKo/aE24rzz8mGAXQVc0WYjv/Yx657xyS6bSzyBbQ0A2MfmdEf1AW8VKSHcR
         bN5YGqj9RchAKi1KHih+PoR/A0rauzXlCHAgNxN0qw4l+wd73fxtUkocsSsH79VYl/fH
         GplQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20161025;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=EHmUuo+J+W5dl97giV+31f8P50EfPpFnMYKZBE0GlNo=;
        b=pYGMeuS7HF0MkiNnpipaCsF4gJiQ5S0JK5wZUdxxuciSiaWOpGPU9k1eZm6bTuYOST
         BHD2MYEe1/pO0xfRqKdHGiv+yrz6WN5KBOgGHuIMAZW4/djfbU+0GgltxVa4m+luX5W8
         isTQ6XBfo8JmSST5ju9KVfdAXRSIqzDAVTdGQimOfuZXAD+uM4VAXPi8ElDdKZ8xrG1S
         B7uAJz+9/OVgpEIMFOm84N1lshSCDkgaCvfDUIeu3I2M1XZrJuQFma8c3jpuz99aDD9+
         9cMeHHL8ni6oJDmNoPiY/bMe7/tYqPoljz7LWNoAzobOQJJjbB3KH8uBfZ0Jf1ViRxyf
         FBig==
X-Gm-Message-State: AMke39mrWohzfRITCzgJElMWj7yowi1e4gkAHN4ILlUalRj6OmkX0ZmeTvKMUmCYIgK2Qw==
X-Received: by 10.98.41.5 with SMTP id p5mr16201391pfp.183.1489085903817;
        Thu, 09 Mar 2017 10:58:23 -0800 (PST)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-66-135.dhcp.embarqhsd.net. [67.232.66.135])
        by smtp.gmail.com with ESMTPSA id d189sm14065327pga.17.2017.03.09.10.58.23
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Thu, 09 Mar 2017 10:58:23 -0800 (PST)
Date: Thu, 9 Mar 2017 10:58:22 -0800
From: Alison Schofield <amsfield22@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] Caught up on Outreachy patches, again.
Message-ID: <20170309185821.GA5096@d830.WORKGROUP>
References: <20170309184103.GA16032@kroah.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170309184103.GA16032@kroah.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Thu, Mar 09, 2017 at 07:41:03PM +0100, Greg KH wrote:
> Hi all,
> 
> I've now caught up on all submitted outreachy kernel patches.  Wow there
> were a lot of them...
> 
> Because of the huge quantity, odds are I have missed some.  So if you
> have not gotten an email from my automated patch scripts saying your
> patch has been applied, consider it rejected or lost.  Please resend
> anything that you think is ready to be merged.
> 
> thanks,
> 
> greg k-h
> 

Hi Applicants,

You can do this to see your patches:
https://git.kernel.org/cgit/linux/kernel/git/gregkh/staging.git/log/?h=staging-testing&qt=grep&q=Tamara+Diaconita
(those are Tamara's :)

And, it bears repeating, (I just failed this yesterday!):
Every session that you sit down to work, sync your tree to
staging-testing. That will save you some 'doesn't apply to
my tree messages'.  You'll also get the 'doesn't apply' 
message if the same patch is simply on the mailing list
ahead of yours, so keep an eye on the mailing list.

Any questions on sync'ing tree - please ask.

alisons




I 







> -- 
> You received this message because you are subscribed to the Google Groups "outreachy-kernel" group.
> To unsubscribe from this group and stop receiving emails from it, send an email to outreachy-kernel+unsubscribe@googlegroups.com.
> To post to this group, send email to outreachy-kernel@googlegroups.com.
> To view this discussion on the web visit https://groups.google.com/d/msgid/outreachy-kernel/20170309184103.GA16032%40kroah.com.
> For more options, visit https://groups.google.com/d/optout.

