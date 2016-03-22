X-GM-THRID: 6264490857152380928
X-Gmail-Labels: Topic type: DISCUSSION
X-Received: by 10.194.24.233 with SMTP id x9mr4129950wjf.0.1458618926206;
        Mon, 21 Mar 2016 20:55:26 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.28.3.9 with SMTP id 9ls766278wmd.39.gmail; Mon, 21 Mar 2016
 20:55:25 -0700 (PDT)
X-Received: by 10.194.216.3 with SMTP id om3mr4110474wjc.7.1458618925633;
        Mon, 21 Mar 2016 20:55:25 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from mail-lb0-x243.google.com (mail-lb0-x243.google.com. [2a00:1450:4010:c04::243])
        by gmr-mx.google.com with ESMTPS id ph10si932894lbb.0.2016.03.21.20.55.25
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Mar 2016 20:55:25 -0700 (PDT)
Received-SPF: pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) client-ip=2a00:1450:4010:c04::243;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of sveta.orlik.code@gmail.com designates 2a00:1450:4010:c04::243 as permitted sender) smtp.mailfrom=sveta.orlik.code@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-lb0-x243.google.com with SMTP id wn5so12880004lbb.2
        for <outreachy-kernel@googlegroups.com>; Mon, 21 Mar 2016 20:55:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=subject:to:references:cc:from:message-id:date:user-agent
         :mime-version:in-reply-to:content-transfer-encoding;
        bh=xIKsO4z+A43hGxaSkRrNSGJpdpdNhflGXSiphLJzUNU=;
        b=Gp3VaDtVqP8iNp2D/RXaqRquMRr5DD56uce2+Qph7YCdSy+Fd8qLkoe31/AwcGaNaP
         FGXspH8ZqP4qhhF3SzZONjennGwYvmN9y7IuHbwDvY5eEht8LmFGmkDulOQchKyBfU6j
         ydtSafunjNkYxWSCcQIcNqO8N9GW5G4UBvHU6yMostN7JB+L4Dq6orMKLXoSTH6aem4j
         kjwI7E78W0ny5CeTjh+eUNlprm4P6S2712sE3jFDXlo8Np9YG7fAEOYdXqa4BuDUwCuV
         jIjayvaTpE/b8P6JGp8jxjUSPMyy1Vl+6njuVppuvntdgM4dZ6Z5pmTnEAunqJRfgYK8
         Wcbg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:subject:to:references:cc:from:message-id:date
         :user-agent:mime-version:in-reply-to:content-transfer-encoding;
        bh=xIKsO4z+A43hGxaSkRrNSGJpdpdNhflGXSiphLJzUNU=;
        b=LBlrccXD44xfejpyZhFHhkZHrkne8otqXyhbID/bYicv5g7Jy387fCD7jnKQQMNt3q
         NxsIXL5WgMBzB5UhonMzQTyQ8tJzCf7LWvAFKBQMTiSl1jATiDw5PmpJiflT+KIy8xjp
         HaM81cG7Ip+8vftbvYkx1asOJNhjAgvYE6E31Ci9t88MjLzpbELVPDQEPG9smnH2rU4l
         3WkoSZAZVR9JmIPaUTPfnuiF1JNVrVv07T5XQFXQQaAbRc001GAk1Sz9BYyO+nLye+RI
         bErCACkCh5ViyTkb2wIah8HHNFYdsEDSCYLFXriY+2lka6JZHARkD+Nr3dIasQ8FZVUA
         ktCQ==
X-Gm-Message-State: AD7BkJKLeUbz7Ti7zxt+BLHW7KTri6TasVXOrxzWNZUmCv2ejyXY85LeE4WJwp5KHb9Xrg==
X-Received: by 10.25.137.215 with SMTP id l206mr9805505lfd.140.1458618925460;
        Mon, 21 Mar 2016 20:55:25 -0700 (PDT)
Return-Path: <sveta.orlik.code@gmail.com>
Received: from [192.168.0.15] (broadband-46-242-29-57.nationalcablenetworks.ru. [46.242.29.57])
        by smtp.gmail.com with ESMTPSA id h4sm4681149lbs.37.2016.03.21.20.55.24
        (version=TLSv1/SSLv3 cipher=OTHER);
        Mon, 21 Mar 2016 20:55:24 -0700 (PDT)
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: ioo: ad9832: Replace
 'unsigned' with 'unsigned int'
To: Greg KH <gregkh@linuxfoundation.org>
References: <20160321153351.GA16781@pal-comp>
 <20160322015243.GB27510@kroah.com>
Cc: outreachy-kernel@googlegroups.com
From: Svetlana Orlik <sveta.orlik.code@gmail.com>
Message-ID: <56F0C22A.1030807@gmail.com>
Date: Tue, 22 Mar 2016 06:55:22 +0300
User-Agent: Mozilla/5.0 (X11; Linux i686; rv:38.0) Gecko/20100101
 Thunderbird/38.6.0
MIME-Version: 1.0
In-Reply-To: <20160322015243.GB27510@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 22.03.2016 04:52, Greg KH wrote:
> On Mon, Mar 21, 2016 at 06:33:51PM +0300, Svetlana Orlik wrote:
>> Replace 'unsigned' with 'unsigned int' to avoid checkpatch.pl warning.
>>
>> Signed-off-by: Svetlana Orlik <sveta.orlik.code@gmail.com>
>> ---
>> Changes in v2:
>>   Send patch using mutt.
>>   v1 patch was sent using Google Groups web interface.
>>   Not sure it works.
> 
> Not sure what works?  The subject line still is incorrect.
> 
> Did you test-build the patch?
> 
> thanks,
> 
> greg k-h
>

Hi,Greg!

To be clear, I was 'not sure' the Google Groups web interface will do the right job, when I was using it to post the patch (v1).  And it didn't.

Yes, I did test-build the patch with 'make drivers/staging/iio/frequency/*'.
Will correct the subject right away.

Sveta.

