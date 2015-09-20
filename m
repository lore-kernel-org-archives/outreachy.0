X-GM-THRID: 6196813277998088192
X-Received: by 10.50.3.97 with SMTP id b1mr11662701igb.3.1442849030523;
        Mon, 21 Sep 2015 08:23:50 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.149.213 with SMTP id x204ls1162326iod.61.gmail; Mon, 21
 Sep 2015 08:23:50 -0700 (PDT)
X-Received: by 10.107.6.221 with SMTP id f90mr21018001ioi.13.1442849030134;
        Mon, 21 Sep 2015 08:23:50 -0700 (PDT)
Return-Path: <amber@amberadams.co>
Received: from imap1-1.ox.privateemail.com (imap1-1.ox.privateemail.com. [198.187.29.239])
        by gmr-mx.google.com with ESMTPS id a11si1064234igv.3.2015.09.21.08.23.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Mon, 21 Sep 2015 08:23:49 -0700 (PDT)
Received-SPF: pass (google.com: domain of amber@amberadams.co designates 198.187.29.239 as permitted sender) client-ip=198.187.29.239;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of amber@amberadams.co designates 198.187.29.239 as permitted sender) smtp.mailfrom=amber@amberadams.co
Received: from localhost (localhost [127.0.0.1])
	by imap1.ox.privateemail.com (Postfix) with ESMTP id 6C773B000A6;
	Mon, 21 Sep 2015 11:23:38 -0400 (EDT)
X-Virus-Scanned: Debian amavisd-new at imap1.ox.privateemail.com
Received: from imap1.ox.privateemail.com ([127.0.0.1])
	by localhost (imap1.ox.privateemail.com [127.0.0.1]) (amavisd-new, port 10024)
	with LMTP id v3k4MvZRiIC9; Mon, 21 Sep 2015 11:23:38 -0400 (EDT)
Received: from [10.0.1.19] (108-67-72-131.lightspeed.nsvltn.sbcglobal.net [108.67.72.131])
	(using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
	(No client certificate requested)
	by imap1.ox.privateemail.com (Postfix) with ESMTPSA id 00121B00060;
	Mon, 21 Sep 2015 11:23:37 -0400 (EDT)
Message-ID: <55FECFE6.2030302@amberadams.co>
Date: Sun, 20 Sep 2015 10:25:26 -0500
From: Amber Adams <amber@amberadams.co>
User-Agent: Mozilla/5.0 (X11; Linux x86_64; rv:31.0) Gecko/20100101 Icedove/31.8.0
MIME-Version: 1.0
To: Greg KH <gregkh@linuxfoundation.org>
CC: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] staging: skein: Add * on subsequent
 lines in block comment
References: <1442721709-20701-1-git-send-email-amber@amberadams.co> <20150921044151.GA13276@kroah.com>
In-Reply-To: <20150921044151.GA13276@kroah.com>
Content-Type: text/plain; charset=windows-1252
Content-Transfer-Encoding: 7bit

On 09/20/2015 11:41 PM, Greg KH wrote:
> On Sat, Sep 19, 2015 at 11:01:49PM -0500, Amber N. Adams wrote:
>> This patch fixes the checkpatch.pl warning:
>
> I don't think that the outreachy kernel application process starts until
> September 29, so we can't do anything with this patch until then :(
> 
> I'd recommend just waiting a week, or if you really want to submit this,
> send it to the mailing list that the scripts/get_maintainer.pl tool
> tells you to, and I can take it that way, but it will not count for the
> application process here, sorry.
> 
> greg k-h
> 

Thank you for the feedback, anyway! I just wanted to make sure I could
correctly submit a patch. I'll do as you suggest, then get to work on
some other patches and have them ready for Outreachy starting next week.

Amber Adams



