X-GM-THRID: 6206628710107316224
X-Received: by 10.66.122.201 with SMTP id lu9mr17466899pab.8.1445101560477;
        Sat, 17 Oct 2015 10:06:00 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.38 with SMTP id a35ls955074qga.25.gmail; Sat, 17 Oct
 2015 10:05:59 -0700 (PDT)
X-Received: by 10.140.201.197 with SMTP id w188mr17718271qha.1.1445101559848;
        Sat, 17 Oct 2015 10:05:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from mail-pa0-x22e.google.com (mail-pa0-x22e.google.com. [2607:f8b0:400e:c03::22e])
        by gmr-mx.google.com with ESMTPS id vy6si2489589pbc.1.2015.10.17.10.05.59
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 10:05:59 -0700 (PDT)
Received-SPF: pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) client-ip=2607:f8b0:400e:c03::22e;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of shraddha.6596@gmail.com designates 2607:f8b0:400e:c03::22e as permitted sender) smtp.mailfrom=shraddha.6596@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Authentication-Results: mx.google.com;
       dkim=pass header.i=@gmail.com
Received: by mail-pa0-x22e.google.com with SMTP id fb7so6216193pad.2
        for <outreachy-kernel@googlegroups.com>; Sat, 17 Oct 2015 10:05:59 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:in-reply-to:message-id:references
         :user-agent:mime-version:content-type;
        bh=1PYrN+Pk3S2ZmN0jVgvhS34hPJysOHIJN807kUIkkKw=;
        b=R90GBrlqmfTJ93TAWuxDqUd3LO41TQTdf2uHgL96wlK2pPFic5Eyh5m9Wsje6X51oz
         r3XB0G5lGc1lA5BAUejtB02X9/LxAkhEBQRRGNmwtMuEk/eb8oPbzsPsPT3fOCp6cK4N
         ejNaZr8+j2lL481YnP7bbWva92+XQ+AaQh5qgjqZq/YoSg2AIbkeYbbCPTgcZ1Wk2rhm
         a4dgJsQXf8c46rUGCVe+I7ON7do634lyF3Xe36iT5i3oTfnvEXTKm7yj1bCdH9sRHZrP
         hQgXCxide2sHlAt5ol6Q+RcHYQsA/wh6oBs2TNx9GElk/QIsnkqY0V+wMyqwuFSy0rXY
         LccA==
X-Received: by 10.67.4.9 with SMTP id ca9mr23979925pad.90.1445101559652;
        Sat, 17 Oct 2015 10:05:59 -0700 (PDT)
Return-Path: <shraddha.6596@gmail.com>
Received: from [10.4.9.105] ([103.225.100.51])
        by smtp.gmail.com with ESMTPSA id pw7sm5283385pbc.4.2015.10.17.10.05.57
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 17 Oct 2015 10:05:59 -0700 (PDT)
Date: Sat, 17 Oct 2015 22:35:51 +0530 (IST)
From: Shraddha Barke <shraddha.6596@gmail.com>
X-X-Sender: root@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V
To: Greg KH <gregkh@linuxfoundation.org>
cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: fbtft: Remove unused
 macros
In-Reply-To: <20151017153605.GA3911@kroah.com>
Message-ID: <alpine.DEB.2.11.1510172234290.7687@shraddha-370R4E-370R4V-370R5E-3570RE-370R5V>
References: <1445093340-2881-1-git-send-email-shraddha.6596@gmail.com> <20151017153605.GA3911@kroah.com>
User-Agent: Alpine 2.11 (DEB 23 2013-08-11)
MIME-Version: 1.0
Content-Type: TEXT/PLAIN; charset=US-ASCII; format=flowed



On Sat, 17 Oct 2015, Greg KH wrote:

> On Sat, Oct 17, 2015 at 08:19:00PM +0530, Shraddha Barke wrote:
>> Remove the macros since they are defined but not used
>>
>> Signed-off-by: Shraddha Barke <shraddha.6596@gmail.com>
>
> Like I mentioned for other patches yesterday, this is not ok, please
> leave #defines that describe hardware present in the driver, even if
> they are not used, as they help people understand how the hardware works
> and might be needed in the future.

Yes I got it. Sorry about that.

Shraddha
>
> thanks,
>
> greg k-h
>

