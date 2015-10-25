X-GM-THRID: 6208213403443396608
X-Received: by 10.66.255.70 with SMTP id ao6mr10878773pad.3.1445761683134;
        Sun, 25 Oct 2015 01:28:03 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.140.105.244 with SMTP id c107ls922058qgf.39.gmail; Sun, 25 Oct
 2015 01:28:02 -0700 (PDT)
X-Received: by 10.129.132.83 with SMTP id u80mr19372171ywf.58.1445761682745;
        Sun, 25 Oct 2015 01:28:02 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id fa8si3047246pab.1.2015.10.25.01.28.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 25 Oct 2015 01:28:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (unknown [58.123.138.205])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id CDFD267;
	Sun, 25 Oct 2015 08:28:01 +0000 (UTC)
Date: Sat, 24 Oct 2015 18:50:35 -0700
From: Greg KH <gregkh@linuxfoundation.org>
To: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
Cc: outreachy-kernel@googlegroups.com
Subject: Re: [Outreachy kernel] [PATCH 1/3] Staging: lustre: Replace
 LPROCFS_CLIMP_CHECK with lprocfs_climp_check
Message-ID: <20151025015035.GC536@kroah.com>
References: <cover.1445462106.git.ksenija.stanojevic@gmail.com>
 <0b63f2da700fe4ef978ca1bd94b954080e98ca86.1445462106.git.ksenija.stanojevic@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <0b63f2da700fe4ef978ca1bd94b954080e98ca86.1445462106.git.ksenija.stanojevic@gmail.com>
User-Agent: Mutt/1.5.24 (2015-08-30)

On Wed, Oct 21, 2015 at 11:19:41PM +0200, Ksenija Stanojevic wrote:
> Static inline functions are preferred over macros. The function is
> placed in obd_class.h instead lprocfs_status.h because obd_class.h
> includes header obd.h which contains definition of struct obd_device
> and in that way avoids build error: Dereferencing pointer to incomplete
> type.
> 
> Signed-off-by: Ksenija Stanojevic <ksenija.stanojevic@gmail.com>
> ---
>  drivers/staging/lustre/lustre/include/obd_class.h  | 11 +++++++
>  drivers/staging/lustre/lustre/mgc/mgc_request.c    |  6 +++-
>  .../lustre/lustre/obdclass/lprocfs_status.c        | 38 +++++++++++++++++-----
>  .../staging/lustre/lustre/ptlrpc/lproc_ptlrpc.c    | 16 +++++++--
>  4 files changed, 59 insertions(+), 12 deletions(-)

Why haven't you deleted the macro as well?  It's hard to validate this
patch is correct without seeing the macro removed.

thanks,

greg k-h

