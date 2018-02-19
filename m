X-GM-THRID: 6523279529594585088
X-Received: by 10.98.13.78 with SMTP id v75mr3269235pfi.54.1519035856475;
        Mon, 19 Feb 2018 02:24:16 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.98.25.70 with SMTP id 67ls2113187pfz.0.gmail; Mon, 19 Feb 2018
 02:24:15 -0800 (PST)
X-Google-Smtp-Source: AH8x226Iazvb01Rp5VvmusAtBnANqvqy7N28OAq874Cpc5hruQ3ENOtXqMWfC2yNqABqJr3ztBxj
X-Received: by 10.98.234.7 with SMTP id t7mr3288598pfh.16.1519035855086;
        Mon, 19 Feb 2018 02:24:15 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519035855; cv=none;
        d=google.com; s=arc-20160816;
        b=Z72NbMQyO9bWDIy03uktZnOf5rbMF4h0ckdGeiI5rWs9gHZPpH9ab4yCuaw2km9dbZ
         xuwFZDdtopdINCMboziWypbdpcABB7tU9K6B1iZQcNWY6A8SbHTHI7bIQjf5ekwL4r0E
         1w9+vfIxdwewHbgCVs1/89tXf2gov2FNmTfjKAs0DmWra0GLt9xOPKlCqfig4Cb9eu8G
         gRfB+QhXaMaPt5SidwvQ3lkygbJtnUJpoQy50SOOEbie3KeXsoJufz7FBrc9MCGgzvMB
         nSIiWJig9hdL2T2Ejjh349UvpEfaj9A8lep5ISLJ1V1U7zQ6u7USF7U/n21mR6JLndig
         1G1Q==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=LQxv1Rg2/Q81AgfYwIMvhrsW5/C7btaqGcZ+7lCaBFk=;
        b=WojGQ/mQ8TSytlcLOoNCYopkD/YOywCpxwemysWoJdC3VXkq22doDK/0Fpn+MSdjWv
         nhvbW1FOfF3D2r2yRK8OYiUMxv4bn6+xyTXLQSz8H7abMBz2RDPQmWsFR3xHOf/kcqjE
         q54HBP7rlKU9KlqprdFnzNyNJ1YJazjEjGAzfnjMkXqNC8SNZoTODW/G8qwPrqVIBtGG
         XlSWJCRFhZvN3iPFToPDfU6s9YN09ojhJ4pZiHIewWQBHVyC5lCMgoKY+3EhD42Apadl
         6ZSP261pOUi2FkAjaI+OQpYcKXjnHZMZbNBZmr1jXSVdRbgtxfJNSGrjX5b0YLWBKAcY
         MuJg==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.113 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp113.iad3a.emailsrvr.com (smtp113.iad3a.emailsrvr.com. [173.203.187.113])
        by gmr-mx.google.com with ESMTPS id 187si122738pge.4.2018.02.19.02.24.14
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 02:24:14 -0800 (PST)
Received-SPF: neutral (google.com: 173.203.187.113 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=173.203.187.113;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 173.203.187.113 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from smtp23.relay.iad3a.emailsrvr.com (localhost [127.0.0.1])
	by smtp23.relay.iad3a.emailsrvr.com (SMTP Server) with ESMTP id 2CEB125352;
	Mon, 19 Feb 2018 05:24:14 -0500 (EST)
X-Auth-ID: siepeng@mev.co.uk
Received: by smtp23.relay.iad3a.emailsrvr.com (Authenticated sender: siepeng-AT-mev.co.uk) with ESMTPSA id 832F125006;
	Mon, 19 Feb 2018 05:24:13 -0500 (EST)
X-Sender-Id: siepeng@mev.co.uk
Received: from [10.0.0.185] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 19 Feb 2018 05:24:14 -0500
Subject: Re: [Outreachy kernel] [PATCH v2] staging: rtd520.c: Fix new line
 after dereference operator
To: Julia Lawall <julia.lawall@lip6.fr>,
 Ishita Tripathi <sakurakhadag@gmail.com>
Cc: Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 H Hartley Sweeten <hsweeten@visionengravers.com>,
 outreachy-kernel@googlegroups.com
References: <20180216221603.GA77503@ubuntu>
 <alpine.DEB.2.20.1802170829440.2645@hadrien>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <f8ff6584-8cbf-356d-6c6b-262118f57635@mev.co.uk>
Date: Mon, 19 Feb 2018 10:24:12 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <alpine.DEB.2.20.1802170829440.2645@hadrien>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 17/02/18 07:31, Julia Lawall wrote:
> 
> 
> On Fri, 16 Feb 2018, Ishita Tripathi wrote:
> 
>> Delete new line after the dereference operator (->).
>> According to https://kernelnewbies.org/CheckpatchTips, it is better to
>> have longer lines than break at this operator.
>>
>> Signed-off-by: Ishita Tripathi <sakurakhadag@gmail.com>
>> ---
>>   drivers/staging/comedi/drivers/rtd520.c | 5 ++---
>>   1 file changed, 2 insertions(+), 3 deletions(-)
>>
>> diff --git a/drivers/staging/comedi/drivers/rtd520.c b/drivers/staging/comedi/drivers/rtd520.c
>> index bb400e0..47b7093 100644
>> --- a/drivers/staging/comedi/drivers/rtd520.c
>> +++ b/drivers/staging/comedi/drivers/rtd520.c
>> @@ -815,9 +815,8 @@ static int rtd_ai_cmdtest(struct comedi_device *dev,
>>
>>   		if (cmd->scan_begin_src == TRIG_TIMER) {
>>   			arg = cmd->convert_arg * cmd->scan_end_arg;
>> -			err |= comedi_check_trigger_arg_min(&cmd->
>> -							    scan_begin_arg,
>> -							    arg);
>> +			err |= comedi_check_trigger_arg_min(&cmd->scan_begin_arg,
>> +					arg);
>>   		}
>>   	}
>>
>> --
>> changes in v2:
>> -changed subject line
>> -improved description
> 
> Greg asked you not to move arg and I asked you to move the first line down
> to the next line to line up with arg (and thus not exceed 80 characters).
> These suggestions are contradictory, but you should do at least one of
> them.
> 
> julia

How about adding a line break between 'err |=' and 
'comedi_check_trigger_arg_min'?  That will avoid the line break after 
the dereference operator and still keep the line length within 80 
characters.

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

