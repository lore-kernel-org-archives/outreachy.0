X-GM-THRID: 4711413448704
X-Received: by 10.43.65.211 with SMTP id xn19mr28621491icb.0.1425317415560;
        Mon, 02 Mar 2015 09:30:15 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.129.48 with SMTP id nt16ls719948obb.9.gmail; Mon, 02 Mar
 2015 09:30:15 -0800 (PST)
X-Received: by 10.182.66.40 with SMTP id c8mr26634354obt.36.1425317415342;
        Mon, 02 Mar 2015 09:30:15 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x236.google.com (mail-qg0-x236.google.com. [2607:f8b0:400d:c04::236])
        by gmr-mx.google.com with ESMTPS id ba9si1836753qcb.0.2015.03.02.09.30.15
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:30:15 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) client-ip=2607:f8b0:400d:c04::236;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::236 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x236.google.com with SMTP id h3so12118936qgf.13
        for <outreachy-kernel@googlegroups.com>; Mon, 02 Mar 2015 09:30:15 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=An0oQitazP0V5Dr9CBogwx3c62AW68kyO7XhvlVD8aY=;
        b=Q7fai0SgxQ16I7hEYiglzXviMtQ361nPJeCzPQBWe1I0JrwZEYWYXOM/V0APF3Eu+8
         MAjmxJUJQXwhdh/IsnsxHC9/JKVz1S9b3vrkeyUE9rPHBeflUYzntPXpDilQnb50phtn
         z6cKXB360RKU7zmvazcsiu/mzHoX5HdFpx1qcg39YvQJ//xOmyCIq2w/pIK8RXA3qllP
         39qydmka3DK9loc/klL5bgwDiEwF+FYUgy+7qPDGueL7POZrO6YJizW3i/z+g+JscXTO
         Qvn0dLxjT+bk5SWC2TSdwyuv7av+g22vfO6qdyirI6mJWKhCAMQ3uWezVNJvzEvTHrYf
         YyRQ==
X-Received: by 10.140.129.65 with SMTP id 62mr53480762qhb.11.1425317415190;
        Mon, 02 Mar 2015 09:30:15 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id 184sm8748616qhc.39.2015.03.02.09.30.14
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 02 Mar 2015 09:30:14 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54F49E25.8040205@gmail.com>
Date: Mon, 02 Mar 2015 12:30:13 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>, 
 Vatika Harlalka <vatikaharlalka@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8188eu: Refine if condition
References: <20150227175849.GA20418@gmail.com> <20150302002103.GA17196@kroah.com>
In-Reply-To: <20150302002103.GA17196@kroah.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On 03/01/15 19:21, Greg KH wrote:
> On Fri, Feb 27, 2015 at 11:28:49PM +0530, Vatika Harlalka wrote:
>> Variable bound takes maximum value 8 so the if condition
>> for odd i is made more compact.
>>
>> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
>> ---
>>  drivers/staging/rtl8188eu/hal/phy.c | 2 +-
>>  1 file changed, 1 insertion(+), 1 deletion(-)
>>
>> diff --git a/drivers/staging/rtl8188eu/hal/phy.c b/drivers/staging/rtl8188eu/hal/phy.c
>> index 6af72a4..3d0e447 100644
>> --- a/drivers/staging/rtl8188eu/hal/phy.c
>> +++ b/drivers/staging/rtl8188eu/hal/phy.c
>> @@ -1038,7 +1038,7 @@ static bool simularity_compare(struct adapter *adapt, s32 resulta[][8],
>>  		bound = 4;
>>  
>>  	for (i = 0; i < bound; i++) {
>> -		if ((i == 1) || (i == 3) || (i == 5) || (i == 7)) {
>> +		if (i%2 == 1) {
> 
> I find this harder to read now, sorry, '%' is not used often in C code
> for a reason :)

In this case, it is probably more common in the kernel to use

	if ((i & 1) == 1)

in this case.

Jes


