X-GM-THRID: 6208177008118071296
X-Received: by 10.141.23.137 with SMTP id z131mr23661468qhd.7.1445761676600;
        Sun, 25 Oct 2015 01:27:56 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.32.74 with SMTP id g68ls2937710qgg.49.gmail; Sun, 25 Oct
 2015 01:27:56 -0700 (PDT)
X-Received: by 10.129.154.205 with SMTP id r196mr22000323ywg.48.1445761676093;
        Sun, 25 Oct 2015 01:27:56 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id zg1si3069038pbb.2.2015.10.25.01.27.56
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:27:56 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 2DC0F67;
	Sun, 25 Oct 2015 08:27:54 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:48:56 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 2/3] staging: lustre: lmv: Fix endian
 sparse warnings
Message-ID: <20151025014856.GA536@kroah.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
 <7c9a1c8af81dc6676b31d2ad2e8d9de2df9dfbd8.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <7c9a1c8af81dc6676b31d2ad2e8d9de2df9dfbd8.1445453573.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 12:31:32AM +0530, Amitoj Kaur Chawla wrote:
> Fix bug found using sparse which generates the following warning:
> 
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: warning:
> incorrect type in assignment (different base types)
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: expected unsigned
> int [unsigned] [usertype] mea_magic
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2422:25: got restricted
> __le32 [usertype] <noident>
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: warning:
> incorrect type in assignment (different base types)
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: expected unsigned
> int [unsigned] [usertype] mea_count
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2423:25: got restricted
> __le32 [usertype] <noident>
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: warning:
> incorrect type in assignment (different base types)
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: expected unsigned
> int [unsigned] [usertype] mea_master
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2424:26: got restricted
> __le32 [usertype] <noident>
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2467:25: warning: cast to
> restricted __le32
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2477:30: warning: cast to
> restricted __le32
> drivers/staging/lustre/lustre/lmv/lmv_obd.c:2478:31: warning: cast to
> restricted __le32
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/lustre/lustre/lmv/lmv_obd.c | 12 ++++++------
>  1 file changed, 6 insertions(+), 6 deletions(-)
> 
> diff --git a/drivers/staging/lustre/lustre/lmv/lmv_obd.c b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> index 7e6a060..8d90f19 100644
> --- a/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> +++ b/drivers/staging/lustre/lustre/lmv/lmv_obd.c
> @@ -2419,9 +2419,9 @@ static int lmv_packmd(struct obd_export *exp, struct lov_mds_md **lmmp,
>  	    lsmp->mea_magic != MEA_MAGIC_ALL_CHARS)
>  		return -EINVAL;
>  
> -	meap->mea_magic = cpu_to_le32(lsmp->mea_magic);
> -	meap->mea_count = cpu_to_le32(lsmp->mea_count);
> -	meap->mea_master = cpu_to_le32(lsmp->mea_master);
> +	meap->mea_magic = lsmp->mea_magic;
> +	meap->mea_count = lsmp->mea_count;
> +	meap->mea_master = lsmp->mea_master;

Yes, deleting the calls will remove the warning, but maybe this isn't
the correct fix?  I think you just broke the code :(

There is a better fix here, a "correct" one, can you think of it?

thanks,

greg k-h

