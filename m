X-GM-THRID: 6199796620596346880
X-Received: by 10.107.131.194 with SMTP id n63mr21594031ioi.8.1443505740687;
        Mon, 28 Sep 2015 22:49:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.23.244 with SMTP id 107ls4312677qgp.24.gmail; Mon, 28 Sep
 2015 22:48:59 -0700 (PDT)
X-Received: by 10.129.159.71 with SMTP id w68mr3144920ywg.28.1443505739295;
        Mon, 28 Sep 2015 22:48:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22c.google.com (mail-pa0-x22c.google.com. [2607:f8b0:400e:c03::22c])
        by gmr-mx.google.com with ESMTPS id uv4si3346057pac.0.2015.09.28.22.48.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 28 Sep 2015 22:48:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) client-ip=2607:f8b0:400e:c03::22c;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22c as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22c.google.com with SMTP id ex6so196105012pac.0
        for <outreachy-kernel@googlegroups.com>; Mon, 28 Sep 2015 22:48:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=5ucm7F+oHd3jYlsNbNDwwmDHwYGyFH7MghzsvMZ0j5Y=;
        b=clXOqgWchVUe7B8vhW5rAVwZtMKTvCJqNCTWgfrKX8jcnn9EcgOuTv8iBJaebHAXE2
         BG75lXcn/Y2A4OPl82orlTct7qoLi76/MrujFkUmXoNoZX5RKDVt1vwMjnweRK+0Ey12
         cF1MpHcgF62vbzck1DSq8mflBKluaCWDqlSlRT3pscsBAkupd0OILhdtgMqMOkY5lzKF
         cmZkt4dORNLWK39ih8URTPkCDMuvq+8r909mYVKu1nCGZK8MKwuLjaGNIPAxF/s+g7xz
         z42oQbxOf0UcNrEO/vo2VwHdQc15BmPvqfzl9yT1pKfvGbolLulk5YuBSA9NT8riwCwH
         R3cQ==
X-Received: by 10.68.68.233 with SMTP id z9mr31126059pbt.132.1443505739134;
        Mon, 28 Sep 2015 22:48:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.30.0.216] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id rb8sm22900868pbb.63.2015.09.28.22.48.56
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Mon, 28 Sep 2015 22:48:58 -0700 (PDT)
Date: Tue, 29 Sep 2015 11:18:49 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Sudip Mukherjee <sudipm.mukherjee@gmail.com>
cc: Shraddha Barke <shraddha.6596@gmail.com>, 
    outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/2] Staging: gdm724x: gdm_usb.c: Use
 module_usb_driver
In-Reply-To: <20150929051951.GA5935@sudip-pc>
Message-ID: <alpine.DEB.2.11.1509291100250.10963@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1443502609-9918-1-git-send-email-shraddha.6596@gmail.com> <20150929051951.GA5935@sudip-pc>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed
X-Cyberoam-smtpxy-version: 1.0.6.3
X-Cyberoam-AV-Policy: default
X-CTCH-PVer:  0000001
X-CTCH-Spam:  Unknown
X-CTCH-VOD:  Unknown
X-CTCH-Flags:  0
X-CTCH-RefID:  str=0001.0A150201.560A2649.03F8,ss=1,re=0.000,recu=0.000,reip=0.000,cl=1,cld=1,fgs=0
X-CTCH-Score:  0.000
X-CTCH-ScoreCust:  0.000
X-CTCH-Rules:  



On Tue, 29 Sep 2015, Sudip Mukherjee wrote:

> On Tue, Sep 29, 2015 at 10:26:48AM +0530, Shraddha Barke wrote:
>> Macro module_usb_driver is used for drivers whose init
>> and exit paths does only register and unregister.Remove
>> boilerplate code by using module_usb_driver.
>>
>> Problem found using Coccinelle.
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>> ---
> But then how are you going to create the workqueues and
> gdm_lte_event_init()?
> module_usb_driver() is used in places where the init function is only
> having usb_register() and exit function is only having usb_deregister().
> If they are doing something special then you can not use
> module_usb_driver.

Yes. I realised the mistake I made. Since the patch applied to the tree 
correctly I made the mistake of thinking the workqueues don't have 
significance. I have sent a patch which uses module_i2c_driver. Please 
provide feedback on that.

Thanks,

Shraddha
>
> regards
> sudip
>

