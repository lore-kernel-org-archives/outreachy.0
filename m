X-GM-THRID: 6255482024290680832
X-Received: by 10.107.169.88 with SMTP id s85mr5667938ioe.30.1456469033846;
        Thu, 25 Feb 2016 22:43:53 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.160.11 with SMTP id j11ls657386ioe.60.gmail; Thu, 25 Feb
 2016 22:43:53 -0800 (PST)
X-Received: by 10.98.89.132 with SMTP id k4mr44347465pfj.4.1456469033565;
        Thu, 25 Feb 2016 22:43:53 -0800 (PST)
Return-Path: <bounce-md_30481620.56cff429.v1-fb315c43a14e46f29a9f70644da6f0e8@mandrillapp.com>
Received: from mail12.wdc04.mandrillapp.com (mail12.wdc04.mandrillapp.com. [205.201.139.12])
        by gmr-mx.google.com with ESMTPS id v197si791238ywa.1.2016.02.25.22.43.53
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:43:53 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cff429.v1-fb315c43a14e46f29a9f70644da6f0e8@mandrillapp.com designates 205.201.139.12 as permitted sender) client-ip=205.201.139.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cff429.v1-fb315c43a14e46f29a9f70644da6f0e8@mandrillapp.com designates 205.201.139.12 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cff429.v1-fb315c43a14e46f29a9f70644da6f0e8@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=RDfYANhN/u3GRO03CJcw3tnWHBE=;
 b=D9RnhE03eRxzsoi1As2eV7S1yNd2Sk8Ykwyz4UOu/mUyOrn8VPD3LOYYVenVk7gYPrfxPISrbegr
   0IQ9M6FJG80MO5AN/n+n/QAYlEmDHJ1KHeIP9j4Sq6Lrh/0WYTv+vmmLw7AdC5VoZmQUOxbGFzE8
   vP7SJwQtM7eGkbZ6eHI=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=pVH2o3BFUXnW1mpNP+EDJtHkQ9IFt1SoSEits50Er4MWsMZ6uEz6C/lWSrlpa8quAxiui7dAPfwn
   TT/59NYx99Jbs15I4A6avwBeEgCp/cL2foXs7Wz7I/P4+5zR2HBksnh1izpLRrmspIuA6fDVAGNI
   yGv9TstzIt6eFtSQwBs=;
Received: from pmta05.wdc01.mailchimp.com (127.0.0.1) by mail12.wdc04.mandrillapp.com id hpvq2i1jvjgj for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:43:53 +0000 (envelope-from <bounce-md_30481620.56cff429.v1-fb315c43a14e46f29a9f70644da6f0e8@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456469033; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=WyusP//B9zuQcrDatIBo0Cs7BNah8tD4burKg2NHNtg=; 
 b=XeAdGOb5ml/U5Ez9cIaov7P23ZJL/5ooGBg44Q2eBpJ3VgEfQaTzndUkjQFvw8L2GYXXKp
 nbK/1kr+fYf+tTPkKBuJiGGk4WW3eCmB15cb9jYEbyDNU6ObxaCAEh+7XoJq5pYSXyuSbavq
 4V49C4yxy4MSCvCPofEg0NCPE1wrk=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: comedi: Use DIV_ROUND_CLOSEST
Return-Path: <bounce-md_30481620.56cff429.v1-fb315c43a14e46f29a9f70644da6f0e8@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id fb315c43a14e46f29a9f70644da6f0e8; Fri, 26 Feb 2016 06:43:53 +0000
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226064352.GA11521@kroah.com>
References: <1456467894-14246-1-git-send-email-bhumirks@gmail.com>
In-Reply-To: <1456467894-14246-1-git-send-email-bhumirks@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.fb315c43a14e46f29a9f70644da6f0e8
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:43:53 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Fri, Feb 26, 2016 at 11:54:54AM +0530, Bhumika Goyal wrote:
> The macro DIV_ROUND_CLOSEST performs the computation (x + d/2)/d and
> makes the code more readable.
> Done using coccinelle:
> 
> @@
> expression x,divisor;
> @@
> - (((x) + ((divisor) / 2)) / (divisor))
> + DIV_ROUND_CLOSEST(x,divisor)
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/comedi/drivers/ni_mio_common.c | 18 +++++++-----------
>  1 file changed, 7 insertions(+), 11 deletions(-)

Why did you sent this out twice?

Please resend it just once :)

