X-GM-THRID: 6255862432468566016
X-Received: by 10.140.101.242 with SMTP id u105mr4151875qge.12.1456944501286;
        Wed, 02 Mar 2016 10:48:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.102.73 with SMTP id fm9ls687641igb.44.gmail; Wed, 02 Mar
 2016 10:48:20 -0800 (PST)
X-Received: by 10.50.61.100 with SMTP id o4mr1100808igr.10.1456944500896;
        Wed, 02 Mar 2016 10:48:20 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73574.v1-120dccc30b854e8a95015ed6c6befe16@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id g136si2148984ywb.5.2016.03.02.10.48.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:20 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73574.v1-120dccc30b854e8a95015ed6c6befe16@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73574.v1-120dccc30b854e8a95015ed6c6befe16@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73574.v1-120dccc30b854e8a95015ed6c6befe16@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=/1kaCyzNlRnh2BJh60mNulgDT+8=;
 b=DJZrZiEZsCwOQLDY2YYBF7XDSS/NMlYNqfX5kKlwsyBPqiNb9QQJcteWirRMv+PwxPjC45DsCsZI
   b+HdR8SmJe4WyLR4qb1+t2k9VAWnPEFpzrbrD2KAu0uDpV4RWSTmJdMUttbxlkQ+cAT2Y2UgxgxS
   ZD6PtTM+c2dKb5Muov4=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=k7T1OtV/X2zK/AQuISKNSijube8Ns/y/x0sqrorjiLSbrZxk94Kylo4b6l5kBrbRBu+njXJQ5xfr
   UddsLw5TNqx/ISD0GwgID8rLWJ8nAm3m8sbEGYOa3536oZBEMPcSrGkTfMP8ic3QAxfRGiXvg92G
   /9mXYYTWpvu8F7R/b8I=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqn8174nov for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:20 +0000 (envelope-from <bounce-md_30481620.56d73574.v1-120dccc30b854e8a95015ed6c6befe16@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944500; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=2qsDs3Z5bZrL9b69NztYj+kJjbF8L6frBVSVmIxyvN0=; 
 b=KOYMzqAKpbxQtZOpvoITo2tPWDJtpqLKKGC1KHnNFL1qjhUZghUM26ojn+4i/wJgTVYg8m
 ycF5L8YXntlhJNy1lebcBQNWjVn4R6t6G9fPRUC6YhTTpqDp/4vNoKcxRFk55jV8Mij8lO08
 BtwU4YGN3y6Z6ckq58c7Sz2SkCY1U=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Use seq_puts instead of seq_printf
Return-Path: <bounce-md_30481620.56d73574.v1-120dccc30b854e8a95015ed6c6befe16@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 120dccc30b854e8a95015ed6c6befe16; Wed, 02 Mar 2016 18:48:20 +0000
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302033759.GA21239@kroah.com>
References: <1456556443-5809-1-git-send-email-bhumirks@gmail.com>
In-Reply-To: <1456556443-5809-1-git-send-email-bhumirks@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.120dccc30b854e8a95015ed6c6befe16
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:20 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sat, Feb 27, 2016 at 12:30:43PM +0530, Bhumika Goyal wrote:
> This patch converts the seq_printf output with constant strings to
> seq_puts.
> Done using coccinelle:
> 
> @@
> identifier a;
> constant b;
> @@
> (
> - seq_printf(a,"\n");
> + seq_putc(a,'\n');
> |
> - seq_printf(a,b);
> + seq_puts(a,b);
> )
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/lproc_llite.c | 14 +++++++-------
>  drivers/staging/lustre/lustre/mgc/mgc_request.c   |  2 +-
>  2 files changed, 8 insertions(+), 8 deletions(-)
> 

Doesn't apply to my tree :(

