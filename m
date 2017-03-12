X-GM-THRID: 6396588867730800640
X-Received: by 10.129.107.134 with SMTP id g128mr14624491ywc.139.1489329336375;
        Sun, 12 Mar 2017 07:35:36 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.157.54.4 with SMTP id w4ls847407otb.8.gmail; Sun, 12 Mar 2017
 07:35:36 -0700 (PDT)
X-Received: by 10.157.82.157 with SMTP id f29mr12762775oth.114.1489329336015;
        Sun, 12 Mar 2017 07:35:36 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 2si2731469pfx.8.2017.03.12.07.35.35
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 12 Mar 2017 07:35:35 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [88.128.80.189])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 14F25904;
	Sun, 12 Mar 2017 14:35:34 +0000 (UTC)
Date: Sun, 12 Mar 2017 15:35:16 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Varsha Rao <rvarsha016@gmail.com>
Cc: outreachy-kernel <outreachy-kernel@googlegroups.com>, abbotti@mev.co.uk,
	hsweeten@visionengravers.com
Subject: Re: [Outreachy kernel] Re: [PATCH] staging: comedi: Compress return
 logic into one line.
Message-ID: <20170312143516.GC32168@kroah.com>
References: <58c53fae.4737620a.4ce3e.692c@mx.google.com>
 <20170312135543.GA1209@kroah.com>
 <0409aeaa-40e5-489c-bcd8-62e1b5724772@googlegroups.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=iso-8859-1
Content-Disposition: inline
Content-Transfer-Encoding: 8bit
In-Reply-To: <0409aeaa-40e5-489c-bcd8-62e1b5724772@googlegroups.com>
User-Agent: Mutt/1.8.0 (2017-02-23)

On Sun, Mar 12, 2017 at 07:07:59AM -0700, Varsha Rao wrote:
> 
> 
>     That broke the driver :(
> 
> �
> 
>     Please be more careful in your review.
> 
> ��
> ��� I had compiled it before submitting the patch and it did not cause any
> error or warning.
> ��� Is there something else to be done?

Yes, you need to look at the logic that you are writing/changing to
determine that it is not incorrect.  This is valid C code, so no build
warning will happen, it's just the logic is totally wrong :)

You do see the problem, right?  If not, please take the time to read it
and figure out what is going on here, as it's important to know.

thanks,

greg k-h

