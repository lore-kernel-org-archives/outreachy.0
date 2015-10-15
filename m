X-GM-THRID: 6205449459620380672
X-Received: by 10.194.240.230 with SMTP id wd6mr1728930wjc.0.1444892946001;
        Thu, 15 Oct 2015 00:09:06 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.25.79.85 with SMTP id d82ls105787lfb.47.gmail; Thu, 15 Oct
 2015 00:09:05 -0700 (PDT)
X-Received: by 10.112.55.69 with SMTP id q5mr1739987lbp.24.1444892945438;
        Thu, 15 Oct 2015 00:09:05 -0700 (PDT)
Return-Path: <shivanib134@gmail.com>
Received: from mail-wi0-x22e.google.com (mail-wi0-x22e.google.com. [2a00:1450:400c:c05::22e])
        by gmr-mx.google.com with ESMTPS id h2si1038296wiy.0.2015.10.15.00.09.05
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Oct 2015 00:09:05 -0700 (PDT)
Received-SPF: pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) client-ip=2a00:1450:400c:c05::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shivanib134@gmail.com designates 2a00:1450:400c:c05::22e as permitted sender) smtp.mailfrom=shivanib134@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-wi0-x22e.google.com with SMTP id gb1so257591044wic.1
        for <outreachy-kernel@googlegroups.com>; Thu, 15 Oct 2015 00:09:05 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=FSaOFd7tERQEnJ1a7ZUfiQ4G1lIAZdmOplJlj961QaM=;
        b=nxNsUYLbfbOtj/1hIjOl+ezZLeNVPEchGF9aCdAzmlyB46bEGI9iUc5J6XCzZ8r7wP
         0dB/CrBh7Dte50z9Aj+4WLNvRFYHG2NIV8FJ+S4Zq38GipLhkVgQ6F3FI9S9q0o5U14l
         ZLBicyTfUNyBYHIPRAsYnLe7Qwru9Pvqk6qThepidQ7s0QiQQqjkgVXkI6hGbK6mqxq4
         Hm4uE/2FsYPQUo5oi6L/yGnaJn+BhD3NGLTxUa0h+yuUePa2+oEzS/xUbgzVHdZFjkgG
         2dR57aQ+xaZjglBg2EwS1Zmq/qaYWgaM3JJlb3/spgDBhq9i6tO99kAgBy9MXGtRSJxY
         LR3g==
MIME-Version: 1.0
X-Received: by 10.180.206.52 with SMTP id ll20mr8397579wic.48.1444892945330;
 Thu, 15 Oct 2015 00:09:05 -0700 (PDT)
Received: by 10.27.186.66 with HTTP; Thu, 15 Oct 2015 00:09:05 -0700 (PDT)
In-Reply-To: <20151015064749.GB3134@sudip-pc>
References: <20151014103256.GA4491@ubuntu>
	<20151015064749.GB3134@sudip-pc>
Date: Thu, 15 Oct 2015 12:39:05 +0530
Message-ID: <CAKHNQQGOs9OPBZi6Eoy3t7R1ybZf5kmnTUJx9JRxGTmhAhmCjg@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v2] Staging: rtl8723au: rtw_xmit:
 Remove unnecessary tests
From: Shivani Bhardwaj <shivanib134@gmail.com>
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Thu, Oct 15, 2015 at 12:17 PM, Sudip Mukherjee
<sudipm.mukherjee@gmail.com> wrote:
> On Wed, Oct 14, 2015 at 04:02:56PM +0530, Shivani Bhardwaj wrote:
>> The variables which are preceded by NULL tests on them should not be
>> checked again.
>> Semantic patch used:
>> @@ expression E;
>> statement S1, S2, S3; @@
>> if(E==NULL) {... return ...;}
>> else S1
>> - if(E==NULL)
>>   S2
>> - else S3
>>
>> Signed-off-by: Shivani Bhardwaj <shivanib134@gmail.com>
>> ---
>> Changes in v2:
>>       -Correct the semantic patch and make commit message better.
>>
>>  drivers/staging/rtl8723au/core/rtw_xmit.c | 9 ---------
>>  1 file changed, 9 deletions(-)
>>
>> diff --git a/drivers/staging/rtl8723au/core/rtw_xmit.c b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> index a4b6bb6..0ea521b 100644
>> --- a/drivers/staging/rtl8723au/core/rtw_xmit.c
>> +++ b/drivers/staging/rtl8723au/core/rtw_xmit.c
>> @@ -667,7 +667,6 @@ static int xmitframe_addmic(struct rtw_adapter *padapter,
>>
>>       if (pattrib->encrypt == WLAN_CIPHER_SUITE_TKIP) {
>>               /* encode mic code */
>> -             if (stainfo) {
>>                       u8 null_key[16]={0x0, 0x0, 0x0, 0x0,
>>                                        0x0, 0x0, 0x0, 0x0,
>>                                        0x0, 0x0, 0x0, 0x0,
>
> Now this indention is looking wrong.
>
> regards
> sudip
Is it also supposed to be a part of the same patch or a series should be made?

