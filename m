X-GM-THRID: 6396343645329424384
X-Received: by 10.157.17.165 with SMTP id v34mr11278945otf.23.1489299227536;
        Sat, 11 Mar 2017 22:13:47 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.30.76 with SMTP id e73ls3514168ioe.46.gmail; Sat, 11 Mar
 2017 22:13:46 -0800 (PST)
X-Received: by 10.99.115.26 with SMTP id o26mr12791070pgc.155.1489299226341;
        Sat, 11 Mar 2017 22:13:46 -0800 (PST)
Received: by 10.55.154.202 with SMTP id c193msqke;
        Sat, 11 Mar 2017 16:59:50 -0800 (PST)
X-Received: by 10.46.88.70 with SMTP id x6mr4090823ljd.22.1489280389621;
        Sat, 11 Mar 2017 16:59:49 -0800 (PST)
Return-Path: <viro@ftp.linux.org.uk>
Received: from ZenIV.linux.org.uk (zeniv.linux.org.uk. [195.92.253.2])
        by gmr-mx.google.com with ESMTPS id f7si355920wmg.3.2017.03.11.16.59.49
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sat, 11 Mar 2017 16:59:49 -0800 (PST)
Received-SPF: pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) client-ip=195.92.253.2;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: best guess record for domain of viro@ftp.linux.org.uk designates 195.92.253.2 as permitted sender) smtp.mailfrom=viro@ftp.linux.org.uk
Received: from viro by ZenIV.linux.org.uk with local (Exim 4.87 #1 (Red Hat Linux))
	id 1cmrrM-0000kN-88; Sun, 12 Mar 2017 00:59:44 +0000
Date: Sun, 12 Mar 2017 00:59:44 +0000
From: Al Viro <viro@ZenIV.linux.org.uk>
To: simran singhal <singhalsimran0@gmail.com>
Cc: gregkh@linuxfoundation.org, arve@android.com, riandrews@android.com,
	devel@driverdev.osuosl.org, linux-kernel@vger.kernel.org,
	outreachy-kernel@googlegroups.com
Subject: Re: [PATCH] staging: android: Replace strcpy with strlcpy
Message-ID: <20170312005944.GL29622@ZenIV.linux.org.uk>
References: <20170311204001.GA13301@singhal-Inspiron-5558>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20170311204001.GA13301@singhal-Inspiron-5558>
User-Agent: Mutt/1.7.1 (2016-10-04)
Sender: Al Viro <viro@ftp.linux.org.uk>

On Sun, Mar 12, 2017 at 02:10:01AM +0530, simran singhal wrote:
> Replace strcpy with strlcpy as strcpy does not check for buffer
> overflow.
> This is found using Flawfinder.
> 
> Signed-off-by: simran singhal <singhalsimran0@gmail.com>
> ---
>  drivers/staging/android/ashmem.c | 3 ++-
>  1 file changed, 2 insertions(+), 1 deletion(-)
> 
> diff --git a/drivers/staging/android/ashmem.c b/drivers/staging/android/ashmem.c
> index 7cbad0d..eb2f4ef 100644
> --- a/drivers/staging/android/ashmem.c
> +++ b/drivers/staging/android/ashmem.c
> @@ -548,7 +548,8 @@ static int set_name(struct ashmem_area *asma, void __user *name)
>  	if (unlikely(asma->file))
>  		ret = -EINVAL;
>  	else
> -		strcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name);
> +		strlcpy(asma->name + ASHMEM_NAME_PREFIX_LEN, local_name,
> +			sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN));

Trivial C quiz: given

struct ashmem_area {
        char name[ASHMEM_FULL_NAME_LEN];
        struct list_head unpinned_list;
        struct file *file;
        size_t size;
        unsigned long prot_mask;
};
static int set_name(struct ashmem_area *asma, void __user *name)

what, in your opinion, would be
	1) type of asma->name
	2) type of asma->name + ASHMEM_NAME_PREFIX_LEN
	3) value of sizeof(asma->name + ASHMEM_NAME_PREFIX_LEN)
As a bonus question,
	4) what is the value of this kind of patches?

<rot13 answers>
	1) NFUZRZ_SHYY_ANZR_YRA-ryrzrag neenl bs pune
	2) cbvagre gb pune
	3) fvmr bs n cbvagre
	4) fbpvbybtvpny - ernql-znqr vyyhfgengvbaf bs crevyf bs
pnetb phyg.

