X-GM-THRID: 6260738819949068288
X-Received: by 10.182.240.137 with SMTP id wa9mr8249070obc.16.1457721201047;
        Fri, 11 Mar 2016 10:33:21 -0800 (PST)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.27.211 with SMTP id b202ls1286190iob.102.gmail; Fri, 11
 Mar 2016 10:33:20 -0800 (PST)
X-Received: by 10.50.32.38 with SMTP id f6mr3028705igi.3.1457721200797;
        Fri, 11 Mar 2016 10:33:20 -0800 (PST)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id tu5si1221607pab.2.2016.03.11.10.33.20
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Fri, 11 Mar 2016 10:33:20 -0800 (PST)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (c-50-170-35-168.hsd1.wa.comcast.net [50.170.35.168])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id 7BE63A04;
	Fri, 11 Mar 2016 18:33:20 +0000 (UTC)
Date: Fri, 11 Mar 2016 10:33:20 -0800
From: Greg KH <gregkh@linuxfoundation.org>
To: Bhumika Goyal <bhumirks@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: rtl8712: Remove function
 r8712_SetTxAGCOffset and mp_start_joinbss
Message-ID: <20160311183320.GB26639@kroah.com>
References: <cover.1457691345.git.bhumirks@gmail.com>
 <3dbfbde8ccce78a127d6c71bce9918de2b481aff.1457691346.git.bhumirks@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <3dbfbde8ccce78a127d6c71bce9918de2b481aff.1457691346.git.bhumirks@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Fri, Mar 11, 2016 at 03:53:55PM +0530, Bhumika Goyal wrote:
> The functions r8712_SetTxAGCOffset and mp_start_joinbss are not used
> anywhere in the kernel so remove their definitions and prototypes.
> 
> Signed-off-by: Bhumika Goyal <bhumirks@gmail.com>
> ---
>  drivers/staging/rtl8712/rtl871x_mp.c       | 12 ------------
>  drivers/staging/rtl8712/rtl871x_mp.h       |  1 -
>  drivers/staging/rtl8712/rtl871x_mp_ioctl.c | 16 ----------------
>  drivers/staging/rtl8712/rtl871x_mp_ioctl.h |  2 --
>  4 files changed, 31 deletions(-)

Did not apply to my tree :(

