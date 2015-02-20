X-GM-THRID: 1055341412352
X-Received: by 10.68.104.5 with SMTP id ga5mr8929443pbb.2.1424433042284;
        Fri, 20 Feb 2015 03:50:42 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.89.104 with SMTP id u95ls1165388qgd.27.gmail; Fri, 20 Feb
 2015 03:50:42 -0800 (PST)
X-Received: by 10.236.29.133 with SMTP id i5mr8896771yha.3.1424433042060;
        Fri, 20 Feb 2015 03:50:42 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qg0-x231.google.com (mail-qg0-x231.google.com. [2607:f8b0:400d:c04::231])
        by gmr-mx.google.com with ESMTPS id kt5si5526182qcb.3.2015.02.20.03.50.42
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:50:42 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) client-ip=2607:f8b0:400d:c04::231;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c04::231 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qg0-x231.google.com with SMTP id q107so13462072qgd.8
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 03:50:42 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=jC0/0DB3k75HAfzxztFwYPDzXtQ1ltkMhWsYYVLnxnw=;
        b=rEqh+8bFRzye0N7JEkQX0DqHe70n5bXc1ePw+aYLVpEuomYGpldfGLSot3wwhoGZcJ
         UYl1oXug2BU2O+NW1sKzzoVK0gu2gh5Elmss/dEzpmviT8K5mnfaEx3tGb2IMlG2yJQ1
         VGW0SOThQJpFepI+PzPTVUPC59v43M4TI8acHpBVzwDlizeYrfFRj5Bpp+5itTIfn92J
         DQHmkzdblGD3LZpzvg38/4MNptjVt1doTJpvi8IH5fmAVsSX8Z39nWp+xBqL2rqeCanH
         aCb/Hzq67SquGIuO4iwlp6vHTMamMNS1TYO4FjiQn50svAB75mGy8K3f8EIUZdyyECqs
         47hA==
X-Received: by 10.229.4.4 with SMTP id 4mr23636628qcp.8.1424433041952;
        Fri, 20 Feb 2015 03:50:41 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [192.168.99.32] (pool-72-68-159-94.nycmny.fios.verizon.net. [72.68.159.94])
        by mx.google.com with ESMTPSA id d20sm11652201qhc.41.2015.02.20.03.50.41
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 03:50:41 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E71F90.2070801@gmail.com>
Date: Fri, 20 Feb 2015 06:50:40 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?S3NlbmlqYSBTdGFub2pldmnEhw==?=
 <ksenija.stanojevic@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Reposition of return
 statements
References: <1424385500-22022-1-git-send-email-ksenija.stanojevic@gmail.com>	<54E71C73.7090007@gmail.com> <CAL7P5jL4WW9Hjj7PHnLT22Oy0RFd06gPpHW1gemp_ny5ZkZ8dA@mail.gmail.com>
In-Reply-To: <CAL7P5jL4WW9Hjj7PHnLT22Oy0RFd06gPpHW1gemp_ny5ZkZ8dA@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/20/15 06:48, Ksenija Stanojević wrote:
> Yes, I agree.
> 
> Also these two functions are different:
> 
> reg = phy_FwRFSerialRead(dev, eRFPath, reg_addr);
> 
> reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);

That is correct, but the two lines:
		bitshift = ....
		ret = (reg & bitmask) >> bitshift;
are identical.

Cheers,
Jes



> 
> 
> On Fri, Feb 20, 2015 at 12:37 PM, Jes Sorensen <jes.sorensen@gmail.com>
> wrote:
> 
>> On 02/19/15 17:38, Ksenija Stanojevic wrote:
>>> This patch fixes the checkpatch.pl warning:
>>> WARNING: "else is not generally useful after a break or return"
>>> by placing return reg after if-else branch.
>>>
>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>> ---
>>>  drivers/staging/rtl8192u/r819xU_phy.c | 3 +--
>>>  1 file changed, 1 insertion(+), 2 deletions(-)
>>>
>>> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c
>> b/drivers/staging/rtl8192u/r819xU_phy.c
>>> index d006602..f343735 100644
>>> --- a/drivers/staging/rtl8192u/r819xU_phy.c
>>> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
>>> @@ -355,13 +355,12 @@ u32 rtl8192_phy_QueryRFReg(struct net_device *dev,
>> RF90_RADIO_PATH_E eRFPath,
>>>               bitshift =  rtl8192_CalculateBitShift(bitmask);
>>>               reg = (reg & bitmask) >> bitshift;
>>>               udelay(200);
>>> -             return reg;
>>>       } else {
>>>               reg = rtl8192_phy_RFSerialRead(dev, eRFPath, reg_addr);
>>>               bitshift =  rtl8192_CalculateBitShift(bitmask);
>>>               reg = (reg & bitmask) >> bitshift;
>>> -             return reg;
>>>       }
>>> +     return reg;
>>>  }
>>>
>>>
>> /******************************************************************************
>>>
>>
>> In this case the automated commit message is actually a little unclear,
>> at least to me. Explaining that you are simplifying the code by not
>> having two identical paths would be better.
>>
>> You could take this patch further as most of the code is identical
>> except for the udelay() in the first case.
>>
>> Cheers,
>> Jes
>>
>>
> 


