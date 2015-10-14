X-GM-THRID: 6205317079064641536
X-Received: by 10.182.246.98 with SMTP id xv2mr1685108obc.3.1444811809346;
        Wed, 14 Oct 2015 01:36:49 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.115.197 with SMTP id jq5ls20921obb.86.gmail; Wed, 14 Oct
 2015 01:36:48 -0700 (PDT)
X-Received: by 10.182.50.138 with SMTP id c10mr1614692obo.38.1444811808944;
        Wed, 14 Oct 2015 01:36:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x233.google.com (mail-pa0-x233.google.com. [2607:f8b0:400e:c03::233])
        by gmr-mx.google.com with ESMTPS id pe1si718292pac.2.2015.10.14.01.36.48
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 14 Oct 2015 01:36:48 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) client-ip=2607:f8b0:400e:c03::233;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::233 as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x233.google.com with SMTP id cn9so17062104pad.2
        for <outreachy-kernel@googlegroups.com>; Wed, 14 Oct 2015 01:36:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=0+kSeSNM1PUc8FAu/R7dds97WajYuShr2U4g1tEMD70=;
        b=Vb5dXcRTu/dw+EiQhqT3ga6PJzbwegWRH8HJnHPH4/zB/r8z9F1SzWdlIlZ+U5Dqj6
         jkZLRITYApHZXG3FsnG2IWn0leYYYUPtqNEpVWIDG5pxUhSX8/ijh+HVgpuIVsDo21FP
         bzgoeefHnswJh1aiJXRDvmcwANojN0126m9mXZiOB/cchG21utrWxLDTYiOWYMYJXvDB
         Uj8b11Iku5oOYP82jHX9bi5roY8bjh244Y4igwldotlECwKU4Ig7KvKGhLx+XmcME0OK
         5cSZnx+OU3k0mjQk9ShZzFIqlEsNgs+MXa4NxY4hGiudC7nC3DKh5tzCzUf1CUFm/i4p
         iKqA==
X-Received: by 10.66.122.98 with SMTP id lr2mr2429977pab.146.1444811808785;
        Wed, 14 Oct 2015 01:36:48 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id bk8sm8202667pad.18.2015.10.14.01.36.44
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Wed, 14 Oct 2015 01:36:48 -0700 (PDT)
Date: Wed, 14 Oct 2015 14:06:39 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Julia Lawall <julia.lawall@lip6.fr>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: wilc1000: Remove null check
 before kfree
In-Reply-To: <alpine.DEB.2.02.1510140740360.2038@localhost6.localdomain6>
Message-ID: <alpine.DEB.2.11.1510141405020.3203@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1444787959-3930-1-git-send-email-shraddha.6596@gmail.com> <alpine.DEB.2.02.1510140740360.2038@localhost6.localdomain6>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150209.561E141F.020E,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Wed, 14 Oct 2015, Julia Lawall wrote:

>> -	if (pu8HdnNtwrksWidVal != NULL)
>> -		kfree(pu8HdnNtwrksWidVal);
>> +	kfree(pu8HdnNtwrksWidVal);
>>
>>  	return s32Error;
>
> Nothing to do with your patch, but maybe you could make a very small dent
> in the horrible variable names used by this driver by changing s32Error to
> ret.
>
> If you want to be more ambitious, you could use Coccinelle to find a
> pattern like, where x is an identifier:
>
> x = f(...);
> if (\(x != 0 \| x < 0\)) { ... return ...; }
>
> and then change all occurrences of x to ret.

Yeah I'll do this, wilc1000 has a lot of ugly names.
>
> Even more ambitious would be to find occurrences of
>
> T x = ...;
>
> and then use python to detect cases where the string represnting T is a
> prefix of the string representing x, and then remove T from x, and un
> camel case x.  This would require making variables in python and sending
> them back to Coccinelle, which is illustrated by
> demos/pythontococci.cocci.
>
> The last idea however is not necessarily the best one, because it would
> transform s32Error into error, and ret is much more common in the rest of
> the kernel.  Also, you don't want to be overwhelmed with results, because
> you would have to check and think about each renaming to see if it is the
> best one.

Yes thanks a lot :)
>
> julia
>

