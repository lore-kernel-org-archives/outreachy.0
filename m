X-GM-THRID: 8728898174976
X-Received: by 10.112.98.38 with SMTP id ef6mr10037127lbb.3.1426673761258;
        Wed, 18 Mar 2015 03:16:01 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.152.45.6 with SMTP id i6ls139303lam.10.gmail; Wed, 18 Mar 2015
 03:16:00 -0700 (PDT)
X-Received: by 10.152.6.232 with SMTP id e8mr10898888laa.2.1426673760754;
        Wed, 18 Mar 2015 03:16:00 -0700 (PDT)
Return-Path: <vthakkar1994@gmail.com>
Received: from mail-wi0-x230.google.com (mail-wi0-x230.google.com. [2a00:1450:400c:c05::230])
        by gmr-mx.google.com with ESMTPS id bz6si94522wib.3.2015.03.18.03.16.00
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 18 Mar 2015 03:16:00 -0700 (PDT)
Received-SPF: pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) client-ip=2a00:1450:400c:c05::230;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of vthakkar1994@gmail.com designates 2a00:1450:400c:c05::230 as permitted sender) smtp.mail=vthakkar1994@gmail.com;
       dkim=pass header.i=@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-wi0-x230.google.com with SMTP id w10so35010905wix.0
        for <outreachy-kernel@googlegroups.com>; Wed, 18 Mar 2015 03:16:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=kiuDFzm8qRm1VoWSXlMEcYF7f8I219fHrEqV4i0b1xY=;
        b=RjOIjN/ODNrzxJiRnoUayEmDgqGpKC3429LKgKRwGkhLsKSiTdNHTgYbzfzRsqKNCo
         Xw9/Ch4VsX2E5TghNJPctnPidUCPfwd5VisuWBoaVBCp53pGczQpYI7jNWR25wYFnC/O
         xSCoMAiAydb3zWCnSHyhR/JlK4EjOA/cuKvwnm+zgHj/zvvQfKO/iHfrRt1i6NUr5Kzg
         V29NMWuVMmx49327JOlWbZFTKNtM9J+BiUM4vQizE9WEpkxvTleAmNIWWMa2NN/nJIPH
         DMbsFDBEXksgYeFX83EhYhK+Oe7Wge+I1nt7zilo/Vq6MD8kEoDLvTKBC6cFfkQbvXVa
         5HVA==
MIME-Version: 1.0
X-Received: by 10.180.19.9 with SMTP id a9mr5376692wie.85.1426673760619; Wed,
 18 Mar 2015 03:16:00 -0700 (PDT)
Received: by 10.194.13.168 with HTTP; Wed, 18 Mar 2015 03:16:00 -0700 (PDT)
In-Reply-To: <20150318100250.GA20143@kroah.com>
References: <cover.1426601962.git.vthakkar1994@gmail.com>
	<767a3b6bf7c8776e57c6a11caa1d30bcedb265be.1426601963.git.vthakkar1994@gmail.com>
	<20150318100250.GA20143@kroah.com>
Date: Wed, 18 Mar 2015 15:46:00 +0530
Message-ID: <CAK-LDbJRbzxFR7yTsuQLpNiP1_Y=XnXSFtHtgdjwvc_VVo-GtQ@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH v3 2/2] Staging: speakup: Use module_spk_synth
From: Vaishali Thakkar <vthakkar1994@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel@googlegroups.com
Content-Type: text/plain; charset=UTF-8

On Wed, Mar 18, 2015 at 3:32 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Mar 17, 2015 at 07:57:39PM +0530, Vaishali Thakkar wrote:
>> Macro module_spk_synth can be used for speakup drivers
>> whose init and exit paths does only module registrations.
>> So, here remove some boilerplate code by using
>> module_spk_synth.
>>
>> Signed-off-by: Vaishali Thakkar <vthakkar1994@gmail.com>
>> ---
>> Changes since v1:
>>         - No change but as patch is in series with
>>           another patch, send new version.
>> Changes since v2:
>>       - No change but as patch is in series with
>>           another patch, send new version.
>
> You didn't test build these changes :(
>
> PLEASE always test your patches before sending them out, this series
> broke the build horribly, and should have been very obvious that it
> should have not been sent out.
>

Oh ...no. I am really very sorry for that. Actually it was working fine.
But as it went through many versions, while sending last version by
mistake I exchanged change of 2 files. I should have checked it before
sending new version.

Sorry :(

> greg k-h



-- 
Vaishali

