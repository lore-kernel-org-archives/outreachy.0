X-GM-THRID: 6337702830836547584
X-Received: by 10.200.41.78 with SMTP id z14mr5020579qtz.33.1476021934589;
        Sun, 09 Oct 2016 07:05:34 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.53.225 with SMTP id k94ls3048764ioo.21.gmail; Sun, 09 Oct
 2016 07:05:32 -0700 (PDT)
X-Received: by 10.66.135.7 with SMTP id po7mr3819722pab.102.1476021932211;
        Sun, 09 Oct 2016 07:05:32 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si7433787par.0.2016.10.09.07.05.32
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Sun, 09 Oct 2016 07:05:32 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id A9DB2901;
	Sun,  9 Oct 2016 14:05:31 +0000 (UTC)
Date: Sun, 9 Oct 2016 16:05:39 +0200
From: Greg KH <gregkh@linuxfoundation.org>
To: Elizabeth Ferdman <gnudevliz@gmail.com>
Cc: outreachy-kernel@googlegroups.com, amsfield22@gmail.com,
	daniel.baluta@intel.com, vaibhav.sr@gmail.com,
	mgreer@animalcreek.com, johan@kernel.org, elder@kernel.org
Subject: Re: [PATCH] staging: greybus: fix block comments use trailing */
Message-ID: <20161009140539.GA25060@kroah.com>
References: <20161004200343.GA29262@localhost>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <20161004200343.GA29262@localhost>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Tue, Oct 04, 2016 at 01:03:45PM -0700, Elizabeth Ferdman wrote:
> Fix checkpatch error "Block comments use a trailing */ on a separate
> line" to conform to kernel coding style.
> 
> Signed-off-by: Elizabeth Ferdman <gnudevliz@gmail.com>
> Reviewed-by: Mark Greer <mgreer@animalcreek.com>
> ---
>  drivers/staging/greybus/arche-apb-ctrl.c | 5 +++--
>  drivers/staging/greybus/arche-platform.c | 3 ++-
>  2 files changed, 5 insertions(+), 3 deletions(-)

Patch did not apply to my tree :(

