X-GM-THRID: 6255294547695239168
X-Received: by 10.107.15.143 with SMTP id 15mr5733507iop.15.1456467784546;
        Thu, 25 Feb 2016 22:23:04 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.109.70 with SMTP id k64ls841248qgf.25.gmail; Thu, 25 Feb
 2016 22:23:04 -0800 (PST)
X-Received: by 10.129.92.65 with SMTP id q62mr43711565ywb.19.1456467784111;
        Thu, 25 Feb 2016 22:23:04 -0800 (PST)
Return-Path: <bounce-md_30481620.56cfef47.v1-ee8e1cbe0fdb47b38e2866fbe3c7f22a@mandrillapp.com>
Received: from mail132-22.atl131.mandrillapp.com (mail132-22.atl131.mandrillapp.com. [198.2.132.22])
        by gmr-mx.google.com with ESMTPS id y131si754815ywc.0.2016.02.25.22.23.04
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 25 Feb 2016 22:23:04 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56cfef47.v1-ee8e1cbe0fdb47b38e2866fbe3c7f22a@mandrillapp.com designates 198.2.132.22 as permitted sender) client-ip=198.2.132.22;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56cfef47.v1-ee8e1cbe0fdb47b38e2866fbe3c7f22a@mandrillapp.com designates 198.2.132.22 as permitted sender) smtp.mailfrom=bounce-md_30481620.56cfef47.v1-ee8e1cbe0fdb47b38e2866fbe3c7f22a@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=c6PQsNDybde9iKh2lEYXVGYxQbU=;
 b=CmJUi8lXE+w9/fUlP/E2jA0H0rq2eXgG8qp6dAEsOQ6SkCBeZB6cSwvHxguNEY7am80TEAIUdYVM
   49l2JY3E6/dU3flcjbobMngdrSLKTame3TcXyJtsJYrDkMuFlmy19KItj2Wta565D0B5PSGoUePK
   iWqwIfPkyj0RpEx8m+0=
Received: from pmta02.mandrill.prod.atl01.rsglab.com (127.0.0.1) by mail132-22.atl131.mandrillapp.com id hpvnkg1sar80 for <outreachy-kernel@googlegroups.com>; Fri, 26 Feb 2016 06:23:03 +0000 (envelope-from <bounce-md_30481620.56cfef47.v1-ee8e1cbe0fdb47b38e2866fbe3c7f22a@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456467783; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=DEGGqy+ixqm/Y3FDJQ+zcx3Ur5w4vJJc7bsnYQryy88=; 
 b=X9iWpwiHQNVWZ1uMOaZTCsAhm11v7Qyj4lA9tWru60zRENNfLE4srCeCofxfQazAMcvASl
 UF0KITgmH4cN0itFj0uCogRqiNchZseca1FqqVEEFheLi1aBVKkB9y88re5w0zMP5QKyJAmk
 S00AROcL1Z5MP+i23wXb/V1yqoWBs=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Use list_for_each_entry instead of list_for_each
Return-Path: <bounce-md_30481620.56cfef47.v1-ee8e1cbe0fdb47b38e2866fbe3c7f22a@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id ee8e1cbe0fdb47b38e2866fbe3c7f22a; Fri, 26 Feb 2016 06:23:03 +0000
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160226062303.GA28519@kroah.com>
References: <1456424237-10589-1-git-send-email-bhumirks@gmail.com>
In-Reply-To: <1456424237-10589-1-git-send-email-bhumirks@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.ee8e1cbe0fdb47b38e2866fbe3c7f22a
X-Mandrill-User: md_30481620
Date: Fri, 26 Feb 2016 06:23:03 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Thu, Feb 25, 2016 at 11:47:17PM +0530, Bhumika Goyal wrote:
> Use list_for_each_entry instead of list_for_each and list_entry as it
> simplifies the code. Done using coccinelle:
> 
> @@
> type T,T2;
> identifier I1,I2;
> expression e1,e2;
> iterator name list_for_each_entry;
> iterator name list_for_each;
> @@
> 
> - T *I1;
> ...
> - list_for_each(I1,e1)
> + list_for_each_entry(I2,e1,e2)
> {
> ...when!=T *I1;
> - I2=list_entry(I1,T2,e2);
> ...
> }
> ...when!=I2;
> 
> @@
> type T,T2,T3;
> identifier I1,I2,I3;
> expression e1,e2;
> @@
> 
> - T *I1;
> + T3 *I3;
> ...
> - list_for_each(I1,e1)
> + list_for_each_entry(I3,e1,e2)
> {
> ...when!=T *I1;
> - T3 *I3=list_entry(I1,T2,e2);
> ...
> }
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  .../staging/lustre/lustre/obdecho/echo_client.c    |  4 +--
>  drivers/staging/lustre/lustre/ptlrpc/client.c      | 31 +++++-----------------
>  2 files changed, 8 insertions(+), 27 deletions(-)

ALWAYS test build your patches, otherwise you will end up with grumpy
maintainers complaining you didn't test build your patches and they
broke the build.

Hint, this broke the build.  Not good :(

