X-GM-THRID: 7443231801344
X-Google-Groups: outreachy-kernel
X-Google-Thread: 9ca63f596c,9618457e2733b09c
X-Google-Attributes: gid9ca63f596c,domainid0,private,googlegroup
X-Google-NewGroupId: yes
X-Received: by 10.66.197.170 with SMTP id iv10mr31136439pac.25.1426415138718;
        Sun, 15 Mar 2015 03:25:38 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.93.9 with SMTP id c9ls1128403qge.21.gmail; Sun, 15 Mar
 2015 03:25:38 -0700 (PDT)
X-Received: by 10.236.202.233 with SMTP id d69mr58514448yho.13.1426415138530;
        Sun, 15 Mar 2015 03:25:38 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pc4si1278692pac.0.2015.03.15.03.25.38
        for <outreachy-kernel@googlegroups.com>
        (version=TLSv1.2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 15 Mar 2015 03:25:38 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mail=gregkh@linuxfoundation.org
Received: from localhost (gob75-2-82-67-192-59.fbx.proxad.net [82.67.192.59])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id EF0A38CF;
	Sun, 15 Mar 2015 10:25:36 +0000 (UTC)
Date: Sun, 15 Mar 2015 11:25:33 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Vatika Harlalka <vatikaharlalka@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH] Staging: lustre: Add newline after
 variable declarations.
Message-ID: <20150315102533.GA30031@kroah.com>
References: <20150310124543.GA3241@akanksha>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20150310124543.GA3241@akanksha>
User-Agent: Mutt/1.5.23 (2014-03-12)

On Tue, Mar 10, 2015 at 06:15:43PM +0530, Vatika Harlalka wrote:
> Added newline after variable declarations to 
> follow kernel code conventions.
> 
> Signed-off-by: Vatika Harlalka <vatikaharlalka@gmail.com>
> ---
>  drivers/staging/lustre/lustre/llite/llite_nfs.c | 1 +
>  1 file changed, 1 insertion(+)
> 
> diff --git a/drivers/staging/lustre/lustre/llite/llite_nfs.c b/drivers/staging/lustre/lustre/llite/llite_nfs.c
> index 243a784..06a1212 100644
> --- a/drivers/staging/lustre/lustre/llite/llite_nfs.c
> +++ b/drivers/staging/lustre/lustre/llite/llite_nfs.c
> @@ -49,6 +49,7 @@
>  __u32 get_uuid2int(const char *name, int len)
>  {
>  	__u32 key0 = 0x12a3fe2d, key1 = 0x37abe8f9;
> +	
>  	while (len--) {
>  		__u32 key = key1 + (key0 ^ (*name++ * 7152373));
>  

_ALWAYS_ run your patches through checkpatch.pl so that you don't have a
maintainer tell you to run your patches through checkpatch.pl to fix the
obvious issues with it :)

Hint, you fixed up one checkpatch warning, just to add another one,
which isn't acceptable :(

greg k-h

