X-GM-THRID: 1013903785984
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,ce0dcd79b5109b6a
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.43.78.198 with SMTP id zn6mr10197999icb.12.1424442605285;
        Fri, 20 Feb 2015 06:30:05 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.182.101.164 with SMTP id fh4ls35947obb.36.gmail; Fri, 20 Feb
 2015 06:30:04 -0800 (PST)
X-Received: by 10.182.126.196 with SMTP id na4mr10110407obb.18.1424442604869;
        Fri, 20 Feb 2015 06:30:04 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from mail-qc0-x234.google.com (mail-qc0-x234.google.com. [2607:f8b0:400d:c01::234])
        by gmr-mx.google.com with ESMTPS id ba9si5211594qcb.0.2015.02.20.06.30.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 06:30:04 -0800 (PST)
Received-SPF: pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::234 as permitted sender) client-ip=2607:f8b0:400d:c01::234;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of jes.sorensen@gmail.com designates 2607:f8b0:400d:c01::234 as permitted sender) smtp.mail=jes.sorensen@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-qc0-x234.google.com with SMTP id p6so864616qcv.9
        for <outreachy-kernel@googlegroups.com>; Fri, 20 Feb 2015 06:30:04 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=from:message-id:date:user-agent:mime-version:to:cc:subject
         :references:in-reply-to:content-type:content-transfer-encoding;
        bh=1sWPAkvuZi1GGxe1jg/SVOhP3Z6MOUBcmMgMaXojDaM=;
        b=uj3AE/TWO9nGjaSauhyUNhK+jEMXGttKHS1EfS2j0/yVPidpAjEwgoDqVw3N84ujYZ
         CbD8NET3/y5gvNQn/xu82BtmrBp2ju4yOAyszEbfgSVBbO/inaKMNETY+bov/rNqZ0Eo
         oXHUT4lMnpZBQgCOIgwHN0MhHqf68WK91vYAMnLhYa4NmGA+QAULgrt848kSpzceDQby
         a7pOaw7UFF6P7XaXGFH1lxgNZldfDNYBfcgpGAqm4JbKqB4fQmursQbPu8/J72fEYB3C
         /4q60iqvuAEiEVkfcUWVfuloF/hUj7g6sQDJHT58FWm+Suo3XJyczqU2p5idtauCjoWa
         fhtg==
X-Received: by 10.140.44.134 with SMTP id g6mr22639497qga.85.1424442604748;
        Fri, 20 Feb 2015 06:30:04 -0800 (PST)
Return-Path: <jes.sorensen@gmail.com>
Received: from [10.15.49.233] (nat-pool-rdu-t.redhat.com. [66.187.233.202])
        by mx.google.com with ESMTPSA id p142sm11895525qha.20.2015.02.20.06.30.03
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 20 Feb 2015 06:30:03 -0800 (PST)
From: Jes Sorensen <jes.sorensen@gmail.com>
X-Google-Original-From: Jes Sorensen <Jes.Sorensen@gmail.com>
Message-ID: <54E744EA.6050305@gmail.com>
Date: Fri, 20 Feb 2015 09:30:02 -0500
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Thunderbird/31.4.0
MIME-Version: 1.0
To: =?UTF-8?B?S3NlbmlqYSBTdGFub2pldmnEhw==?=
 <ksenija.stanojevic@gmail.com>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: rtl8192u: Remove space beforetab
References: <1424383520-21750-1-git-send-email-ksenija.stanojevic@gmail.com>	<1424432471809.1839906750@boxbe> <CAL7P5jK_ckFa2s0TResHqCEZf4hyqBRRAHv7XdAyWm11iLNQzw@mail.gmail.com>
In-Reply-To: <CAL7P5jK_ckFa2s0TResHqCEZf4hyqBRRAHv7XdAyWm11iLNQzw@mail.gmail.com>
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 8bit

On 02/20/15 07:18, Ksenija Stanojević wrote:
> Thank you for your feedback. I'll try to keep that in mind next time.
> Should i make v2 out of this patch?

I think in this case it isn't necessary.

Jes


> On Fri, Feb 20, 2015 at 12:32 PM, Jes Sorensen <jes.sorensen@gmail.com>
> wrote:
> 
>>  [image: Boxbe] <https://www.boxbe.com/overview> Jes Sorensen (
>> jes.sorensen@gmail.com) added themselves to your Guest List
>> <https://www.boxbe.com/approved-list?tc_serial=20496783221&tc_rand=1493252507&utm_source=stf&utm_medium=email&utm_campaign=ANNO_TEST&utm_content=001&token=i2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZyz5Dy5R9loS9DPc3JQf0&key=ZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D>
>> | Remove them
>> <https://www.boxbe.com/anno?action=remove&tc_serial=20496783221&tc_rand=1493252507&utm_source=stf&utm_medium=email&utm_campaign=ANNO_TEST&utm_content=001&token=i2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZyz5Dy5R9loS9DPc3JQf0&key=ZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D>
>> | Block them
>> <https://www.boxbe.com/anno?action=add&disp=b&tc_serial=20496783221&tc_rand=1493252507&utm_source=stf&utm_medium=email&utm_campaign=ANNO_TEST&utm_content=001&token=i2atJwHe4epXXgrOAoB9CRCp5nADSeAaRmjeHYkSuo%2FZyz5Dy5R9loS9DPc3JQf0&key=ZcbJ7iKYyZvdE1XUDLdCP3vOsOAhAqbogORJWFDMtAk%3D>
>>
>> On 02/19/15 17:05, Ksenija Stanojevic wrote:
>>> This patch fixes the checkpatch.pl warning:
>>> WARNING: "please, no space before tabs"
>>>
>>> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
>>> ---
>>>  drivers/staging/rtl8192u/r819xU_phy.c | 8 ++++----
>>>  1 file changed, 4 insertions(+), 4 deletions(-)
>>
>> Again here your patch looks fine, the only thing needed to make it top
>> of the line is a more personalized commit message.
>>
>> Cheers,
>> Jes
>>
>>> diff --git a/drivers/staging/rtl8192u/r819xU_phy.c
>> b/drivers/staging/rtl8192u/r819xU_phy.c
>>> index 0589602..dbd3321 100644
>>> --- a/drivers/staging/rtl8192u/r819xU_phy.c
>>> +++ b/drivers/staging/rtl8192u/r819xU_phy.c
>>> @@ -106,10 +106,10 @@ void rtl8192_setBBreg(struct net_device *dev, u32
>> reg_addr, u32 bitmask,
>>>
>> /******************************************************************************
>>>   * function:  This function reads specific bits from BB register
>>>   * input:     net_device     *dev
>>> - *            u32            reg_addr   //target addr to be readback
>>> - *            u32            bitmask    //taget bit pos to be readback
>>> + *            u32            reg_addr   //target addr to be readback
>>> + *            u32            bitmask    //taget bit pos to be readback
>>>   * output:    none
>>> - * return:    u32            data       //the readback register value
>>> + * return:    u32            data       //the readback register value
>>>   * notice:
>>>
>>  ******************************************************************************/
>>>  u32 rtl8192_QueryBBReg(struct net_device *dev, u32 reg_addr, u32
>> bitmask)
>>> @@ -478,7 +478,7 @@ static void phy_FwRFSerialWrite(struct net_device
>> *dev,
>>>
>> /******************************************************************************
>>>   * function:  This function reads BB parameters from header file we
>> generate,
>>>   *            and do register read/write
>>> - * input:     net_device     *dev
>>> + * input:     net_device     *dev
>>>   * output:    none
>>>   * return:    none
>>>   * notice:    BB parameters may change all the time, so please make
>>>
>>
>>
>>
> 


