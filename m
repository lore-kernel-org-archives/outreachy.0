X-GM-THRID: 6333893619528761344
X-Received: by 10.129.88.133 with SMTP id m127mr4510199ywb.68.1474784897329;
        Sat, 24 Sep 2016 23:28:17 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.56.29 with SMTP id i29ls11081741otc.12.gmail; Sat, 24 Sep
 2016 23:28:16 -0700 (PDT)
X-Received: by 10.200.50.48 with SMTP id x45mr3877392qta.77.1474784896923;
        Sat, 24 Sep 2016 23:28:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from mail-pa0-x22f.google.com (mail-pa0-x22f.google.com. [2607:f8b0:400e:c03::22f])
        by gmr-mx.google.com with ESMTPS id um12si3322858pab.2.2016.09.24.23.28.16
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 24 Sep 2016 23:28:16 -0700 (PDT)
Received-SPF: pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) client-ip=2607:f8b0:400e:c03::22f;
Authentication-Results: gmr-mx.google.com;
       dkim=pass header.i=@gmail.com;
       spf=pass (google.com: domain of amsfield22@gmail.com designates 2607:f8b0:400e:c03::22f as permitted sender) smtp.mailfrom=amsfield22@gmail.com;
       dmarc=pass (p=NONE dis=NONE) header.from=gmail.com
Received: by mail-pa0-x22f.google.com with SMTP id zl8so2290072pac.1
        for <outreachy-kernel@googlegroups.com>; Sat, 24 Sep 2016 23:28:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=gmail.com; s=20120113;
        h=date:from:to:cc:subject:message-id:references:mime-version
         :content-disposition:in-reply-to:user-agent;
        bh=HKe8D8axbAxnPpM5G4f/12Srln9dfpgk+33bgvAvrho=;
        b=Q0SJZw2/Jx8fo5FvLFuEhhfm+kXT+PzqoFAaRao4ObOnzjVHvHhLq7l2sIv0cSfbFr
         UJZUOKoJqd514qp8B6OjGfDMLfWUbLHCRhezlqwA8DhBbpQLGXC1QbKujN7eeKNhkPqh
         +M76P05qKxle4eAIJ3lhYfP5ATCBFJRU84wDIRbEqTGUQeA84NuFN20pEpKp5LpuGfNG
         eyeAuv7HoIUVmepppIMTNkS27Bp17e7vvW7FN+k7Czp9cBrW6bko8qYNoRlG66qsTRBt
         /ptkZxKSY14owPBUrGMRlybmHLvyT8saC7x749M4A0ehrDoZBAe2XjvXyiwxnariO6fT
         QCOw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
        d=1e100.net; s=20130820;
        h=x-gm-message-state:date:from:to:cc:subject:message-id:references
         :mime-version:content-disposition:in-reply-to:user-agent;
        bh=HKe8D8axbAxnPpM5G4f/12Srln9dfpgk+33bgvAvrho=;
        b=PJI9TKuazaYLKpRmjHz01KBKXfuh0VA4qxoAv22kbB7dzq6SrG3pI7iBxC6fKN0gBh
         1/O6CbSv2Mv5a0rq1xgkKJpoqtpvqLbitv7fLUDYBwdwlCUMHWXAuWNGItJEVv9iMJQ5
         PhbZmjRR4C95gnXiWbWUhEfFv0wovN3dVjm6T7TIQFTMh0lwncCxsUIU3EVT6vkTTmo9
         QFhB+1G0rruTuuunS+rNLCXTW/WTgHDL1ECPY5ptszP91JS9LUZqHDaT7ZhtDCiVYIOq
         bCpdyXwfSV1ZcKMvB+GvbePiY0uVOepTCAPWixiTLPFTOUNgWl9+Ki2Ue9+ZA8QtxNE3
         Dn4w==
X-Gm-Message-State: AE9vXwMLfk+TOdQKdzvN2DVvIMTbjCvliWPOjgF6THx+Ph3deaAY94RYjOdH3sODRhXQVg==
X-Received: by 10.66.67.51 with SMTP id k19mr27458796pat.55.1474784896724;
        Sat, 24 Sep 2016 23:28:16 -0700 (PDT)
Return-Path: <amsfield22@gmail.com>
Received: from d830 (or-67-232-77-201.dhcp.embarqhsd.net. [67.232.77.201])
        by smtp.gmail.com with ESMTPSA id g14sm21934427pfb.77.2016.09.24.23.28.16
        (version=TLS1 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
        Sat, 24 Sep 2016 23:28:16 -0700 (PDT)
Date: Sat, 24 Sep 2016 23:28:14 -0700
From: Alison Schofield <amsfield22@gmail.com>
To: sayli karnik <karniksayli1995@gmail.com>
Cc: daniel.baluta@gmail.com, outreachy-kernel@googlegroups.com
Subject: Re: Doubt regarding iio task 01
Message-ID: <20160925062813.GA9644@d830.WORKGROUP>
References: <CAKG5xWjTCC4oyXcHC5du3imeE9VP2nwL=3c9XwvvHzYTB0zCSA@mail.gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <CAKG5xWjTCC4oyXcHC5du3imeE9VP2nwL=3c9XwvvHzYTB0zCSA@mail.gmail.com>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Sat, Sep 24, 2016 at 07:11:23PM +0530, sayli karnik wrote:
> Hello,
> 
> I ran the following compilation command:
> make drivers/iio/dummy/iio_dummy_evgen.ko
> 
> The following is the error encountered:
> https://www.irccloud.com/pastebin/aO6XB4Le
> 
> I have enabled the config options required:
>  #
>  # IIO dummy driver
>  #
>  CONFIG_IIO_DUMMY_EVGEN=m
>  CONFIG_IIO_SIMPLE_DUMMY=m
>  CONFIG_IIO_SIMPLE_DUMMY_EVENTS=y
>  CONFIG_IIO_SIMPLE_DUMMY_BUFFER=y
> 
> Could you point me towards a solution to this?
> 
> Thanks!
Hi Sayli,

Hope this helps...ask more if you get stuck.

git grep those undefined labels and you'll find you need industrialio.ko

To use insmod you'll need to insmod the dependencies. 

insmod industrialio.ko
insmod iio_dummy_evgen.ko
insmod kfifo_buf.ko
insmod iio_dummy.ko

Your end result will satisfy these dependencies..

$ lsmod | grep dummy
iio_dummy              16384  0
kfifo_buf              16384  1 iio_dummy
iio_dummy_evgen        16384  2 iio_dummy
industrialio           61440  3 iio_dummy,kfifo_buf,iio_dummy_evgen

alisons

