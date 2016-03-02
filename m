X-GM-THRID: 6255535710113103872
X-Received: by 10.66.139.138 with SMTP id qy10mr22271049pab.46.1456944538397;
        Wed, 02 Mar 2016 10:48:58 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.31.133 with SMTP id f5ls4211083qgf.91.gmail; Wed, 02 Mar
 2016 10:48:57 -0800 (PST)
X-Received: by 10.140.88.139 with SMTP id t11mr4006600qgd.21.1456944537718;
        Wed, 02 Mar 2016 10:48:57 -0800 (PST)
Return-Path: <bounce-md_30481620.56d73599.v1-151ae8dec33241efbb2c6302b89b0b7c@mandrillapp.com>
Received: from mail333.us4.mandrillapp.com (mail333.us4.mandrillapp.com. [205.201.137.77])
        by gmr-mx.google.com with ESMTPS id w126si2129257ywe.6.2016.03.02.10.48.57
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Wed, 02 Mar 2016 10:48:57 -0800 (PST)
Received-SPF: pass (google.com: domain of bounce-md_30481620.56d73599.v1-151ae8dec33241efbb2c6302b89b0b7c@mandrillapp.com designates 205.201.137.77 as permitted sender) client-ip=205.201.137.77;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of bounce-md_30481620.56d73599.v1-151ae8dec33241efbb2c6302b89b0b7c@mandrillapp.com designates 205.201.137.77 as permitted sender) smtp.mailfrom=bounce-md_30481620.56d73599.v1-151ae8dec33241efbb2c6302b89b0b7c@mandrillapp.com;
       dkim=pass header.i=@linuxfoundation.org;
       dkim=pass header.i=@mandrillapp.com
DKIM-Signature: v=1; a=rsa-sha1; c=relaxed/relaxed; s=mandrill; d=linuxfoundation.org;
 h=From:Subject:To:Cc:Message-Id:References:In-Reply-To:Date:MIME-Version:Content-Type:Content-Transfer-Encoding; i=gregkh@linuxfoundation.org;
 bh=na8Zhmkv4wZQKHS4I4DJlE6ChKs=;
 b=RNVM1sIdCIdgqPsW4yGXY2vxj0RlkhlqdR8PzbpWCU9x5fRKGoGUiluL9dnaLHXvbI1/AtF4xEN9
   oUjx8ynzw5L47bJPpbL+o/3Hss+8e3SzGOaFJpdpvv5Eg48dOCbggG86mi43a6T3UdG6VcMs3Sr9
   0lJ0pg0gxi6oMXjORqs=
DomainKey-Signature: a=rsa-sha1; c=nofws; q=dns; s=mandrill; d=linuxfoundation.org;
 b=NZdbI6Av9QfiJN0blAKZBUFyXCjpjKdZaIOm5wWJE2b7bM6LCOyeEqv0LfjKpIEvzW0ky6/tG5bx
   GPkQlXiFc21bfQXM3czhHIOZGFg6OvZHZbOUAupBUbZiS38aHoWSMsF8QfUN8RORHbFQqlTJ7hbI
   VA3Xf/kV1zfcuR0hfZc=;
Received: from pmta03.dal05.mailchimp.com (127.0.0.1) by mail333.us4.mandrillapp.com id hqsqpi174nob for <outreachy-kernel@googlegroups.com>; Wed, 2 Mar 2016 18:48:57 +0000 (envelope-from <bounce-md_30481620.56d73599.v1-151ae8dec33241efbb2c6302b89b0b7c@mandrillapp.com>)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=mandrillapp.com; 
 i=@mandrillapp.com; q=dns/txt; s=mandrill; t=1456944537; h=From : 
 Subject : To : Cc : Message-Id : References : In-Reply-To : Date : 
 MIME-Version : Content-Type : Content-Transfer-Encoding : From : 
 Subject : Date : X-Mandrill-User : List-Unsubscribe; 
 bh=KtYoYURDPif8gR5qQcSve22klTR2SyQDgOyr2ZL4WIM=; 
 b=BkTUYhv2U6oyw14jE4oLJBYQTVm4+M4tJY6Jqm/jGzmD3c7jBLfYixB+jZcOtk0dSA+OS/
 rUq7dP064LguzLT0TloaJib2yytBoeVv0AzowXHsYHhg7HSTTPEmMIUprSx/qwixTl5IA2hA
 At+w/+hduL9o7Cqd590zb1PXP6ZU8=
From: Greg KH <gregkh@linuxfoundation.org>
Subject: Re: [Outreachy kernel] [PATCH v2] staging: lustre: libcfs: Prefer kmalloc_array over kmalloc
Return-Path: <bounce-md_30481620.56d73599.v1-151ae8dec33241efbb2c6302b89b0b7c@mandrillapp.com>
Received: from [50.170.35.168] by mandrillapp.com id 151ae8dec33241efbb2c6302b89b0b7c; Wed, 02 Mar 2016 18:48:57 +0000
To: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
Cc: <outreachy-kernel@googlegroups.com>
Message-Id: <20160302033322.GA20889@kroah.com>
References: <20160226095401.GA10888@Karyakshetra>
In-Reply-To: <20160226095401.GA10888@Karyakshetra>
X-Report-Abuse: Please forward a copy of this message, including all headers, to abuse@mandrill.com
X-Report-Abuse: You can also report abuse here: http://mandrillapp.com/contact/abuse?id=30481620.151ae8dec33241efbb2c6302b89b0b7c
X-Mandrill-User: md_30481620
Date: Wed, 02 Mar 2016 18:48:57 +0000
MIME-Version: 1.0
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: 7bit

On Fri, Feb 26, 2016 at 03:24:01PM +0530, Bhaktipriya Shridhar wrote:
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
> - kmalloc(
> + kmalloc_array(
> e2
> - *
> + ,
> sizeof(e1), C)
> |
> - kmalloc(
> + kmalloc_array(
> e1
> - *
> + ,
> sizeof(t), C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(e1)
> - *
> e2
> + ,
> + sizeof(e1)
> , C)
> |
> - kmalloc(
> + kmalloc_array(
> - sizeof(t)
> - *
> e1
> + ,
> + sizeof(t)
> , C)
> )
> 
> Signed-off-by: Bhaktipriya Shridhar <bhaktipriya96@gmail.com>
> ---
>  Changes in v2:
> 	-Fixed type lusture to lustre in subject.
> 
>  drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c | 5 +++--
>  1 file changed, 3 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> index 91c2ae8..b78f6e5 100644
> --- a/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> +++ b/drivers/staging/lustre/lustre/libcfs/linux/linux-tracefile.c
> @@ -61,8 +61,9 @@ int cfs_tracefile_init_arch(void)
>  	memset(cfs_trace_data, 0, sizeof(cfs_trace_data));
>  	for (i = 0; i < CFS_TCD_TYPE_MAX; i++) {
>  		cfs_trace_data[i] =
> -			kmalloc(sizeof(union cfs_trace_data_union) *
> -				num_possible_cpus(), GFP_KERNEL);

We know this can't overflow, it's a static number at build time, so this
change isn't needed.

