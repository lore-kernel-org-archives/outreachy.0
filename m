X-GM-THRID: 6210026226543755264
X-Received: by 10.107.159.72 with SMTP id i69mr12023030ioe.23.1445933590535;
        Tue, 27 Oct 2015 01:13:10 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.79.193 with SMTP id l1ls1152720igx.1.canary; Tue, 27 Oct
 2015 01:13:10 -0700 (PDT)
X-Received: by 10.66.110.111 with SMTP id hz15mr20216777pab.16.1445933590255;
        Tue, 27 Oct 2015 01:13:10 -0700 (PDT)
Return-Path: <amitoj1606@gmail.com>
Received: from mail-qg0-x22a.google.com (mail-qg0-x22a.google.com. [2607:f8b0:400d:c04::22a])
        by gmr-mx.google.com with ESMTPS id y206si2017273ywd.6.2015.10.27.01.13.10
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Tue, 27 Oct 2015 01:13:10 -0700 (PDT)
Received-SPF: pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) client-ip=2607:f8b0:400d:c04::22a;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amitoj1606@gmail.com designates 2607:f8b0:400d:c04::22a as permitted sender) smtp.mailfrom=amitoj1606@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by qgem9 with SMTP id m9so139988852qge.1
        for <outreachy-kernel@googlegroups.com>; Tue, 27 Oct 2015 01:13:10 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=mime-version:in-reply-to:references:date:message-id:subject:from:to
         :cc:content-type;
        bh=XpGxanpi/WMaTtpt9aP0TbKAwS8heYptQ79bvWjQS5c=;
        b=SyaGcTrD25jHWAFgyJAHOzcHOLCeL1U0W50LDf1lZ/6FgojAGEkWZjk1VjtpNekbU+
         dvxQKpkJxux9C3R2JLpYS6nZ7kZJxwx5/OnwfcyyV4vACOkPinAF41iLhvJKlXoOix4Q
         hoKApr2FOBkHOZhI198AEyeDqXPQZ2Qrs3OKEbuZj4xqZ8VSLJVDIgki7RfB782rFTiO
         X2Q/lvL2xwrZUhZKX8FdvqnqsQ8blL6mw8Fa32hJzqUvN3f4VCrooZYiuIPjlTiQqA9X
         GXNGAY0Yd9XEvaniATYEk6FHZvMibHEyKl2PwggwGD1AtVRhtVkllCPOpm73CVkH8CCP
         IxdA==
MIME-Version: 1.0
X-Received: by 10.140.34.75 with SMTP id k69mr41350862qgk.64.1445933589966;
 Tue, 27 Oct 2015 01:13:09 -0700 (PDT)
Received: by 10.140.21.38 with HTTP; Tue, 27 Oct 2015 01:13:09 -0700 (PDT)
In-Reply-To: <20151027080612.GA11046@kroah.com>
References: <20151026183318.GA25808@amitoj-Inspiron-3542>
	<20151027080612.GA11046@kroah.com>
Date: Tue, 27 Oct 2015 13:43:09 +0530
Message-ID: <CA+5yK5HBVsLQn8xMBKq5DiChTc=Q81pxUVqhpszNVkQSPL6Q9g@mail.gmail.com>
Subject: Re: [Outreachy kernel] [PATCH] staging: sm750fb: Remove unneeded function
From: Amitoj Kaur Chawla <amitoj1606@gmail.com>
To: Greg KH <gregkh@linuxfoundation.org>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>
Content-Type: text/plain; charset=UTF-8

On Tue, Oct 27, 2015 at 1:36 PM, Greg KH <gregkh@linuxfoundation.org> wrote:
> On Tue, Oct 27, 2015 at 12:03:18AM +0530, Amitoj Kaur Chawla wrote:
>> The function hw_sm750_getVMSize() had code that was replaceable by a single
>> line. It was being called only once so replaced that call with the
>> single line code and removed the extraneous function.
>>
>> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
>> ---
>>  drivers/staging/sm750fb/sm750_hw.c | 9 +--------
>>  1 file changed, 1 insertion(+), 8 deletions(-)
>
> This no longer applies due to patches that someone else sent right
> before you did, sorry :(
>
> greg k-h


No issues.

-- 
Amitoj

