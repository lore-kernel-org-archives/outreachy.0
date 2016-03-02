X-GM-THRID: 6255876964906696704
X-Received: by 10.107.135.209 with SMTP id r78mr27446990ioi.19.1456944585825;
        Wed, 02 Mar 2016 10:49:45 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.8.230 with SMTP id h99ls2084093ioi.75.gmail; Wed, 02 Mar
 2016 10:49:45 -0800 (PST)
X-Received: by 10.50.50.133 with SMTP id c5mr141400igo.4.1456944585519;
        Wed, 02 Mar 2016 10:49:45 -0800 (PST)
Return-Path: <bounce-md_30481620.56d735c9.v1-29099e05b8c146039ba0ec079f48830d@mandrillapp.com>
Received: from mail177-1.suw61.mandrillapp.com (mail177-1.suw61.mandrillapp.com. [198.2.177.1])
        by gmr-mx.google.com with ESMTPS id y131si2286819ywc.0.2016.03.02.10.49.45
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:49:45 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d735c9.v1-29099e05b8c146039ba0ec079f48830d@mandrillapp.com designates 198.2.177.1 as permitted sender) client-ip=198.2.177.1;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d735c9.v1-29099e05b8c146039ba0ec079f48830d@mandrillapp.com designates 198.2.177.1 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d735c9.v1-29099e05b8c146039ba0ec079f48830d@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=Sld7Hazzz8Qcat/lMGkYWaeX8Eg=;
 b=fZ/dVlf8yTNPLXoQIkhN5DJGGv9pSFt/s4pHUPcrYkWz2MBR4jAbPEwOuBBxUbNtZ1czBj0JLJ9d
   vtioIBD+grBhnE4BBYbpJvuhSijt8DYsDNXbV5NHqoVACh3reQ7Dk/fw4sXAEqt3LM0nqrK+svmp
   g22DMsSuijfVoMIK8Qw=
Received: from pmta06.mandrill.prod.suw01.rsglab.com (127.0.0.1) by mail177-1.suw61.mandrillapp.com id hqsqsi22rtkh for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:49:45 +0000 (envelope-from <bounce-md_30481620.56d735c9.v1-29099e05b8c146039ba0ec079f48830d@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944585; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=zvrd8yrHgHlZgMh9SE04KiKo84SXTYg3kX199CvgkwM=; 
 b=YdTDtdB4UqY+TqpPQ0p99QciKysHaGC43s/rmRDLFpIW6MVehVm3cU2N2ekCkqpviz/o1T
 pAu0vI7aYuzOQOmUnw/CnDPC3488b73AcsLtDTJW2KqlZJ5taI9Qz7OBlmVTbfqTNMbV4z/B
 LUotEINwsk193PI9V1CV1F39pxzJs=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: obdclass: Use seq_puts/seq_putc
Return-Path: <bounce-md_30481620.56d735c9.v1-29099e05b8c146039ba0ec079f48830d@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 29099e05b8c146039ba0ec079f48830d; Wed, 02 Mar 2016 18:49:45 +0000
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302033824.GA21286@kroah.com>
References: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
In-Reply-To: <1456559840-7193-1-git-send-email-bhumirks@gmail.com>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.29099e05b8c146039ba0ec079f48830d
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:49:45 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Sat, Feb 27, 2016 at 01:27:20PM +0530, Bhumika Goyal wrote:
> This patch converts the seq_printf output with constant strings to
> seq_puts and also use seq_putc for seq_printf(...,"\n").
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
>  drivers/staging/lustre/lustre/obdclass/cl_object.c      | 10 +++++-----
>  drivers/staging/lustre/lustre/obdclass/lprocfs_status.c | 17 ++++++-----------
>  2 files changed, 11 insertions(+), 16 deletions(-)

Doesn't apply to my tree :(

