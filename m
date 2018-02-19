X-GM-THRID: 6523432871904935936
X-Received: by 10.107.166.68 with SMTP id p65mr15981982ioe.71.1519061992994;
        Mon, 19 Feb 2018 09:39:52 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.36.117.196 with SMTP id y187ls1864353itc.1.gmail; Mon, 19 Feb
 2018 09:39:52 -0800 (PST)
X-Google-Smtp-Source: AH8x225SDj+/CKe6ifdhqSWimMD+5KmOci1+3q3gJL0yCU+ZYRKWx44TnL+rxL9ondCIK66IO9Br
X-Received: by 10.36.23.6 with SMTP id 6mr11888321ith.45.1519061991997;
        Mon, 19 Feb 2018 09:39:51 -0800 (PST)
ARC-Seal: i=1; a=rsa-sha256; t=1519061991; cv=none;
        d=google.com; s=arc-20160816;
        b=cogLxSjKibma/n7plBZlfqInXRmcf+9uqXU+hVD4jfPpfHT5hrWp3+WjVRpL5LFsXP
         a6XW1ZQXHpk0aKxCDWQINxqD6Ms7fUOpn198Wp6oA69uVxhF+NVU+aTzFRQ9BsWCjRfA
         IGI3mk+bo9QUQu4y1G/GvatJK2m6Iu+UukRhZwS9+hwHbyrlWiGY/PPAN2502Qd8hHUr
         b+gLWp0BjPMQ/uZITna95uO+fERYPhdsZXTlwe1T67DfZTvx3n7k9cAVBTAzPzMuWh4A
         ZLRa5Fg7e9AiPFTnkBmR2o2r2ZdOP6Ramz/9szOR/80i4e0r2RI9GEsE3XRBn0FWd46E
         SQFA==
ARC-Message-Signature: i=1; a=rsa-sha256; c=relaxed/relaxed; d=google.com; s=arc-20160816;
        h=content-transfer-encoding:content-language:in-reply-to:mime-version
         :user-agent:date:message-id:from:references:cc:to:subject
         :arc-authentication-results;
        bh=9/AXSeAYwcIRNY32nqIQk4z3RntoPHWMUZiRfy4sYFw=;
        b=e8rLRo3BF1xLNs8KCLhAqoYkLc+W0MKdZacqC1scTbmytA4563jomtvhmjV2njQUS/
         FVARUbDy8sV7/1B+S4YX0iy49QKLHSy8+hvcF9WZH1p7MMDChMRcYrq9HyYXksx1Akxc
         skpQILxNQYisWVXbfjbbTAg1bDvB3uIqdn2tQis3bSxPkUZHWO+GWrQY2+KTCrKx63a6
         QEnE3RultfEHFjRWaNEsvy0tEz+tKFKFJb18yzMnd3jytFLREKU65BtSkqB+oGiEclgB
         DqLLUnqUlyyXh2LFdkel53JJA/559MPp+zuvwYX6WkSwlHotHUwOTvMYl9zb3+69R0Wj
         0ZMw==
ARC-Authentication-Results: i=1; gmr-mx.google.com;
       spf=neutral (google.com: 108.166.43.105 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Return-Path: <abbotti@mev.co.uk>
Received: from smtp105.ord1c.emailsrvr.com (smtp105.ord1c.emailsrvr.com. [108.166.43.105])
        by gmr-mx.google.com with ESMTPS id x35si656707ioe.2.2018.02.19.09.39.51
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 19 Feb 2018 09:39:51 -0800 (PST)
Received-SPF: neutral (google.com: 108.166.43.105 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) client-ip=108.166.43.105;
Authentication-Results: gmr-mx.google.com;
       spf=neutral (google.com: 108.166.43.105 is neither permitted nor denied by best guess record for domain of abbotti@mev.co.uk) smtp.mailfrom=abbotti@mev.co.uk
Received: from smtp6.relay.ord1c.emailsrvr.com (localhost [127.0.0.1])
	by smtp6.relay.ord1c.emailsrvr.com (SMTP Server) with ESMTP id A6EFCA04AA;
	Mon, 19 Feb 2018 12:39:51 -0500 (EST)
X-Auth-ID: siepeng@mev.co.uk
Received: by smtp6.relay.ord1c.emailsrvr.com (Authenticated sender: siepeng-AT-mev.co.uk) with ESMTPSA id 0999EA0381;
	Mon, 19 Feb 2018 12:39:50 -0500 (EST)
X-Sender-Id: siepeng@mev.co.uk
Received: from [10.0.0.185] (remote.quintadena.com [81.133.34.160])
	(using TLSv1.2 with cipher DHE-RSA-AES128-SHA)
	by 0.0.0.0:465 (trex/5.7.12);
	Mon, 19 Feb 2018 12:39:51 -0500
Subject: Re: [PATCH v3] staging: comedi: Remove a newline inside a dereference
To: Eisha Chen-yen-su <chenyensu0@gmail.com>,
 outreachy-kernel@googlegroups.com, gregkh@linuxfoundation.org
Cc: hsweeten@visionengravers.com
References: <20180219160422.27240-1-chenyensu0@gmail.com>
From: Ian Abbott <abbotti@mev.co.uk>
Message-ID: <4cb95218-cb92-802e-b5d1-b80f40b822bb@mev.co.uk>
Date: Mon, 19 Feb 2018 17:39:49 +0000
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:52.0) Gecko/20100101
 Thunderbird/52.6.0
MIME-Version: 1.0
In-Reply-To: <20180219160422.27240-1-chenyensu0@gmail.com>
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Language: en-GB
Content-Transfer-Encoding: 7bit

On 19/02/18 16:04, Eisha Chen-yen-su wrote:
> Remove a new line inside a dereference so that it is not on
> multiple lines.
> And avoid making the line go over 80 columns by moving the whole
> dma_alloc_coherent() call back 4 columns. Problem found with
> checkpatch.
> 
> Signed-off-by: Eisha Chen-yen-su <chenyensu0@gmail.com>
> ---
> Changes in v2:
>    - Change the commit log to mention what I have done.
>    - Remove the unnecessary cited lines from checkpatch inside the commit body.
> Changes in v3:
>    - Rephrase completely the commit message.
>    - Move the whole dma_alloc_coherent() call back 4 columns in order
>      to avoid making the line exceeding 80 characters length.
> 
>   drivers/staging/comedi/drivers/cb_pcidas64.c | 9 ++++-----
>   1 file changed, 4 insertions(+), 5 deletions(-)

Looks good. Thanks!

Reviewed-by: Ian Abbott <abbotti@mev.co.uk>

-- 
-=( Ian Abbott @ MEV Ltd.    E-mail: <abbotti@mev.co.uk> )=-
-=(                          Web: http://www.mev.co.uk/  )=-

