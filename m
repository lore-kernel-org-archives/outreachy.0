X-GM-THRID: 6208177008118071296
X-Received: by 10.31.165.84 with SMTP id o81mr24662905vke.11.1445762144220;
        Sun, 25 Oct 2015 01:35:44 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.50.66.230 with SMTP id i6ls601887igt.3.gmail; Sun, 25 Oct 2015
 01:35:43 -0700 (PDT)
X-Received: by 10.66.159.138 with SMTP id xc10mr8701741pab.15.1445762143963;
        Sun, 25 Oct 2015 01:35:43 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id pe1si3031853pac.2.2015.10.25.01.35.43
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:35:43 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 8C95367;
	Sun, 25 Oct 2015 08:35:42 +0000 (UTC)
Date: Sat, 24 Oct 2015 19:38:16 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Amitoj Kaur Chawla <amitoj1606@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] staging: rts5208: Fix endian
 sparse warnings
Message-ID: <20151025023816.GA4627@kroah.com>
References: <cover.1445453573.git.amitoj1606@gmail.com>
 <911b93626cc1fc3ad775ddf55a705e32f2733219.1445453573.git.amitoj1606@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <911b93626cc1fc3ad775ddf55a705e32f2733219.1445453573.git.amitoj1606@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Thu, Oct 22, 2015 at 12:29:30AM +0530, Amitoj Kaur Chawla wrote:
> Fix bug found using sparse which gives the following warning:
> 
> drivers/staging/rts5208/rtsx_transport.c:217:34: warning: incorrect
> type in assignment (different base types)
> drivers/staging/rts5208/rtsx_transport.c:217:34: expected unsigned int
> [unsigned] [usertype] <noident>
> drivers/staging/rts5208/rtsx_transport.c:217:34: got restricted __le32
> [usertype] <noident>
> drivers/staging/rts5208/rtsx_transport.c:316:44: warning: incorrect
> type in assignment (different base types)
> drivers/staging/rts5208/rtsx_transport.c:316:44: expected unsigned
> long long [unsigned] [long] [long long] [usertype] <noident>
> drivers/staging/rts5208/rtsx_transport.c:316:44: got restricted __le64
> [usertype] <noident>
> drivers/staging/rts5208/rtsx_transport.c:316:44: warning: incorrect
> type in assignment (different base types)
> drivers/staging/rts5208/rtsx_transport.c:316:44: expected unsigned
> long long [unsigned] [long] [long long] [usertype] <noident>
> drivers/staging/rts5208/rtsx_transport.c:316:44: got restricted __le64
> [usertype] <noident>
> 
> Signed-off-by: Amitoj Kaur Chawla <amitoj1606@gmail.com>
> ---
>  drivers/staging/rts5208/rtsx_transport.c | 4 ++--
>  1 file changed, 2 insertions(+), 2 deletions(-)
> 
> diff --git a/drivers/staging/rts5208/rtsx_transport.c b/drivers/staging/rts5208/rtsx_transport.c
> index f27491e..a650498 100644
> --- a/drivers/staging/rts5208/rtsx_transport.c
> +++ b/drivers/staging/rts5208/rtsx_transport.c
> @@ -204,7 +204,7 @@ Handle_Errors:
>  void rtsx_add_cmd(struct rtsx_chip *chip,
>  		u8 cmd_type, u16 reg_addr, u8 mask, u8 data)
>  {
> -	u32 *cb = (u32 *)(chip->host_cmds_ptr);
> +	__le32 *cb = (__le32 *)(chip->host_cmds_ptr);

Why __le32?


>  	u32 val = 0;
>  
>  	val |= (u32)(cmd_type & 0x03) << 30;
> @@ -297,7 +297,7 @@ finish_send_cmd:
>  static inline void rtsx_add_sg_tbl(
>  	struct rtsx_chip *chip, u32 addr, u32 len, u8 option)
>  {
> -	u64 *sgb = (u64 *)(chip->host_sg_tbl_ptr);
> +	__le64 *sgb = (__le64 *)(chip->host_sg_tbl_ptr);

Why __le64?

thanks,

greg k-h

