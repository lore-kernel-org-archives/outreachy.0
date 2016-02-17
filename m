X-GM-THRID: 6249498218591158272
X-Received: by 10.140.154.143 with SMTP id a137mr2703494qha.11.1455731991202;
        Wed, 17 Feb 2016 09:59:51 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.132.15 with SMTP id g15ls2140190iod.50.gmail; Wed, 17 Feb
 2016 09:59:50 -0800 (PST)
X-Received: by 10.107.7.200 with SMTP id g69mr4320100ioi.3.1455731990894;
        Wed, 17 Feb 2016 09:59:50 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x229.google.com (mail-qg0-x229.google.com. [2607:f8b0:400d:c04::229])
        by gmr-mx.google.com with ESMTPS id q187si130566ywf.4.2016.02.17.09.59.50
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 17 Feb 2016 09:59:50 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) client-ip=2607:f8b0:400d:c04::229;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::229 as permitted sender) smtp.mailfrom=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x229.google.com with SMTP id b67so17847660qgb.1
        for <outreachy-kernel@googlegroups.com>; Wed, 17 Feb 2016 09:59:50 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:subject:to:references:cc:message-id:date:user-agent
         :mime-version:in-reply-to:content-type:content-transfer-encoding;
        bh=NxYyNdUor8M84WWe2WHCMYYig2AXLt37dQXfhPwl3yE=;
        b=Y6PFvu0CfelyKUkOkwvdgQxILx5JBlji99VMCNAWEv6WtCVt17Ue1Gp68oT2u90B6j
         G652mGKBW1gZoDqKJLPGRBiNbBuOfojYz0hheJP98w3q+bhcbHR9UVRZqdmYTc0dK8/H
         dNCMY0fo49pvvQ9E5x9pwZje2ZdBuf22sJak2g8KmYkbOp7nNmgDVIjuI8076aE9HIan
         k4MIH8sb8st+0QnYmMCa8MLBYzNRKC0kjLPaOzgDgi43BuRb7w7CdBpJMPq3LdcARIrH
         cw8KKCH1sKwpZgDmg4foCUVNRqrpCjz1PWq6fT3ZG4FsSIO4Q4zRtkRWgkxiHb9tXgD4
         OKDw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:from:subject:to:references:cc:message-id:date
         :user-agent:mime-version:in-reply-to:content-type
         :content-transfer-encoding;
        bh=NxYyNdUor8M84WWe2WHCMYYig2AXLt37dQXfhPwl3yE=;
        b=RJl9M1RZBtRMv429BaVnMHIg5i1H+ETyIXxnx3EBZNqjsNpEVOG2tENFK0z9zMebcj
         C7eadH3Rrzv74kA9ddeLhpuLJOUnSTQYe8Q69Ze2X9QiAue260q6wEhVLeEAlkWHgi/v
         sEChS8vlrzaWyUYMhTH58z34O5yyHmzv9iH/srqeCcpU+3qlNcGezxte73jNYsX1x1EI
         NLaakkDUIVP+s59RYdrlrAVIUin0TcJVqn7bes09k6YJGp2Ni8E5qe0NQTwXX7VkcDSp
         ADL/p9OkYPr1wkavsaibRSzrcqAXn/58ItybvIwzUSh5P/Pk/cjrpF1uyHUTa9VCEKYE
         XrUw==
X-Gm-Message-State: AG10YOTv/ZL2mkp0NiY2Z+Wh+mj9YdZTHahn2z8zuxtTkEi8j7JpnsSUJivwNxqdrmoDFw==
X-Received: by 10.140.43.180 with SMTP id e49mr3637449qga.66.1455731990728;
        Wed, 17 Feb 2016 09:59:50 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.121] ([38.140.131.194])
        by smtp.gmail.com with ESMTPSA id 38sm955666qkx.6.2016.02.17.09.59.50
        (version=TLSv1/SSLv3 cipher=OTHER);
        Wed, 17 Feb 2016 09:59:50 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: unisys: Modify boolean
 assignment
To: Julia Lawall <julia.lawall@lip6.fr>,
 Janani Ravichandran <janani.rvchndrn@gmail.com>
References: <20160210082412.GA2645@janani-Inspiron-3521>
 <alpine.DEB.2.02.1602100825150.2050@localhost6.localdomain6>
 <207e6b2c-07b0-48a8-a414-37c59ed7a3e6@googlegroups.com>
 <alpine.DEB.2.10.1602100954070.2486@hadrien>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Message-ID: <56C4B515.3020301@gmail.com>
Date: Wed, 17 Feb 2016 12:59:49 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:38.0) Gecko/20100101
 Thunderbird/38.5.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.10.1602100954070.2486@hadrien>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 02/10/16 03:54, Julia Lawall wrote:
> 
> 
> On Tue, 9 Feb 2016, Janani Ravichandran wrote:
> 
>>
>>
>> On Wednesday, 10 February 2016 02:26:38 UTC-5, Julia Lawall wrote:
>>       On Wed, 10 Feb 2016, Janani Ravichandran wrote:
>>
>>       > Boolean variables should be assigned true/false rather than
>>       1/0.
>>       > This patch makes such a correction.
>>
>>       A change like this should be made consistently, so it is a
>>       little
>>       surprising to see only one such change.  Is this the only place
>>       where the
>>       variable is initialized?  
>>
>> Within this file, this is the only instance of initialization of the
>> variable where 1 is
>>  used instead of true. All others use true/false. I sent this to resolve
>> that
>> inconsistency :)
>>       If so, you could say that.  if not, then you
>>       could explain that all of the other initialization places
>>       already have
>>       boolean values, in some way or another.
>>
>> Do I send a v2 explaining this?
> 
> I think it could be helpful.

You also need to CC the driver author, not just the outreachy list.

Jes



