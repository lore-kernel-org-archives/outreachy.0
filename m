X-GM-THRID: 6330466800696819712
X-Received: by 10.36.29.7 with SMTP id 7mr1591721itj.2.1473934745527;
        Thu, 15 Sep 2016 03:19:05 -0700 (PDT)
X-BeenThere: outreachy-kernel@googlegroups.com
Received: by 10.107.62.196 with SMTP id l187ls960655ioa.51.gmail; Thu, 15 Sep
 2016 03:19:02 -0700 (PDT)
X-Received: by 10.98.54.197 with SMTP id d188mr5717608pfa.11.1473934742390;
        Thu, 15 Sep 2016 03:19:02 -0700 (PDT)
Return-Path: <gregkh@linuxfoundation.org>
Received: from mail.linuxfoundation.org (mail.linuxfoundation.org. [140.211.169.12])
        by gmr-mx.google.com with ESMTPS id 7si814712pfw.1.2016.09.15.03.19.02
        for <outreachy-kernel@googlegroups.com>
        (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
        Thu, 15 Sep 2016 03:19:02 -0700 (PDT)
Received-SPF: pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) client-ip=140.211.169.12;
Authentication-Results: gmr-mx.google.com;
       spf=pass (google.com: domain of gregkh@linuxfoundation.org designates 140.211.169.12 as permitted sender) smtp.mailfrom=gregkh@linuxfoundation.org
Received: from localhost (pes75-3-78-192-101-3.fbxo.proxad.net [78.192.101.3])
	by mail.linuxfoundation.org (Postfix) with ESMTPSA id B5015412;
	Thu, 15 Sep 2016 10:19:01 +0000 (UTC)
Date: Thu, 15 Sep 2016 12:19:08 +0200
From: Greg Kroah-Hartman <gregkh@linuxfoundation.org>
To: Rehas Sachdeva <aquannie@gmail.com>
Cc: outreachy-kernel@googlegroups.com, linux-usb@vger.kernel.org,
	Oleg Drokin <oleg.drokin@intel.com>,
	Andreas Dilger <andreas.dilger@intel.com>,
	James Simmons <jsimmons@infradead.org>
Subject: Re: [PATCH 1/6] staging: lustre: Add space b/w concatenated strings
Message-ID: <20160915101908.GA22178@kroah.com>
References: <cover.1473923837.git.aquannie@gmail.com>
 <5f0049b66e2bf80634cf510e090e6b577302cedb.1473923837.git.aquannie@gmail.com>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <5f0049b66e2bf80634cf510e090e6b577302cedb.1473923837.git.aquannie@gmail.com>
User-Agent: Mutt/1.7.0 (2016-08-17)

On Thu, Sep 15, 2016 at 01:34:48PM +0530, Rehas Sachdeva wrote:
> Fixes checkpatch.pl warning:
> CHECK: Concatenated strings should use spaces between elements
> 
> Signed-off-by: Rehas Sachdeva <aquannie@gmail.com>
> ---
>  drivers/staging/lustre/lustre/fid/fid_request.c | 8 ++++----
>  drivers/staging/lustre/lustre/fid/lproc_fid.c   | 2 +-
>  2 files changed, 5 insertions(+), 5 deletions(-)

Why are you sending Lustre driver patches to the linux-usb mailing list?

totally confused,

greg k-h

