X-GM-THRID: 6253702006622388224
X-Received: by 10.140.30.99 with SMTP id c90mr16755424qgc.2.1456468634710;
        Thu, 25 Feb 2016 22:37:14 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.29.53 with SMTP id a50ls746692qga.11.gmail; Thu, 25 Feb
 2016 22:37:13 -0800 (PST)
X-Received: by 10.140.250.69 with SMTP id v66mr17280027qhc.22.1456468633913;
        Thu, 25 Feb 2016 22:37:13 -0800 (PST)
Return-Path: <bounce-md_30481620.56cff299.v1-d9603bf8dbd841778a024cd2cd91ff9b@mandrillapp.com>
Received: from mail12.wdc04.mandrillapp.com (mail12.wdc04.mandrillapp.com. [205.201.139.12])
        by gmr-mx.google.com with ESMTPS id q187si750979ywf.4.2016.02.25.22.37.13
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:37:13 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cff299.v1-d9603bf8dbd841778a024cd2cd91ff9b@mandrillapp.com designates 205.201.139.12 as permitted sender) client-ip=205.201.139.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cff299.v1-d9603bf8dbd841778a024cd2cd91ff9b@mandrillapp.com designates 205.201.139.12 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cff299.v1-d9603bf8dbd841778a024cd2cd91ff9b@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=5/fcdZlkuAjKXIP5WQudgM5hba0=;
 b=qkyPAWKnIYNV9IoB495QbfgqjkB63uakik6bVCkhEak+zhZ5nOtR2o+1gXxmpyP9h8pOj0ESguBw
   zuwQk9cZMtaeQuvdf+WK/MdzvYWKdTlAKyWSmP8pECoE/AIJ5SmSy811PzrlSGaQYlsvZn/pzV8/
   rhyE9rIk19Ep5eUThvE=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=YIvOM4YnioDpiewJJcZqfbRk3y2vsSu/L0qCLPR5nQ8A4zds5b+6XfCTaa3PR7ImXj5kSUI33L/I
   w7UUpc8tNagzD1D0RQvWsLjCGUImjKkLpr/Exj6R+A4YXL+1al2ni7bE9ZFyQrp72QA7CyAtFJGS
   r4uIEkm2K+8dItaiIZk=;
Received: from pmta05.wdc01.mailchimp.com (127.0.0.1) by mail12.wdc04.mandrillapp.com id hpvp9i1jvjgr for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:37:13 +0000 (envelope-from <bounce-md_30481620.56cff299.v1-d9603bf8dbd841778a024cd2cd91ff9b@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456468633; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=gdDGgwO8CoKnGwEhBAMW31NN2c3NmQQ6o31vRLibn5k=; 
 b=Ec9Qi9BncI46IDEnU/KQNKTi6Vz1tIchcodRYm4cFtSN4fY8z44duc+QjWoFmEoM+3pFHQ
 rGGRC7Mws8BioqK3h9K3iHg8gZOi00iFwu6P/Q8Al9dzOfKZWbL+nO1vBXf7qntbODHQnlP3
 mjqKz64Ph8tWD3+o7w+ebrk7+rCf8=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] staging: lusture: libcfs: Prefer kmalloc_array over kmalloc
Return-Path: <bounce-md_30481620.56cff299.v1-d9603bf8dbd841778a024cd2cd91ff9b@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id d9603bf8dbd841778a024cd2cd91ff9b; Fri, 26 Feb 2016 06:37:13 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226063712.GA19628@kroah.com>
References: <20160221111815.GA27645@Karyakshetra>
In-Reply-To: <20160221111815.GA27645@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.d9603bf8dbd841778a024cd2cd91ff9b
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:37:13 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sun, Feb 21, 2016 at 04:48:15PM +0530, Bhaktipriya Shridhar wrote:
> Use kmalloc_array instead of kmalloc for arrays to prevent integer
> overflows.
> This was done using Coccinelle:
> 
> @@
> expression e1, e2;
> constant C;
> type t;
> @@
> (
> - kmalloc(sizeof(e1)*e2, C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(e1), C)
> + kmalloc_array(e2, sizeof(e1), C)
> |
> - kmalloc(e2*sizeof(t), C)
> + kmalloc_array(e2, sizeof(t), C)
> |
> - kmalloc(sizeof(t)*e2, C)
> + kmalloc_array(e2, sizeof(t), C)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)

You have sent a bunch of "lustre" patches with a typo in the subject
line, making my filter miss them, so I've applied a bunch of other
patches from other developers, and most of these don't apply anymore :(

Can you please fix this up, rebase any outstanding patches you have made
for this part of the kernel tree (drivers/staging/lustre/) and resend
them?

thanks,

greg k-h

